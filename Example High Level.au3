#include "Monitor Configuration High Level.au3"

#include "Monitor Configuration Wrapper.au3"

#include <GuiConstantsEx.au3>

#include <SliderConstants.au3>

#include <WindowsConstants.au3>

#include <WinAPI.au3>

Opt("GUIOnEventMode", 1)

Opt("GUICloseOnESC", 1)

HotKeySet("{ESC}", _exit)

OnAutoItExitRegister(_cleanup)

#region ; Example
#region ; GUI
Global Const $gui_height = 600
Global Const $gui = GUICreate("Simple Monitor Configuration Example", 400, $gui_height)

Global Const $slider_bright    = GUICtrlCreateSlider(    10, 10, 390, 30, $TBS_AUTOTICKS)
Global Const $brightness_label = GUICtrlCreateLabel ('', 10, 50, 80, 20)

Global Const $slider_contrast = GUICtrlCreateSlider(    10, 70, 390, 30, $TBS_AUTOTICKS)
Global Const $contrast_label  = GUICtrlCreateLabel ('', 10, 110, 80, 20)

Global Const $slider_red_gain   = GUICtrlCreateSlider(    10, 140, 390, 30)
Global Const $red_gain_label    = GUICtrlCreateLabel ('', 10, 180, 80, 20)
Global Const $slider_green_gain = GUICtrlCreateSlider(    10, 200, 390, 30)
Global Const $green_gain_label  = GUICtrlCreateLabel ('', 10, 240, 80, 20)
Global Const $slider_blue_gain  = GUICtrlCreateSlider(    10, 260, 390, 30)
Global Const $blue_gain_label   = GUICtrlCreateLabel ('', 10, 300, 80, 20)

Global Const $slider_red_drive   = GUICtrlCreateSlider(    10, 350, 390, 30)
Global Const $red_drive_label    = GUICtrlCreateLabel ('', 10, 390, 100, 20)
Global Const $slider_green_drive = GUICtrlCreateSlider(    10, 410, 390, 30)
Global Const $green_drive_label  = GUICtrlCreateLabel ('', 10, 450, 100, 20)
Global Const $slider_blue_drive  = GUICtrlCreateSlider(    10, 470, 390, 30)
Global Const $blue_drive_label   = GUICtrlCreateLabel ('', 10, 510, 100, 20)

GUICtrlCreateLabel("Monitor:", 5, ($gui_height - 57))
Global Const $monitors_count = _WinAPI_GetSystemMetrics($SM_CMONITORS)
Global $monitor_radiobox[$monitors_count + 1] = ['']
$monitor_radiobox[0] = $monitors_count
For $i = 1 To $monitor_radiobox[0]
  $monitor_radiobox[$i] = GUICtrlCreateRadio($i, ((($i - 1) * 5) + (($i - 1) * 35) + 50), ($gui_height - 60))
Next
GUICtrlSetState($monitor_radiobox[1], $gui_checked)
GUICtrlSetState($monitor_radiobox[1], $gui_nofocus)

Global Const $monitor_reset_button = GUICtrlCreateButton("Factory Reset", 5, ($gui_height - 30))

Global Const $monitor_color_reset_button = GUICtrlCreateButton("Color Reset", 85, ($gui_height - 30))

#region ; Register OnEvent Functions
GUISetOnEvent($GUI_EVENT_CLOSE, _exit)

GUICtrlSetOnEvent($slider_bright,   _adjust_brightness)
GUICtrlSetOnEvent($slider_contrast, _adjust_contrast)

GUICtrlSetOnEvent($slider_red_gain,   _adjust_red_gain)
GUICtrlSetOnEvent($slider_green_gain, _adjust_green_gain)
GUICtrlSetOnEvent($slider_blue_gain,  _adjust_blue_gain)

GUICtrlSetOnEvent($slider_red_drive,   _adjust_red_drive)
GUICtrlSetOnEvent($slider_green_drive, _adjust_green_drive)
GUICtrlSetOnEvent($slider_blue_drive,  _adjust_blue_drive)

For $i = 1 To $monitors_count
  GUICtrlSetOnEvent($monitor_radiobox[$i], _monitor_select)
Next

GUICtrlSetOnEvent($monitor_reset_button, _factory_reset)

GUICtrlSetOnEvent($monitor_color_reset_button, _color_reset)
#endregion ; Register OnEvent Functions
#endregion ; GUI

Global $physical_monitor = _set_monitor(1)

