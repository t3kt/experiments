
def getLabel(ptnum, tbl):
	ptrow = int(ptnum) + 1
	parts = [
		tbl[ptrow, 0].val,
		'(%s, %s, %s)' % (tbl[ptrow, "gridx"].val, tbl[ptrow, "gridy"].val, tbl[ptrow, "gridz"].val)
	]
	return '\n'.join(parts)

def buildIntersectionTable(dat, grp, scaling):
	dat.clear()
	dat.appendRow(["name", "gridx", "gridy", "gridz", "rawx", "rawy", "rawz", "path"])
	for obj in grp.children:
		if obj.type == 'null':
			dat.appendRow([
				obj.name,
				int(obj.par.tx / scaling),
				int(obj.par.ty / scaling),
				int(obj.par.tz / scaling),
				obj.par.tx,
				obj.par.ty,
				obj.par.tz,
				obj.path
			])

neighborOffsets = (
	(-1, 0, 0),
	(1, 0, 0),
	(0, -1, 0),
	(0, 1, 0),
	(0, 0, -1),
	(0, 0, 1)
)

def findNeighbors(inters, i):
	ix, iy, iz = inters[i, "gridx"], inters[i, "gridy"], inters[i, "gridz"]
	for nx, ny, nz in neighborOffsets:
		ni = findIntersection(inters, (ix + nx, iy + ny, iz + nz))
		if ni is not None:
			yield ni

def findIntersection(inters, pos):
	for i in range(1, inters.numRows):
		if not inters[i, "gridx"].val == str(pos[0]):
			continue
		if not inters[i, "gridy"].val == str(pos[1]):
			continue
		if not inters[i, "gridz"].val == str(pos[2]):
			continue
		return i

def buildConnectionTable(dat, inters):
	dat.clear()
	dat.appendRow(['source', 'target'])
	for i in range(1, inters.numRows):
		for ni in findNeighbors(inters, i):
			dat.appendRow([inters[i, "name"], inters[ni, "name"]])