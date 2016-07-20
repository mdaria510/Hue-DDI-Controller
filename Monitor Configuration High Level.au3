#include-once

#include "Monitor Configuration.au3"

#region ; High Level
Func DegaussMonitor(Const $h_monitor)
  DllCall($Dxva2, "Bool", "DegaussMonitor", "handle", $h_monitor)
  Return (@error ? SetError(1, _WinAPI_GetLastErrorMessage(), False) : True)
EndFunc

Func GetMonitorBrightness(Const $h_monitor)
  Local Const $MinimumBrightness = DllStructCreate("dword_ptr")

  Local Const $CurrentBrightness = DllStructCreate("dword_ptr")

  Local Const $MaximumBrightness = DllStructCreate("dword_ptr")

  DllCall($Dxva2, "bool",   "GetMonitorBrightness", 							_
                  "handle", $h_monitor, 											    _
                  "ptr",	  DllStructGetPtr($MinimumBrightness),	_
                  "ptr",    DllStructGetPtr($CurrentBrightness),	_
                  "ptr",    DllStructGetPtr($MaximumBrightness))

  If @error Then Return SetError(1, _WinAPI_GetLastErrorMessage(), False)

  Local Const $brightness[3] = [DllStructGetData($MinimumBrightness, 1), _
                                DllStructGetData($CurrentBrightness, 1), _
                                DllStructGetData($MaximumBrightness, 1)]

  Return $brightness
EndFunc

Func GetMonitorCapabilities(Const $h_monitor)
  Local Const $MonitorCapabilities = DllStructCreate("dword_ptr")

  Local Const $SupportedColorTemperatures = DllStructCreate("dword_ptr")

  DllCall($Dxva2,	"bool", 	"GetMonitorCapabilities",			          _
                  "handle", $h_monitor,															_
                  "ptr",	  DllStructGetPtr($MonitorCapabilities),	_
                  "ptr",	  DllStructGetPtr($SupportedColorTemperatures))

  Return (@error ? SetError(1, _WinAPI_GetLastErrorMessage(), False) : DllStructGetData($MonitorCapabilities, 1))
EndFunc

Func GetMonitorColorTemperature(Const $h_monitor)
  Local Const $ColorTemperature = DllStructCreate("dword_ptr")

  DllCall($Dxva2, "bool", "GetMonitorColorTemperature", "ptr", $h_monitor, "ptr",	DllStructGetPtr($ColorTemperature))

  Return (@error ? SetError(1, _WinAPI_GetLastErrorMessage(), False) : DllStructGetData($ColorTemperature, 1))
EndFunc

Func GetMonitorContrast(Const $h_monitor)
  Local Const $MinimumContrast = DllStructCreate("dword_ptr")

  Local Const $CurrentContrast = DllStructCreate("dword_ptr")

  Local Const $MaximumContrast = DllStructCreate("dword_ptr")

  DllCall($Dxva2, "bool",   "GetMonitorContrast", 							_
                  "handle", $h_monitor, 										    _
                  "ptr",	  DllStructGetPtr($MinimumContrast),  _
                  "ptr",    DllStructGetPtr($CurrentContrast),	_
                  "ptr",    DllStructGetPtr($MaximumContrast))

  If @error Then Return SetError(1, _WinAPI_GetLastErrorMessage(), False)

  Local Const $contrast[3] = [DllStructGetData($MinimumContrast, 1), _
                              DllStructGetData($CurrentContrast, 1), _
                              DllStructGetData($MaximumContrast, 1)]

  Return $contrast
EndFunc