;If @error Then Exit -1

_set_initial_values($physical_monitor)

GUISetState(@SW_SHOWNORMAL)

Do
  Sleep(100)
Until False

Func _adjust_brightness()
  Local Const $current_brightness = GUICtrlRead($slider_bright)
  GUICtrlSetData($brightness_label, "Brightness: " & $current_brightness)
  Luminance($physical_monitor, $current_brightness)
EndFunc

Func _adjust_contrast()
  Local Const $current_contrast = GUICtrlRead($slider_contrast)
  GUICtrlSetData($contrast_label, "Contrast: " & $current_contrast)
  Contrast($physical_monitor, $current_contrast)
EndFunc

Func _adjust_red_gain()
  Local Const $current_red_gain = GUICtrlRead($slider_red_gain)
  GUICtrlSetData($red_gain_label, "Red Gain: " & $current_red_gain)
  SetMonitorRedGreenOrBlueGain($physical_monitor, $MV_RED_GAIN, $current_red_gain)
EndFunc

Func _adjust_green_gain()
  Local Const $current_green_gain = GUICtrlRead($slider_green_gain)
  GUICtrlSetData($green_gain_label, "Green Gain: " & $current_green_gain)
  SetMonitorRedGreenOrBlueGain($physical_monitor, $MV_GREEN_GAIN, $current_green_gain)
EndFunc

Func _adjust_blue_gain()
  Local Const $current_blue_gain = GUICtrlRead($slider_blue_gain)
  GUICtrlSetData($blue_gain_label, "Blue Gain: " & $current_blue_gain)
  SetMonitorRedGreenOrBlueGain($physical_monitor, $MV_BLUE_GAIN, $current_blue_gain)
EndFunc

Func _adjust_red_drive()
  Local Const $current_red_drive = GUICtrlRead($slider_red_drive)
  GUICtrlSetData($red_drive_label, "Red Drive: " & $current_red_drive)
  SetMonitorRedGreenOrBlueDrive($physical_monitor, $MV_RED_DRIVE, $current_red_drive)
EndFunc

Func _adjust_green_drive()
  Local Const $current_green_drive = GUICtrlRead($slider_green_drive)
  GUICtrlSetData($green_drive_label, "Green Drive: " & $current_green_drive)
  SetMonitorRedGreenOrBlueDrive($physical_monitor, $MV_GREEN_DRIVE, $current_green_drive)
EndFunc

Func _adjust_blue_drive()
  Local Const $current_blue_drive = GUICtrlRead($slider_blue_drive)
  GUICtrlSetData($blue_drive_label, "Blue Drive: " & $current_blue_drive)
  SetMonitorRedGreenOrBlueDrive($physical_monitor, $MV_BLUE_DRIVE, $current_blue_drive)
EndFunc

Func _factory_reset()
  GUISetCursor(15)
  RestoreMonitorFactoryDefaults($physical_monitor)
  GUISetState(@sw_disable, $gui)
  Do
    Sleep(10)
  Until GetMonitorBrightness($physical_monitor)[1] > 0
  _set_initial_values($physical_monitor)
  GUISetState(@sw_enable, $gui)
  GUISetCursor(2)
EndFunc

Func _color_reset()
  GUISetCursor(15)
  RestoreMonitorFactoryColorDefaults($physical_monitor)
  GUISetState(@sw_disable, $gui)
  Do
    Sleep(10)
  Until GetMonitorRedGreenOrBlueGain($physical_monitor, $MV_RED_GAIN)[1] > 0
  _set_initial_values($physical_monitor)
  GUISetState(@sw_enable, $gui)
  GUISetCursor(2)
EndFunc

Func _monitor_select()
  GUISetCursor(15)

  For $i = 1 To $monitor_radiobox[0]
    Switch BitAND(GUICtrlRead($monitor_radiobox[$i]), $gui_checked)
      Case $gui_checked
        $physical_monitor = _set_monitor($i)
        _set_initial_values($physical_monitor)
        ExitLoop
    EndSwitch
  Next

  GUISetCursor(2)
EndFunc

Func _set_monitor(Const $monitor)
  Local Const $h_monitor = _WinAPI_EnumDisplayMonitors()[$monitor][0]
  Local Const $physical_monitor = GetPhysicalMonitorsFromHMonitor($h_monitor)
  Local Const $capabilities = GetMonitorCapabilities($physical_monitor)
  Return ($capabilities ? $physical_monitor : SetError(1, 0, False))
