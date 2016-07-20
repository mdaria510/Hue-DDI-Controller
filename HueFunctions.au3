;http://192.168.1.26/api/newdeveloper/lights/7/?method={"on":false}


;#include <.\Monitor Configuration Constants.au3>
;#include <.\Monitor Configuration Wrapper.au3>

;#include <WinAPIGdi.au3>
;#include <WinAPI.au3>

Global Const $CT6500K = 153
Global Const $CT5000K = 225
Global Const $CT4000K = 350
Global Const $CT2000K = 500




Func ChangeColorTemp($LightNumber,$ColorTemp)

$oWinHttpRequest = ObjCreate("winhttp.winhttprequest.5.1")
$oWinHttpRequest.Open("PUT","http://192.168.1.26/api/newdeveloper/lights/" & $LightNumber & "/state",False)
$oWinHttpRequest.SetRequestHeader("Content-Type","application/x-www-form-urlencoded")
$msg = '{"ct": ' & $ColorTemp & ',"transitiontime": 20}'
$oWinHttpRequest.Send($msg)

if $oWinHttpRequest.Status <> 200 then
  MsgBox(0,"HTTP Request Error", "Error code: " & $oWinHttpRequest.Status)
  Exit
Endif

EndFunc

Func ChangeBrightness($LightNumber,$Brightness)

$oWinHttpRequest = ObjCreate("winhttp.winhttprequest.5.1")
$oWinHttpRequest.Open("PUT","http://192.168.1.26/api/newdeveloper/lights/" & $LightNumber & "/state",False)
$oWinHttpRequest.SetRequestHeader("Content-Type","application/x-www-form-urlencoded")
$msg = '{"bri": ' & $Brightness & ',"transitiontime": 20}'
$oWinHttpRequest.Send($msg)

if $oWinHttpRequest.Status <> 200 then
  MsgBox(0,"HTTP Request Error", "Error code: " & $oWinHttpRequest.Status)
  Exit
Endif

EndFunc

Func ChangeHueBulbTempBri($LightNumber,$ColorTemp,$Brightness)

$oWinHttpRequest = ObjCreate("winhttp.winhttprequest.5.1")
$oWinHttpRequest.Open("PUT","http://192.168.1.26/api/newdeveloper/lights/" & $LightNumber & "/state",False)
$oWinHttpRequest.SetRequestHeader("Content-Type","application/x-www-form-urlencoded")
$msg = '{"ct": ' & $ColorTemp & ',"bri": ' & $Brightness & ',"transitiontime": 16}'
$oWinHttpRequest.Send($msg)

if $oWinHttpRequest.Status <> 200 then
  MsgBox(0,"HTTP Request Error", "Error code: " & $oWinHttpRequest.Status)
  Exit
Endif

EndFunc

;~ Func UpdateMonitor1()

;~ 	Global $physical_monitor = _set_monitor(1)

;~ 	$CurrentBrightness = GetMonitorBrightness($physical_monitor)[1]
;~ 	$CurrentContrast = GetMonitorBrightness($physical_monitor)[1]
;~ 	$CurrentRedGain = GetMonitorRedGreenOrBlueGain($physical_monitor, $MV_RED_GAIN)[1]
;~ 	$CurrentGreenGain = GetMonitorRedGreenOrBlueGain($physical_monitor, $MV_GREEN_GAIN)[1]
;~ 	$CurrentBlueGain = GetMonitorRedGreenOrBlueGain($physical_monitor, $MV_BLUE_GAIN)[1]

;~ 	Do
;~ 		$CurrentBrightness = Round(($Currentbrightness + $brightnesstarget)/2)
;~ 		$CurrentContrast = Round(($CurrentContrast + $ContrastTarget)/2)
;~ 		$CurrentRedGain =  Round(($CurrentRedGain + $RedGainTarget)/2)
;~ 		$CurrentGreenGain =  Round(($CurrentGreenGain + $GreenGainTarget)/2)
;~ 		$CurrentBlueGain =  Round(($CurrentBlueGain + $BlueGainTarget)/2)

;~ 		SetMonitorBrightness($physical_monitor, $CurrentBrightness)
;~ 		SetMonitorContrast($physical_monitor, $CurrentContrast)
;~ 		SetMonitorRedGreenOrBlueGain($physical_monitor, $MV_RED_GAIN, $CurrentRedGain)
;~ 		SetMonitorRedGreenOrBlueGain($physical_monitor, $MV_GREEN_GAIN, $CurrentGreenGain)
;~ 		SetMonitorRedGreenOrBlueGain($physical_monitor, $MV_BLUE_GAIN, $CurrentBlueGain)

;~ 		$CurrentBrightness = Floor(($Currentbrightness + $brightnesstarget)/2)
;~ 		$CurrentContrast = Floor(($CurrentContrast + $ContrastTarget)/2)
;~ 		$CurrentRedGain = Floor(($CurrentRedGain + $RedGainTarget)/2)
;~ 		$CurrentGreenGain = Floor(($CurrentGreenGain + $GreenGainTarget)/2)
;~ 		$CurrentBlueGain = Floor(($CurrentBlueGain + $BlueGainTarget)/2)

