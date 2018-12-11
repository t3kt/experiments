import json

print('juno.py initializing')

class JunoDataLoader:
	def __init__(self, ownerComp):
		self.ownerComp = ownerComp

	def BuildDataSetTable(self, dat):
		filetable = self.ownerComp.op('dataset_files')
		dat.clear()
		dat.appendRow([
			'product_id', 'metadata_file', 'title',
			'orbit_number', 'mission_phase_name',
			'raw_image_file', 'exposure_duration',
			'source_product_id', 'rationale',
			'solar_distance', 'spacecraft_altitude',
			'spacecraft_clock_start_count', 'spacecraft_clock_stop_count',
			'start_time', 'stop_time',
			'sub_spacecraft_latitude', 'sub_spacecraft_longitude',
			'data_set_id', 'image_time', 'filter_name',
			'tdi_stage_count', 'interframe_delay',
		])
		for name, path in _filetableentries(filetable):
			with open(path) as f:
				obj = json.load(f)
			_addrow(
				dat,
				product_id=obj['PRODUCT_ID'],
				metadata_file=name,
				title=obj['TITLE'],
				orbit_number=obj['ORBIT_NUMBER'],
				mission_phase_name=obj['MISSION_PHASE_NAME'],
				raw_image_file=obj['FILE_NAME'],
				exposure_duration=_expectunit(obj['EXPOSURE_DURATION'], 'ms'),
				source_product_id=obj['SOURCE_PRODUCT_ID'],
				rationale=obj['RATIONALE_DESC'],
				solar_distance=_expectunit(obj['SOLAR_DISTANCE'], 'km'),
				spacecraft_altitude=_expectunit(obj['SPACECRAFT_ALTITUDE'], 'km'),
				spacecraft_clock_start_count=obj['SPACECRAFT_CLOCK_START_COUNT'],
				spacecraft_clock_stop_count=obj['SPACECRAFT_CLOCK_STOP_COUNT'].replace('N/A', ''),
				start_time=obj['START_TIME'],
				stop_time=obj['STOP_TIME'],
				sub_spacecraft_latitude=obj['SUB_SPACECRAFT_LATITUDE'],
				sub_spacecraft_longitude=obj['SUB_SPACECRAFT_LONGITUDE'],
				data_set_id=obj['DATA_SET_ID'],
				image_time=obj['IMAGE_TIME'],
				filter_name=' '.join(obj['FILTER_NAME']) if obj['FILTER_NAME'] else None,
				tdi_stage_count=obj['JNO:TDI_STAGES_COUNT'],
				interframe_delay=_expectunit(obj['INTERFRAME_DELAY'], 's') * 1000,
			)

	def BuildImageFileTable(self, dat):
		filetable = self.ownerComp.op('imageset_files')
		dat.clear()
		dat.appendRow([
			'file',
			'group',
			'part',
			'path',
		])
		for name, path in _filetableentries(filetable):
			group, part = _parseimagename(name)
			dat.appendRow([
				name,
				group,
				part,
				path,
			])

	def BuildImageGroupTable(self, dat):
		filetable = self.ownerComp.op('imageset_files')
		dat.clear()
		dat.appendRow([
			'group',
			'raw',
			'mapprojected',
			'red',
			'green',
			'blue',
			'raw_file',
			'mapprojected_file',
			'red_file',
			'green_file',
			'blue_file',
		])
		groups = {}
		for name, path in _filetableentries(filetable):
			group, part = _parseimagename(name)
			if group in groups:
				groupinfo = groups[group]
			else:
				groupinfo = {
					'group': group,
					'raw': 0,
					'raw_file': None,
					'mapprojected': 0,
					'mapprojected_file': None,
					'red': 0,
					'red_file': None,
					'green': 0,
					'green_file': None,
					'blue': 0,
					'blue_file': None,
				}
				groups[group] = groupinfo
			groupinfo[part] = 1
			groupinfo[part + '_file'] = name

		for groupinfo in groups.values():
			_addrow(dat, **groupinfo)

def _parseimagename(name):
		basename, suffix = name.rsplit('-', maxsplit=1)
		part = suffix.replace('.png', '')
		return basename, part

def _filetableentries(filetable):
		for filerow in range(1, filetable.numRows):
			name = filetable[filerow, 'name'].val
			path = filetable[filerow, 'path'].val
			yield name, path

def _expectunit(val, unit):
	if val in (None, ''):
		return None
	suffix = ' <{}>'.format(unit)
	if not val.endswith(suffix):
		raise Error('Invalid value (should have unit {}): {}'.format(unit, val))
	return float(val.replace(suffix, ''))

def _addrow(dat, **cells):
	i = dat.numRows
	dat.appendRow([])
	for key, val in cells.items():
		if val is None:
			val = ''
		if isinstance(val, float) and int(val) == val:
			val = int(val)
		dat[i, key] = val

