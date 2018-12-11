import json

print('juno.py initializing')

class JunoDataLoader:
	def __init__(self, ownerComp):
		self.ownerComp = ownerComp

	@staticmethod
	def BuildDataSetTable(dat, filetable):
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
		for filerow in range(1, filetable.numRows):
			filename = filetable[filerow, 'name'].val
			filepath = filetable[filerow, 'path'].val
			with open(filepath) as f:
				obj = json.load(f)
			_addrow(
				dat,
				product_id=obj['PRODUCT_ID'],
				metadata_file=filename,
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
				interframe_delay=float(_expectunit(obj['INTERFRAME_DELAY'], 's')) * 1000,
			)

def _expectunit(val, unit):
	if val in (None, ''):
		return None
	suffix = ' <{}>'.format(unit)
	if not val.endswith(suffix):
		raise Error('Invalid value (should have unit {}): {}'.format(unit, val))
	return val.replace(suffix, '')

def _addrow(dat, **cells):
	i = dat.numRows
	dat.appendRow([])
	for key, val in cells.items():
		if val is None:
			val = ''
		dat[i, key] = val