Func GetMonitorDisplayAreaPosition(Const $h_monitor, Const $PositionType)
  Local Const $MinimumPosition = DllStructCreate("dword_ptr")

  Local Const $CurrentPosition = DllStructCreate("dword_ptr")

  Local Const $MaximumPosition = DllStructCreate("dword_ptr")

  DllCall($Dxva2, "bool", 	"GetMonitorDisplayAreaPosition", 		_
                  "handle", $h_monitor,                         _
                  "dword", 	$PositionType,	                    _
                  "ptr",    DllStructGetPtr($MinimumPosition),	_
                  "ptr",    DllStructGetPtr($CurrentPosition), 	_
                  "ptr",    DllStructGetPtr($MaximumPosition))

  If @error Then Return SetError(1, _WinAPI_GetLastErrorMessage(), False)

  Local Const $position[3] = [DllStructGetData($MinimumPosition, 1), _
                              DllStructGetData($CurrentPosition, 1), _
                              DllStructGetData($MaximumPosition, 1)]

  Return $position
EndFunc

Func GetMonitorDisplayAreaSize(Const $h_monitor, Const $SizeType)
  Local Const $MinimumSize = DllStructCreate("dword_ptr")

  Local Const $CurrentSize = DllStructCreate("dword_ptr")

  Local Const $MaximumSize = DllStructCreate("dword_ptr")

  DllCall($Dxva2, "bool", 	"GetMonitorDisplayAreaSize", 		_
                  "handle", $h_monitor,                     _
                  "dword", 	$SizeType,	                    _
                  "ptr",    DllStructGetPtr($MinimumSize),	_
                  "ptr",    DllStructGetPtr($CurrentSize), 	_
                  "ptr",    DllStructGetPtr($MaximumSize))

  If @error Then Return SetError(1, _WinAPI_GetLastErrorMessage(), False)

  Local Const $size[3] = [DllStructGetData($MinimumSize, 1), _
                          DllStructGetData($CurrentSize, 1), _
                          DllStructGetData($MaximumSize, 1)]

  Return $size
EndFunc

Func GetMonitorRedGreenOrBlueDrive(Const $h_monitor, Const $DriveType)
  Local Const $MinimumDrive = DllStructCreate("dword_ptr")

  Local Const $CurrentDrive = DllStructCreate("dword_ptr")

  Local Const $MaximumDrive = DllStructCreate("dword_ptr")

  DllCall($Dxva2, "bool", 	"GetMonitorRedGreenOrBlueDrive",  _
                  "handle",	$h_monitor,                       _
                  "dword", 	$DriveType,	                      _
                  "ptr",    DllStructGetPtr($MinimumDrive),	  _
                  "ptr",    DllStructGetPtr($CurrentDrive),   _
                  "ptr",    DllStructGetPtr($MaximumDrive))

  If @error Then Return SetError(1, _WinAPI_GetLastErrorMessage(), False)

  Local Const $size[3] = [DllStructGetData($MinimumDrive, 1), _
                          DllStructGetData($CurrentDrive, 1), _
                          DllStructGetData($MaximumDrive, 1)]

  Return $size
EndFunc

Func GetMonitorRedGreenOrBlueGain(Const $h_monitor, Const $GainType)
  Local Const $MinimumGain = DllStructCreate("dword_ptr")

  Local Const $CurrentGain = DllStructCreate("dword_ptr")

  Local Const $MaximumGain = DllStructCreate("dword_ptr")

  DllCall($Dxva2, "bool", 	"GetMonitorRedGreenOrBlueGain",  _
                  "handle",	$h_monitor,                      _
                  "dword", 	$GainType,	                     _
                  "ptr",	  DllStructGetPtr($MinimumGain),	 _
                  "ptr",	  DllStructGetPtr($CurrentGain),   _
                  "ptr",	  DllStructGetPtr($MaximumGain))

  If @error Then Return SetError(1, _WinAPI_GetLastErrorMessage(), False)

  Local Const $size[3] = [DllStructGetData($MinimumGain, 1), _
                          DllStructGetData($CurrentGain, 1), _
                          DllStructGetData($MaximumGain, 1)]

  Return $size
EndFunc

