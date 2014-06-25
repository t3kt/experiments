__author__ = 'tekt'
import tekt
import random
import json

class State:
	def __init__(self, props):
		"""
		:type props dict
		"""
		self.props = props
		self.name = props['name']
		self.connections = {}

	def addConnection(self, conn):
		"""
		:type conn Connection
		"""
		self.connections[conn.target.name] = conn

	def __repr__(self):
		return "State(%s)" % (self.name,)

	def toJsonDict(self):
		d = dict(self.props)
		d['connections'] = list(self.connections.keys())
		return d

class Connection:
	def __init__(self, source, target, props):
		"""
		:type source State
		:type target State
		:type props dict
		"""
		self.source = source
		self.target = target
		self.props = props

	def __repr__(self):
		return "Connection(%s -> %s)" % (self.source.name, self.target.name)

def loadTables(statetbl, conntbl):
	states = {}
	for srow in tekt.rowsToDicts(statetbl):
		state = State(srow)
		states[state.name] = state
	for crow in tekt.rowsToDicts(conntbl):
		source = states[crow['source']]
		target = states[crow['target']]
		if source is None:
			raise Exception('State not found: ' + crow['source'])
		if target is None:
			raise Exception('State not found: ' + crow['target'])
		conn = Connection(source, target, crow)
		source.addConnection(conn)
	return states

class StateMachine:
	def __init__(self, states=None, statetbl=None, conntbl=None, startName=None):
		"""
		:type states dict
		:type startName str
		"""
		if states is None:
			states = loadTables(statetbl, conntbl)
		self.states = states
		""" :type State """
		self.current = None
		if startName is not None:
			self.setCurrent(name=startName)

	def getState(self, name, check=False):
		state = self.states[name]
		if check and state is None:
			raise Exception('State not found: "%s"' % (name,))
		return state

	def setCurrent(self, name=None, state=None, check=True):
		"""
		:type name str
		:type state State
		"""
		if state is None:
			state = self.getState(name, check=check)
		self.current = state
		print('state set to "%s"' % (state.name,))
		return state

	def getConnections(self):
		if self.current is None:
			return []
		return list(self.current.connections.values())

	def getConnectionTargetNames(self):
		return [c.target.name for c in self.getConnections()]

	def pickRandomConnection(self):
		conns = self.getConnections()
		if len(conns) == 0:
			print('no connections found for the current state')
			return None
		nextConn = random.choice(conns)
		if nextConn is None:
			return None
		self.setCurrent(state=nextConn.target)
		return nextConn

	def __repr__(self):
		return 'StateMachine( current: %s )' % (self.current,)

	def toJsonDict(self):
		return {
			'current': (self.current.name if self.current is not None else None,),
			'states': {state.name: state.toJsonDict() for state in self.states.values()}}

	def toJson(self):
		d = self.toJsonDict()
		return json.dumps(d, sort_keys=True, indent=4)


