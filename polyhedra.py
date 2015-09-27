# Most of this code is take from:
#   http://www.chiark.greenend.org.uk/~sgtatham/polyhedra/

import math

# class vertexinfo:
# 	def __init__(self, index = 0):
# 		self.index = index
# 		pass

class polyhedron:
	def __init__(self):
		self.vertices = {}
		self.vlist = []
		self.faces = {}
		self.normals = {}
		self.flist = []

	def vertex(self, x, y, z):
		vnum = len(self.vertices)
		#vname = lettername(vnum)
		#vname = "vert_" + str(vnum)
		vname = vnum
		x, y, z = float(x), float(y), float(z)
		self.vertices[vname] = x, y, z
		self.vlist.append(vname)
		return vname

	def facelist(self, vlist):
		# Construct a face, given an ordered list of vertices. We
		# assume for these polyhedra that all faces point away from the
		# origin, which means we can auto-compute the surface normal
		# and automatically arrange for the face list to be the right
		# way round.
		vlist = list(tuple(vlist))
		vprod = (0, 0, 0)
		centroid = (0, 0, 0)
		for i in range(len(vlist)):
			# Compute an approximation to the surface normal given
			# the three vertices starting at this point.
			va = self.vertices[vlist[i]]
			vb = self.vertices[vlist[(i + 1) % len(vlist)]]
			vc = self.vertices[vlist[(i + 2) % len(vlist)]]
			dx1, dy1, dz1 = vb[0] - va[0], vb[1] - va[1], vb[2] - va[2]
			dx2, dy2, dz2 = vc[0] - vb[0], vc[1] - vb[1], vc[2] - vb[2]
			vp = (dy1 * dz2 - dz1 * dy2, dz1 * dx2 - dx1 * dz2, dx1 * dy2 - dy1 * dx2)
			vprod = (vprod[0] + vp[0], vprod[1] + vp[1], vprod[2] + vp[2])
			centroid = (centroid[0] + va[0], centroid[1] + va[1], centroid[2] + va[2])
		# If the normal vector points inwards, invert it and reverse the list.
		if vprod[0] * centroid[0] + vprod[1] * centroid[1] + vprod[2] * centroid[2] < 0:
			vprod = (-vprod[0], -vprod[1], -vprod[2])
			vlist.reverse()
		# Normalise the normal vector to unit length.
		vplen = math.sqrt(vprod[0] ** 2 + vprod[1] ** 2 + vprod[2] ** 2)
		vprod = (vprod[0] / vplen, vprod[1] / vplen, vprod[2] / vplen)
		# Compute the face name.
		# facename = ""
		# for s in vlist:
		# 	facename = facename + s
		facenum = len(self.faces)
		# facename = "face_" + str(facenum)
		facename = facenum
		# Output.
		self.faces[facename] = vlist
		self.normals[facename] = vprod
		self.flist.append(facename)
		return facename

	def face(self, *vlist):
		return self.facelist(vlist)


	def output(self, file):
		for v in self.vlist:
			x, y, z = self.vertices[v]
			file.write("point " + v + " " + repr(x) + " " + repr(y) + " " + repr(z) + "\n")
		for f in self.flist:
			vlist = self.faces[f]
			for s in vlist:
				file.write("face " + f + " " + s + "\n")
			x, y, z = self.normals[f]
			file.write("normal " + f + " " + repr(x) + " " + repr(y) + " " + repr(z) + "\n")

	def addToSOP(self, sop):
		sop.pointAttribs.create('N')
		for facename in self.flist:
			vertexnames = self.faces[facename]
			numvertices = len(vertexnames)
			normals = self.normals[facename]
			poly = sop.appendPoly(numvertices, addPoints=True)
			for i in range(numvertices):
				pt = poly[i].point
				v = self.vertices[vertexnames[i]]
				pt.x, pt.y, pt.z = v
				pt.N = normals

	def getBounds(self):
		mins, maxs = [0, 0, 0], [0, 0, 0]
		for pt in self.vertices.values():
			for i in range(2):
				if pt[i] < mins[i]:
					mins[i] = pt[i]
				if pt[i] > maxs[i]:
					maxs[i] = pt[i]
		return mins, maxs

	def modifyVertices(self, fn):
		for ptname in self.vertices.keys():
			self.vertices[ptname] = fn(self.vertices[ptname])

	def normalize(self):
		mins, maxs = self.getBounds()
		sizes = [abs(maxs[i] - mins[i]) for i in range(2)]
		maxsize = max(sizes)
		scale = 1 / maxsize
		self.modifyVertices(lambda pt: (pt[0] * scale, pt[1] * scale, pt[2] * scale))


