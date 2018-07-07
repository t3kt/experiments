from io import StringIO

if False:
	from _stubs import *

import experiments_pkg_path_init

import svg.svg as svg
import svg.geometry as geometry

def ParseSvgXml(text):
	if not text:
		return None
	f = StringIO(text)
	return svg.Svg(f)

def BuildPath(dest: 'COMP', name: str, path: svg.Path):
	sop = dest.op(name)
	if sop is None:
		sop = dest.create(scriptSOP, name)
		sop.par.callbacks = ''
		for o in sop.docked:
			o.destroy()
	return _BuildPath(sop, path)

def _BuildPath(sop, path: svg.Path):
	origin = (0, 0)
	closed = False
	points = []
	for item in path.items:
		# there's something strange with the way it does isinstance
		# so using ugly string matching instead
		print('omg lol {} class name: {}'.format(item, item.__class__.__name__))
		if 'MoveTo' in item.__class__.__name__:
			origin = item.dest
			points.append(item.dest.coord())
		elif 'Segment' in item.__class__.__name__:
			if item.end == origin:
				closed = True
				break
			points.append(item.end.coord())
		else:
			raise Exception('Unsupported path item: {}'.format(item))
	sop.clear()
	poly = sop.appendPoly(len(points), closed=closed)
	for i, pos in enumerate(points):
		poly[i].point.x = pos[0]
		poly[i].point.y = pos[1]
	return sop


def BuildPattern_12_6_4(dest: 'COMP', pathxml):
	doc = ParseSvgXml(pathxml)
	for i, group in enumerate(doc.items[0].items[0].items):
		for j, path in enumerate(group.items):
			sop = BuildPath(dest, 'p__iteration{}_part{}'.format(i+1, j+1), path)
			sop.nodeX = 200 + i * 200
			sop.nodeY = -400 + j * 150
