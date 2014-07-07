# turn all the panels white

from numpy import array, zeros, ones, minimum, maximum, ravel
from time import sleep
from socket import socket, AF_INET, SOCK_DGRAM

PACKETSIZE = 255


def connect(ip, port=6038):
    sock = socket(AF_INET, SOCK_DGRAM, 0)
    sock.connect((ip, port))
    return sock


def display(data, sock, chan=1):
    #print('SENDING (length: %s):  %s' % (len(data), data))
    xmit = zeros(PACKETSIZE + 24, 'ubyte')
    # old protocol:
    # xmit[:8], xmit[20:24] = [4, 1, 220, 74, 1, 0, 8, 1], [150, 0, 255, 15]
    # new protocol:
    #   xmit[:8], xmit[16:24] = [4, 1, 220, 74, 1, 0, 8, 1], [1, 0, 0, 1, 255, 0, 255, 15]
    xmit[:8] = [4, 1, 220, 74, 1, 0, 8, 1]
    xmit[16:24] = [1, 0, 0, 1, 255, 0, 255, 15]
    xmit[16] = chan
    xmit[24:] = minimum(maximum(256 * ravel(data), 0), 255)
    sock.sendall(xmit)


panel = connect('10.0.2.2')


def push_color(col, chan):
    data = []
    num = 72
    for i in range(num):
        data = data + [col[0], col[1], col[2]]
    data += col * (85 - num)
    display(array(data), panel, chan)


def foo():
    for c in ([0, .1, .2], [.2, 0, .1]):
        print('running with color: %s' % (c,))
        for j in range(16):
            push_color(c, j + 1)
            sleep(.15)


# allocate array beforehand
# 85*3 = 255
# could pad

def dumpColors():
    img = op('res_16x9')
    for y in range(img.height):
        for x in range(img.width):
            color = img.sample(x=x, y=y)
            push_color(array([color[0], color[1], color[2]] * 85), y)


blockWidth = 6
blockHeight = 12


def makeBlockOffset(blockX, blockY):
    return blockX * blockWidth, blockY * blockHeight

blockOffsets = [
    makeBlockOffset(b[0], b[1])
    for b in [
        (0, 0), (1, 0), (0, 1), (1, 1),
        (2, 0), (3, 0), (2, 1), (3, 1),
        (4, 0), (5, 0), (4, 1), (5, 1),
        (6, 0), (7, 0), (6, 1), (7, 1)
    ]
]

numBlocks = len(blockOffsets)

lightOffsets = []
for row in range(blockHeight):
    lightOffsets += [(i, blockHeight - row - 1) for i in range(blockWidth)]

lightsPerBlock = blockWidth * blockHeight

def getPixelCoord(block, light):
    boffset = blockOffsets[block]
    loffset = lightOffsets[light]
    return boffset[0] + loffset[0], boffset[1] + loffset[1]

def sendImage(img, sock):
    for b in range(numBlocks):
        dataOut = []
        #print('block %s' % (b,))
        for l in range(lightsPerBlock):
            pos = getPixelCoord(b, l)
            pos = pos[0], img.height - pos[1]
            col = img.sample(x=pos[0], y=pos[1])
            #print('looking at pixel x=%s y=%s  color=%s %s %s' % (pos[0], pos[1], col[0], col[1], col[2]))
            dataOut.append(col[0])
            dataOut.append(col[1])
            dataOut.append(col[2])
        #print('data before padding (len: %s): %s' %(len(dataOut), dataOut))
        dataOut += (0.0, 0.0, 0.0) * 13
        display(dataOut, sock, b + 1)


def dumpTables():
    tbl = op('block_dump_table')
    tbl.clear()
    tbl.appendRow(['blockx', 'blocky'])
    for b in blockOffsets:
        tbl.appendRow([b[0], b[1]])



def doSendImage():
    sendImage(op('null1'), panel)


