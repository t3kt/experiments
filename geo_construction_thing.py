import itertools
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
	if not hasattr(poly[0], 'uv'):
		sop.vertexAttribs.create('uv')
	poly[0].uv = (0, 0, 0)
	poly[1].uv = (0, 1, 0)
	poly[2].uv = (1, 1, 0)
	poly[3].uv = (1, 0, 0)
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

	# @property
	# def angle1(self):
	# 	a = 1
	# 	b = 0
	# 	c = 3
	# 	return math.degrees(math.atan2(
	# 		self.corners[c].y - self.corners[a].y,
	# 		self.corners[c].x - self.corners[a].x) - math.atan2(
	# 		self.corners[b].y - self.corners[a].y,
	# 		self.corners[b].x - self.corners[a].x))
	# 	# return (self.corners[1] - self.corners[0]).angle(self.corners[3] - self.corners[0])
	#
	# @property
	# def angle2(self):
	# 	return (self.corners[2] - self.corners[1]).angle(self.corners[0] - self.corners[1])
	#
	# @property
	# def sidelength(self):
	# 	return self.corners[0].distance(self.corners[1])
	#
	# @property
	# def length1(self):
	# 	return self.corners[0].distance(self.corners[2])
	#
	# @property
	# def length2(self):
	# 	return self.corners[1].distance(self.corners[3])

	def getpart(self, part):
		if callable(part):
			return part(self)
		if isinstance(part, int):
			return self.corners[part]
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
		raise TypeError('supported part spec: {!r} (type: {})'.format(part, type(part)))

	def __getitem__(self, index):
		return self.corners[index]

	def __setitem__(self, index, value):
		self.corners[index] = _asvector(value)

	def move(self, translate):
		translate = _asvector(translate)
		for i in range(4):
			self.corners[i] += translate

	def movepartto(self, part, position):
		self.move(_asvector(position) - self.getpart(part))

	def rotateonpart(self, r, part=RhombusPart.center):
		pivot = self.getpart(part)
		for i in range(4):
			self.corners[i] = _rotate(point=self.corners[i], origin=pivot, angledegrees=r)

	def offsetcorners(self, offset):
		self.corners = [
			self.corners[(i + offset) % 4]
			for i in range(4)
		]

	def reversecorners(self):
		# 0 -> 0
		# 1 -> 3
		# 2 -> 2
		# 3 -> 1
		self.corners[1], self.corners[3] = self.corners[3], self.corners[1]

	def addtosop(self, sop):
		return AddQuad(sop, *self.corners)

	def modify(
			self,
			movepart=None, moveto=(0, 0, 0),
			rotatepart=None, rotate=0,
			offsetcorners=None, reversecorners=False):
		if movepart is not None:
			self.movepartto(movepart, moveto)
		if rotatepart is not None:
			self.rotateonpart(rotate, rotatepart)
		if offsetcorners is not None:
			self.offsetcorners(offsetcorners)
		if reversecorners:
			self.reversecorners()

	@classmethod
	def create(
			cls,
			sidelength=1, angle=90,
			movepart=RhombusPart.center, moveto=(0, 0, 0),
			rotatepart=RhombusPart.center, rotate=0):
		anglerads = math.radians(angle)
		width = sidelength * math.sqrt(2 - 2 * math.cos(anglerads))
		height = sidelength * math.sqrt(2 + 2 * math.cos(anglerads))
		pos0 = tdu.Vector(0, -height/2, 0)
		pos1 = tdu.Vector(-width/2, 0, 0)
		pos2 = tdu.Vector(0, height/2, 0)
		pos3 = tdu.Vector(width/2, 0, 0)
		rhombus = cls(pos0, pos1, pos2, pos3)
		rhombus.modify(
			movepart=movepart, moveto=moveto,
			rotatepart=rotatepart, rotate=rotate)
		return rhombus

	@classmethod
	def frompoly(cls, poly):
		return cls(*poly)

def _rotate(point, origin, angledegrees):
	angle = math.radians(angledegrees)
	ox, oy, _ = _asvector(origin)
	px, py, _ = _asvector(point)
	return tdu.Vector(
		ox + math.cos(angle) * (px - ox) - math.sin(angle) * (py - oy),
		oy + math.sin(angle) * (px - ox) + math.cos(angle) * (py - oy),
		0)

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
	par.default = 'center'
	return par