def tetrahedron():
	p = polyhedron()
	# Easiest way to define a tetrahedron is to take four vertices
	# from the cube.
	a = p.vertex(-1, -1, -1)
	b = p.vertex(-1, +1, +1)
	c = p.vertex(+1, +1, -1)
	d = p.vertex(+1, -1, +1)
	p.face(a, b, c)
	p.face(b, c, d)
	p.face(c, d, a)
	p.face(d, a, b)
	return p


def cube():
	p = polyhedron()
	a = p.vertex(-1, -1, -1)
	b = p.vertex(-1, -1, +1)
	c = p.vertex(-1, +1, -1)
	d = p.vertex(-1, +1, +1)
	e = p.vertex(+1, -1, -1)
	f = p.vertex(+1, -1, +1)
	g = p.vertex(+1, +1, -1)
	h = p.vertex(+1, +1, +1)
	p.face(a, b, d, c)
	p.face(e, f, h, g)
	p.face(a, c, g, e)
	p.face(b, d, h, f)
	p.face(a, e, f, b)
	p.face(c, g, h, d)
	return p


def octahedron():
	p = polyhedron()
	a = p.vertex(-1, 0, 0)
	b = p.vertex(+1, 0, 0)
	c = p.vertex(0, -1, 0)
	d = p.vertex(0, +1, 0)
	e = p.vertex(0, 0, -1)
	f = p.vertex(0, 0, +1)
	p.face(a, c, e)
	p.face(a, c, f)
	p.face(a, d, e)
	p.face(a, d, f)
	p.face(b, c, e)
	p.face(b, c, f)
	p.face(b, d, e)
	p.face(b, d, f)
	return p


def dodecahedron():
	p = polyhedron()
	# Simplest way to define a dodecahedron is to raise a roof on
	# each face of a cube. So we start with the cube vertices.
	a = p.vertex(-1, -1, -1)
	b = p.vertex(-1, -1, +1)
	c = p.vertex(-1, +1, -1)
	d = p.vertex(-1, +1, +1)
	e = p.vertex(+1, -1, -1)
	f = p.vertex(+1, -1, +1)
	g = p.vertex(+1, +1, -1)
	h = p.vertex(+1, +1, +1)
	# This cube has side length 2. So the side length of the
	# dodecahedron will be 2/phi.
	phi = (1.0 + math.sqrt(5)) / 2.0
	side = 2.0 / phi
	# For a given roof vertex, then...
	#
	# +--------+
	#  |\      /|
	#  | \____/ |
	#  | /    \ |
	#  |/      \|
	#  +--------+
	#
	# ... the coordinates of the rightmost roof vertex are 0 in one
	# direction, side/2 in another, and z in a third, where z is 1
	# plus a length computed to make the diagonal roof edges equal
	# in length to side. Thus
	#
	#   1^2 + (1-side/2)^2 + (z-1)^2 == side^2
	z = 1 + math.sqrt(side ** 2 - (1 - side / 2) ** 2 - 1)
	y = side / 2

	ab = p.vertex(-z, -y, 0)
	cd = p.vertex(-z, +y, 0)
	ef = p.vertex(+z, -y, 0)
	gh = p.vertex(+z, +y, 0)
	ae = p.vertex(0, -z, -y)
	bf = p.vertex(0, -z, +y)
	cg = p.vertex(0, +z, -y)
	dh = p.vertex(0, +z, +y)
	ac = p.vertex(-y, 0, -z)
	eg = p.vertex(+y, 0, -z)
	bd = p.vertex(-y, 0, +z)
	fh = p.vertex(+y, 0, +z)

	p.face(a, ab, b, bf, ae)
	p.face(e, ef, f, bf, ae)
	p.face(c, cd, d, dh, cg)
	p.face(g, gh, h, dh, cg)
	p.face(a, ac, c, cd, ab)
	p.face(b, bd, d, cd, ab)
	p.face(e, eg, g, gh, ef)
	p.face(f, fh, h, gh, ef)
	p.face(a, ae, e, eg, ac)
	p.face(c, cg, g, eg, ac)
	p.face(b, bf, f, fh, bd)
	p.face(d, dh, h, fh, bd)

	return p


