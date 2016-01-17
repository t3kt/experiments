class State:
	def __init__(self, stateId, transitions, color=None, position=None):
		self.stateId = stateId
		self.transitions = transitions
		self.color = color
		self.position = position

	def handleEvent(self, event):
		return self.transitions.get(event, None)


class StateMachine:
	def __init__(self, states, start=None):
		self.statesById = {}
		for state in states:
			self.statesById[state.stateId] = state
		if start is not None:
			self.current = self.statesById[start]
		else:
			self.current = states[0]

	def handleEvent(self, currentId, event):
		current = self.statesById[currentId]
		return current.handleEvent(event)

DIRECTIONS = ['up', 'down', 'left', 'right']

def loadStatesFromTable(table):
	global theMachine
	states = []
	for idCell in table.col('id')[1:]:
		stateId = idCell.val
		transitions = {}
		for direction in DIRECTIONS:
			if table[stateId, direction] != '':
				transitions[direction] = table[stateId, direction].val
		states.append(
			State(
				stateId,
				transitions
			))
	theMachine = StateMachine(states)

def fillConnectorSOP(sop, table):
	sop.clear()
	connectors = set()
	for idCell in table.col('id')[1:]:
		startId = idCell.val
		for direction in DIRECTIONS:
			endId = table[startId, direction].val
			if not endId:
				continue
			# skip duplicates
			if (startId, endId) in connectors or (endId, startId) in connectors:
				continue
			connectors.add((startId, endId))
			startPos = [float(table[startId, 'x']), float(table[startId, 'y'])]
			endPos = [float(table[endId, 'x']), float(table[endId, 'y'])]
			line = sop.appendPoly(2, closed=False)
			startPt, endPt = line[0].point, line[1].point
			startPt.x, startPt.y = startPos
			endPt.x, endPt.y = endPos
	pass

theMachine = StateMachine([State('placeholder', {})])
