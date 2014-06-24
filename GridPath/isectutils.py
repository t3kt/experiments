def getLabel(ptnum, tbl):
	ptrow = int(ptnum) + 1
	parts = [
		tbl[ptrow, 0].val,
		'(%s, %s, %s)' % (tbl[ptrow, "gridx"].val, tbl[ptrow, "gridy"].val, tbl[ptrow, "gridz"].val)
	]
	return '\n'.join(parts)

def buildIntersectionTable(dat, grp, scaling):
	dat.clear()
	dat.appendRow(["name", "path", "rawx", "rawy", "rawz", "gridx", "gridy", "gridz"])
	for obj in grp.children:
		if obj.type == 'null':
			dat.appendRow([
				obj.name,
				obj.path,
				obj.par.tx,
				obj.par.ty,
				obj.par.tz,
				int(obj.par.tx / scaling),
				int(obj.par.ty / scaling),
				int(obj.par.tz / scaling)
			])