def icosahedron():
	p = polyhedron()
	# The classical easy way to define an icosahedron in Cartesian
	# coordinates is to imagine three interlocking cards along the
	# three axes, each in golden ratio.
	phi = (1.0 + math.sqrt(5)) / 2.0

	a = p.vertex(0, -1, -phi)
	b = p.vertex(0, -1, +phi)
	c = p.vertex(0, +1, -phi)
	d = p.vertex(0, +1, +phi)

	e = p.vertex(-1, -phi, 0)
	f = p.vertex(-1, +phi, 0)
	g = p.vertex(+1, -phi, 0)
	h = p.vertex(+1, +phi, 0)

	i = p.vertex(-phi, 0, -1)
	j = p.vertex(+phi, 0, -1)
	k = p.vertex(-phi, 0, +1)
	l = p.vertex(+phi, 0, +1)

	# Now. We have a bunch of faces which use the short edge of one
	# of the cards.
	p.face(a, c, i)
	p.face(a, c, j)
	p.face(b, d, k)
	p.face(b, d, l)
	p.face(e, g, a)
	p.face(e, g, b)
	p.face(f, h, c)
	p.face(f, h, d)
	p.face(i, k, e)
	p.face(i, k, f)
	p.face(j, l, g)
	p.face(j, l, h)

	# And then we have eight more faces which each use one vertex
	# from each card.
	p.face(a, e, i)
	p.face(a, g, j)
	p.face(b, e, k)
	p.face(b, g, l)
	p.face(c, f, i)
	p.face(c, h, j)
	p.face(d, f, k)
	p.face(d, h, l)

	return p


def edges(p):
	# Return a list of all the edges of a polyhedron, in the form
	# of a list of 2-tuples containing vertex names.
	elist = []
	for f in p.flist:
		vl = p.faces[f]
		for i in range(len(vl)):
			v1, v2 = vl[i - 1], vl[i]  # i==0 neatly causes wraparound
			if v1 < v2:  # only add each edge once
				elist.append((v1, v2))
	return elist


def edgemap(p):
	# Return a mapping from ordered vertex pairs to the face
	# containing that edge.
	emap = {}
	for f in p.flist:
		vl = p.faces[f]
		for i in range(len(vl)):
			v1, v2 = vl[i - 1], vl[i]  # i==0 neatly causes wraparound
			assert not (v1, v2) in emap
			emap[(v1, v2)] = f
	return emap


class dual:
	# This wrapper class takes as input a function returning a
	# polyhedron object, and implements a callable object which
	# returns the dual of that polyhedron.
	def __init__(self, p):
		self.p = p

	def __call__(self):
		p = self.p()
		pout = polyhedron()

		# The vertices of the new polyhedron are constructed from
		# the faces of the original.
		self.f2v = {}
		for key in p.flist:
			# We already have a normal vector for the face. So take
			# the dot product of that normal vector with each
			# vertex on the face, take the average (just in case),
			# invert the length, and there's our vertex.
			nx, ny, nz = p.normals[key]
			nl = math.sqrt(nx * nx + ny * ny + nz * nz)
			nx, ny, nz = nx / nl, ny / nl, nz / nl
			dps = dpn = 0
			for v in p.faces[key]:
				x, y, z = p.vertices[v]
				dps = dps + x * nx + y * ny + z * nz
				dpn = dpn + 1
			dist = dpn / dps  # reciprocal of average of dot products
			nx, ny, nz = nx * dist, ny * dist, nz * dist
			self.f2v[key] = pout.vertex(nx, ny, nz)

		edges = edgemap(p)

		# Now we can output the faces, one (of course) for each
		# vertex of the old polyhedron.
		self.v2f = {}
		for key in p.vlist:
			# Start by finding one face of the old polyhedron
			# which contains this vertex. This gives us one
			# vertex of the new one which is on this face.
			fstart = None
			for f in p.flist:
				if key in p.faces[f]:
					fstart = f
					break
			assert fstart != None

			f = fstart
			vl = []
			while 1:
				# Now find the edge of that face which comes
				# _in_ to that vertex, and then look its
				# reverse up in the edge database. This gives
				# us the next face going round.
				vl.append(self.f2v[f])
				fl = p.faces[f]
				i = fl.index(key)
				v1, v2 = fl[i - 1], fl[i]
				f = edges[(v2, v1)]
				if f == fstart:
					break
			self.v2f[key] = pout.facelist(vl)

		return pout