class RhombusBuilder:
	def __init__(self, sop):
		self.sop = sop

	def setupParameters(self):
		page = self.sop.appendCustomPage('Rhombus Builder')
		p = page.appendFloat('Sidelength', label='Side Length')[0]
		p.normMax = 2
		p.default = 1
		p = page.appendFloat('Angle', label='Angle')[0]
		p.normMax = 360
		p.default = 90
		CreateRhombusPartParam(page, 'Positionpart', label='Position Part').default = 'center'
		page.appendXY('Position', label='Position')

	def cook(self):
		self.sop.clear()
		rhombus = Rhombus.create(
			sidelength=self.sop.par.Sidelength.eval(),
			angle=self.sop.par.Angle.eval()
		)
		rhombus.movepartto(
			part=self.sop.par.Positionpart.eval(),
			position=tdu.Vector(self.sop.par.Positionx.eval(), self.sop.par.Positiony.eval(), 0))
		rhombus.addtosop(self.sop)

class RhombusModifier:
	def __init__(self, sop):
		self.sop = sop

	def setupParameters(self):
		page = self.sop.appendCustomPage('Rhombus Modifier')
		page.appendToggle('Enablemoveto', label='Enable Move To')[0].startSection = True
		CreateRhombusPartParam(page, 'Movepartto', label='Move Part To')
		page.appendXY('Movetoposition', label='Move To Position')
		page.appendToggle('Enablepinmoveto', label='Enable Move To Pinned')
		CreateRhombusPartParam(page, 'Pinmovetopart', label='Move To Part Pinned')
		CreateRhombusPartParam(page, 'Secondarypinmovetopart', label='Secondary Move To Part Pinned')
		page.appendToggle('Enablerotate', label='Enable Rotate')[0].startSection = True
		CreateRhombusPartParam(page, 'Rotateonpart', label='Rotate On Part')
		p = page.appendFloat('Rotate', label='Rotate')[0]
		p.normMin = -360
		p.normMax = 360
		p = page.appendFloat('Secondaryrotate', label='Secondary Rotate')[0]
		p.normMin = -360
		p.normMax = 360
		page.appendToggle('Enableoffsetcorners', label='Enable Offset Corner Order')[0].startSection = True
		page.appendInt('Offsetcorners', label='Offset Corner Order')
		page.appendToggle('Reversecorners', label='Reverse Corner Order')
		page.appendToggle('Reversesecondarycorners', label='Reverse Secondary Corners')
		page.appendToggle('Enablesecondary', label='Enable Secondary')[0].startSection = True
		page.sort(
			'Enablemoveto', 'Movepartto', 'Movetoposition', 'Enablepinmoveto', 'Pinmovetopart', 'Secondarypinmovetopart',
			'Enablerotate', 'Rotateonpart', 'Rotate', 'Secondaryrotate',
			'Enableoffsetcorners', 'Offsetcorners', 'Reversecorners', 'Reversesecondarycorners',
			'Enablesecondary',
		)


	def cook(self):
		self.sop.clear()
		if len(self.sop.inputs) < 1:
			return
		if not hasattr(self.sop.par, 'Secondarypinmovetopart') or not hasattr(self.sop.par, 'Enablepinmoveto'):
			self.setupParameters()

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
		reversecorners = self.sop.par.Reversecorners.eval()
		pintargets = self.sop.inputs[1].prims if len(self.sop.inputs) > 1 else []
		enablepinmove = self.sop.par.Enablepinmoveto.eval() and bool(pintargets)
		pintopart = self.sop.par.Pinmovetopart.eval()
		enablesecondary = self.sop.par.Enablesecondary.eval()
		secondaryrotate = self.sop.par.Secondaryrotate.eval()
		reversesecondarycorners = self.sop.par.Reversesecondarycorners.eval()
		secondarypintopart = self.sop.par.Secondarypinmovetopart.eval()

		def _getmovetarget(i, topart):
			if not enablepinmove:
				return moveposition
			if not pintargets:
				return None
			targetpoly = pintargets[i % len(pintargets)]
			targetrhombus = Rhombus.frompoly(targetpoly)
			return targetrhombus.getpart(topart)

		for i, poly in enumerate(self.sop.inputs[0].prims):
			rhombus = Rhombus.frompoly(poly)
			rhombus.modify(
				rotatepart=rotatepart if enablerotate else None, rotate=rotate,
				offsetcorners=offset if enableoffset else None,
				reversecorners=reversecorners
			)
			if enablemoveto:
				targetpos = _getmovetarget(i, pintopart)
				if targetpos is not None:
					rhombus.movepartto(part=movepart, position=targetpos)
			rhombus.addtosop(self.sop)
			if enablesecondary:
				secondaryrhombus = Rhombus.frompoly(poly)
				secondaryrhombus.modify(
					rotatepart=rotatepart if enablerotate else None, rotate=secondaryrotate,
					offsetcorners=offset if enableoffset else None,
					reversecorners=reversesecondarycorners
				)
				if enablemoveto:
					targetpos = _getmovetarget(i + 1, secondarypintopart)
					if targetpos is not None:
						secondaryrhombus.movepartto(part=movepart, position=targetpos)
				secondaryrhombus.addtosop(self.sop)