Func GetMonitorTechnologyType(Const $h_monitor)
  Local Const $TechnologyType = DllStructCreate("dword_ptr")

  DllCall($Dxva2, "bool", "GetMonitorTechnologyType", "handle", $h_monitor, "ptr",  DllStructGetPtr($TechnologyType))

  Return (@error ? SetError(1, _WinAPI_GetLastErrorMessage(), False) : DllStructGetData($TechnologyType, 1))
EndFunc

Func RestoreMonitorFactoryColorDefaults(Const $h_monitor)
  DllCall($Dxva2, "bool", "RestoreMonitorFactoryColorDefaults", "handle", $h_monitor)
  Return (@error ? SetError(1, _WinAPI_GetLastErrorMessage(), False) : True)
EndFunc

Func RestoreMonitorFactoryDefaults(Const $h_monitor)
  DllCall($Dxva2, "bool", "RestoreMonitorFactoryDefaults", "handle", $h_monitor)
  Return (@error ? SetError(1, _WinAPI_GetLastErrorMessage(), False) : True)
EndFunc

Func SaveCurrentMonitorSettings(Const $h_monitor)
  DllCall($Dxva2, "bool", "SaveCurrentMonitorSettings", "handle", $h_monitor)
  Return (@error ? SetError(1, _WinAPI_GetLastErrorMessage(), False) : True)
EndFunc

Func SetMonitorBrightness(Const $h_monitor, Const $NewBrightness)
  DllCall($Dxva2, "bool", "SetMonitorBrightness", "ptr", $h_monitor, "dword",	$NewBrightness)
  Return (@error ? SetError(1, _WinAPI_GetLastErrorMessage(), False) : True)
EndFunc

Func SetMonitorColorTemperature(Const $h_monitor, Const $ColorTemperature)
  DllCall($Dxva2, "bool", "SetMonitorColorTemperature", "ptr", $h_monitor, "dword",	$ColorTemperature)
  Return (@error ? SetError(1, _WinAPI_GetLastErrorMessage(), False) : True)
EndFunc

Func SetMonitorContrast(Const $h_monitor, Const $Contrast)
  DllCall($Dxva2, "bool", "SetMonitorContrast", "ptr", $h_monitor, "dword",	$Contrast)
  Return (@error ? SetError(1, _WinAPI_GetLastErrorMessage(), False) : True)
EndFunc

Func SetMonitorDisplayAreaPosition(Const $h_monitor, Const $PositionType, Const $NewPosition)
  DllCall($Dxva2, "bool", "SetMonitorDisplayAreaPosition", "ptr", $h_monitor, "dword", $PositionType, "dword",  $NewPosition)
  Return (@error ? SetError(1, _WinAPI_GetLastErrorMessage(), False) : True)
EndFunc

Func SetMonitorDisplayAreaSize(Const $h_monitor, Const $SizeType, Const $WidthOrHeight)
  DllCall($Dxva2, "bool", "SetMonitorDisplayAreaSize", "ptr", $h_monitor, "dword", $SizeType, "dword",  $WidthOrHeight)
  Return (@error ? SetError(1, _WinAPI_GetLastErrorMessage(), False) : True)
EndFunc

Func SetMonitorRedGreenOrBlueDrive(Const $h_monitor, Const $DriveType, Const $NewDrive)
  DllCall($Dxva2, "bool", "SetMonitorRedGreenOrBlueDrive", "ptr", $h_monitor, "dword", $DriveType, "dword",  $NewDrive)
  Return (@error ? SetError(1, _WinAPI_GetLastErrorMessage(), False) : True)
EndFunc

Func SetMonitorRedGreenOrBlueGain(Const $h_monitor, Const $GainType, Const $NewGain)
  DllCall($Dxva2, "bool", "SetMonitorRedGreenOrBlueGain", "ptr", $h_monitor, "dword", $GainType, "dword",  $NewGain)
  Return (@error ? SetError(1, _WinAPI_GetLastErrorMessage(), False) : True)
EndFunc
#endregion