class edgedual:
	# This wrapper class takes as input two functions returning
	# dual polyhedron objects, and implements a callable object
	# which returns the edge dual of those polyhedra.
	#
	# FIXME: this is currently unused (since dual() does a better
	# job of generating the rhombic dodecahedron and rhombic
	# triacontahedron), and also it would benefit from only needing
	# one polyhedron as input (since it could construct the dual
	# adequately as it went).
	def __init__(self, p1, p2):
		self.p1 = p1
		self.p2 = p2

	def __call__(self):
		p1 = self.p1()
		p2 = self.p2()
		pout = polyhedron()
		# Find the edges of each.
		e1 = edges(p1)
		e2 = edges(p2)
		# For each polyhedron, find the radius vectors from the
		# origin to the middle of each edge. As a by-produt of this
		# phase, we also find the scale factor which normalises
		# each polyhedron to the size where those radii have length
		# 1.
		r1 = {}
		r2 = {}
		for p, e, r in (p1, e1, r1), (p2, e2, r2):
			sl = sn = 0
			for v1, v2 in e:
				x1, y1, z1 = p.vertices[v1]
				x2, y2, z2 = p.vertices[v2]
				x, y, z = (x1 + x2) / 2, (y1 + y2) / 2, (z1 + z2) / 2
				l = math.sqrt(x * x + y * y + z * z)
				r[(v1, v2)] = x, y, z
				sl = sl + l
				sn = sn + 1
			r[None] = sn / sl
		# Now match up the edges between the two polyhedra. As a
		# test of duality, we deliberately check that the mapping
		# we end up with is a bijection.
		emap = {}
		scale1 = r1[None]
		scale2 = r2[None]
		for e in e2:
			n = r2[e]
			n = (n[0] * scale2, n[1] * scale2, n[2] * scale2)
			best = None
			bestdist = None
			for eprime in e1:
				nprime = r1[eprime]
				nprime = (nprime[0] * scale2, nprime[1] * scale2, nprime[2] * scale2)
				dist = (nprime[0] - n[0]) ** 2 + \
				       (nprime[1] - n[1]) ** 2 + (nprime[2] - n[2]) ** 2
				if bestdist == None or dist < bestdist:
					bestdist = dist
					best = eprime
			# Ensure the function from e2 to e1 is injective, by
			# making sure we never overwrite an entry in emap.
			assert (not best in emap)
			emap[best] = e
		# Ensure the function from e2 to e1 is surjective, by
		# making sure everything in e1 is covered.
		assert len(emap) == len(e1)

		# Output the edge dual's vertices.
		vmap1 = {}
		vmap2 = {}
		for p, r, vmap in (p1, r1, vmap1), (p2, r2, vmap2):
			scale = r[None]
			for v in p.vlist:
				x, y, z = p.vertices[v]
				vmap[v] = pout.vertex(x * scale, y * scale, z * scale)

		# And output the faces.
		for e1, e2 in emap.items():
			pout.face(vmap1[e1[0]], vmap2[e2[0]], vmap1[e1[1]], vmap2[e2[1]])

		return pout


def edgeratio(x, y):
	# Determine the ratio between the edge lengths of an x-sided
	# and y-sided regular polygon with the same inscribed circle.
	return math.tan(math.pi / y) / math.tan(math.pi / x)