class RhombusAligner:
	def __init__(self, sop):
		self.sop = sop

	def setupParameters(self):
		page = self.sop.appendCustomPage('Rhombus Aligner')
		page.appendToggle('Enablemoveto', label='Enable Move To')[0].default = True
		CreateRhombusPartParam(page, 'Movefrompart', label='Move From Part')
		CreateRhombusPartParam(page, 'Movetopart', label='Move To Part')

	def cook(self):
		self.sop.clear()
		if len(self.sop.inputs) < 2:
			return
		enablemoveto = self.sop.par.Enablemoveto.eval()
		frompart = self.sop.par.Movefrompart.eval()
		topart = self.sop.par.Movetopart.eval()
		sourcepolys = self.sop.inputs[0].prims
		targetpolys = self.sop.inputs[1].prims
		for sourcepoly, targetpoly in zip(sourcepolys, itertools.cycle(targetpolys)):
			rhombus = Rhombus.frompoly(sourcepoly)
			targetrhombus = Rhombus.frompoly(targetpoly)
			if enablemoveto:
				rhombus.movepartto(part=frompart, position=targetrhombus.getpart(topart))
			rhombus.addtosop(self.sop)


class RhombusAttrsBuilder:
	def __init__(self, dat):
		self.dat = dat

	def setupParameters(self):
		page = self.dat.appendCustomPage('Custom')
		page.appendPython('Angles')
		p = page.appendFloat('Sidelength', label='Side Length')[0]
		p.normMax = 2
		p.default = 1

	def cook(self):
		self.dat.clear()
		self.dat.appendRow([
			'name', 'angle1', 'angle2', 'length1', 'length2', 'sidelength',
		])
		# angles = self.dat.par.Angles.eval()
		# sidelength = self.dat.par.Sidelength.eval()
		# for angle in angles:
		# 	rhombus = Rhombus.create(sidelength=sidelength, angle=angle)
		# 	self.dat.appendRow([
		# 		'rhombus{}'.format(angle),
		# 		rhombus.angle1,
		# 		rhombus.angle2,
		# 		rhombus.length1,
		# 		rhombus.length2,
		# 		rhombus.sidelength,
		# 	])


class NewFivePointRhombusThing:
	def __init__(self, sop):
		self.sop = sop

	def setupParameters(self):
		pass

	def cook(self):
		self.sop.clear()
		r1 = Rhombus.create(angle=72, movepart=RhombusPart.point0, moveto=(0, 0))
		r1.addtosop(self.sop)
		r2 = Rhombus.create(
			angle=36,
			movepart=RhombusPart.point0, moveto=r1.getpart(RhombusPart.point2),
			rotatepart=RhombusPart.point0, rotate=90+36)
		r2.addtosop(self.sop)
		r3a = Rhombus.create(angle=72)
		r3a.modify(
			movepart=RhombusPart.point1, moveto=r1.getpart(RhombusPart.point2),
			rotatepart=RhombusPart.point1, rotate=36)
		r3a.addtosop(self.sop)
		r3b = r3a.clone()
		r3b.modify(
			movepart=RhombusPart.point1, moveto=r1.getpart(RhombusPart.point2),
			rotatepart=RhombusPart.point1, rotate=180-36)
		r3b.addtosop(self.sop)


def BindToParentParams(o):
	parent = o.parent()
	# print('omg BindToParentParams({}) parent: {}'.format(o, parent))
	for par in o.customPars:
		# print('omg par {!r}'.format(par))
		parentpar = getattr(parent.par, par.name, None)
		if parentpar is not None:
			# print('wtfomg parent par {!r}'.format(parentpar))
			expr = "op('..').par." + par.name
			# print('omg expr {!r}'.format(expr))
			par.mode = ParMode.EXPRESSION
			par.expr = expr