;~ 		SetMonitorBrightness($physical_monitor, $CurrentBrightness)
;~ 		SetMonitorContrast($physical_monitor, $CurrentContrast)
;~ 		SetMonitorRedGreenOrBlueGain($physical_monitor, $MV_RED_GAIN, $CurrentRedGain)
;~ 		SetMonitorRedGreenOrBlueGain($physical_monitor, $MV_GREEN_GAIN, $CurrentGreenGain)
;~ 		SetMonitorRedGreenOrBlueGain($physical_monitor, $MV_BLUE_GAIN, $CurrentBlueGain)

;~ 	Until $CurrentBrightness = $brightnesstarget And $CurrentContrast = $ContrastTarget And $CurrentRedGain = $RedGainTarget And $CurrentGreenGain = $GreenGainTarget And $CurrentBlueGain = $BlueGainTarget

;~ 	DestroyPhysicalMonitor($physical_monitor)

;~ EndFunc

;~ Func UpdateMonitor2()
;~ 	Global $physical_monitor2 = _set_monitor(2)

;~ 	$CurrentBrightness2 = GetMonitorBrightness($physical_monitor2)[1]
;~ 	$CurrentContrast2 = GetMonitorBrightness($physical_monitor2)[1]
;~ 	$CurrentRedGain2 = GetMonitorRedGreenOrBlueGain($physical_monitor2, $MV_RED_GAIN)[1]
;~ 	$CurrentGreenGain2 = GetMonitorRedGreenOrBlueGain($physical_monitor2, $MV_GREEN_GAIN)[1]
;~ 	$CurrentBlueGain2 = GetMonitorRedGreenOrBlueGain($physical_monitor2, $MV_BLUE_GAIN)[1]

;~ 	Do
;~ 		$CurrentBrightness2 = Round(($Currentbrightness2 + $brightnesstarget2)/2)
;~ 		$CurrentContrast2 = Round(($CurrentContrast2 + $ContrastTarget2)/2)
;~ 		$CurrentRedGain2 =  Round(($CurrentRedGain2 + $RedGainTarget2)/2)
;~ 		$CurrentGreenGain2 =  Round(($CurrentGreenGain2 + $GreenGainTarget2)/2)
;~ 		$CurrentBlueGain2 =  Round(($CurrentBlueGain2 + $BlueGainTarget2)/2)

;~ 		SetMonitorBrightness($physical_monitor2, $CurrentBrightness2)
;~ 		SetMonitorContrast($physical_monitor2, $CurrentContrast2)
;~ 		SetMonitorRedGreenOrBlueGain($physical_monitor2, $MV_RED_GAIN, $CurrentRedGain2)
;~ 		SetMonitorRedGreenOrBlueGain($physical_monitor2, $MV_GREEN_GAIN, $CurrentGreenGain2)
;~ 		SetMonitorRedGreenOrBlueGain($physical_monitor2, $MV_BLUE_GAIN, $CurrentBlueGain2)

;~ 		$CurrentBrightness2 = Floor(($Currentbrightness2 + $brightnesstarget2)/2)
;~ 		$CurrentContrast2 = Floor(($CurrentContrast2 + $ContrastTarget2)/2)
;~ 		$CurrentRedGain2 = Floor(($CurrentRedGain2 + $RedGainTarget2)/2)
;~ 		$CurrentGreenGain2 = Floor(($CurrentGreenGain2 + $GreenGainTarget2)/2)
;~ 		$CurrentBlueGain2 = Floor(($CurrentBlueGain2 + $BlueGainTarget2)/2)

;~ 		SetMonitorBrightness($physical_monitor2, $CurrentBrightness2)
;~ 		SetMonitorContrast($physical_monitor2, $CurrentContrast2)
;~ 		SetMonitorRedGreenOrBlueGain($physical_monitor2, $MV_RED_GAIN, $CurrentRedGain2)
;~ 		SetMonitorRedGreenOrBlueGain($physical_monitor2, $MV_GREEN_GAIN, $CurrentGreenGain2)
;~ 		SetMonitorRedGreenOrBlueGain($physical_monitor2, $MV_BLUE_GAIN, $CurrentBlueGain2)


;~ 	Until $CurrentBrightness2 = $brightnesstarget2 And $CurrentContrast2 = $ContrastTarget2 And $CurrentRedGain2 = $RedGainTarget2 And $CurrentGreenGain2 = $GreenGainTarget2 And $CurrentBlueGain2 = $BlueGainTarget2

;~ 	DestroyPhysicalMonitor($physical_monitor2)
;~ EndFunc

;~ Func GetMonitorCapabilities(Const $h_monitor)
;~   Local Const $MonitorCapabilities = DllStructCreate("dword_ptr")

;~   Local Const $SupportedColorTemperatures = DllStructCreate("dword_ptr")

;~   DllCall($Dxva2,	"bool", 	"GetMonitorCapabilities",			          _
;~                   "handle", $h_monitor,															_
;~                   "ptr",	  DllStructGetPtr($MonitorCapabilities),	_
;~                   "ptr",	  DllStructGetPtr($SupportedColorTemperatures))