class truncate:
	# This wrapper class takes a function returning a polyhedron
	# object, and implements a callable object which returns a
	# truncated form of that polyhedron. Parametrised by a single
	# real, which indicates the proportion of the original edges to
	# leave. (0 means truncate at the midpoint; 1 means the null
	# truncation right at the end.)
	def __init__(self, p, r):
		self.p = p
		self.r = r

	def __call__(self):
		p = self.p()
		pout = polyhedron()
		e = edges(p)
		newv = {}
		r1 = (1.0 + self.r) / 2
		r2 = (1.0 - self.r) / 2
		for v1, v2 in e:
			# Find the locations of each vertex.
			x1, y1, z1 = p.vertices[v1]
			x2, y2, z2 = p.vertices[v2]
			# Find the truncation points.
			xa, ya, za = r1 * x1 + r2 * x2, r1 * y1 + r2 * y2, r1 * z1 + r2 * z2
			va = pout.vertex(xa, ya, za)
			if self.r != 0:
				xb, yb, zb = r2 * x1 + r1 * x2, r2 * y1 + r1 * y2, r2 * z1 + r1 * z2
				vb = pout.vertex(xb, yb, zb)
				newv[(v1, v2)] = [va, vb]
				newv[(v2, v1)] = [vb, va]
			else:
				newv[(v1, v2)] = newv[(v2, v1)] = [va]
		# Now we have our vertex set. Construct the truncated faces.
		for f in p.flist:
			vl = p.faces[f]
			newvl = []
			for i in range(len(vl)):
				v1, v2 = vl[i - 1], vl[i]  # -1 causes wrap
				newvl.extend(newv[(v1, v2)])
			pout.facelist(newvl)
		# And also we need to construct the _truncation_ faces.
		em = edgemap(p)
		for v in p.vlist:
			# First find a vertex connected to v.
			vc = None
			for v1, v2 in e:
				if v1 == v:
					vc = v2
					break
				elif v2 == v:
					vc = v1
					break
			assert vc != None
			# Now repeatedly find the (v,vc) edge, and use the
			# edgemap to find another vertex connected to v.
			newvl = []
			vs = vc
			while 1:
				newvl.append(newv[(v, vc)][0])
				f = em[(v, vc)]
				fl = p.faces[f]
				i = fl.index(v)
				vc = fl[i - 1]  # -1 wraps
				if vc == vs:
					break
			pout.facelist(newvl)

		return pout


