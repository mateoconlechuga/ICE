.assume adl = 1
segment data
.def _DispData

include 'ti84pce.inc'

_DispData:
	ld	iy, flags
	res	appTextSave, (iy + appFlags)
	jp	_PutS
	ld	iy, flags
	res	appTextSave, (iy + appFlags)
	jp	_DispHL