EndFunc

Func _set_initial_values(Const $monitor)
  GUICtrlSetLimit($slider_bright, GetMonitorBrightness($monitor)[2], GetMonitorBrightness($monitor)[0])
  Local Const $current_brightness = GetMonitorBrightness($monitor)[1]
  GUICtrlSetData($slider_bright, $current_brightness)
  GUICtrlSetData($brightness_label, "Brightness: " & $current_brightness)


  GUICtrlSetLimit($slider_contrast, GetMonitorContrast($monitor)[2], GetMonitorContrast($monitor)[0])
  Local Const $current_contrast = GetMonitorContrast($monitor)[1]
  GUICtrlSetData($slider_contrast, $current_contrast)
  GUICtrlSetData($contrast_label, "Contrast: " & $current_contrast)


  GUICtrlSetLimit($slider_red_gain,   GetMonitorRedGreenOrBlueGain($monitor, $MV_RED_GAIN)[2],   GetMonitorRedGreenOrBlueGain($monitor, $MV_RED_GAIN)[0])
  Local Const $current_red_gain = GetMonitorRedGreenOrBlueGain($monitor, $MV_RED_GAIN)[1]
  GUICtrlSetData($slider_red_gain, $current_red_gain)
  GUICtrlSetData($red_gain_label, "Red Gain: " & $current_red_gain)

  GUICtrlSetLimit($slider_green_gain, GetMonitorRedGreenOrBlueGain($monitor, $MV_GREEN_GAIN)[2], GetMonitorRedGreenOrBlueGain($monitor, $MV_GREEN_GAIN)[0])
  Local Const $current_green_gain = GetMonitorRedGreenOrBlueGain($monitor, $MV_GREEN_GAIN)[1]
  GUICtrlSetData($slider_green_gain, $current_green_gain)
  GUICtrlSetData($green_gain_label, "Green Gain: " & $current_green_gain)

  GUICtrlSetLimit($slider_blue_gain,  GetMonitorRedGreenOrBlueGain($monitor, $MV_BLUE_GAIN)[2],  GetMonitorRedGreenOrBlueGain($monitor, $MV_BLUE_GAIN)[0])
  Local Const $current_blue_gain = GetMonitorRedGreenOrBlueGain($monitor, $MV_BLUE_GAIN)[1]
  GUICtrlSetData($slider_blue_gain, $current_blue_gain)
  GUICtrlSetData($blue_gain_label, "Blue Gain: " & $current_blue_gain)


  GUICtrlSetLimit($slider_red_drive,   GetMonitorRedGreenOrBlueDrive($monitor, $MV_RED_DRIVE)[2],   GetMonitorRedGreenOrBlueDrive($monitor, $MV_RED_DRIVE)[0])
  Local Const $current_red_drive = GetMonitorRedGreenOrBlueDrive($monitor, $MV_RED_DRIVE)[1]
  GUICtrlSetData($slider_red_drive, $current_red_drive)
  GUICtrlSetData($red_drive_label, "Red Drive: " & $current_red_drive)

  GUICtrlSetLimit($slider_green_drive, GetMonitorRedGreenOrBlueDrive($monitor, $MV_GREEN_DRIVE)[2], GetMonitorRedGreenOrBlueDrive($monitor, $MV_GREEN_DRIVE)[0])
  Local Const $current_green_drive = GetMonitorRedGreenOrBlueDrive($monitor, $MV_GREEN_DRIVE)[1]
  GUICtrlSetData($slider_green_drive, $current_green_drive)
  GUICtrlSetData($green_drive_label, "Green Drive: " & $current_green_drive)

  GUICtrlSetLimit($slider_blue_drive,  GetMonitorRedGreenOrBlueDrive($monitor, $MV_BLUE_DRIVE)[2],  GetMonitorRedGreenOrBlueDrive($monitor, $MV_BLUE_DRIVE)[0])
  Local Const $current_blue_drive = GetMonitorRedGreenOrBlueDrive($monitor, $MV_BLUE_DRIVE)[1]
  GUICtrlSetData($slider_blue_drive, $current_blue_drive)
  GUICtrlSetData($blue_drive_label, "Blue Drive: " & $current_blue_drive)
EndFunc

Func _cleanup()
  DestroyPhysicalMonitor($physical_monitor)
  GUIDelete($gui)
EndFunc

Func _exit()
  Exit
EndFunc
#endregion ; Example
