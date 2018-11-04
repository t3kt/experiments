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


def AddQuad(sop, pos0, pos1, pos2, pos3):
	poly = sop.appendPoly(4, closed=True, addPoints=True)
	polypoints = [v.point for v in poly]
	_setpointpos(polypoints[0], pos0)
	_setpointpos(polypoints[1], pos1)
	_setpointpos(polypoints[2], pos2)
	_setpointpos(polypoints[3], pos3)
	return poly

class RhombusPart:
	center = lambda prim: prim.center
	point0 = lambda prim: prim[0]
	point1 = lambda prim: prim[1]
	point2 = lambda prim: prim[2]
	point3 = lambda prim: prim[3]

class Rhombus:
	def __init__(self, corner0, corner1, corner2, corner3):
		self.corners = [
			_asvector(corner0),
			_asvector(corner1),
			_asvector(corner2),
			_asvector(corner3),
		]

	def clone(self):
		return Rhombus(*self.corners)

	@property
	def center(self):
		return (self.corners[0] + self.corners[2]) / 2

	def _getpart(self, part):
		if callable(part):
			return part(self)
		if part in (None, 'center'):
			return self.center
		if part == 'corner0':
			return self.corners[0]
		if part == 'corner1':
			return self.corners[1]
		if part == 'corner2':
			return self.corners[2]
		if part == 'corner3':
			return self.corners[3]
		if isinstance(part, int):
			return self.corners[part]
		raise TypeError()

	def move(self, translate):
		translate = _asvector(translate)
		for i in range(4):
			self.corners[i] += translate

	def movepartto(self, part, position):
		self.move(_asvector(position) - self._getpart(part))

	def rotateonpart(self, r, part=RhombusPart.center):
		pivot = self._getpart(part)
		matrix = tdu.Matrix()
		matrix.rotate(0, 0, r, pivot=pivot)
		for i in range(4):
			self.corners[i] *= matrix

	def offsetcorners(self, offset):
		self.corners = [
			self.corners[(i + offset) % 4]
			for i in range(4)
		]

	def addtosop(self, sop):
		return AddQuad(sop, *self.corners)

	@classmethod
	def create(cls, sidelength=1, angle=90):
		anglerads = math.radians(angle)
		width = sidelength * math.sqrt(2 - 2 * math.cos(anglerads))
		height = sidelength * math.sqrt(2 + 2 * math.cos(anglerads))
		pos0 = tdu.Vector(0, -height/2, 0)
		pos1 = tdu.Vector(-width/2, 0, 0)
		pos2 = tdu.Vector(0, height/2, 0)
		pos3 = tdu.Vector(width/2, 0, 0)
		return cls(pos0, pos1, pos2, pos3)

	@classmethod
	def frompoly(cls, poly):
		return cls(*poly)

def _asvector(pt):
	if hasattr(pt, 'point'):
		pt = pt.point
	if isinstance(pt, (list, tuple)):
		if len(pt) == 2:
			pt = list(pt) + [0]
		return tdu.Vector(*pt)
	return tdu.Vector(pt.x, pt.y, pt.z)

def CreateRhombusPartParam(page, name, label=None):
	par = page.appendMenu(name, label=label)[0]
	par.menuNames = ['corner0', 'corner1', 'corner2', 'corner3', 'center']
	par.menuLabels = ['Corner 0', 'Corner 1', 'Corner 2', 'Corner 3', 'Center']
	return par

class RhombusBuilder:
	def __init__(self, sop):
		self.sop = sop

	def setupParameters(self):
		page = self.sop.appendCustomPage('Custom')
		p = page.appendFloat('Sidelength', label='Side Length')[0]
		p.normMax = 2
		p.default = 1
		p = page.appendFloat('Angle', label='Angle')[0]
		p.normMax = 360
		p.default = 90

	def cook(self):
		self.sop.clear()
		rhombus = Rhombus.create(
			sidelength=self.sop.par.Sidelength.eval(),
			angle=self.sop.par.Angle.eval()
		)
		rhombus.addtosop(self.sop)

class RhombusModifier:
	def __init__(self, sop):
		self.sop = sop

	def setupParameters(self):
		page = self.sop.appendCustomPage('Custom')
		page.appendToggle('Enablemoveto', label='Enable Move To')
		CreateRhombusPartParam(page, 'Movepartto', label='Move Part To')
		page.appendXY('Movetoposition', label='Move To Position')
		page.appendToggle('Enablerotate', label='Enable Rotate')
		CreateRhombusPartParam(page, 'Rotateonpart', label='Rotate On Part')
		p = page.appendFloat('Rotate', label='Rotate')[0]
		p.normMin = -360
		p.normMax = 360
		page.appendToggle('Enableoffsetcorners', label='Enable Offset Corners')
		page.appendInt('Offsetcorners', label='Offset Corners')

	def cook(self):
		self.sop.clear()
		enablemoveto = self.sop.par.Enablemoveto.eval()
		movepart = self.sop.par.Movepartto.eval()
		moveposition = tdu.Vector(
			self.sop.par.Movetopositionx.eval(),
			self.sop.par.Movetopositiony.eval(),
			0)
		enablerotate = self.sop.par.Enablerotate.eval()
		rotatepart = self.sop.par.Rotateonpart.eval()
		rotate = self.sop.par.Rotate.eval()
		enableoffset = self.sop.par.Enableoffsetcorners.eval()
		offset = self.sop.par.Offsetcorners.eval()
		for poly in self.sop.inputs[0].prims:
			rhombus = Rhombus.frompoly(poly)
			if enablemoveto:
				rhombus.movepartto(part=movepart, position=moveposition)
			if enablerotate:
				rhombus.rotateonpart(r=rotate, part=rotatepart)
			if enableoffset:
				rhombus.offsetcorners(offset=offset)
			rhombus.addtosop(self.sop)