;~   Return (@error ? SetError(1, _WinAPI_GetLastErrorMessage(), False) : DllStructGetData($MonitorCapabilities, 1))
;~ EndFunc

;~ Func _set_monitor(Const $monitor)
;~   Local Const $h_monitor = _WinAPI_EnumDisplayMonitors()[$monitor][0]
;~   Local Const $physical_monitor = GetPhysicalMonitorsFromHMonitor($h_monitor)
;~   Local Const $capabilities = GetMonitorCapabilities($physical_monitor)
;~   Return ($capabilities ? $physical_monitor : SetError(1, 0, False))
;~ EndFunc


;~ Func GetMonitorRedGreenOrBlueGain(Const $h_monitor, Const $GainType)
;~   Local Const $MinimumGain = DllStructCreate("dword_ptr")

;~   Local Const $CurrentGain = DllStructCreate("dword_ptr")

;~   Local Const $MaximumGain = DllStructCreate("dword_ptr")

;~   DllCall($Dxva2, "bool", 	"GetMonitorRedGreenOrBlueGain",  _
;~                   "handle",	$h_monitor,                      _
;~                   "dword", 	$GainType,	                     _
;~                   "ptr",	  DllStructGetPtr($MinimumGain),	 _
;~                   "ptr",	  DllStructGetPtr($CurrentGain),   _
;~                   "ptr",	  DllStructGetPtr($MaximumGain))

;~   If @error Then Return SetError(1, _WinAPI_GetLastErrorMessage(), False)

;~   Local Const $size[3] = [DllStructGetData($MinimumGain, 1), _
;~                           DllStructGetData($CurrentGain, 1), _
;~                           DllStructGetData($MaximumGain, 1)]

;~   Return $size
;~ EndFunc

;~ Func GetMonitorBrightness(Const $h_monitor)
;~   Local Const $MinimumBrightness = DllStructCreate("dword_ptr")

;~   Local Const $CurrentBrightness = DllStructCreate("dword_ptr")

;~   Local Const $MaximumBrightness = DllStructCreate("dword_ptr")

;~   DllCall($Dxva2, "bool",   "GetMonitorBrightness", 							_
;~                   "handle", $h_monitor, 											    _
;~                   "ptr",	  DllStructGetPtr($MinimumBrightness),	_
;~                   "ptr",    DllStructGetPtr($CurrentBrightness),	_
;~                   "ptr",    DllStructGetPtr($MaximumBrightness))

;~   If @error Then Return SetError(1, _WinAPI_GetLastErrorMessage(), False)

;~   Local Const $brightness[3] = [DllStructGetData($MinimumBrightness, 1), _
;~                                 DllStructGetData($CurrentBrightness, 1), _
;~                                 DllStructGetData($MaximumBrightness, 1)]

;~   Return $brightness
;~ EndFunc

;~ Func GetMonitorContrast(Const $h_monitor)
;~   Local Const $MinimumContrast = DllStructCreate("dword_ptr")

;~   Local Const $CurrentContrast = DllStructCreate("dword_ptr")

;~   Local Const $MaximumContrast = DllStructCreate("dword_ptr")

;~   DllCall($Dxva2, "bool",   "GetMonitorContrast", 							_
;~                   "handle", $h_monitor, 										    _
;~                   "ptr",	  DllStructGetPtr($MinimumContrast),  _
;~                   "ptr",    DllStructGetPtr($CurrentContrast),	_
;~                   "ptr",    DllStructGetPtr($MaximumContrast))

;~   If @error Then Return SetError(1, _WinAPI_GetLastErrorMessage(), False)

;~   Local Const $contrast[3] = [DllStructGetData($MinimumContrast, 1), _
;~                               DllStructGetData($CurrentContrast, 1), _
;~                               DllStructGetData($MaximumContrast, 1)]

;~   Return $contrast
;~ EndFunc

;~ Func SetMonitorContrast(Const $h_monitor, Const $Contrast)
;~   DllCall($Dxva2, "bool", "SetMonitorContrast", "ptr", $h_monitor, "dword",	$Contrast)
;~   Return (@error ? SetError(1, _WinAPI_GetLastErrorMessage(), False) : True)
;~ EndFunc

;~ Func SetMonitorBrightness(Const $h_monitor, Const $NewBrightness)
;~   DllCall($Dxva2, "bool", "SetMonitorBrightness", "ptr", $h_monitor, "dword",	$NewBrightness)
;~   Return (@error ? SetError(1, _WinAPI_GetLastErrorMessage(), False) : True)
;~ EndFunc

;~ Func SetMonitorRedGreenOrBlueGain(Const $h_monitor, Const $GainType, Const $NewGain)
;~   DllCall($Dxva2, "bool", "SetMonitorRedGreenOrBlueGain", "ptr", $h_monitor, "dword", $GainType, "dword",  $NewGain)
;~   Return (@error ? SetError(1, _WinAPI_GetLastErrorMessage(), False) : True)
;~ EndFunc