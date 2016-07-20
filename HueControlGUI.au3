#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
;Opt("TrayMenuMode", 0)

#Region ### START Koda GUI section ### Form=
$Form1_1 = GUICreate("Hue Control", 250, 117, 555, 340)
$MenuItem1 = GUICtrlCreateMenu("&Configure")
$Button1 = GUICtrlCreateButton("Max", 16, 16, 73, 25)
$Button2 = GUICtrlCreateButton("Light", 176, 16, 73, 25)
$Button3 = GUICtrlCreateButton("Bright", 96, 16, 73, 25)
$Button4 = GUICtrlCreateButton("Gaming Bright", 96, 48, 73, 25)
$Button5 = GUICtrlCreateButton("Dim", 16, 48, 73, 25)
$Button6 = GUICtrlCreateButton("Gaming Dim", 176, 48, 73, 25)
TraySetIcon("", -1)
TraySetClick("9")
Opt("TrayAutoPause", 0)
Opt("TrayOnEventMode", 1)
$MenuItem7 = TrayCreateItem("Max")
TrayItemSetOnEvent(-1, "Max")
$MenuItem6 = TrayCreateItem("Bright")
TrayItemSetOnEvent(-1, "Bright")
$MenuItem5 = TrayCreateItem("Light")
TrayItemSetOnEvent(-1, "Light")
$MenuItem4 = TrayCreateItem("Dim")
TrayItemSetOnEvent(-1, "Dimm")
$MenuItem3 = TrayCreateItem("Gaming Dim")
TrayItemSetOnEvent(-1, "GamingDim")
$MenuItem2 = TrayCreateItem("GamingBright")
TrayItemSetOnEvent(-1, "GamingBright")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###


Global $VS1_BCRGB[5] = [100, 100, 100, 100, 100]
Global $VS2_BCRGB[5] = [100, 100, 100, 100, 100]
Global $XB270HU_BCRGB[5] = [200, 70, 255, 255, 255]

Global Const $CT6500K = 153
Global Const $CT5000K = 225
Global Const $CT4000K = 350
Global Const $CT2000K = 500

HotKeySet("+!q", "Max")
HotKeySet("+!w", "Bright")
HotKeySet("+!e", "Light")
HotKeySet("+!r", "Dimm")
HotKeySet("+!t", "GamingDim")


While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $GUI_EVENT_MINIMIZE
			GUISetState(@SW_HIDE)
			TraySetState(1) ; show
			TraySetToolTip("Hue Control")
			;TraySetIcon (@ScriptDir & "\Weather\Aeroweather.ico")

		Case $Button1
			Max()

		Case $Button2
			Light()

		Case $Button3
			Bright()

		Case $Button4
			GamingBright()

		Case $Button5
			Dimm()

		Case $Button6
			GamingDim()


	EndSwitch
WEnd

Func SetScreens()
	Global $Screen2 = $VS2_BCRGB
	Global $Screen1 = $XB270HU_BCRGB
	Global $Screen3 = $VS1_BCRGB
	Global $NumScreens = 1
EndFunc


Func UpdateScreen()

	SetScreens()

	$BrightnessTarget = $Screen1[0]
	$ContrastTarget = $Screen1[1]
	$RedGainTarget = $Screen1[2]
	$GreenGainTarget = $Screen1[3]
	$BlueGainTarget = $Screen1[4]

	$BrightnessTarget2 = $Screen2[0]
	$ContrastTarget2 = $Screen2[1]
	$RedGainTarget2 = $Screen2[2]
	$GreenGainTarget2 = $Screen2[3]
	$BlueGainTarget2 = $Screen2[4]

	$BrightnessTarget3 = $Screen3[0]
	$ContrastTarget3 = $Screen3[1]
	$RedGainTarget3 = $Screen3[2]
	$GreenGainTarget3 = $Screen3[3]
	$BlueGainTarget3 = $Screen3[4]

	Switch $NumScreens
		Case 1
			ShellExecute("Screenbright.exe", "-set brightness " & $BrightnessTarget & " contrast " & $ContrastTarget & " red " & $RedGainTarget & " green " & $GreenGainTarget & " blue " & $BlueGainTarget, @ScriptDir)
		Case 2
			ShellExecute("Screenbright.exe", "-set screen 1 brightness " & $BrightnessTarget & " contrast " & $ContrastTarget & " red " & $RedGainTarget & " green " & $GreenGainTarget & " blue " & $BlueGainTarget & " screen 2 brightness " & $BrightnessTarget2 & " contrast " & $ContrastTarget2 & " red " & $RedGainTarget2 & " green " & $GreenGainTarget2 & " blue " & $BlueGainTarget2, @ScriptDir)
		Case 3
			ShellExecute("Screenbright.exe", "-set screen 1 brightness " & $BrightnessTarget & " contrast " & $ContrastTarget & " red " & $RedGainTarget & " green " & $GreenGainTarget & " blue " & $BlueGainTarget & " screen 2 brightness " & $BrightnessTarget2 & " contrast " & $ContrastTarget2 & " red " & $RedGainTarget2 & " green " & $GreenGainTarget2 & " blue " & $BlueGainTarget2 & " screen 3 brightness " & $BrightnessTarget3 & " contrast " & $ContrastTarget3 & " red " & $RedGainTarget3 & " green " & $GreenGainTarget3 & " blue " & $BlueGainTarget3, @ScriptDir)
	EndSwitch
