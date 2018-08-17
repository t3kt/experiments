import math
import td

print('geo_construction_thing.py initializing')

if False:
	from ._stubs import *

def _asposition(pt):
	if hasattr(pt, 'point'):
		pt = pt.point
	if isinstance(pt, (list, tuple)):
		if len(pt) == 2:
			pt = pt + [0]
		return tdu.Position(*pt)
	return tdu.Position(pt.x, pt.y, pt.z)

def _setpointpos(pt, pos):
	pt.x, pt.y, pt.z = pos.x, pos.y, pos.z

def AddPolyAtPoints(sop, point1, point2, numsides, flip=False):
	poly = sop.appendPoly(numsides, closed=True, addPoints=True)
	polypoints = [v.point for v in poly]

	pos1 = _asposition(point1)
	pos2 = _asposition(point2)
	diff = pos2 - pos1
	sidelength = diff.length()
	anglestep = math.radians(360 / numsides)
	if flip:
		anglestep *= -1

	angle = math.atan2(diff.y, diff.x)

	_setpointpos(polypoints[0], pos1)
	_setpointpos(polypoints[1], pos2)
	pos = pos2
	for i in range(2, numsides):
		angle += anglestep
		diff = tdu.Vector(
			sidelength * math.cos(angle),
			sidelength * math.sin(angle),
			0)
		pos += diff
		_setpointpos(polypoints[i], pos)
	return poly

def AddPolyOnSide(sop, basepolys, side, numsides, flip=False):
	if not basepolys:
		return []
	if isinstance(basepolys, td.Prim):
		basepolys = [basepolys]
	if isinstance(side, int):
		pattern = sidepattern(sides=[side])
	else:
		pattern = _assidepattern(side)
	results = []
	for basepoly in basepolys:
		sides = pattern.getsides(basepoly)
		for side in sides:
			results.append(_AddPolyOnSide(sop, basepoly, side, numsides, flip=flip))
	return results

def _AddPolyOnSide(sop, basepoly, side, numsides, flip=False):
	pt1 = basepoly[side % len(basepoly)]
	pt2 = basepoly[(side + 1) % len(basepoly)]
	return AddPolyAtPoints(sop, pt1, pt2, numsides, flip=flip)

def _assidepattern(spec):
	if isinstance(spec, sidepattern):
		return spec
	if spec is None:
		return sidepattern(sides=[])
	if spec == 'all':
		return sidepattern(isall=True)
	if isinstance(spec, int):
		return sidepattern(n=spec)
	if isinstance(spec, float):
		return sidepattern(n=round(spec))
	if isinstance(spec, (list, tuple)):
		return sidepattern(sides=spec)
	raise Exception('Invalid side pattern: {!r}'.format(spec))

class sidepattern:
	def __init__(self, isall=False, n=1, offset=0, sides=None):
		self.isall = isall
		self.n = n
		self.offset = offset
		self.sides = sides

	def getsides(self, poly):
		polysides = len(poly)
		if self.isall:
			return range(polysides)
		if self.sides is not None:
			return [
				side
				for side in self.sides
				if side < polysides
			]
		if self.n is None or self.n <= 0:
			return []
		side = self.offset or 0
		sides = [side % polysides]
		while len(sides) < polysides:
			side += self.n
			if side in sides:
				break
			sides.append(side % polysides)
		return sides

