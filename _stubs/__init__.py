# trick pycharm

class _Expando:
	def __init__(self):
		pass

mod = _Expando()
ui = _Expando()
ui.panes = []
ui.panes.current = None
ui.status = ''
PaneType = _Expando()
PaneType.NETWORKEDITOR = None

class project:
	name = ''

class _Parent:
	def __call__(self, *args, **kwargs):
		return op()

	def __getattr__(self, item):
		pass

class op:
	def __init__(self, arg=None):
		self.path = ''
		self.name = ''
		self.par = _Expando()
		self.customTuplets = []
		self.parent = _Parent()
		self.op = op
		self.storage = {}
		self.isCOMP = False

	def ops(self, *args): return [op()]

	def openParameters(self): pass

	def openViewer(self, unique=False, borders=True): pass

	def closeViewer(self): pass

	def unstore(self, name): pass

	def findChildren(self, maxDepth=1, tags=None): return []

	TDResources = _Expando()

op.TDResources = _Expando()
op.TDResources.op = op

def ops(*paths):
	return []

def var(name):
	return ''

class _TD_ERROR(Exception):
	pass

class td:
	error = _TD_ERROR

	@staticmethod
	def run(codeorwhatever, delayFrames=0): pass

del _TD_ERROR

class tdu:
	@staticmethod
	def legalName(s):
		return s

	@staticmethod
	def clamp(inputVal, min, max):
		return inputVal

	@staticmethod
	def remap(inputVal, fromMin, fromMax, toMin, toMax):
		return inputVal

	class Dependency:
		def __init__(self, _=None):
			self.val = None

		def modified(self): pass

JustifyType = _Expando()
JustifyType.TOPLEFT, JustifyType.TOPCENTER, JustifyType.TOPRIGHT, JustifyType.CENTERLEFT = 0, 0, 0, 0
JustifyType.CENTER = 0
JustifyType.CENTERRIGHT, JustifyType.BOTTOMLEFT, JustifyType.BOTTOMCENTER, JustifyType.BOTTOMRIGHT = 0, 0, 0, 0

ParMode = _Expando()
ParMode.CONSTANT = ParMode.EXPRESSION = ParMode.EXPORT = 0

ExpandoStub = _Expando

class Par:
	def eval(self):
		return None

OP = op

class DAT(OP):
	def row(self, nameorindex): return []

COMP = OP
CHOP = OP
SOP = OP

baseCOMP = panelCOMP = COMP
evaluateDAT = mergeDAT = nullDAT = parameterexecuteDAT = tableDAT = textDAT = scriptDAT = DAT
parameterCHOP = nullCHOP = selectCHOP = CHOP
scriptSOP = SOP

class app:
	name = ''