class rhombi:
	# This wrapper class takes a function returning a polyhedron
	# object, and constructs one of the `rhombi' forms related to
	# it and its dual.
	def __init__(self, p, forder, vorder, great):
		self.p = p
		self.forder = forder
		self.vorder = vorder
		self.great = great

	def __call__(self):
		p = self.p()
		pout = polyhedron()

		if self.great:
			pratio = edgeratio(self.forder, self.forder * 2)
			dratio = edgeratio(self.vorder, self.vorder * 2)

		# Start by finding the polyhedron's dual, and retrieving
		# the correspondence mappings from the dual object which
		# indicate which faces go with which vertices and vice
		# versa.
		dobj = dual(self.p)
		d = dobj()
		f2v = dobj.f2v
		v2f = dobj.v2f

		e = edges(p)
		em = edgemap(p)
		de = edges(d)

		# Find the scale factor which makes the two polyhedra have
		# compatible face lengths. (For a small rhombi form, this
		# is just a question of matching the edge lengths. For a
		# great one, we must match the _post-truncation_ edge
		# lengths.)
		e1 = e[0]
		x1, y1, z1 = p.vertices[e1[0]]
		x2, y2, z2 = p.vertices[e1[1]]
		elen = math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2 + (z2 - z1) ** 2)
		e1 = de[0]
		x1, y1, z1 = d.vertices[e1[0]]
		x2, y2, z2 = d.vertices[e1[1]]
		delen = math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2 + (z2 - z1) ** 2)
		if self.great:
			elen = elen * pratio
			delen = delen * dratio
		scale = elen / delen
		# Actually scale the dual polyhedron object.
		for dv in d.vertices.keys():
			x, y, z = d.vertices[dv]
			d.vertices[dv] = x * scale, y * scale, z * scale

		# Find the distance by which each face must be pushed out
		# before they meet in the right way. For a small rhombi
		# form, this means making vertices of adjacent faces meet;
		# for a great one, post-truncation vertices of adjacent
		# faces (or equivalently the midpoints of truncation edges)
		# must meet.
		#
		# To do this, we first find a face of p and a face of d
		# which are `adjacent' in the sense that each face
		# corresponds to a vertex of the other face. Then we
		# determine a pair of points which we intend to bring into
		# congruence (either vertices of the original faces, or
		# midpoints of truncation edges). Then we mentally draw
		# this diagram
		#
		#       O
		#       |\
		#       | \    ,D
		#       |  \ ,'
		#       |  ,Q
		#   A---P---B
		#       C   |
		#        \  |
		#         \ |
		#          \|
		#           X
		#
		# Here O is the origin; the lines APB and CQD are the
		# projections of the two faces; and B and C are the points
		# we are trying to bring together at X.
		#
		# A quick bit of trig suggests that the distance XO
		# measured parallel to OP is equal to
		#   (PB / tan POQ) + (QC / sin POQ)
		# and hence by symmetry XO measured perpendicular to CD is
		# equal to
		#   (QC / tan POQ) + (PB / sin POQ).
		e1 = e[0]
		v = e1[0]
		f = em[e1]
		dv = f2v[f]
		df = v2f[v]
		# Find the angle theta (POQ above) between the two faces:
		# arccos of the dot product of the normal vectors.
		nx1, ny1, nz1 = p.normals[f]
		nx2, ny2, nz2 = d.normals[df]
		theta = math.acos(nx1 * nx2 + ny1 * ny2 + nz1 * nz2)
		# Find the two distances PB and QC.
		if self.great:
			# The distance from the centre of a face to the
			# midpoint of a truncation edge will be equal to the
			# distance from the centre of the face to the midpoint
			# of the original edge, so we'll just measure that for
			# the moment.
			x1, y1, z1 = p.vertices[e1[0]]
			x2, y2, z2 = p.vertices[e1[1]]
			px, py, pz = (x1 + x2) / 2, (y1 + y2) / 2, (z1 + z2) / 2
			# Now the same in the dual.
			x1, y1, z1 = d.vertices[f2v[em[e1]]]
			x2, y2, z2 = d.vertices[f2v[em[(e1[1], e1[0])]]]
			dx, dy, dz = (x1 + x2) / 2, (y1 + y2) / 2, (z1 + z2) / 2
		else:
			# We want the original vertices of the original faces
			# to come into congruence, so we measure the centre-to-
			# vertex distance for a face of each polyhedron.
			px, py, pz = p.vertices[v]
			dx, dy, dz = d.vertices[dv]
		pdp = px * nx1 + py * ny1 + pz * nz1
		cx, cy, cz = nx1 * pdp, ny1 * pdp, nz1 * pdp
		pdist = math.sqrt((px - cx) ** 2 + (py - cy) ** 2 + (pz - cz) ** 2)
		# Now the same in the dual.
		ddp = dx * nx2 + dy * ny2 + dz * nz2
		cx, cy, cz = nx2 * ddp, ny2 * ddp, nz2 * ddp
		ddist = math.sqrt((dx - cx) ** 2 + (dy - cy) ** 2 + (dz - cz) ** 2)
		# Now we can compute the extra distance we must push the p
		# faces and the d faces.
		ppush = (pdist / math.tan(theta)) + (ddist / math.sin(theta)) - pdp
		dpush = (ddist / math.tan(theta)) + (pdist / math.sin(theta)) - ddp

		# Construct the actual vertices of the solid. Every vertex
		# occurs precisely twice, once due to a transformed face of
		# the original solid and once due to a transformed face of
		# the dual. Probably easiest to go with only one of these.
		#
		# For a great rhombi form, this is where we truncate.
		pvmap = {}  # maps (face,vertex,othervertex) of p to new vertex
		for f in p.flist:
			vl = p.faces[f]
			nx, ny, nz = p.normals[f]
			px, py, pz = nx * ppush, ny * ppush, nz * ppush
			for i in range(len(vl)):
				v0, v1, v2 = vl[i - 2], vl[i - 1], vl[i]  # -1 and -2 wrap
				x1, y1, z1 = p.vertices[v1]
				x2, y2, z2 = p.vertices[v2]
				if self.great:
					# Truncate.
					r1 = (1.0 + pratio) / 2
					r2 = (1.0 - pratio) / 2
					xa, ya, za = r1 * x1 + r2 * x2, r1 * y1 + r2 * y2, r1 * z1 + r2 * z2
					xb, yb, zb = r2 * x1 + r1 * x2, r2 * y1 + r1 * y2, r2 * z1 + r1 * z2
					pvmap[(f, v1, v2)] = pout.vertex(xa + px, ya + py, za + pz)
					pvmap[(f, v2, v1)] = pout.vertex(xb + px, yb + py, zb + pz)
				else:
					nv = pout.vertex(x1 + px, y1 + py, z1 + pz)
					pvmap[(f, v1, v2)] = pvmap[(f, v1, v0)] = nv
		# Build other indexes of the same vertex set.
		pfmap = {}  # maps (face,vertex,otherface) of p to new vertex
		for f, v1, v2 in pvmap.keys():
			if em[(v1, v2)] == f:
				f2 = em[(v2, v1)]
			else:
				assert em[(v2, v1)] == f
				f2 = em[(v1, v2)]
			pfmap[f, v1, f2] = pvmap[(f, v1, v2)]
		dvmap = {}  # maps (face,vertex,othervertex) of d to new vertex
		for f1, v, f2 in pfmap.keys():
			dvmap[v2f[v], f2v[f1], f2v[f2]] = pfmap[(f1, v, f2)]

		# Enumerate the faces of the original solid.
		for f in p.flist:
			vl = p.faces[f]
			newvl = []
			for i in range(len(vl)):
				v0, v1, v2 = vl[i - 2], vl[i - 1], vl[i]  # -2 and -1 wrap
				va = pvmap[(f, v1, v0)]
				vb = pvmap[(f, v1, v2)]
				newvl.append(va)
				if vb != va:
					newvl.append(vb)
			pout.facelist(newvl)

		# Enumerate the faces of the dual.
		for f in d.flist:
			vl = d.faces[f]
			newvl = []
			for i in range(len(vl)):
				v0, v1, v2 = vl[i - 2], vl[i - 1], vl[i]  # -2 and -1 wrap
				va = dvmap[(f, v1, v0)]
				vb = dvmap[(f, v1, v2)]
				newvl.append(va)
				if vb != va:
					newvl.append(vb)
			pout.facelist(newvl)

		# Finally enumerate the square faces due to the edges of
		# the original solid.
		for v1, v2 in e:
			f1 = em[(v1, v2)]
			f2 = em[(v2, v1)]
			newvl = []
			newvl.append(pfmap[(f1, v1, f2)])
			newvl.append(pfmap[(f2, v1, f1)])
			newvl.append(pfmap[(f2, v2, f1)])
			newvl.append(pfmap[(f1, v2, f2)])
			pout.facelist(newvl)

		return pout


