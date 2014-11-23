from math import pow, sqrt

def cook(sop):
	sop.clear()
	sop.pointAttribs.create('Cd')
	sop.pointAttribs.create('Q', [0.0])
	inpoints = sop.inputs[0].points
	numpoints = len(inpoints)
	limits = sop.par.value0x.eval(), sop.par.value0y.eval()
	alpharange = sop.par.value1x.eval(), sop.par.value1y.eval()
	for i in range(numpoints):
		ipt1 = inpoints[i]
		for j in range(i + 1, numpoints):
			ipt2 = inpoints[j]
			d = sqrdist(ipt1, ipt2)
			if limits[0] < d < limits[1]:
				line = sop.appendPoly(2, closed=False, addPoints=True)
				pt1, pt2 = line[0].point, line[1].point
				pt1.x, pt1.y, pt1.z = ipt1.x, ipt1.y, ipt1.z
				pt2.x, pt2.y, pt2.z = ipt2.x, ipt2.y, ipt2.z
				alpha = scale(d, limits, alpharange)
				pt1.Cd = [1, 1, 1, alpha]
				pt2.Cd = [1, 1, 1, alpha]
				pt1.Q = [d]
				pt2.Q = [d]
				pass
			
		
	return

def sqrdist(pt1, pt2):
	return sqrt(pow(pt2.x - pt1.x, 2) + pow(pt2.y - pt1.y, 2) + pow(pt2.z - pt1.z, 2))

def scale(x, inrange, outrange):
	return (x - inrange[0]) * (outrange[1] - outrange[0])/(inrange[1] - inrange[0]) + outrange[0]