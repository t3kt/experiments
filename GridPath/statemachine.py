__author__ = 'tekt'
import isectutils
from abc import ABCMeta, abstractmethod


class StateLookup:
	__metaclass__ = ABCMeta

	@abstractmethod
	def getStateInfo(self, name=None, index=None):
		pass

	@abstractmethod
	def getChoices(self, sourcename=None, sourceindex=None):
		pass

	@staticmethod
	def validateLookupParams(methodname, name, index):
		if name is None and index is None:
			raise Exception('Either name or index must be specified for ' + methodname)


class StateTableLookup(StateLookup):
	def __init__(self, statetbl, conntbl):
		self.statetbl = statetbl
		self.conntbl = conntbl

	def getStateInfo(self, name=None, index=None):
		StateLookup.validateLookupParams('getStateInfo', name, index)
		tbl = self.statetbl
		if index is not None:
			if index < 0 or index >= (tbl.numRows - 1):
				return None
		else:  # name is not None
			pass
		for r in range(1, tbl.numRows):
			if tbl[r, "name"].val == name:
				index = r
				break
		if index is None:
			return None
		raise NotImplementedError()

	def getChoices(self, sourcename=None, sourceindex=None):
		StateLookup.validateLookupParams('getStateInfo', sourcename, sourceindex)
		raise NotImplementedError()


class StateMachine:
	def __init__(self, lookup, startName=None, startIndex=None):
		"""
		:type lookup StateLookup
		"""
		self.lookup = lookup
		self.current = lookup.getStateInfo(name=startName, index=startIndex)
		if self.current is None:
			self.current = lookup.getStateInfo(index=0)
		if self.current is None:
			raise Exception('Unable to find start state for state machine')

	def setCurrent(self, name=None, index=None):
		state = self.lookup.getStateInfo(name=name, index=index)
		if state is None:
			raise Exception('State not found (name: %s, index: %s)' % (name, index))
		self.current = state
		return state

