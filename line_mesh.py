print('loading line_mesh.py')

from tdu import remap, Position

def interpPoint(pt1, pt2, ratio):
	return Position(
		pt1.x + (pt2.x-pt1.x) * ratio,
		pt1.y + (pt2.y-pt1.y) * ratio,
		pt1.z + (pt2.z-pt1.z) * ratio,
	)


def addLine(sop, pt1, pt2):
	prim = sop.appendPoly(2, closed=False, addPoints=True)
	prim[0].point.x = pt1.x
	prim[0].point.y = pt1.y
	prim[0].point.z = pt1.z
	prim[1].point.x = pt2.x
	prim[1].point.y = pt2.y
	prim[1].point.z = pt2.z

def addBridgeBetweenLinePrims(sop, line1, line2, steps, flip1, flip2):
	pt1a, pt1b = getEndPoints(line1, flip1)
	pt2a, pt2b = getEndPoints(line2, flip2)
	addLineBridge(sop, pt1a, pt1b, pt2a, pt2b, steps)

def addLineBridge(sop, pt1a, pt1b, pt2a, pt2b, steps):
	stepamt = 1 / (steps + 1)
	for i in range(steps + 1):
		pos1 = interpPoint(pt1a, pt1b, i * stepamt)
		pos2 = interpPoint(pt2a, pt2b, (i+1) * stepamt)
		addLine(sop, pos1, pos2)

def getEndPoints(line, flip=False):
	pt1 = line[0].point
	if len(line) < 2:
		return pt1, pt1
	pt2 = line[len(line)-1].point
	if flip:
		return pt2, pt1
	else:
		return pt1, pt2

def addSequentialLineBridges(sop, basisprim, steps):
	points = [v.point for v in basisprim]
	n = len(points)
	if n < 3:
		raise Exception('basis does not have enough lines')
	# if _isLoopedPrim(basisprim):
	# 	print('the prim is looped!')
	points = points + points[:2]
	# else:
	# 	print('the prim is NOT looped')
	# 	pass
	_addSequentialLineBridges(sop, points, steps)

def _addSequentialLineBridges(sop, points, steps):
	n = len(points)
	if n < 4:
		raise Exception('basis does not have enough points')
	for i in range(n - 2):
		pt1 = points[i]
		pt2 = points[i + 1]
		pt3 = points[i + 2]
		addLineBridge(
			sop,
			pt1, pt2,
			pt2, pt3,
			steps)


LOOP_DISTANCE_THRESHOLD = 0.000001

def _isLoopedPrim(prim):
	n = len(prim)
	if n <= 2:
		return False
	firstvert = prim[0]
	lastvert = prim[n - 1]
	if hasattr(firstvert, 'uv'):
		return firstvert.uv[0] == lastvert.uv[0] and firstvert.uv[1] == lastvert.uv[1] and firstvert.uv[2] == lastvert.uv[2]
	firstpos = Position(firstvert.point)
	lastpos = Position(lastvert.point)
	dist = (firstpos - lastpos).length()
	return dist < LOOP_DISTANCE_THRESHOLD
