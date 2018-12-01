print('picture_frame initializing')

def _ChopSet(outchop, **chans):
	for name in sorted(chans.keys()):
		outchop.appendChan(name)[0] = chans[name]

def _SetSides(outchop, name, top, right, bottom, left):
	_ChopSet(outchop, **{
		name + 'top': top,
		name + 'right': right,
		name + 'bottom': bottom,
		name + 'left': left,
	})

def _OutputRect(outchop, name):
	pass

class Rect:
	pass

def _normalize(vals, low=None, high=None):
	if low is None:
		low = min(vals)
	if high is None:
		high = max(vals)
	return remapall(vals, low, high, 0, 1)

def remapall(vals, fromMin, fromMax, toMin, toMax):
	return [
		mod.tdu.remap(v, fromMin, fromMax, toMin, toMax)
		for v in vals
	]

def BuildFrameVals(outchop, invals, renderw, renderh):
	outchop.clear()
	innersizex, innersizey, framex, framey, padtop, padbottom = [
		float(c)
		for c in invals.chans('Innersize[xy]', 'Framewidth[xy]', 'Paddingtop', 'Paddingbottom')
	]

	_ChopSet(
		outchop,
		innersizex=innersizex,
		innersizey=innersizey,
	)
	_ChopSet(
		outchop,
		framewidthx=framex, framewidthy=framey)
	_SetSides(
		outchop, 'inner',
		top=innersizey / 2,
		right=innersizex / 2,
		bottom=-innersizey / 2,
		left=-innersizex / 2,
	)
	outersizex = innersizex + (2 * framex)
	outersizey = innersizey + (2 * framey)
	_ChopSet(
		outchop,
		outersizex=outersizex, outersizey=outersizey)
	_SetSides(
		outchop, 'outer',
		top=outersizey / 2,
		right=outersizex / 2,
		bottom=-outersizey / 2,
		left=-outersizex / 2,
	)
	outersizex = innersizex + (2 * framex)
	outersizey = innersizey + (2 * framey)
	_ChopSet(
		outchop,
		outersizex=outersizex, outersizey=outersizey)
	_SetSides(
		outchop, 'outer',
		top=outersizey / 2,
		right=outersizex / 2,
		bottom=-outersizey / 2,
		left=-outersizex / 2,
	)
