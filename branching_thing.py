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

import random

class Navigator(base.Extension):
	def __init__(self, comp):
		super().__init__(comp)
		self._timer = comp.op('./timer')
		self._options = comp.op('./options')
		self._connections = comp.op('./connections')
		self._indextrail = comp.op('./set_index_trail')

	def Start(self):
		self._timer.par.start.pulse()
		self.Reset(hard=True)

	def ChooseNext(self):
		currentindex = int(self.comp.par.Current)
		nextindex = int(self.comp.par.Next)
		restartafterleaf = self.comp.par.Resetafterleaf
		choices = [int(i) for i in self._options.col(0)] if self._options.numRows > 0 else []
		if restartafterleaf:
			choices = [i for i in choices if i > nextindex]
		if not choices:
			self.Reset(hard=False)
		else:
			newindex = random.choice(choices)
			self.comp.par.Step += 1
			self.comp.par.Current = nextindex
			self.comp.par.Next = newindex
			self._indextrail.appendRow([newindex])

	def Reset(self, hard=False):
		newindex = 0
		self.comp.par.Step = 0
		self.comp.par.Current = 0 if hard else self.comp.par.Next
		self.comp.par.Next = 0
		self._indextrail.clear()
		self._indextrail.appendRow(['index'])
		self._indextrail.appendRow([0])
