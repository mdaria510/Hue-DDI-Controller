#include-once

#include <WinAPI.au3>

#include <WinAPIGdi.au3>

#include "Monitor Configuration Constants.au3"

#region ; Monitor Configuration
Func DestroyPhysicalMonitor(Const $h_monitor)
  DllCall($Dxva2,	"bool", "DestroyPhysicalMonitor", "ptr", $h_monitor)
  Return (@error) ? (SetError(1, _WinAPI_GetLastErrorMessage(), False)) : (True)
EndFunc

Func GetNumberOfPhysicalMonitorsFromHMonitor(Const $h_monitor)
  Local Const $number_of_physical_monitors = DllStructCreate("dword_ptr")
  ConsoleWrite($number_of_physical_monitors)
  DllCall($Dxva2,	"bool",  "GetNumberOfPhysicalMonitorsFromHMONITOR", _
                  "ptr",   $h_monitor, 																_
                  "ptr",   DllStructGetPtr($number_of_physical_monitors))

  Return (@error) ? (SetError(1, _WinAPI_GetLastErrorMessage(), False)) : (DllStructGetData($number_of_physical_monitors, 1))
EndFunc

Func GetPhysicalMonitorsFromHMonitor(Const $h_monitor)
  Local Const $number_of_physical_monitors = GetNumberOfPhysicalMonitorsFromHMonitor($h_monitor)

  Local Const $physical_monitor = DllStructCreate("handle physicalMonitor;wchar physicalMonitorDescription[128]")

  DllCall($Dxva2,	"bool",		"GetPhysicalMonitorsFromHMONITOR",	_
                  "handle",	$h_monitor,													_
                  "dword",	$number_of_physical_monitors,				_
                  "ptr",		DllStructGetPtr($physical_monitor))

  Return (@error) ? (SetError(1, _WinAPI_GetLastErrorMessage(), False)) : (DllStructGetData($physical_monitor, "physicalMonitor"))
EndFunc
#endregion