EndFunc   ;==>UpdateScreen


Func Max()
	;ChangeHueBulbTempBri(7, $CT6500K, 255)
	;ChangeHueBulbTempBri(8, $CT6500K, 255)

	Global $VS1_BCRGB[] = [100, 70, 100, 100, 100]
	Global $VS2_BCRGB[] = [100, 70, 100, 100, 100]
	Global $XB270HU_BCRGB[] = [100, 50, 100, 95, 96]

	UpdateScreen()
EndFunc   ;==>Max

Func Bright()
	;ChangeHueBulbTempBri(7, $CT5000K, 225)
	;ChangeHueBulbTempBri(8, $CT5000K, 225)

	Global $VS1_BCRGB[] = [100, 70, 85, 86, 100]
	Global $VS2_BCRGB[] = [100, 70, 85, 86, 100]
	Global $XB270HU_BCRGB[] = [40, 50, 100, 95, 96]

	UpdateScreen()
EndFunc   ;==>Bright

Func Light()
	;ChangeHueBulbTempBri(7, $CT4000K, 200)
	;ChangeHueBulbTempBri(8, $CT4000K, 200)


	Global $VS1_BCRGB[] = [50, 70, 100, 91, 96]
	Global $VS2_BCRGB[] = [50, 70, 100, 91, 96]
	Global $XB270HU_BCRGB[] = [15, 50, 100, 82, 70]

	UpdateScreen()
EndFunc   ;==>Light

Func Dimm()
	;ChangeHueBulbTempBri(7, $CT2000K, 50)
	;ChangeHueBulbTempBri(8, $CT2000K, 50)

	Global $VS1_BCRGB[] = [10, 70, 100, 85, 80]
	Global $VS2_BCRGB[] = [10, 70, 100, 85, 80]
	Global $XB270HU_BCRGB[] = [2, 50, 100, 82, 70]

	UpdateScreen()
EndFunc   ;==>Dimm

Func GamingBright()
	;ChangeHueBulbTempBri(7, $CT2000K, 1)
	;ChangeHueBulbTempBri(8, $CT2000K, 1)

	Global $VS1_BCRGB[] = [0, 70, 100, 85, 80]
	Global $VS2_BCRGB[] = [0, 70, 100, 85, 80]
	Global $XB270HU_BCRGB[] = [100, 50, 100, 95, 96]

	UpdateScreen()
EndFunc   ;==>GamingBright

Func GamingDim()
	;ChangeHueBulbTempBri(7, $CT2000K, 1)
	;ChangeHueBulbTempBri(8, $CT2000K, 1)
	;ChangeHueBulbTempBri(3, $CT2000K, 1)
	;ChangeHueBulbTempBri(6, $CT2000K, 1)

	Global $VS1_BCRGB[] = [0, 70, 100, 85, 80]
	Global $VS2_BCRGB[] = [0, 70, 100, 85, 80]
	Global $XB270HU_BCRGB[] = [15, 50, 100, 95, 96]

	UpdateScreen()
EndFunc   ;==>GamingDim



Func ChangeColorTemp($LightNumber, $ColorTemp)

	$oWinHttpRequest = ObjCreate("winhttp.winhttprequest.5.1")
	$oWinHttpRequest.Open("PUT", "http://192.168.1.26/api/newdeveloper/lights/" & $LightNumber & "/state", False)
	$oWinHttpRequest.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
	$msg = '{"ct": ' & $ColorTemp & ',"transitiontime": 20}'
	$oWinHttpRequest.Send($msg)

	If $oWinHttpRequest.Status <> 200 Then
		MsgBox(0, "HTTP Request Error", "Error code: " & $oWinHttpRequest.Status)
		Exit
	EndIf

EndFunc   ;==>ChangeColorTemp

Func ChangeBrightness($LightNumber, $Brightness)

	$oWinHttpRequest = ObjCreate("winhttp.winhttprequest.5.1")
	$oWinHttpRequest.Open("PUT", "http://192.168.1.26/api/newdeveloper/lights/" & $LightNumber & "/state", False)
	$oWinHttpRequest.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
	$msg = '{"bri": ' & $Brightness & ',"transitiontime": 20}'
	$oWinHttpRequest.Send($msg)

	If $oWinHttpRequest.Status <> 200 Then
		MsgBox(0, "HTTP Request Error", "Error code: " & $oWinHttpRequest.Status)
		Exit
	EndIf

EndFunc   ;==>ChangeBrightness

Func ChangeHueBulbTempBri($LightNumber, $ColorTemp, $Brightness)

	$oWinHttpRequest = ObjCreate("winhttp.winhttprequest.5.1")
	$oWinHttpRequest.Open("PUT", "http://192.168.1.26/api/newdeveloper/lights/" & $LightNumber & "/state", False)
	$oWinHttpRequest.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
	$msg = '{"ct": ' & $ColorTemp & ',"bri": ' & $Brightness & ',"transitiontime": 16}'
	$oWinHttpRequest.Send($msg)

	If $oWinHttpRequest.Status <> 200 Then
		MsgBox(0, "HTTP Request Error", "Error code: " & $oWinHttpRequest.Status)
		Exit
	EndIf

EndFunc   ;==>ChangeHueBulbTempBri