# class output:
# 	def __init__(self, fn):
# 		self.fn = fn
#
# 	def __call__(self, sop):
# 		p = self.fn()
# 		p.addToSOP(sop)

polyhedra = {
	"tetrahedron": tetrahedron,
	"cube": cube,
	"octahedron": octahedron,
	"dodecahedron": dodecahedron,
	"icosahedron": icosahedron,
	"cuboctahedron": truncate(cube, 0),
	"icosidodecahedron": truncate(dodecahedron, 0),
	"truncatedtetrahedron": truncate(tetrahedron, edgeratio(3, 6)),
	"truncatedcube": truncate(cube, edgeratio(4, 8)),
	"truncatedoctahedron": truncate(octahedron, edgeratio(3, 6)),
	"truncateddodecahedron": truncate(dodecahedron, edgeratio(5, 10)),
	"truncatedicosahedron": truncate(icosahedron, edgeratio(3, 6)),
	"smallrhombicuboctahedron": rhombi(cube, 4, 3, 0),
	"greatrhombicuboctahedron": rhombi(cube, 4, 3, 1),
	"smallrhombicosidodecahedron": rhombi(dodecahedron, 5, 3, 0),
	"greatrhombicosidodecahedron": rhombi(dodecahedron, 5, 3, 1),
	"rhombicdodecahedron": dual(truncate(cube, 0)),
	"rhombictriacontahedron": dual(truncate(dodecahedron, 0))
}

typeNames = [
	"tetrahedron",
	"cube",
	"octahedron",
	"dodecahedron",
	"icosahedron",
	"cuboctahedron",
	"icosidodecahedron",
	"truncatedtetrahedron",
	"truncatedcube",
	"truncatedoctahedron",
	"truncateddodecahedron",
	"truncatedicosahedron",
	"smallrhombicuboctahedron",
	"greatrhombicuboctahedron",
	"smallrhombicosidodecahedron",
	"greatrhombicosidodecahedron",
	"rhombicdodecahedron",
	"rhombictriacontahedron"
]

def getTypeNames():
	# dict keys are not ordered nicely
	# return list(polyhedra.keys())
	return typeNames

def addPolyhedronToSOP(name, sop, normalize=False):
	generator = polyhedra[name]
	poly = generator()
	if normalize:
		poly.normalize()
	poly.addToSOP(sop)
