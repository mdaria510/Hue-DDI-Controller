#include-once

#include "Monitor Configuration.au3"

#region ; Low Level
Func GetCapabilitiesStringLength(Const $h_monitor)
  Local Const $CapabilitiesStringLength = DllStructCreate("dword_ptr")
  
  DllCall($Dxva2, "bool", "GetCapabilitiesStringLength", "handle", $h_monitor, "ptr", DllStructGetPtr($CapabilitiesStringLength))
  
  Return (@error) ? (SetError(1, _WinAPI_GetLastErrorMessage(), False)) : (DllStructGetData($CapabilitiesStringLength, 1))
EndFunc

Func CapabilitiesRequestAndCapabilitiesReply(Const $h_monitor)
  Local Const $CapabilitiesStringLength = GetCapabilitiesStringLength($h_monitor)
  
  Local Const $CapabilitiesString = DllStructCreate("char[" & $CapabilitiesStringLength & ']')
  
  DllCall($Dxva2, "bool",   "CapabilitiesRequestAndCapabilitiesReply",  _
                  "handle", $h_monitor,                                 _
                  "ptr",	  DllStructGetPtr($CapabilitiesString),       _
                  "dword",  DllStructGetSize($CapabilitiesString))
  
  Return (@error) ? (SetError(1, _WinAPI_GetLastErrorMessage(), False)) : (DllStructGetData($CapabilitiesString, 1))
EndFunc

Func GetVCPFeatureAndVCPFeatureReply(Const $h_monitor, Const $VCPCode)
  Local Const $CurrentValue = DllStructCreate("dword_ptr")
  
  Local Const $MaximumValue = DllStructCreate("dword_ptr")
  
  Local Const $VCPCodeType = DllStructCreate("dword_ptr")
  
  DllCall($Dxva2, "bool",   "GetVCPFeatureAndVCPFeatureReply",  _
                  "handle", $h_monitor,                         _
                  "byte",   $VCPCode,                           _
                  "ptr",	  DllStructGetPtr($VCPCodeType),      _
                  "ptr",	  DllStructGetPtr($CurrentValue),     _
                  "ptr",	  DllStructGetPtr($MaximumValue))

  If @error Then Return SetError(1, _WinAPI_GetLastErrorMessage(), False)

  Local Const $VCPFeatureReply[] = [DllStructGetData($VCPCodeType, 1), DllStructGetData($CurrentValue, 1), DllStructGetData($CurrentValue, 1)]
  
  Return $VCPFeatureReply
EndFunc

Func SetVCPFeature(Const $h_monitor, Const $VCPCode, Const $NewValue)
  DllCall($Dxva2, "bool",   "SetVCPFeature",  _
                  "handle", $h_monitor,       _
                  "byte",   $VCPCode,         _
                  "dword",  $NewValue)
  
  Return (@error) ? (SetError(1, _WinAPI_GetLastErrorMessage(), False)) : (True)
EndFunc

Func SaveCurrentSettings(Const $h_monitor)
  DllCall($Dxva2, "bool", "SaveCurrentSettings", "handle", $h_monitor)
  Return (@error) ? (SetError(1, _WinAPI_GetLastErrorMessage(), False)) : (True)
EndFunc

Func GetTimingReport(Const $h_monitor)
  Local Const $s_TimingReport = DllStructCreate($tag_MC_TIMING_REPORT)
  
  DllCall($Dxva2, "bool", "GetTimingReport", "handle", $h_monitor, "ptr", DllStructGetPtr($s_TimingReport))
  
  If @error Then Return SetError(1, _WinAPI_GetLastErrorMessage(), False)
  
  Local Const $timing_report[] = [DllStructGetData($s_TimingReport, "bTimingStatusByte"),         _
                                  DllStructGetData($s_TimingReport, "dwHorizontalFrequencyInHZ"), _
                                  DllStructGetData($s_TimingReport, "dwVerticalFrequencyInHZ")]
                                  
  Return $timing_report
EndFunc
#endregion
