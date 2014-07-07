__author__ = 'tekt'

from numpy import array, zeros, ones, minimum, maximum, ravel
from socket import socket, AF_INET, SOCK_DGRAM

PACKETSIZE = 255


def connect(ip, port=6038):
	sock = socket(AF_INET, SOCK_DGRAM, 0)
	sock.connect((ip, port))
	return sock


def sendBlock(data, sock, chan=1):
	# print('SENDING (length: %s):  %s' % (len(data), data))
	xmit = zeros(PACKETSIZE + 24, 'ubyte')
	# old protocol:
	# xmit[:8], xmit[20:24] = [4, 1, 220, 74, 1, 0, 8, 1], [150, 0, 255, 15]
	# new protocol:
	xmit[:8], xmit[16:24] = [4, 1, 220, 74, 1, 0, 8, 1], [1, 0, 0, 1, 255, 0, 255, 15]
	xmit[16] = chan
	xmit[24:] = minimum(maximum(256 * ravel(data), 0), 255)
	sock.sendall(xmit)


class ColorKineticsPanel:
	def __init__(self, ipaddress, port=6038, lightmap=None):
		self.sock = connect(ipaddress, port)
		if lightmap is None:
			self.lightmap = createDefaultLightMap()
		else:
			self.lightmap = lightmap

	def sendImage(self, img):
		for b in range(self.lightmap.numBlocks):
			dataOut = []
			# print('block %s' % (b,))
			for l in range(self.lightmap.lightsPerBlock):
				pos = self.lightmap.getPixelCoord(b, l)
				pos = pos[0], img.height - pos[1]
				col = img.sample(x=pos[0], y=pos[1])
				#print('looking at pixel x=%s y=%s  color=%s %s %s' % (pos[0], pos[1], col[0], col[1], col[2]))
				dataOut += col[0:3]
			#print('data before padding (len: %s): %s' %(len(dataOut), dataOut))
			dataOut += (0.0, 0.0, 0.0) * 13
			sendBlock(dataOut, self.sock, b + 1)

class LightMap:
	def __init__(self, blockOffsets, lightOffsets):
		self.blockOffsets = blockOffsets
		self.lightOffsets = lightOffsets
		self.numBlocks = len(blockOffsets)
		self.lightsPerBlock = len(lightOffsets)

	def getPixelCoord(self, block, light):
		boffset = self.blockOffsets[block]
		loffset = self.lightOffsets[light]
		return boffset[0] + loffset[0], boffset[1] + loffset[1]


def makeBlockOffset(block, blockSize):
	return block[0] * blockSize[0], block[1] * blockSize[1]


def createDefaultLightMap():
	blockSize = (6, 12)
	blocks = [
		(0, 0), (1, 0), (0, 1), (1, 1),
		(2, 0), (3, 0), (2, 1), (3, 1),
		(4, 0), (5, 0), (4, 1), (5, 1),
		(6, 0), (7, 0), (6, 1), (7, 1)
	]
	blockOffsets = [makeBlockOffset(b, blockSize) for b in blocks]
	lightOffsets = []
	for row in range(blockSize[1]):
		lightOffsets += [(i, blockSize[1] - row - 1) for i in range(blockSize[0])]
	return LightMap(blockOffsets, lightOffsets)
