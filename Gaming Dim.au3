#include <.\HueFunctions.au3>

ChangeHueBulbTempBri(7,$CT2000K,1)
ChangeHueBulbTempBri(8,$CT2000K,1)

Global $G246HYL_BCRGB[] = [0, 50, 100, 80, 60]
Global $VG248_BCRGB[] = [35, 80, 96, 84, 88]
Global $Blank[] = [100, 100, 100, 100, 100]

Global $Screen1 = $VG248_BCRGB
Global $Screen2 = $G246HYL_BCRGB
Global $Screen3 = $Blank

$NumScreens = 2

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
		ShellExecute("Screenbright.exe", "-set brightness " & $BrightnessTarget & " contrast " & $ContrastTarget & " red " & $RedGainTarget & " green " & $GreenGainTarget & " blue " & $BlueGainTarget, "C:\tools\screenbright\")
	Case 2
		ShellExecute("Screenbright.exe", "-set screen 1 brightness " & $BrightnessTarget & " contrast " & $ContrastTarget & " red " & $RedGainTarget & " green " & $GreenGainTarget & " blue " & $BlueGainTarget & " screen 2 brightness " & $BrightnessTarget2 & " contrast " & $ContrastTarget2 & " red " & $RedGainTarget2 & " green " & $GreenGainTarget2 & " blue " & $BlueGainTarget2, "C:\tools\screenbright\")
	Case 3
		ShellExecute("Screenbright.exe", "-set screen 1 brightness " & $BrightnessTarget & " contrast " & $ContrastTarget & " red " & $RedGainTarget & " green " & $GreenGainTarget & " blue " & $BlueGainTarget & " screen 2 brightness " & $BrightnessTarget2 & " contrast " & $ContrastTarget2 & " red " & $RedGainTarget2 & " green " & $GreenGainTarget2 & " blue " & $BlueGainTarget2 & " screen 3 brightness " & $BrightnessTarget3 & " contrast " & $ContrastTarget3 & " red " & $RedGainTarget3 & " green " & $GreenGainTarget3 & " blue " & $BlueGainTarget3, "C:\tools\screenbright\")
EndSwitch

Exit

