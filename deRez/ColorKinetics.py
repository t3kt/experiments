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


panel = connect('10.0.2.3')
color = [0.1, 0.8, 0.9]


def push_color(col, chan):
    data = []
    num = 72
    for i in range(num):
        data = data + [col[0] + .3, col[1] + .1, col[2] + .4]
    data += col * (85 - num)
    display(array(data), panel, chan)


def foo():
    for c in ([0, .1, .2], [.2, 0, .1], [0, .1, .2], [.2, 0, .1]):
        for j in range(16):
            push_color(c, j + 1)
            sleep(.5)


# allocate array beforehand
# 85*3 = 255
# could pad

def blah():
    out = zeros(PACKETSIZE)
    #while 1:
    a = op('chopColor_to_datTable')
    for i in range(72):
        out[i] = a.cell(0, i)
        display(out, panel)
        sleep(.9)


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

# blockOffsets = [
#     makeBlockOffset(0, 0),
#     makeBlockOffset(1, 0),
#     makeBlockOffset(0, 1),
#     makeBlockOffset(1, 1),
#     makeBlockOffset(2, 0),
#     makeBlockOffset(3, 0),
#     makeBlockOffset(2, 1),
#     makeBlockOffset(3, 1),
#     makeBlockOffset(4, 0),
#     makeBlockOffset(5, 0),
#     makeBlockOffset(4, 1),
#     makeBlockOffset(5, 1),
#     makeBlockOffset(6, 0),
#     makeBlockOffset(7, 0),
#     makeBlockOffset(6, 1),
#     makeBlockOffset(7, 1),
#     makeBlockOffset(8, 0),
#     makeBlockOffset(9, 0),
#     makeBlockOffset(8, 1),
#     makeBlockOffset(9, 1),
# ]
blockOffsets = [
    makeBlockOffset(b[0], b[1])
    for b in [
        (0, 0), (1, 0), (0, 1), (1, 1),
        (2, 0), (3, 0), (2, 1), (3, 1),
        (4, 0), (5, 0), (4, 1), (5, 1),
        (6, 0), (7, 0), (6, 1), (7, 1),
        (8, 0), (9, 0), (8, 1), (9, 1)
    ]
]

numBlocks = len(blockOffsets)

lightOffsets = []
for row in range(blockHeight):
    lightOffsets += [(blockHeight - row, i) for i in range(blockWidth)]

lightsPerBlock = blockWidth * blockHeight

def getPixelCoord(block, light):
    boffset = blockOffsets[block]
    loffset = lightOffsets[light]
    return boffset[0] + loffset[0], boffset[1] + loffset[1]

dataOut = zeros(lightsPerBlock * 3)
def sendImage(img, sock):
    for b in range(numBlocks):
        for l in range(lightsPerBlock):
            pos = getPixelCoord(b, l)
            col = img.sample(x=pos[0], y=pos[1])
            dataOut[(l * 3)] = col[0]
            dataOut[(l * 3) + 1] = col[1]
            dataOut[(l * 3) + 2] = col[2]
        display(dataOut, sock, b)






