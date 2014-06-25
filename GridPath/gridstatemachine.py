import tekt

smachine = None


def init(force=False):
	global smachine
	smachine = me.fetch('smachine', None)
	print('existing state machine found: %s' % (smachine is not None, ))
	if smachine is None or force:
		smachine = mod.statemachines.StateMachine(statetbl=op('intersectiontbl'), conntbl=op('connectiontbl'))
		print('loading new state machine')
	# me.store('smachine', smachine)
	me.storeStartupValue('smachine', smachine)
	print('putting states in storage (%s)' % (', '.join(smachine.states.keys()),))
	for state in smachine.states.values():
		me.store(state.name, state)


def get(check=False):
	if smachine is not None:
		return smachine
	sm = me.fetch('smachine', None)
	if sm is None and check:
		raise Exception('statemachine not found')
	return sm


def setCurrent(name):
	sm = get(check=True)
	print('trying to set state to "%s"' % (name,))
	state = sm.setCurrent(name=name)
	me.store('current', state.props if state is not None else None)
	me.cook(force=True)


def pickRandomConnection():
	sm = get(check=True)
	nextConn = sm.pickRandomConnection()
	if nextConn is None:
		print('unable to pick a connection')
	else:
		me.cook(force=True)
		print('picked connection to "%s"' % (nextConn.target.name,))


def buildCurrentStateTable(dat):
	dat.clear()
	dat.appendRow(['name', 'gridx', 'gridy', 'gridz', 'rawx', 'rawy', 'rawz'])
	sm = get()
	if sm is None or sm.current is None:
		return
	tekt.appendDictRow(dat, sm.current.props)


def buildCurrentConnectionsTable(dat):
	dat.clear()
	dat.appendRow(['name', 'gridx', 'gridy', 'gridz', 'rawx', 'rawy', 'rawz'])
	sm = get()
	if sm.current is not None:
		for conn in sm.getConnections():
			tekt.appendDictRow(dat, conn.target.props)


def buildStateDumpTable(dat):
	dat.clear()
	dat.appendRow(['name', 'gridx', 'gridy', 'gridz', 'rawx', 'rawy', 'rawz'])
	sm = get()
	for state in sm.states.values():
		tekt.appendDictRow(dat, state.props)


def buildPointDisplayTable(dat, currentColor, availableColor, inactiveColor):
	dat.clear()
	dat.appendRow(['name', 'available', 'current', 'rawx', 'rawy', 'rawz', 'r', 'g', 'b', 'a'])
	sm = get()
	if sm is None or sm.current is None:
		return
	for state in sm.states.values():
		props = dict(state.props)
		available = state.name in sm.current.connections
		iscurrent = state.name == sm.current.name
		if iscurrent:
			color = currentColor
		elif available:
			color = availableColor
		else:
			color = inactiveColor
		props['available'] = 1 if available else 0
		props['current'] = 1 if iscurrent else 0
		props['r'] = color[0]
		props['g'] = color[1]
		props['b'] = color[2]
		props['a'] = color[3]
		tekt.appendDictRow(dat, props)

def buildConnectionDisplayTable(dat):
	dat.clear()
	dat.appendRow(['srcx', 'srcy', 'srcz', 'tgtx', 'tgty', 'tgtz'])
	sm = get()
	if sm is None or sm.current is None:
		return
	srcpos = (sm.current.props['rawx'], sm.current.props['rawy'], sm.current.props['rawz'])
	for conn in sm.current.connections.values():
		targetprops = conn.target.props
		dat.appendRow(srcpos + (targetprops['rawx'], targetprops['rawy'], targetprops['rawz']))
