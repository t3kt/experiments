import random

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
	try:
		from _stubs import *
	except ImportError:
		from common.lib._stubs import *

class State:
	def __init__(self, name, props):
		self.name = name
		self.props = props
		self.connections = {}

	def AddConnection(self, conn):
		self.connections[conn.target.name] = conn

	def __repr__(self):
		return 'State(%r, %r)' % (self.name, self.props)

class Connection:
	def __init__(self, source, target, props):
		self.source = source
		self.target = target
		self.props = props

	def __repr__(self):
		return 'Connection(%r -> %r, %r)' % (self.source.name, self.target.name, self.props)

def _ParseCell(cell):
	if cell is None:
		return None
	if cell.val.lower() == 'true':
		return True
	if cell.val.lower() == 'false':
		return False
	try:
		return float(cell)
	except ValueError:
		pass
	return cell.val

def _GetRowProps(dat, row, keys):
	return {
		key: _ParseCell(dat[row, key])
		for key in keys
	}

class StateManager:
	def __init__(self, states=None):
		self.states = states or {}
		self.current = None

	def LoadStatesFromTable(self, statetbl):
		self.states = {}
		fields = [c.val for c in statetbl.row(0) if c != 'name']
		for i in range(1, statetbl.numRows):
			state = State(
				statetbl[i, 'name'].val,
				_GetRowProps(statetbl, i, fields))
			self.states[state.name] = state

	def LoadConnectionsFromTables(self, conntbl):
		fields = [c.val for c in conntbl.row(0) if c.val not in ['source', 'target']]
		for i in range(1, conntbl.numRows):
			source = self.states[conntbl[i, 'source'].val]
			target = self.states[conntbl[i, 'target'].val]
			conn = Connection(
				source, target,
				_GetRowProps(conntbl, i, fields))
			source.addConnection(conn)

	def SetCurrent(self, name):
		state = self.states[name]
		if not state:
			return None
		self.current = state
		return state

	@property
	def CurrentConnections(self):
		if not self.current:
			return []
		return list(self.current.connections.values())

	def PickRandomConnection(self):
		conns = self.CurrentConnections
		if not conns:
			return None
		nextconn = random.choice(conns)
		if not nextconn:
			return None
		self.current = nextconn
		return nextconn

	def __repr__(self):
		return 'StateManager(current: %r)' % self.current

class StateMachine(base.Extension):
	def __init__(self, comp):
		super().__init__(comp)
		self.States = StateManager()
