print('midifighter64.py initializing')

try:
	import common_base as base
except ImportError:
	try:
		import base
	except ImportError:
		import common.lib.base as base
try:
	import common_util as util
except ImportError:
	try:
		import util
	except ImportError:
		import common.lib.util as util

if False:
	from common.lib._stubs import *

from typing import List

# 56	57	58	59	|	60	61	62	63
# 48	49	50	51	|	52	53	54	55
# 40	41	42	43	|	44	45	46	47
# 32	33	34	35	|	36	37	38	39
# ---
# 24	25	26	27	|	28	29	30	31
# 16	17	18	19	|	20|	21	22	23
#  8	 9	10	11	|	12	13	14	15
#  0	 1	 2	 3	|	 4	 5	 6	 7


# E0 = 28
# C3 = 60
# E3 = 62

# m.sendNoteOn(3, C3, 13) <-- sets btn at [3,5] to yellow

blue = 0

lightred = 4
brightred = 5
darkred = 6


class Mapping:
	def __init__(self, i, x, y, note):
		self.i, self.x, self.y, self.note = i, x, y, note
		self.name = 'b{}'.format(i)
		self.inputnote = note
		self.animnote = note - 36  # 3 octaves lower

def _buildmappings() -> List[Mapping]:
	mappinglist = []

	def _add(i, x, y, note):
		for vals in zip(i, x, y, note):
			mappinglist.append(
				Mapping(i=vals[0]+1, x=vals[1], y=vals[2], note=vals[3]))

	def _add4row(i, x, y, note):
		_add(
			range(i, i+4),
			range(x, x+4),
			[y] * 4,
			range(note, note+4))

	_add4row(i=0, x=0, y=0, note=36)
	_add4row(i=4, x=4, y=0, note=68)
	_add4row(i=8, x=0, y=1, note=40)
	_add4row(i=12, x=4, y=1, note=72)
	_add4row(i=16, x=0, y=2, note=44)
	_add4row(i=20, x=4, y=2, note=76)
	_add4row(i=24, x=0, y=3, note=48)
	_add4row(i=28, x=4, y=3, note=80)
	_add4row(i=32, x=0, y=4, note=52)
	_add4row(i=36, x=4, y=4, note=84)
	_add4row(i=40, x=0, y=5, note=56)
	_add4row(i=44, x=4, y=5, note=88)
	_add4row(i=48, x=0, y=6, note=60)
	_add4row(i=52, x=4, y=6, note=92)
	_add4row(i=56, x=0, y=7, note=64)
	_add4row(i=60, x=4, y=7, note=96)

	return mappinglist


mappings = _buildmappings()
mappingsbyname = {m.name: m for m in mappings}
mappingsbyindex = {m.i: m for m in mappings}
mappingrows = [
	[m for m in mappings if m.y == y]
	for y in range(0, 9)
]
mappingcols = [
	[m for m in mappings if m.x == x]
	for x in range(0, 9)
]

def _map(btn):
	if isinstance(btn, str):
		if not btn.startswith('b'):
			return None
		btn = btn[1:]
	try:
		btn = int(btn)
	except ValueError:
		return None
	return mappings[btn - 1] if 1 <= btn <= 64 else None

def _colorvalue(color):
	return color or 0


class MidiFighter(base.Extension):
	def __init__(self, comp):
		super().__init__(comp)
		self.midiin = comp.op('./midiin')
		self.midiout = comp.op('./midiout')

	@staticmethod
	def WriteMappings(dat):
		dat.clear()
		dat.appendRow(['name', 'x', 'y', 'note', 'inputnote'])
		for m in mappings:
			dat.appendRow([m.name, m.x, m.y, m.note, m.inputnote])

	def SendNote(self, chan, note, vel):
		self.midiout.sendNoteOn(chan, note, vel)

	def SetColor(self, btn, color):
		m = _map(btn)
		if m is None:
			return
		val = _colorvalue(color)
		self.SendNote(3, m.note, val)

	def SetAllColor(self, color):
		val = _colorvalue(color)
		for m in mappings:
			self.SendNote(3, m.note, val)

	def ResetColor(self, btn):
		self.SetColor(btn, 0)

	def ResetAllColor(self):
		self.SetAllColor(0)

