#include <.\HueFunctions.au3>

Global $G246HYL_BCRGB[] = [100, 50, 94, 85, 100]
Global $VG248_BCRGB[] = [100, 75, 96, 84, 88]
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

ChangeHueBulbTempBri(7,$CT6500K,255)
ChangeHueBulbTempBri(8,$CT6500K,255)

Switch $NumScreens
	Case 1
		ShellExecute("Screenbright.exe", "-set brightness " & $BrightnessTarget & " contrast " & $ContrastTarget & " red " & $RedGainTarget & " green " & $GreenGainTarget & " blue " & $BlueGainTarget, "C:\tools\screenbright\")
	Case 2
		ShellExecute("Screenbright.exe", "-set screen 1 brightness " & $BrightnessTarget & " contrast " & $ContrastTarget & " red " & $RedGainTarget & " green " & $GreenGainTarget & " blue " & $BlueGainTarget & " screen 2 brightness " & $BrightnessTarget2 & " contrast " & $ContrastTarget2 & " red " & $RedGainTarget2 & " green " & $GreenGainTarget2 & " blue " & $BlueGainTarget2, "C:\tools\screenbright\")
	Case 3
		ShellExecute("Screenbright.exe", "-set screen 1 brightness " & $BrightnessTarget & " contrast " & $ContrastTarget & " red " & $RedGainTarget & " green " & $GreenGainTarget & " blue " & $BlueGainTarget & " screen 2 brightness " & $BrightnessTarget2 & " contrast " & $ContrastTarget2 & " red " & $RedGainTarget2 & " green " & $GreenGainTarget2 & " blue " & $BlueGainTarget2 & " screen 3 brightness " & $BrightnessTarget3 & " contrast " & $ContrastTarget3 & " red " & $RedGainTarget3 & " green " & $GreenGainTarget3 & " blue " & $BlueGainTarget3, "C:\tools\screenbright\")
EndSwitch



;UpdateMonitor1()
;UpdateMonitor2()


;~ Global $physical_monitor = _set_monitor(1)

;~ $CurrentBrightness = GetMonitorBrightness($physical_monitor)[1]
;~ $CurrentContrast = GetMonitorBrightness($physical_monitor)[1]
;~ $CurrentRedGain = GetMonitorRedGreenOrBlueGain($physical_monitor, $MV_RED_GAIN)[1]
;~ $CurrentGreenGain = GetMonitorRedGreenOrBlueGain($physical_monitor, $MV_GREEN_GAIN)[1]
;~ $CurrentBlueGain = GetMonitorRedGreenOrBlueGain($physical_monitor, $MV_BLUE_GAIN)[1]

;~ Do
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

;~ Until $CurrentBrightness = $brightnesstarget And $CurrentContrast = $ContrastTarget And $CurrentRedGain = $RedGainTarget And $CurrentGreenGain = $GreenGainTarget And $CurrentBlueGain = $BlueGainTarget

;~ DestroyPhysicalMonitor($physical_monitor)

;~ Global $physical_monitor2 = _set_monitor(2)

;~ $CurrentBrightness2 = GetMonitorBrightness($physical_monitor2)[1]
;~ $CurrentContrast2 = GetMonitorBrightness($physical_monitor2)[1]
;~ $CurrentRedGain2 = GetMonitorRedGreenOrBlueGain($physical_monitor2, $MV_RED_GAIN)[1]
;~ $CurrentGreenGain2 = GetMonitorRedGreenOrBlueGain($physical_monitor2, $MV_GREEN_GAIN)[1]
;~ $CurrentBlueGain2 = GetMonitorRedGreenOrBlueGain($physical_monitor2, $MV_BLUE_GAIN)[1]

;~ Do
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


;~ Until $CurrentBrightness2 = $brightnesstarget2 And $CurrentContrast2 = $ContrastTarget2 And $CurrentRedGain2 = $RedGainTarget2 And $CurrentGreenGain2 = $GreenGainTarget2 And $CurrentBlueGain2 = $BlueGainTarget2

;~ DestroyPhysicalMonitor($physical_monitor2)

Exit