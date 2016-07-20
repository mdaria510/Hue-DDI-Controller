#include-once

#region ; Monitor Configuration Wrapper
; #INDEX# =======================================================================================================================
; Title .........: Monitor Configuration Wrapper
; AutoIt Version : v3.3.9.21 or higher
; Language ......: English
; Description ...: A wrapper for the low level monitor configuration functions.
; Note ..........:
; Author(s) .....: Matthew G. Jaberwocky6669
; Remarks .......:
; ===============================================================================================================================

; #INCLUDES# ====================================================================================================================
#include "Monitor Configuration Low Level.au3"

; #GLOBAL VARIABLES# ============================================================================================================
; None.

; #CURRENT# =====================================================================================================================
; ActiveControl
; AdjustZoom
; AmbientLightSensor
; ApplicationEnableKey
; AssetTag
; AudioBalanceLR
; AudioBass
; AudioMicrophoneVolume
; AudioMute
; AudioProcessorMode
; AudioSpeakerVolume
; AudioTreble
; AutoColorSetup
; AutoSetup
; AutoSetupOn_Off
; AuxiliaryDisplayData
; AuxiliaryDisplaySize
; AuxiliaryPowerOutput
; BacklightControl
; BlockLUTOperation
; BodyCRCErrorCount
; BottomCornerFlare
; BottomCornerHook
; ClientID
; Clock
; ClockPhase
; ColorSaturation
; ColorTemperatureIncrement
; ColorTemperatureRequest
; Contrast
; Degauss
; DisplayApplication
; DisplayControllerType
; DisplayDescriptorLength
; DisplayFirmwareLevel
; DisplayScaling
; DisplayTechnologyType
; DisplayUsageTime
; EDIDOperation
; EnableDisplayOfDisplayDescriptor
; FlatPanelSubPixelLayout
; FleshToneEnhancement
; Focus
; Gamma
; GrayScaleExpansion
; HeaderErrorCount
; HorizontalConvergenceMG
; HorizontalConvergenceRB
; HorizontalFrequency
; HorizontalKeystone
; HorizontalLinearity
; HorizontalLinearityBalance
; HorizontalMirror
; HorizontalMoire
; HorizontalParallelogram
; HorizontalPincushion
; HorizontalPincushionBalance
; HorizontalPosition_Phase
; HorizontalSize
; Hue
; ImageMode
; InputSource
; LinkControl
; Luminance
; LUTSize
; MonitorStatus
; MonitorXOrigin
; MonitorYOrigin
; NewControlValue
; OSD
; OSDLanguage
; OutputSelect
; PacketCount
; PerformancePreservation
; PowerMode
; RemoteProcedureCall
; RestoreFactoryColorDefaults
; RestoreFactoryDefaults
; RestoreFactoryGeometryDefaults
; RestoreFactoryLuminanceContrastDefaults
; RestoreFactoryTVDefaults
; Rotation
; ScanMode
; ScratchPad
; ScreenOrientation
; SelectColorPreset
; Settings
; Sharpness
; SinglePointLUTOperation
; SixAxisHueControl_Blue
; SixAxisHueControl_Cyan
; SixAxisHueControl_Green
; SixAxisHueControl_Magenta
; SixAxisHueControl_Red
; SixAxisHueControl_Yellow
; SixAxisSaturationControl_Blue
; SixAxisSaturationControl_Cyan
; SixAxisSaturationControl_Green
; SixAxisSaturationControl_Magenta
; SixAxisSaturationControl_Red
; SixAxisSaturationControl_Yellow
; SoftControls
; SourceColorCoding
; SourceTimingMode
; SpeakerSelect
; StatusIndicators
; StereoVideoMode
; TopCornerFlare
; TopCornerHook
; TransmitDisplayDescriptor
; TVBlackLevel_Luminance
; TVChannelUpDown
; TVContrast
; TVSharpness
; UserColorVisionCompensation
; VCPVersion
; VelocityScanModulation
; VerticalConvergenceMG
; VerticalConvergenceRB
; VerticalFrequency
; VerticalKeystone
; VerticalLinearity
; VerticalLinearityBalance
; VerticalMirror
; VerticalMoire
; VerticalParallelogram
; VerticalPincushion
; VerticalPincushionBalance
; VerticalPosition_Phase
; VerticalSize
; VideoBlackLevel_Blue
; VideoBlackLevel_Green
; VideoBlackLevel_Red
; VideoGainBlue
; VideoGainGreen
; VideoGainRed
; WindowBackground
; WindowMaskControl
; WindowPositionBRX
; WindowPositionBRY
; WindowPositionTLX
; WindowPositionTLY
; WindowSelect
; ===============================================================================================================================

; #INTERNAL_USE_ONLY#============================================================================================================
; None.
; ===============================================================================================================================

; #FUNCTION# ====================================================================================================================
; Name...........: RestoreFactoryDefaults
; Description ...: Restore all factory presets including luminance / contrast, geometry, color and TV defaults. Any non-zero
;                  value causes defaults to be restored. A value of zero must be ignored.
; Syntax.........: RestoreFactoryDefaults($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func RestoreFactoryDefaults(Const $physical_monitor)
	SetVCPFeature($physical_monitor, 0x04, True)
	Return (@error ? SetError(1, @extended, False) : True)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: RestoreFactoryLuminanceContrastDefaults
; Description ...: Restores factory defaults for luminance and contrast adjustments. Any non-zero value causes defaults to be
;                  restored. A value of zero must be ignored.
; Syntax.........: RestoreFactoryLuminanceContrastDefaults($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - True
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func RestoreFactoryLuminanceContrastDefaults(Const $physical_monitor)
	SetVCPFeature($physical_monitor, 0x05, True)
	Return (@error ? SetError(1, @extended, False) : True)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: RestoreFactoryGeometryDefaults
; Description ...: Restore factory defaults for geometry adjustments. Any non-zero value causes defaults to be restored. A value
;                  of zero must be ignored.
; Syntax.........: RestoreFactoryGeometryDefaults($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - True
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func RestoreFactoryGeometryDefaults(Const $physical_monitor)
	SetVCPFeature($physical_monitor, 0x06, True)
	Return (@error ? SetError(1, @extended, False) : True)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: RestoreFactoryColorDefaults
; Description ...: Restore factory defaults for color settings. Any non-zero value causes defaults to be restored. A value of
;                  zero must be ignored.
; Syntax.........: RestoreFactoryColorDefaults($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - True
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func RestoreFactoryColorDefaults(Const $physical_monitor)
	SetVCPFeature($physical_monitor, 0x08, True)
	Return (@error ? SetError(1, @extended, False) : True)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: RestoreFactoryTVDefaults
; Description ...: Restore factory defaults for TV functions. Any non-zero value causes defaults to be restored. A value of zero
;                  must be ignored.
; Syntax.........: RestoreFactoryTVDefaults($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - True
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func RestoreFactoryTVDefaults(Const $physical_monitor)
	SetVCPFeature($physical_monitor, 0x0A, True)
	Return (@error ? SetError(1, @extended, False) : True)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: Settings
; Description ...: Store / Restore the user saved values for current mode.
; Syntax.........: Settings($physical_monitor, $action)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $action           - Store / Restore the user saved values for current mode.
; Return values .: Success - True
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |------------------------------------------------------------------------------
;                  | Byte: SL |
;                  |----------|-------------------------------------------------------------------
;                  | 01h      | Store current settings in the monitor.
;                  | 02h      | Restore factory defaults for current mode.
;                  |          | If no factory defaults then restore user values for current mode.
;                  |------------------------------------------------------------------------------
;
;                  All other values are reserved and must be ignored.
; Related .......:
; Link ..........:
; Example .......: No
Func Settings(Const $physical_monitor, Const $action)
	SetVCPFeature($physical_monitor, 0xB0, $action)
	Return (@error ? SetError(1, @extended, False) : True)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: ColorTemperatureIncrement
; Description ...: Allows the display to specify the minimum increment in which it can adjust the color temperature. This will be
;                  used in conjunction with VCP code 0Ch, Color temperature request. Values of 0 and >5000 are invalid and must
;                  be ignored.
; Syntax.........: ColorTemperatureIncrement($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func ColorTemperatureIncrement(Const $physical_monitor)
	Local Const $result = SetVCPFeature($physical_monitor, 0x0B, 0)
	Return (@error ? SetError(1, @extended, False) : $result)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: ColorTemperatureRequest
; Description ...: Allows a specified color temperature (in K) to be requested. 
; Syntax.........: ColorTemperatureRequest($physical_monitor, $request)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $request          - The desired color temeprature.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: If display is unable to achieve requested color temperature, then it should move to the closest possible 
;                  temperature. A value of 0 must be treated as a request for a color temperature of 3000 K. Values greater than 
;                  0 must be used as a multiplier of the color temperature increment (read using VCP 0Bh) and the result added 
;                  to the base value of 3000 K. Example: If VCP 0Bh returns a value of 50 K and VCP code 0Ch sends a value of 50 
;                  (decimal) then the display must interpret this as a request to adjust the color temperature to 5500K. 
;                  (3000 + (50 * 50)) K = 5500 K.
;
;                  Notes: 1) Applications using this function are recommended to read the actual color temperature after using
;                            this command and taking appropriate action.
;                         2) This control is only recommended if the display can produce a continuously (at defined increment,
;                            see VCP code 0Bh) variable color temperature.
; Related .......:
; Link ..........:
; Example .......: No
Func ColorTemperatureRequest(Const $physical_monitor, Const $request)
	Local Const $return = SetVCPFeature($physical_monitor, 0x0C, $request)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: Clock
; Description ...: Increasing (decreasing) this value will increase (decrease) the video sampling clock frequency
; Syntax.........: Clock($physical_monitor, $clock_frequency)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $clock_frequency  - The desired clock frequency.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func Clock(Const $physical_monitor, Const $clock_frequency)
	Local Const $return = SetVCPFeature($physical_monitor, 0x0E, $clock_frequency)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: Luminance
; Description ...: Increasing (decreasing) this value will increase (decrease) the Luminance of the image.
; Syntax.........: Luminance($physical_monitor, $luminance)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $luminance        - The desired luminance.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func Luminance(Const $physical_monitor, Const $luminance)
	Local Const $return = SetVCPFeature($physical_monitor, 0x10, $luminance)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: FleshToneEnhancement
; Description ...: This control allows for selection of contrast enhancement algorithms. A possible value is selected by setting
;                  the corresponding bit = 1. On a write a bit set = 1 in the SH-SL bytes must select the required level of
;                  enhancement. Note: setting more than one bit = 1 is invalid and must be ignored by the display. On a read the
;                  MH-ML bytes contain the flags corresponding to those functions that are supported by the display. The SH-SL
;                  bytes contain the bit field with the appropriate bit set to indicate the current status of the display. The
;                  following table defines the SH byte, and the MH byte for read operations only.
; Syntax.........: FleshToneEnhancement($physical_monitor, $enhancement)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $enhancement      - The desired contrast enhancement algorithm.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Data size: Write = 2 bytes / Read = 4 bytes
;
;                  |-------------------------------------------------------------------------------------------------
;                  | Byte: SH/MH |
;                  |-------------|-----------------------------------------------------------------------------------
;                  | Bit 7       | No enhancement,
;                  | Bit 6       | Enhancement 1: Enhancement except for automatically detected regions of “skin tone”
;                  | Bit 5       | Enhancement 2: Enhancement including “skin tone” regions
;                  | Bit 4       | Demo mode: Enhancement is applied to part of the displayed image only
;                  | Bit 3       | User mode
;                  | Bits 2 -> 0 | Reserved, do not use
;                  |-------------------------------------------------------------------------------------------------
;
;                  The following table defines the SL byte, and the ML byte for read operations only.
;
;                  |-------------------------------------------
;                  | Byte: SL/ML |
;                  |-------------|-----------------------------
;                  | Bits 7 -> 0 | Reserved, do not use
;                  |-------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func FleshToneEnhancement(Const $physical_monitor, Const $enhancement)
	Local Const $return = SetVCPFeature($physical_monitor, 0x11, $enhancement)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: Contrast
; Description ...: Increasing (decreasing) this value will increase (decrease) the Luminance of the image.
; Syntax.........: Contrast($physical_monitor, $contrast)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $contrast         - The desired luminance of the image.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Notes: 1) The actual range of contrast over which this control applies is defined by the manufacturer.
;                         2) Care should be taken to avoid the situation where the contrast ratio approaches 0 … this may be
;                            nonrecoverable since user will not be able to see the image.
; Related .......:
; Link ..........:
; Example .......: No
Func Contrast(Const $physical_monitor, Const $contrast)
	Local Const $return = SetVCPFeature($physical_monitor, 0x12, $contrast)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: BacklightControl
; Description ...: Increasing (decreasing) this value in the SL byte will increase (decrease) the specified Backlight Control value. 
; Syntax.........: BacklightControl($physical_monitor, $control)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $control          - The desired backlight control value.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: The SH byte defines whether operation should be performed as a white adjustment or as a red / green or
;                  blue backlight adjustment when theses are separate light sources (e.g. LED’s). ; On a read the MH-Ml bytes
;                  contain the flags corresponding to those functions supported by the display. The SH-SL bytes contain the bit
;                  field with the appropriate bit set to indicate the current status of the display. The following table defines
;                  the SH byte, and the MH byte for read operations only.
;
;                  |--------------------------------------------
;                  | Byte: SH/MH |
;                  |-------------|------------------------------
;                  | 00h         | A white adjustment
;                  | 01h         | A red adjustment
;                  | 02h         | A green adjustment
;                  | 03h         | A blue adjustment
;                  | >= 04h      | Reserved, must be ignored
;                  |--------------------------------------------
;
;                  Note: The adjustment range (0 --> 255) will be mapped to the actual adjustment range defined by the display
;                  manufacturer. A value of 0 corresponds to the lowest value and 255 the highest value.
; Related .......:
; Link ..........:
; Example .......: No
Func BacklightControl(Const $physical_monitor, Const $control)
	Local Const $return = SetVCPFeature($physical_monitor, 0x13, $control)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: SelectColorPreset
; Description ...: Select a specified color temperature.
; Syntax.........: SelectColorPreset($physical_monitor, $color_preset)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $color_preset     - The desired color preset.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: This is a 2 byte value, the MH byte defines the tolerance associated with any preset … this is fixed by the 
;                  display manufacturer. If no tolerance level is specified, the presets must be interpreted as relative values 
;                  supporting a scale which can move to warmer (lower color temperature) or cooler (higher color temperature).
;
;                  |------------------------------------------------------------------
;                  | Byte: MH |
;                  |----------|-------------------------------------------------------
;                  | 00h      | No tolerance is specified, treat as relative scale.
;                  | 01h      | A tolerance of 1% is specified
;                  | 02h      | A tolerance of 2% is specified
;                  | 03h      | v
;                  | 09h      | A tolerance of 9% is specified
;                  | 0AH      | A tolerance of 10% is specified
;                  | >=0Bh    | Reserved, must be ignored
;                  |------------------------------------------------------------------
;
;                  |------------------------------------------------------------------
;                  | Byte: SL |
;                  |----------|---------------------------|---------------------------
;                  |          | If MH byte<> 00h          | If MH byte = 00h
;                  |----------|---------------------------|---------------------------
;                  | 00h      | Reserved, must be ignored | Reserved, must be ignored
;                  | 01h      | sRGB                      | sRGB
;                  | 02h      | Display native            | Display native
;                  | 03h      | 4000K                     | Warmer
;                  | 04h      | 5000K                     | ^
;                  | 05H      | 6500K                     | ^
;                  | 06h      | 7500K                     | |
;                  | 07h      | 8200K                     | |
;                  | 08h      | 9300K                     | v
;                  | 09h      | 10000K                    | v
;                  | 0Ah      | 11500K                    | Cooler
;                  | 0Bh      | User 1                    | User 1
;                  | 0Ch      | User 2                    | User 2
;                  | 0Dh      | User 3                    | User 3
;                  | >=0Eh    | Reserved, must be ignored | Reserved, must be ignored
;                  ------------------------------------------------------------------
;
;                  Note: In all cases a read operation must return the nominal color temperature and tolerance associated with the value.
;
;                  Example: If tolerance is specified as 5% and preset 09h is selected then color temperature is specified as 10000 K ±5%
; Related .......:
; Link ..........:
; Example .......: No
Func SelectColorPreset(Const $physical_monitor, Const $preset, Const $color_preset)
	Local Const $return = SetVCPFeature($physical_monitor, 0x14, $color_preset)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VideoGainRed
; Description ...: Increasing (decreasing) this value will increase (decrease) the luminance of red pixels. The value returned
;                  must be an indication of the actual red gain at the current color temperature and not be normalized.
; Syntax.........: VideoGainRed($physical_monitor, $luminance)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $luminance        - The desired luminance of red pixels.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......: UserColorVisionCompensation, VideoGainBlue, VideoGainGreen
; Link ..........:
; Example .......: No
Func VideoGainRed(Const $physical_monitor, Const $luminance)
	Local Const $return = SetVCPFeature($physical_monitor, 0x16, $luminance)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: UserColorVisionCompensation
; Description ...: Increasing (decreasing) this value will increase (decrease) the degree of compensation.
; Syntax.........: UserColorVisionCompensation($physical_monitor, $compensation)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $compensation     - The desired compensation
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Note: This is intended to help user suffering from the form of color deficiency in which red colors are poorly seen.
; Related .......: VideoGainRed
; Link ..........:
; Example .......: No
Func UserColorVisionCompensation(Const $physical_monitor, Const $compensation)
	Local Const $return = SetVCPFeature($physical_monitor, 0x17, $compensation)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VideoGainGreen
; Description ...: Increasing (decreasing) this value will increase (decrease) the luminance of green pixels. The value returned
;                  must be an indication of the actual green gain at the current color temperature and not be normalized.
; Syntax.........: VideoGainGreen($physical_monitor, $luminance)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $luminance        - The desired luminance.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......: VideoGainRed, VideoGainBlue
; Link ..........:
; Example .......: No
Func VideoGainGreen(Const $physical_monitor, Const $luminance)
	Local Const $return = SetVCPFeature($physical_monitor, 0x18, $luminance)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VideoGainBlue
; Description ...: Increasing (decreasing) this value will increase (decrease) the luminance of blue pixels. The value returned
;                  must be an indication of the actual blue gain at the current color temperature and not be normalized.
; Syntax.........: VideoGainBlue($physical_monitor, $luminance)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $luminance        - The desired luminance.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func VideoGainBlue(Const $physical_monitor, Const $luminance)
	Local Const $return = SetVCPFeature($physical_monitor, 0x1A, $luminance)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: Focus
; Description ...: Increasing (decreasing) this value will adjust the focus of the image.
; Syntax.........: Focus($physical_monitor, $focus)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $image_focus      - The desired focus of the image.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func Focus(Const $physical_monitor, Const $image_focus)
	Local Const $return = SetVCPFeature($physical_monitor, 0x1C, $image_focus)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: AutoSetup
; Description ...: Perform auto setup function (H/V position, clock, clock phase, A/D converter, etc).
; Syntax.........: AutoSetup($physical_monitor, $status)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $status           - The desired status of auto setup.
; Return values .: Success - Current auto setup status.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |----------------------------------------------------------------------------------------------------------
;                  | Byte: SL |
;                  |----------|-----------------------------------------------------------------------------------------------
;                  | 00h      | Auto setup is not active
;                  | 01h      | Perform / performing auto setup
;                  | 02h      | Enable continuous / periodic auto setup
;                  | >=03h    | Reserved, must be ignored
;                  |----------------------------------------------------------------------------------------------------------
;
;                  Note: A value of ‘02h’ (when supported) must cause the display to either continuously or periodically (event
;                  or timer driven) perform an auto setup. Cancel by writing a value of either ‘01h’ or ‘00h’.
; Related .......:
; Link ..........:
; Example .......: No
Func AutoSetup(Const $physical_monitor, Const $status)
	Local Const $return = SetVCPFeature($physical_monitor, 0x1E, $status)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: AutoColorSetup
; Description ...: Perform auto color setup function (R / G / B gain and offset, A/D setup, etc.)
; Syntax.........: AutoColorSetup($physical_monitor, $status)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $status           - The desired status of auto color.
; Return values .: Success - Current auto color status.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |----------------------------------------------------------
;                  | Byte: SL |
;                  |----------|-----------------------------------------------
;                  | 00h      | Auto color setup is not active
;                  | 01h      | Perform / performing auto color setup
;                  | 02h      | Enable continuous / periodic auto color setup
;                  | >=03h    | Reserved, must be ignored
;                  |----------------------------------------------------------
;
;                  Note: A value of ‘02h’ (when supported) must cause the display to either continuously or periodically (event
;                  or timer driven) perform an auto color setup.  Cancel by writing a value of either ‘01h’ or ‘00h’.
; Related .......:
; Link ..........:
; Example .......: No
Func AutoColorSetup(Const $physical_monitor, Const $status)
	Local Const $return = SetVCPFeature($physical_monitor, 0x1F, $status)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: GrayScaleExpansion
; Description ...: Expands the gray scale either in the near white region or the near black region (or both).
; Syntax.........: GrayScaleExpansion($physical_monitor, $level)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $level            - The desired level of grey scale.
; Return values .: Success - Current gray scale.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |--------------------------------------------------|
;                  | Byte: SH | Near white region                     |
;                  |----------|---------------------------------------|
;                  | 00h      | No white region expansion             |
;                  | 01h      | First level of expansion              |
;                  | 02h      | Second level of expansion             |
;                  | 03h      | Third level of expansion              |
;                  | >=04h    | Reserved, must be ignored             |
;                  |--------------------------------------------------|
;                  | Byte: SL | Near black region                     |
;                  |----------|---------------------------------------|
;                  | 00h      |  No black region expansion            |
;                  | 01h      |  First level of expansion             |
;                  | 02h      |  Second level of expansion            |
;                  | 03h      |  Third level of expansion             |
;                  | >=04h    |  Reserved, must be ignored            |
;                  |--------------------------------------------------|
; Related .......:
; Link ..........:
; Example .......: No
Func GrayScaleExpansion(Const $physical_monitor, Const $level)
	Local Const $return = SetVCPFeature($physical_monitor, 0x2E, $level)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: ClockPhase
; Description ...: Increasing (decreasing) this value will increase (decrease) the phase shift of the sampling clock.
; Syntax.........: ClockPhase($physical_monitor, $phase)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $phase            - The desired clock phase.
; Return values .: Success - Current clock phase.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func ClockPhase(Const $physical_monitor, Const $phase)
	Local Const $return = SetVCPFeature($physical_monitor, 0x3E, $phase)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: HorizontalMoire
; Description ...: Increasing (decreasing) this value controls the horizontal picture moiré cancellation.
; Syntax.........: HorizontalMoire($physical_monitor, $moire)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $moire            - The desired level of horizontal moiré.
; Return values .: Success - Current horozontal moiré.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......: VerticalMoire
; Link ..........:
; Example .......: No
Func HorizontalMoire(Const $physical_monitor, Const $moire)
	Local Const $return = SetVCPFeature($physical_monitor, 0x56, $moire)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VerticalMoire
; Description ...: Increasing (decreasing) this value controls the vertical picture moiré cancellation.
; Syntax.........: VerticalMoire($physical_monitor, $moire)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $moire            - The desired  level of vertical moiré.
; Return values .: Success - Current vertical moiré.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......: HorizontalMoire
; Link ..........:
; Example .......: No
Func VerticalMoire(Const $physical_monitor, Const $moire)
	Local Const $return = SetVCPFeature($physical_monitor, 0x58, $moire)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: SixAxisSaturationControl_Red
; Description ...: Adjust the red saturation for 6-axis color
; Syntax.........: SixAxisSaturationControl_Red($physical_monitor, $saturation)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $saturation       - The desired red saturation for 6-axis color.
; Return values .: Success - The current saturation for 6-axis color.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |---------------------------------------------------|
;                  |Byte: SL |                                         |
;                  |---------|-----------------------------------------|
;                  | > 7Fh   | Causes an increase in red saturation    |
;                  | 7Fh     | The nominal (default) value             |
;                  | < 7Fh   | Causes a decrease in red saturation     |
;                  |---------------------------------------------------|
;
;                  If set = 7fh then display must make no change to the red saturation of the incoming signal. If set <> 7Fh,
;                  then writing a value = 7Fh must cause the display to return to its nominal (default) setting for red saturation.
;                  The ±7Fh range must be linearly mapped to the actual adjustment range.
; Related .......:
; Link ..........:
; Example .......: No
Func SixAxisSaturationControl_Red(Const $physical_monitor, Const $saturation)
	Local Const $return = SetVCPFeature($physical_monitor, 0x59, $saturation)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: SixAxisSaturationControl_Yellow
; Description ...: Adjust the yellow saturation for 6-axis color
; Syntax.........: SixAxisSaturationControl_Yellow($physical_monitor, $saturation)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $saturation       - The desired yellow saturation for 6-axis color.
; Return values .: Success - The current yellow saturation for 6-axis color.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |---------------------------------------------------|
;                  |Byte: SL |                                         |
;                  |---------|-----------------------------------------|
;                  | > 7Fh   | Causes an increase in yellow saturation |
;                  | 7Fh     | The nominal (default) value             |
;                  | < 7Fh   | Causes a decrease in yellow saturation  |
;                  |---------------------------------------------------|
;
;                  If set = 7fh then display must make no change to the yellow saturation of the incoming signal. If set <> 7Fh,
;                  then writing a value = 7Fh must cause the display to return to its nominal (default) setting for yellow saturation.
;                  The ±7Fh range must be linearly mapped to the actual adjustment range.
; Related .......:
; Link ..........:
; Example .......: No
Func SixAxisSaturationControl_Yellow(Const $physical_monitor, Const $saturation)
	Local Const $return = SetVCPFeature($physical_monitor, 0x5A, $saturation)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: SixAxisSaturationControl_Green
; Description ...: Adjust the green saturation for 6-axis color
; Syntax.........: SixAxisSaturationControl_Green($physical_monitor, $saturation)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $saturation       - The desired green saturation for 6-axis color.
; Return values .: Success - The current green saturation for 6-axis color.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |---------------------------------------------------|
;                  |Byte: SL |                                         |
;                  |---------|-----------------------------------------|
;                  | > 7Fh   | Causes an increase in green saturation  |
;                  | 7Fh     | The nominal (default) value             |
;                  | < 7Fh   | Causes a decrease in green saturation   |
;                  |---------------------------------------------------|
;
;                  If set = 7fh then display must make no change to the green saturation of the incoming signal. If set <> 7Fh,
;                  then writing a value = 7Fh must cause the display to return to its nominal (default) setting for green saturation.
;                  The ±7Fh range must be linearly mapped to the actual adjustment range.
; Related .......:
; Link ..........:
; Example .......: No
Func SixAxisSaturationControl_Green(Const $physical_monitor, Const $saturation)
	Local Const $return = SetVCPFeature($physical_monitor, 0x5B, $saturation)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: SixAxisSaturationControl_Cyan
; Description ...: Adjust the cyan saturation for 6-axis color
; Syntax.........: SixAxisSaturationControl_Cyan($physical_monitor, $saturation)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $saturation       - The desired cyan saturation for 6-axis color.
; Return values .: Success - The current cyan saturation for 6-axis color.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |---------------------------------------------------|
;                  | Byte: SL |                                        |
;                  |----------|----------------------------------------|
;                  | > 7Fh    | Causes an increase in cyan saturation  |
;                  | 7Fh      | The nominal (default) value            |
;                  | < 7Fh    | Causes a decrease in cyan saturation   |
;                  |---------------------------------------------------|
;
;                  If set = 7fh then display must make no change to the cyan saturation of the incoming signal. If set <> 7Fh,
;                  then writing a value = 7Fh must cause the display to return to its nominal (default) setting for cyan saturation.
;                  The ±7Fh range must be linearly mapped to the actual adjustment range.
; Related .......:
; Link ..........:
; Example .......: No
Func SixAxisSaturationControl_Cyan(Const $physical_monitor, Const $saturation)
	Local Const $return = SetVCPFeature($physical_monitor, 0x5C, $saturation)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: SixAxisSaturationControl_Blue
; Description ...: Adjust the blue saturation for 6-axis color
; Syntax.........: SixAxisSaturationControl_Blue($physical_monitor, $saturation)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $saturation       - The desired blue saturation for 6-axis color.
; Return values .: Success - The current blue saturation for 6-axis color.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |---------------------------------------------------|
;                  |Byte: SL |                                         |
;                  |---------|-----------------------------------------|
;                  | > 7Fh   | Causes an increase in blue saturation   |
;                  | 7Fh     | The nominal (default) value             |
;                  | < 7Fh   | Causes a decrease in blue saturation    |
;                  |---------------------------------------------------|
;
;                  If set = 7fh then display must make no change to the blue saturation of the incoming signal. If set <> 7Fh,
;                  then writing a value = 7Fh must cause the display to return to its nominal (default) setting for blue saturation.
;                  The ±7Fh range must be linearly mapped to the actual adjustment range.
; Related .......:
; Link ..........:
; Example .......: No
Func SixAxisSaturationControl_Blue(Const $physical_monitor, Const $saturation)
	Local Const $return = SetVCPFeature($physical_monitor, 0x5D, $saturation)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: SixAxisSaturationControl_Magenta
; Description ...: Adjust the magenta saturation for 6-axis color
; Syntax.........: SixAxisSaturationControl_Magenta($physical_monitor, $saturation)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $saturation       - The desired magenta saturation for 6-axis color.
; Return values .: Success - The current magenta saturation for 6-axis color.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |----------------------------------------------------|
;                  |Byte: SL |                                          |
;                  |---------|------------------------------------------|
;                  | > 7Fh   | Causes an increase in magenta saturation |
;                  | 7Fh     | The nominal (default) value              |
;                  | < 7Fh   | Causes a decrease in magenta saturation  |
;                  |----------------------------------------------------|
;
;                  If set = 7fh then display must make no change to the magenta saturation of the incoming signal. If set <> 7Fh,
;                  then writing a value = 7Fh must cause the display to return to its nominal (default) setting for magenta saturation.
;                  The ±7Fh range must be linearly mapped to the actual adjustment range.
; Related .......:
; Link ..........:
; Example .......: No
Func SixAxisSaturationControl_Magenta(Const $physical_monitor, Const $saturation)
	Local Const $return = SetVCPFeature($physical_monitor, 0x5E, $saturation)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VideoBlackLevel_Red
; Description ...: Increasing (decreasing) this value will increase (decrease) the black level of the red video.
; Syntax.........: VideoBlackLevel_Red($physical_monitor, $black_level)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $black_level      - The desired black level of the red video.
; Return values .: Success - The current black level of the red video.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func VideoBlackLevel_Red(Const $physical_monitor, Const $black_level)
	Local Const $return = SetVCPFeature($physical_monitor, 0x6C, $black_level)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VideoBlackLevel_Green
; Description ...: Increasing (decreasing) this value will increase (decrease) the black level of the green video.
; Syntax.........: VideoBlackLevel_Green($physical_monitor, $green_level)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $green_level      - The desired black level of the green video.
; Return values .: Success - The current black level of the green video.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func VideoBlackLevel_Green(Const $physical_monitor, Const $green_level)
	Local Const $return = SetVCPFeature($physical_monitor, 0x6E, $green_level)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VideoBlackLevel_Blue
; Description ...: Increasing (decreasing) this value will increase (decrease) the black level of the blue video.
; Syntax.........: VideoBlackLevel_Blue($physical_monitor, $blue_level)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $blue_level      - The desired black level of the blue video.
; Return values .: Success - The current black level of the blue video.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func VideoBlackLevel_Blue(Const $physical_monitor, Const $blue_level)
	Local Const $return = SetVCPFeature($physical_monitor, 0x70, $blue_level)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: Gamma
; Description ...: This VCP code has two distinct modes, it may be used to select an absolute (within a defined tolerance) value
;                  for gamma or it may be used to select a value of gamma relative to the default gamma of the display.
; Syntax.........: Gamma($physical_monitor, $gamma)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $gamma            - The desired gamma.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: The SL byte defines whether the operation should be performed as a white adjustment or as a red / green or blue
;                  sub-channel adjustment or if the display should disable all gamma correction.
;
;                  |--------------------------------------------------------
;                  | Byte: SL |
;                  |----------|---------------------------------------------
;                  | 00h      | A white absolute adjustment
;                  | 01h      | A red absolute adjustment
;                  | 02h      | A green absolute adjustment
;                  | 03h      | A blue absolute adjustment
;                  | 04h      | A white relative adjustment
;                  | 05h      | Disable all gamma correction in the display
;                  | >=06h    | Reserved, must be ignored
;                  ---------------------------------------------------------
;
;                  For more information see the MCCS standard.
; Related .......:
; Link ..........:
; Example .......: No
Func Gamma(Const $physical_monitor, Const $gamma)
	Local Const $return = SetVCPFeature($physical_monitor, 0x72, $gamma)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: LUTSize
; Description ...: Provides the size (number of entries and number of bits / entry) for the Red / Green and Blue LUT in the display.
; Syntax.........: LUTSize($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |--------------------------------------------------|
;                  | Byte  | Definition                               |
;                  |-------|------------------------------------------|
;                  | 0 + 1 | Number of Red LUT entries                |
;                  | 2 + 3 | Number of Green LUT entries              |
;                  | 4 + 5 | Number of Blue LUT entries               |
;                  | 6     | Number of bits / entry in Red LUT        |
;                  | 7     | Number of bits / entry in Green LUT      |
;                  | 8     | Number of bits / entry in Blue LUT       |
;                  |--------------------------------------------------|
;
;                  Note: Support for this command is a pre-requisite for support of commands 74h and 75h.
; Related .......:
; Link ..........:
; Example .......: No
Func LUTSize(Const $physical_monitor)
	Local Const $return = SetVCPFeature($physical_monitor, 0x73, 0)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: SinglePointLUTOperation
; Description ...: Allows a single point within a display’s color LUT (look up table) to be loaded.
;
; Syntax.........: SinglePointLUTOperation($physical_monitor, $value)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $value            - The desired operation.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Write Operation
;                    |----------------------------------------|
;                    | Byte  | Definition                     |
;                    |-------|--------------------------------|
;                    | 0     | Value = 1 (write operation)    |
;                    | 1 + 2 | Offset into the LUT            |
;                    | 3 + 4 | Red LUT value to be loaded     |
;                    | 5 + 6 | Green LUT value to be loaded   |
;                    | 7 + 8 | Blue LUT value to be loaded    |
;                    |----------------------------------------|
;
;                  Read Operation
;                    |----------------------------------------|
;                    | Byte  | Definition                     |
;                    |-------|--------------------------------|
;                    | 0     | Value = 2 (read operation)     |
;                    | 1 + 2 | Offset into the LUT            |
;                    |----------------------------------------|
;
;                    |----------------------------------------|
;                    | Byte  | Definition                     |
;                    |-------|--------------------------------|
;                    | 0 + 1 | Red LUT value read             |
;                    | 2 + 3 | Green LUT value read           |
;                    | 4 + 5 | Blue LUT value read            |
;                    |----------------------------------------|
;
;                  Notes: 1. If display LUT cannot store 16 bit values then least significant bits must be discarded
;                         2. Support of VCP 73h, LUT Size, is a pre-requisite for this VCP
; Related .......:
; Link ..........:
; Example .......: No
Func SinglePointLUTOperation(Const $physical_monitor, Const $value)
	Local Const $return = SetVCPFeature($physical_monitor, 0x74, $value)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: BlockLUTOperation
; Description ...: Provides an efficient method for loading multiple values into a display’s LUT
; Syntax.........: BlockLUTOperation($physical_monitor, $value)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $value            - The desired operation.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Write Operation
;                   |--------------------------------------------------|
;                   | Byte    | Definition                             |
;                   |---------|----------------------------------------|
;                   | 0       | Value = 1 (write operation)            |
;                   | 1       | Red / Green or Blue LUT follows        |
;                   |         |  Value = 1 : Red LUT data              |
;                   |         |  Value = 2 : Green LUT data            |
;                   |         |  Value = 3 : Blue LUT data             |
;                   | 2 + 3   | Number of values to be read            |
;                   | 4 + 5   | Offset into Red or Green or Blue LUT   |
;                   | 6 + 7   | 1st R or G or B LUT value to be loaded |
;                   | 8 + 9   | 2nd R or G or B LUT value to be loaded |
;                   | 10 + 11 | 3rd R or G or B LUT value to be loaded |
;                   |         | etc                                    |
;                   |--------------------------------------------------|
;
;                  Read Operation
;                   |------------------------------------------------|
;                   | Byte  | Definition                             |
;                   |------------------------------------------------|
;                   | 0     | Value = 2 (read operation)             |
;                   | 1     | Red / Green or Blue LUT follows        |
;                   |       | Value = 1 : Red LUT data               |
;                   |       | Value = 2 : Green LUT data             |
;                   |       | Value = 3 : Blue LUT data              |
;                   | 2 + 3 | Number of values to be read            |
;                   | 4 + 5 | Offset into Red or Green or Blue LUT   |
;                   |------------------------------------------------|
;
;                   |------------------------------------------------|
;                   | Byte  | Definition                             |
;                   |-------|----------------------------------------|
;                   | 0 + 1 | 1st Red or Green or Blue LUT contents  |
;                   | 2 + 3 | 2nd Red or Green or Blue LUT contents  |
;                   | 4 + 5 | 3rd Red or Green or Blue LUT contents  |
;                   |       | etc                                    |
;                   |------------------------------------------------|
;
;                  Notes: 1. If display LUT cannot store 16 bit values then least significant bits must be discarded
;                         2. Support of VCP 73h, LUT Size, is a pre-requisite for this VCP
; Related .......:
; Link ..........:
; Example .......: No
Func BlockLUTOperation(Const $physical_monitor, Const $value)
	Local Const $return = SetVCPFeature($physical_monitor, 0x75, $value)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: AdjustZoom
; Description ...: Increasing (decreasing) this value will increase (decrease) the zoom function of the projection lens.
; Syntax.........: AdjustZoom($physical_monitor, $zoom)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $zoom             - The desired level of zoom.
; Return values .: Success - Current level of zoom.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func AdjustZoom(Const $physical_monitor, Const $zoom)
	Local Const $return = SetVCPFeature($physical_monitor, 0x7C, $zoom)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: Sharpness
; Description ...: Allows one of a range of algorithms to be selected to suit the type of image being displayed and/or personal
;                  preference. Increasing (decreasing) the value must increase (decrease) the edge sharpness of image features.
; Syntax.........: Sharpness($physical_monitor, $sharp)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $sharp            - The desired level of sharpness.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func Sharpness(Const $physical_monitor, Const $sharp)
	Local Const $return = SetVCPFeature($physical_monitor, 0x87, $sharp)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VelocityScanModulation
; Description ...: Increasing (decreasing) this value will increase (decrease) the velocity modulation of the horizontal scan as
;                  a function of a change in the luminance level.
; Syntax.........: VelocityScanModulation($physical_monitor, $velocity)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $velocity         - The desired velocity modulation.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func VelocityScanModulation(Const $physical_monitor, Const $velocity)
	Local Const $return = SetVCPFeature($physical_monitor, 0x88, $velocity)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: ColorSaturation
; Description ...: Increasing this control increases the amplitude of the color difference components of the video signal. The
;                  result is an increase in the amount of pure color relative to white in the video. This control applies to the
;                  currently active interface.
; Syntax.........: ColorSaturation($physical_monitor, $amplitude)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $amplitude        - The desired amplitude of the color difference components.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func ColorSaturation(Const $physical_monitor, Const $amplitude)
	Local Const $return = SetVCPFeature($physical_monitor, 0x8A, $amplitude)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: TVSharpness
; Description ...: Increasing this control increases the amplitude of the high frequency components of the video signal. This
;                  allows fine details to be accentuated. This control does not affect the RGB input, only the TV video inputs.
; Syntax.........: TVSharpness($physical_monitor, $amplitude)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $amplitude        - The desired amplitude of the high frequency components.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func TVSharpness(Const $physical_monitor, Const $amplitude)
	Local Const $return = SetVCPFeature($physical_monitor, 0x8C, $amplitude)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: TVContrast
; Description ...: Increasing (decreasing) this control increases (decreases) the ratio between whites and blacks in the video.
;                  This control does not affect the RGB input, only the TV video inputs.
; Syntax.........: TVContrast($physical_monitor, $ratio)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $ratio            - The desired ratio between the whites and blacks.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func TVContrast(Const $physical_monitor, Const $ratio)
	Local Const $return = SetVCPFeature($physical_monitor, 0x8E, $ratio)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: Hue
; Description ...: Also known as ‘tint’ Increasing (decreasing) this control increases (decreases) the wavelength of the color
;                  component of the video signal. 
; Syntax.........: Hue($physical_monitor, $hue)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $hue              - The desired wavelength of the color component.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: The result is a shift towards red (blue) in the hue of all colors. This control applies to the currently 
;                  active interface.
; Related .......:
; Link ..........:
; Example .......: No
Func Hue(Const $physical_monitor, Const $hue)
	Local Const $return = SetVCPFeature($physical_monitor, 0x90, $hue)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: TVBlackLevel_Luminance
; Description ...: Increasing this control increases the black level of the video, resulting in an increase of the luminance
;                  level of the video. 
; Syntax.........: TVBlackLevel_Luminance($physical_monitor, $luminance)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $luminance        - The desired black level of the video.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: A value of zero represents the darkest level possible. This control does not affect the RGB input, only the 
;                  TV video inputs.
; Related .......:
; Link ..........:
; Example .......: No
Func TVBlackLevel_Luminance(Const $physical_monitor, Const $luminance)
	Local Const $return = SetVCPFeature($physical_monitor, 0x92, $luminance)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: WindowBackground
; Description ...: Changes the contrast ratio between the area of the window and the rest of the desktop. 
; Syntax.........: WindowBackground($physical_monitor, $contrast_ratio)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $contrast_ratio   - The desired contrast ratio between the area of the window and the rest of the desktop.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Lower (higher) values will cause the desktop luminance to decrease (increase).
;
;                  Notes: 1. This VCP code should be used in conjunction with VCP 99h
;                         2. This command structure is not recommended for new designs, see VCP A5h for alternate.
; Related .......:
; Link ..........:
; Example .......: No
Func WindowBackground(Const $physical_monitor, Const $contrast_ratio)
	Local Const $return = SetVCPFeature($physical_monitor, 0x9A, $contrast_ratio)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: SixAxisHueControl_Red
; Description ...: Adjust the red hue for 6-axis color
; Syntax.........: SixAxisHueControl_Red($physical_monitor, $red_hue)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $red_hue          - The desired red hue for 6-axis color.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |------------------------------------------|
;                  | Byte: SL |                               |
;                  |----------|-------------------------------|
;                  | > 7Fh    | Causes an increase in red hue |
;                  | 7Fh      | The nominal (default) value   |
;                  | < 7Fh    | Causes a decrease in red hue  |
;                  |------------------------------------------|
;
;                  If set = 7fh then display must make no change to the red hue of the incoming signal. If set <>7Fh, then
;                  writing a value = 7Fh must cause the display to return to its nominal (default) setting for red hue. The ±7Fh
;                  range must be linearly mapped to the actual adjustment range.
; Related .......:
; Link ..........:
; Example .......: No
Func SixAxisHueControl_Red(Const $physical_monitor, Const $red_hue)
	Local Const $return = SetVCPFeature($physical_monitor, 0x9B, $red_hue)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: SixAxisHueControl_Yellow
; Description ...: Adjust the yellow hue for 6-axis color
; Syntax.........: SixAxisHueControl_Yellow($physical_monitor, $yellow_hue)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $yellow_hue       - The desired yellow hue for 6-axis color.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |---------------------------------------------|
;                  | Byte: SL |                                  |
;                  |----------|----------------------------------|
;                  | > 7Fh    | Causes an increase in yellow hue |
;                  | 7Fh      | The nominal (default) value      |
;                  | < 7Fh    | Causes a decrease in yellow hue  |
;                  |---------------------------------------------|
;
;                  If set = 7fh then display must make no change to the yellow hue of the incoming signal. If set <>7Fh, then
;                  writing a value = 7Fh must cause the display to return to its nominal (default) setting for yellow hue. The ±7Fh
;                  range must be linearly mapped to the actual adjustment range.
; Related .......:
; Link ..........:
; Example .......: No
Func SixAxisHueControl_Yellow(Const $physical_monitor, Const $yellow_hue)
	Local Const $return = SetVCPFeature($physical_monitor, 0x9C, $yellow_hue)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: SixAxisHueControl_Green
; Description ...: Adjust the green hue for 6-axis color nominal (default) setting for green hue. The ±7Fh
;                  range must be linearly mapped to the actual adjustment range.
; Syntax.........: SixAxisHueControl_Green($physical_monitor, $green_hue)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $green_hue        - The desired green hue for 6-axis color.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |--------------------------------------------|
;                  | Byte: SL |                                 |
;                  |----------|---------------------------------|
;                  | > 7Fh    | Causes an increase in green hue |
;                  | 7Fh      | The nominal (default) value     |
;                  | < 7Fh    | Causes a decrease in green hue  |
;                  |--------------------------------------------|
;
;                  If set = 7fh then display must make no change to the green hue of the incoming signal. If set <>7Fh, then
;                  writing a value = 7Fh must cause the display to return to its
; Related .......:
; Link ..........:
; Example .......: No
Func SixAxisHueControl_Green(Const $physical_monitor, Const $green_hue)
	Local Const $return = SetVCPFeature($physical_monitor, 0x9D, $green_hue)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: SixAxisHueControl_Cyan
; Description ...: Adjust the cyan hue for 6-axis color
; Syntax.........: SixAxisHueControl_Cyan($physical_monitor, $cyan_hue)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $cyan_hue         - The desired cyan hue for 6-axis color.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |-------------------------------------------|
;                  | Byte: SL |                                |
;                  |----------|--------------------------------|
;                  | > 7Fh    | Causes an increase in cyan hue |
;                  | 7Fh      | The nominal (default) value    |
;                  | < 7Fh    | Causes a decrease in cyan hue  |
;                  |-------------------------------------------|
;
;                  If set = 7fh then display must make no change to the cyan hue of the incoming signal. If set <>7Fh, then
;                  writing a value = 7Fh must cause the display to return to its nominal (default) setting for cyan hue. The ±7Fh
;                  range must be linearly mapped to the actual adjustment range.
; Related .......:
; Link ..........:
; Example .......: No
Func SixAxisHueControl_Cyan(Const $physical_monitor, Const $cyan_hue)
	Local Const $return = SetVCPFeature($physical_monitor, 0x9E, $cyan_hue)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: SixAxisHueControl_Blue
; Description ...: Adjust the blue hue for 6-axis color
; Syntax.........: SixAxisHueControl_Blue($physical_monitor, $blue_hue)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $blue_hue         - The desired blue hue for 6-axis color.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |-------------------------------------------|
;                  | Byte: SL |                                |
;                  |----------|--------------------------------|
;                  | > 7Fh    | Causes an increase in blue hue |
;                  | 7Fh      | The nominal (default) value    |
;                  | < 7Fh    | Causes a decrease in blue hue  |
;                  |-------------------------------------------|
;
;                  If set = 7fh then display must make no change to the blue hue of the incoming signal. If set <>7Fh, then
;                  writing a value = 7Fh must cause the display to return to its nominal (default) setting for blue hue. The ±7Fh
;                  range must be linearly mapped to the actual adjustment range.
; Related .......:
; Link ..........:
; Example .......: No
Func SixAxisHueControl_Blue(Const $physical_monitor, Const $blue_hue)
	Local Const $return = SetVCPFeature($physical_monitor, 0x9F, $blue_hue)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: SixAxisHueControl_Magenta
; Description ...: Adjust the magenta hue for 6-axis color
; Syntax.........: SixAxisHueControl_Magenta($physical_monitor, $magenta_hue)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $magenta_hue      - The desired magenta hue for 6-axis color.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |----------------------------------------------|
;                  | Byte: SL |                                   |
;                  |----------|-----------------------------------|
;                  | > 7Fh    | Causes an increase in magenta hue |
;                  | 7Fh      | The nominal (default) value       |
;                  | < 7Fh    | Causes a decrease in magenta hue  |
;                  |----------------------------------------------|
;
;                  If set = 7fh then display must make no change to the magenta hue of the incoming signal. If set <>7Fh, then
;                  writing a value = 7Fh must cause the display to return to its nominal (default) setting for magenta hue. The ±7Fh
;                  range must be linearly mapped to the actual adjustment range.
; Related .......:
; Link ..........:
; Example .......: No
Func SixAxisHueControl_Magenta(Const $physical_monitor, Const $magenta_hue)
	Local Const $return = SetVCPFeature($physical_monitor, 0xA0, $magenta_hue)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: AutoSetupOn_Off
; Description ...: Turn on / off the auto setup function (periodic or event driven).
; Syntax.........: AutoSetupOn_Off($physical_monitor, $auto_setup)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $auto_setup       - Turn on / off the auto setup function.
; Return values .: Success - True
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |--------------------------------------|
;                  | Byte: SL |                           |
;                  |----------|---------------------------|
;                  | 00h      | Reserved, must be ignored |
;                  | 01h      | Turn auto setup “off’     |
;                  | 02h      | Turn auto setup ‘on’      |
;                  | >=03h    | Reserved, must be ignored |
;                  |--------------------------------------|
; Related .......:
; Link ..........:
; Example .......: No
Func AutoSetupOn_Off(Const $physical_monitor, Const $auto_setup)
	Local Const $return = SetVCPFeature($physical_monitor, 0xA2, $auto_setup)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: WindowMaskControl
; Description ...: This code has two sets of functions: To retain compatibility with applications using VCP codes 95h --> 98h to
;                  set the (x,y) coordinates of a window. 
; Syntax.........: WindowMaskControl($physical_monitor, $mask)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $mask             - The desired window mask control.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: It also provides a way to set all the window coordinates simultaneously
;                  – this is recommended for new designs.  For legacy operations: The bits of byte 0 allow each window to be masked
;                  from the user e.g. while it is being resized. The bits of byte 1 allow each window to be turned to an active or
;                  inactive state … note that only an active window will be visible to the user, assuming it has not been masked.
;                  For new implementations: Byte 2 and 3 provide the top left x coordinate of the window. Byte 4 and 5 provide
;                  the top left y coordinates of the window. Byte 6 and 7 provide the bottom right x coordinate of the window.
;                  Byte 8 and 9 provide the bottom right y coordinates of the window.
;
;                  |--------------------------------------------------------------------------------------
;                  | Byte 0  |         |
;                  |---------|---------|------------------------------------------------------------------
;                  | Bit 0   | Set = 0 | Window controls have no effect on the displayed image.
;                  |         | Set = 1 | Window controls affect the displayed image (full image area)
;                  |---------|---------|------------------------------------------------------------------
;                  | Bit 1   | Set = 0 | Window controls have no effect on the displayed image (window 1)
;                  |         | Set = 1 | Window controls affect the displayed image (window 1)
;                  |---------|---------|------------------------------------------------------------------
;                  | |       | |       | |
;                  | V       | V       | V
;                  |---------|---------|------------------------------------------------------------------
;                  | Bit 7   | Set = 0 | Window controls have no effect on the displayed image (window 7)
;                  |         | Set = 1 | Window controls affect the displayed image (window 7)
;                  |---------|---------|------------------------------------------------------------------
;                  | Byte 0  |         |
;                  |---------|---------|------------------------------------------------------------------
;                  | Bit 0   | Set = 0 | Reserved, do not use
;                  |---------|---------|------------------------------------------------------------------
;                  | Bit 1   | Set = 0 | Window #1 is inactive
;                  |         | Set = 1 | Window #1 is active
;                  |---------|---------|------------------------------------------------------------------
;                  | |       | |       | |
;                  | V       | V       | V
;                  |---------|---------|------------------------------------------------------------------
;                  | Bit 7   | Set = 0 | Window #7 is inactive
;                  |         | Set = 1 | Window #7 is active
;                  |---------|---------|------------------------------------------------------------------
;                  | Byte 2  |         | High order bits of top left x coordinate
;                  | Byte 3  |         | Low order bits of top left x coordinate
;                  | Byte 4  |         | High order bits of top left y coordinate
;                  | Byte 5  |         | Low order bits of top left y coordinate
;                  | Byte 6  |         | High order bits of bottom right x coordinate
;                  | Byte 7  |         | Low order bits of bottom right x coordinate
;                  | Byte 8  |         | High order bits of bottom right y coordinate
;                  | Byte 9  |         | Low order bits of bottom right y coordinate
;                  |--------------------------------------------------------------------------------------
;
;                  Note: This command structure is recommended, in conjunction with VCP A5h, for all new designs.
; Related .......:
; Link ..........:
; Example .......: No
Func WindowMaskControl(Const $physical_monitor, Const $mask)
	Local Const $return = SetVCPFeature($physical_monitor, 0xA4, $mask)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: WindowSelect
; Description ...: Change the selected window (as defined by 95h – 98h). 
; Syntax.........: WindowSelect($physical_monitor, $window)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $window           - The desired window.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: When a window is selected then all commands that the display controller supports for window operations are 
;                  valid, this may include but is not limited to: luminance, contrast, R/G/B gain, 6-axis color, sharpness, etc.
;
;                  |------------------------------------------------------------------------------------
;                  | Byte: SL |
;                  |----------|-------------------------------------------------------------------------
;                  | 00h      | Full display image area is selected except for area(s) of active windows
;                  | 01h      | Window 1 is selected
;                  | 02h      | Window 2 is selected
;                  | 03h      | Window 3 is selected
;                  | 04h      | Window 4 is selected
;                  | 05h      | Window 5 is selected
;                  | 06h      | Window 6 is selected
;                  | 07h      | Window 7 is selected
;                  | >=08h    | Reserved, must be ignored
;                  |------------------------------------------------------------------------------------
;
;                  Notes: If this command is not supported then the ‘full image area’ must be the default. This command structure
;                  is recommended, in conjunction with VCP A4h, for all new designs The last window to be addressed is assumed to
;                  the top ‘layer’ of the displayed image.
; Related .......:
; Link ..........:
; Example .......: No
Func WindowSelect(Const $physical_monitor, Const $window)
	Local Const $return = SetVCPFeature($physical_monitor, 0xA5, $window)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: ScreenOrientation
; Description ...: Indicates the orientation of the screen.
; Syntax.........: ScreenOrientation($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - True
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |--------------------------------------------------------------------------------------------------------
;                  | Byte: SL   |
;                  |------------|----------------|--------------------------------------------------------------------------
;                  | 00h        | Reserved       | Shall be ignored
;                  | 01h        | 0 degrees      | The normal landscape mode
;                  | 02h        | 90 degrees     | Portrait mode achieved by clockwise rotation of the display 90 degrees.
;                  | 03h        | 180 degrees    | Landscape mode achieved by rotation of the display 180 degrees.
;                  | 04h        | 270 degrees    | Portrait mode achieved by clockwise rotation of the display 270 degrees.
;                  | 05h -> FEh | Reserved       | Shall be ignored
;                  | FFh        | Not applicable | Indicates that the display cannot supply the current orientation
;                  |--------------------------------------------------------------------------------------------------------
;
;                  Note: “Clockwise rotation” when viewing the display from user’s viewpoint.
; Related .......:
; Link ..........:
; Example .......: No
Func ScreenOrientation(Const $physical_monitor)
	Local Const $return = SetVCPFeature($physical_monitor, 0xAA, 0)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: StereoVideoMode
; Description ...: Used to select the video mode with respect to 2D or 3D video.
; Syntax.........: StereoVideoMode($physical_monitor, $video_mode)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $video_mode       - The desired video mode.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |------------------------------------------------------------------------------------
;                  | Byte: SL |
;                  |----------|-------------------------------------------------------------------------
;                  | Bit 7    | Reserved, must be ignored
;                  | Bit 6    | Enable Field-Sequential Right Eye First
;                  | Bit 5    | Enable Field-Sequential Left Eye First
;                  | Bit 4    | Enable 2-Way Interleaved Right Eye First
;                  | Bit 3    | Enable 2-Way Interleaved Left Eye First
;                  | Bit 2    | Enable 4-Way Interleaved, Display Stereo Buffer 0 (even scan lines)
;                  | Bit 1    | Enable 4-Way Interleaved, Display Stereo Buffer 1 (odd scan lines)
;                  | Bit 0    | Enable Side-by-Side Interleaved
;                  |------------------------------------------------------------------------------------
;
;                  Note: It is permissible, during a read operation, for a display to indicate support for 2 or more stereo modes
; Related .......:
; Link ..........:
; Example .......: No
Func StereoVideoMode(Const $physical_monitor, Const $video_mode)
	Local Const $return = SetVCPFeature($physical_monitor, 0xD4, $video_mode)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: DisplayApplication
; Description ...: Permits the selection of a preset optimized by manufacturer for an application type or the selection of a user
;                  defined setting.
; Syntax.........: DisplayApplication($physical_monitor, $preset)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $preset           - The desired preset.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |---------------------------------------------------------------------------|
;                  | Byte: SL  |                                                               |
;                  |-----------|---------------------------------------------------------------|
;                  | 00h       | Stand / default mode                                          |
;                  | 01h       | Productivity (e.g. office applications)                       |
;                  | 02h       | Mixed (e.g. internet with mix of text and images)             |
;                  | 03h       | Movie                                                         |
;                  | 04h       | User defined                                                  |
;                  | 05h       | Games (e.g. games console / PC game)                          |
;                  | 06h       | Sports (e.g. fast action)                                     |
;                  | 07h       | Professional (all signal processing disabled)                 |
;                  | 08h       | Standard / default mode with intermediate power consumption   |
;                  | 09h       | Standard / default mode with low power consumption            |
;                  | 0Ah       | Demonstration (used for high visual impact in retail etc)     |
;                  | 0Bh - EFh | Reserved, must be ignored                                     |
;                  | F0h       | Dynamic contrast                                              |
;                  | >=F1h     | Reserved, must be ignored                                     |
;                  |---------------------------------------------------------------------------|
;
;                  Note: The condition(s) associated with options 00h -> 0Ah (inclusive) are defined by the display manufacturer
;                  and may include all or some of luminance, contrast, gamma settings, etc.
; Related .......:
; Link ..........:
; Example .......: No
Func DisplayApplication(Const $physical_monitor, Const $preset)
	Local Const $return = SetVCPFeature($physical_monitor, 0xDC, $preset)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: HorizontalFrequency
; Description ...: Horizontal synchronization signal frequency in Hz as determined by the display. 
; Syntax.........: HorizontalFrequency($physical_monitor, $frequency)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $frequency        - The desired horizontal frequency.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: MH = ML = SH = SL = FFh: Indicates that the display cannot determine the frequency or it is out of range. 
;                  Example: A reported value of 01h, 21h, 10h indicates a Hz frequency of 74.0KHz (nominal for 1920 x 1200 @ 
;                  60Hz reduced blanking)
; Related .......:
; Link ..........:
; Example .......: No
Func HorizontalFrequency(Const $physical_monitor, Const $frequency)
	Local Const $return = SetVCPFeature($physical_monitor, 0xAC, $frequency)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VerticalFrequency
; Description ...: Vertical synchronization signal frequency in 0.01Hz as determined by the display. 
; Syntax.........: VerticalFrequency($physical_monitor, $frequency)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $frequency        - The desired vertical frequency.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: MH = ML = SH = SL = FFh: Indicates that the display cannot determine the frequency or it is out of range. 
;                  Example: A reported value of 17h, 7Ah indicates a Hz frequency of 60.1Hz.
; Related .......:
; Link ..........:
; Example .......: No
Func VerticalFrequency(Const $physical_monitor, Const $frequency)
	Local Const $return = SetVCPFeature($physical_monitor, 0xAE, $frequency)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: SourceTimingMode
; Description ...: Indicates the timing mode being sent by the host. 
; Syntax.........: SourceTimingMode($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - The source timing mode.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: This command has a 5 byte data structure: Byte 0: flags for
;                  DMT timing modes Byte 1: flags for DTV timing modes Bytes 2 – 4: CVT descriptor bytes Note: Only one Timing
;                  Mode must be indicated, any combination with more than a single Timing Mode identified is invalid and must be
;                  ignored. Note: ‘RB’ in following table indicates ‘reduced blanking’ as defined by the VESA CVT standard.
;
;                  |------------------------------------------------------------
;                  | Byte 0 | VESA DMT Standard entry
;                  |--------|---------------------------------------------------
;                  | 00h    | Reserved, must be ignored
;                  | 01h    |  640 x 350 @ 85 Hz
;                  | 02h    |  640 x 400 @ 85 Hz
;                  | 03h    |  720 x 400 @ 85 Hz
;                  | 04h    |  640 X 480 @ 60 Hz
;                  | 05h    |  640 X 480 @ 72 Hz
;                  | 06h    |  640 X 480 @ 75 Hz
;                  | 07h    |  640 X 480 @ 85 Hz
;                  | 08h    |  800 x 600 @ 56 Hz
;                  | 09h    |  800 X 600 @ 60 Hz
;                  | 0Ah    |  800 x 600 @ 72 Hz
;                  | 0Bh    |  800 x 600 @ 75 Hz
;                  | 0Ch    |  800 x 600 @ 85 Hz
;                  | 0Dh    |  848 x 480 @ 60 Hz
;                  | 0Eh    |  1024 x 768 @ 43 Hz interlaced
;                  | 0Fh    |  1024 x 768 @ 60 Hz
;                  | 10h    |  1024 x 768 @ 70 Hz
;                  | 11h    |  1024 x 768 @ 75 Hz
;                  | 12h    |  1024 x 768 @ 85 Hz
;                  | 13h    |  1152 x 864 @ 75 Hz
;                  | 14h    |  1280 x 768 @ 60 Hz - RB
;                  | 15h    |  1280 x 768 @ 60 Hz
;                  | 16h    |  1280 x 768 @ 75 Hz
;                  | 17h    |  1280 x 768 @ 85 Hz
;                  | 18h    |  1280 x 960 @ 60 Hz
;                  | 19h    |  1280 x 960 @ 85 Hz
;                  | 1Ah    |  1280 x 1024 @ 60 Hz
;                  | 1Bh    |  1280 x 1024 @ 75 Hz
;                  | 1Ch    |  1280 x 1024 @ 85 Hz
;                  | 1Dh    |  1360 x 768 @ 60 Hz
;                  | 1Eh    |  1400 x 1050 @ 60 Hz - RB
;                  | 1Fh    |  1400 x 1050 @ 60 Hz
;                  | 20h    |  1400 x 1050 @ 75 Hz
;                  | 21h    |  1400 x 1050 @ 85 Hz
;                  | 22h    |  1440 x 900 @ 60 Hz - RB
;                  | 23h    |  1440 x 900 @ 60 Hz
;                  | 24h    |  1440 x 900 @ 75 Hz
;                  | 25h    |  1440 x 900 @ 85 Hz
;                  | 26h    |  1600 x 1200 @ 60 Hz
;                  | 27h    |  1600 x 1200 @ 65 Hz
;                  | 28h    |  1600 x 1200 @ 70 Hz
;                  | 29h    |  1600 x 1200 @ 75 Hz
;                  | 2Ah    |  1600 x 1200 @ 85 Hz
;                  | 2Bh    |  1680 x 1050 @ 60 Hz - RB
;                  | 2Ch    |  1680 x 1050 @ 60 Hz
;                  | 2Dh    |  1680 x 1050 @ 75 Hz
;                  | 2Eh    |  1680 x 1050 @ 85 Hz
;                  | 2Fh    |  1792 x 1344 @ 60 Hz
;                  | 30h    |  1792 x 1344 @ 75 Hz
;                  | 31h    |  1856 x 1392 @ 60 Hz
;                  | 32h    |  1856 x 1392 @ 75 Hz
;                  | 33h    |  1920 x 1200 @ 60 Hz – RB
;                  | 34h    |  1920 x 1200 @ 60 Hz
;                  | 35h    |  1920 x 1200 @ 75 Hz
;                  | 36h    |  1920 x 1200 @ 85 Hz
;                  | 37h    |  1920 x 1440 @ 60 Hz
;                  | 38h    |  1920 x 1440 @ 75 Hz
;                  | >=39h  |  Reserved, must be ignored
;                  |------------------------------------------------------------
;
;                  Note: The aspect ratio (AR) identified in the following table is the physical aspect ratio of the image.
;
;                  |------------------------------------------------------------
;                  | Byte 1 | DTV Standards (ref. CEA 861-c)
;                  |--------|---------------------------------------------------
;                  | 00h    | Reserved, must be ignored
;                  | 01h    | 640 x 400p @ 59.94/60 Hz 4:3 AR
;                  | 02h    | 720 x 480p @ 59.94/60 Hz 4:3 AR
;                  | 03h    | 720 x 480p @ 59.94/60 Hz 16:9 AR
;                  | 04h    | 1280 x 720p @ 59.94/60 Hz 16:9 AR
;                  | 05h    | 1920 x 1080i @ 59.94/60 Hz 16:9 AR
;                  | 06h    | 720(1440) x 480i @ 59.94/60 Hz 4:3 AR
;                  | 07h    | 720(1440) x 480i @ 59.94/60 Hz 16:9 AR
;                  | 08h    | 720(1440) x 240p @ 59.94/60 Hz 4:3 AR
;                  | 09h    | 720(1440) x 240p @ 59.94/60 Hz 16:9 AR
;                  | 0Ah    | (2880) x 480i @ 59.94/60 Hz 4:3 AR
;                  | 0Bh    | (2880) x 480i @ 59.94/60 Hz 16:9 AR
;                  | 0Ch    | (2880) x 240p @ 59.94/60 Hz 4:3 AR
;                  | 0Dh    | (2880) x 240p @ 59.94/60 Hz 16:9 AR
;                  | 0Eh    | 1440 x 480p @ 59.94/60 Hz 4:3 AR
;                  | 0Fh    | 1440 x 480p @ 59.94/60 Hz 16:9 AR
;                  | 10h    | 1920 x 1080p @ 59.94/60 Hz 16:9 AR
;                  | 11h    | 720 x 576p @ 50 Hz 4:3 AR
;                  | 12h    | 720 x 576p @ 50 Hz 16:9 AR
;                  | 13h    | 1280 x 720p @ 50 Hz 16:9 AR
;                  | 14h    | 1920 x 1080i @ 50 Hz 16:9 AR
;                  | 15h    | 720(1440) x 576i @ 50 Hz 4:3 AR
;                  | 16h    | 720(1440) x 576i @ 50 Hz 16:9 AR
;                  | 17h    | 720(1440) x 288p @ 50 Hz 4:3 AR
;                  | 18h    | 720(1440) x 288p @ 50 Hz 16:9 AR
;                  | 19h    | (2880) x 576i @ 50 Hz 4:3 AR
;                  | 1Ah    | (2880) x 576i @ 50 Hz 16:9 AR
;                  | 1Bh    | (2880) x 288p @ 50 Hz 4:3 AR
;                  | 1Ch    | (2880) x 288p @ 50 Hz 16:9 AR
;                  | 1Dh    | 1440 x 576p @ 50 Hz 4:3 AR
;                  | 1Eh    | 1440 x 576p @ 50 Hz 16:9 AR
;                  | 1Fh    | 1920 x 1080p @ 50 Hz 16:9 AR
;                  | 20h    | 1920 x 1080p @ 23.97/24 Hz 16:9 AR
;                  | 21h    | 1920 x 1080p @ 25 Hz 16:9 AR
;                  | 22h    | 1920 x 1080p @ 29.97/30 Hz 16:9 AR
;                  | 23h    | 2880 x 480p @ 59.94/60 Hz 4:3 AR
;                  | 24h    | 2880 x 480p @ 59.94/60 Hz 16:9 AR
;                  | 25h    | 2880 x 576p @ 50 Hz 4:3 AR
;                  | 26h    | 2880 x 576p @ 50 Hz 16:9 AR
;                  | 27h    | 1920 x 1080i @ 50 Hz 16:9 AR
;                  | 28h    | 1920 x 1080i @100 Hz 16:9 AR
;                  | 29h    | 1280 x 720p @100 Hz 16:9 AR
;                  | 2Ah    | 720 x 576p @100 Hz 4:3 AR
;                  | 2Bh    | 720 x 576p @100 Hz 16:9 AR
;                  | 2Ch    | 720(1440) x 576i @100 Hz 4:3 AR
;                  | 2Dh    | 720(1440) x 576i @100 Hz 16:9 AR
;                  | 2Eh    | 1920 x 1080i @119.88 / 120 Hz 16:9 AR
;                  | 2Fh    | 1280 x 720p @119.88 / 120 Hz 16:9 AR
;                  | 30h    | 720 x 480p @119.88 / 120 Hz 4:3 AR
;                  | 31h    | 720 x 480p @119.88 / 120 Hz 16:9 AR
;                  | 32h    | 720(1440) x 480i @119.88 / 120 Hz 4:3 AR
;                  | 33h    | 720(1440) x 480i @119.88 / 120 Hz 16:9 AR
;                  | 34h    | 720 x 576p @ 200 Hz 4:3 AR
;                  | 35h    | 720 x 576p @ 200 Hz 16:9 AR
;                  | 36h    | 720(1440) x 576i @ 200 Hz 4:3 AR
;                  | 37h    | 720(1440) x 576i @ 200 Hz 16:9 AR
;                  | 38h    | 720 x 480p @ 239.76 / 240 Hz 4:3 AR
;                  | 39h    | 720 x 480p @ 239.76 / 240 Hz 16:9 AR
;                  | 3Ah    | 720(1440) x 480i @ 239.76 / 240 Hz 4:3 AR
;                  | 3Bh    | 720(1440) x 480i @ 239.76 / 240 Hz 16:9 AR
;                  | >=3Ch  | Reserved, must be ignored
;                  |------------------------------------------------------------
;
;                  The following describes the contents of the 3 byte CVTdescriptor, this is correct at the time of writing but
;                  for complete description and to verify accuracy the user should verify using the latest revision of the VESA
;                  VTBEXT standard. If the CVT descriptor is not being used then the three bytes must be set to 00h.
;
;                  |------------------------------------------------------------
;                  | Byte: 2     |
;                  | Bits 7 -> 0 | The lower 8 bits of VSize. VSize = (# of verticalactive lines / 2) –1)
;                  | Byte 3      |
;                  | Bits 7 -> 4 | The upper 4 bits of VSize
;                  | Bits 3 -> 2 | Aspect ratio
;                  |             | 00 : 4:3
;                  |             | 01 : 16:9
;                  |             | 10 : 16:10
;                  |             | 11 : Reserved
;                  | Bits 1 -> 0 | Reserved, set to 00
;                  | Byte 4      |
;                  | Bit 7       | Reserved, set to 0
;                  | Bits 6 -> 5 | Preferred refresh rate
;                  |             | 00 : 50 Hz
;                  |             | 01 : 60 Hz
;                  |             | 10 : 75 Hz
;                  |             | 11 : 85 Hz
;                  |             | Note:60Hz may indicate either standard or reduced
;                  |             | blanking. If both are supported then reduced
;                  |             | blanking is preferred.
;                  | Bits 4 -> 0 | Supported refresh rates (standard
;                  |             | blanking unless otherwise stated)
;                  |             | Bit 4 set to 1 : 50 Hz supported
;                  |             | Bit 3 set to 1 : 60 Hz supported,
;                  |             | Bit 2 set to 1 : 75 Hz supported
;                  |             | Bit 1 set to 1 : 85 Hz supported
;                  |             | Bit 0 set to 1 : 60 Hz reduced blanking (per CVT standard) is supported
;                  |------------------------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func SourceTimingMode(Const $physical_monitor)
	Local Const $return = SetVCPFeature($physical_monitor, 0xB4, 0)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: SourceColorCoding
; Description ...: Allows the host to specify the color coding method that is being used.
; Syntax.........: SourceColorCoding($physical_monitor, $coding)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $coding           - The desired source color coding.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |-------------------------------------------
;                  | Byte: SH  |
;                  |-----------|-------------------------------
;                  | 00h       | Default value
;                  | 01 -> FFh | Reserved, must be ignored
;                  |-----------|-------------------------------
;                  | Byte: SL  |
;                  |-----------|-------------------------------
;                  | 00h       | RGB 4:4:4
;                  | 01h       | YCbCr / YPbPr 4:4:4
;                  | 02h       | YCbCr / YPbPr 4:2:2
;                  | >=03h     | Reserved, must be ignored
;                  |-------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func SourceColorCoding(Const $physical_monitor, Const $coding)
	SetVCPFeature($physical_monitor, 0xB5, $coding)
	Return (@error ? SetError(1, @extended, False) : True)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: DisplayUsageTime
; Description ...: Returns the current value (in hours) of ‘active power on’ time accumulated by the display in the ML, SH and SL
;                  bytes. 
; Syntax.........: DisplayUsageTime($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - Returns the current value (in hours) of ‘active power on’ time.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: The MH byte must be set to 00h. ‘Active power on’ time is defined as the period when the emissive elements(s) 
;                  of the display – cathodes for a CRT, fluorescent lamps for a LCD, etc – are active.
; Related .......:
; Link ..........:
; Example .......: No
Func DisplayUsageTime(Const $physical_monitor)
	Local Const $return = SetVCPFeature($physical_monitor, 0xC0, 0)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: DisplayControllerType
; Description ...: This VCP code will provide the host with knowledge of the controller type being used by a particular display 
;                  which will enable a table based approach (by applications) to what features may be available on attached 
;                  display. 
; Syntax.........: DisplayControllerType($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - Returns the display controller type.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: SL byte: Indicates controller manufacturer ML and SH bytes : Provide a numeric indication of controller type.
; 
;                  Notes: 1. Each controller manufacturer supporting this command is required to publish and maintain an 
;                            equivalence table between the actual product identifier (alpha-numeric marketing identifier) and the 
;                            simple numerical value here. 
;
;                         2. A host application would use the combination of data from MH, ML and SH bytes to uniquely identify a 
;                            particular controller. 
;
;                  |------------------------------------------------------------
;                  | SL byte    |
;                  |------------|-----------------------------------------------
;                  | 01h        | Conexant 
;                  | 02h        | Genesis Microchip 
;                  | 03h        | Macronix 
;                  | 04h        | MRT (Media Reality Technologies) 
;                  | 05h        | Mstar Semiconductor 
;                  | 06h        | Myson 
;                  | 07h        | Philips 
;                  | 08h        | PixelWorks 
;                  | 09h        | RealTek Semiconductor 
;                  | 0Ah        | Sage 
;                  | 0Bh        | Silicon Image 
;                  | 0Ch        | SmartASIC 
;                  | 0Dh        | STMicroelectronics 
;                  | 0Eh        | Topro 
;                  | 0Fh        | Trumpion 
;                  | 10h        | Welltrend 
;                  | 11h        | Samsung 
;                  | 12h        | Novatek Microelectrtonics 
;                  | 13h        | STK 
;                  | 14h -> FEh | Reserved, must be ignored 
;                  | FFh        | Not defined – a manufacturer designed controller 
;                  |------------------------------------------------------------
;
;                  Please check the MCCS_UP.pdf document on the VESA website for any extensions to this list. 
; Related .......:
; Link ..........:
; Example .......: No
Func DisplayControllerType(Const $physical_monitor)
	Local Const $return = SetVCPFeature($physical_monitor, 0xC8, 0)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: DisplayFirmwareLevel
; Description ...: This VCP code results in two bytes of data being sent by the display. 
; Syntax.........: DisplayFirmwareLevel($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: SH byte: defines the firmware version number SL byte: defines the firmware revision number e.g. 03h, 05h 
;                  defines a firmware level of 3.5 
; Related .......:
; Link ..........:
; Example .......: No
Func DisplayFirmwareLevel(Const $physical_monitor)
	Local Const $return = SetVCPFeature($physical_monitor, 0xC9, 0)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: OSD
; Description ...: Indicates the current state of the display OSD 
; Syntax.........: OSD($physical_monitor, $display)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $display          - The desired OSD state.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |------------------------------------------------------------------------
;                  | Byte: SL   |
;                  |------------|-----------------------------------------------------------
;                  | 00h        | Reserved, must be ignored 
;                  | 01h        | OSD is disabled 
;                  | 02h        | OSD is enabled 
;                  | 7Fh -> FEh | Reserved, must be ignored 
;                  | FFh        | Indicates that the display cannot supply this information. 
;                  |------------------------------------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func OSD(Const $physical_monitor, Const $display)
	Local Const $return = SetVCPFeature($physical_monitor, 0xCA, $display)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: OSDLanguage
; Description ...: Allows the display OSD language to be selected. 
; Syntax.........: OSDLanguage($physical_monitor, $language)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $language         - The desired language of the OSD.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |---------------------------------------------------
;                  | Byte: SL |
;                  |----------|----------------------------------------
;                  | 00h      | Reserved, must be ignored 
;                  | 01h      | Chinese (traditional / Hantai) 
;                  | 02h      | English 
;                  | 03h      | French 
;                  | 04h      | German 
;                  | 05h      | Italian 
;                  | 06h      | Japanese 
;                  | 07h      | Korean 
;                  | 08h      | Portuguese (Portugal) 
;                  | 09h      | Russian 
;                  | 0Ah      | Spanish 
;                  | 0Bh      | Swedish 
;                  | 0Ch      | Turkish 
;                  | 0Dh      | Chinese (simplified / Kantai) 
;                  | 0Eh      | Portuguese (Brazil) 
;                  | 0Fh      | Arabic 
;                  | 10h      | Bulgarian 
;                  | 11h      | Croatian 
;                  | 12h      | Czech 
;                  | 13h      | Danish 
;                  | 14h      | Dutch 
;                  | 15h      | Estonian 
;                  | 16h      | Finnish 
;                  | 17h      | Greek 
;                  | 18h      | Hebrew 
;                  | 19h      | Hindi 
;                  | 1Ah      | Hungarian 
;                  | 1Bh      | Latvian 
;                  | 1Ch      | Lithuanian 
;                  | 1Dh      | Norwegian 
;                  | 1Eh      | Polish 
;                  | 1Fh      | Romanian 
;                  | 20h      | Serbian 
;                  | 21h      | Slovak 
;                  | 22h      | Slovenian
;                  | 23h      | Thai 
;                  | 24h      | Ukrainian 
;                  | 25h      | Vietnamese 
;                  | >=26h    | Reserved, must be ignored 
;                  |---------------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func OSDLanguage(Const $physical_monitor, Const $language)
	Local Const $return = SetVCPFeature($physical_monitor, 0xCC, $language)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: PowerMode
; Description ...: Power Mode – DPM & DPMS standards are supported along with other power function(s).
; Syntax.........: PowerMode($physical_monitor, $mode)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $mode             - The desired
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |--------------------------------------------------------
;                  | SL byte | DPM                       | DPMS
;                  |---------|---------------------------|------------------
;                  | 00h     | Reserved, must be ignored |
;                  | 01h     | On                        | On
;                  | 02h     | Off                       | Standby
;                  | 03h     | Off                       | Suspend
;                  | 04h     | Off                       | Off
;                  |--------------------------------------------------------
;                  | Item(s) below are not part of the DPM or DPMS standards
;                  |--------------------------------------------------------
;                  | 05h     | Power off the display – functionally equivalent
;                  |         | to turning off power using the “power button”
;                  | >=06h   | Reserved, must be ignored
;                  |--------------------------------------------------------
;
;                  Note 1: Following a MCCS command with a value of 01h -> 04h, the display must respond to the appropriate DPM
;                          (or DPMS) protocols.
;                       2: Following a MCCS command with a value of 05h, user intervention at the display (pressing / toggling
;                          the power switch) may be required to restore operation.
; Related .......:
; Link ..........:
; Example .......: No
Func PowerMode(Const $physical_monitor, Const $mode)
	Switch $mode
		Case $POWER_ON, $POWER_STANDBY, $POWER_SUSPEND, $POWER_OFF, 0x05
			SetVCPFeature($physical_monitor, $POWER_MODE, $mode)

			Return (@error ? SetError(1, @extended, False) : True)

		Case Else
			Return SetError(2, 0, False)
	EndSwitch
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: ImageMode
; Description ...: Controls aspects of the displayed image. Note: This VCP code is intended for use with TV applications. 
; Syntax.........: ImageMode($physical_monitor, $mode)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $mode             - The desired image mode.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |---------------------------------------------------------------------------------------------------------
;                  | Byte: SL | Name         | Description 
;                  |----------|--------------|-------------------------------------------------------------------------------
;                  | 00h      | -            | No effect 
;                  | 01h      | Full mode    | Linear expansion (compression) of the image on horizontal axis. 
;                  | 02h      | Zoom mode    | Linear expansion (compression) of the image on horizontal and vertical axes. 
;                  | 03h      | Squeeze mode | Display all of image content on visible screen. May result in unused areas 
;                  |          |              | of visible screen … bars at top, bottom, or sides . 
;                  | 04h      | Variable     | Display all of image content by applying non-linear expansion (compression) 
;                  |          |              | to the horizontal axis. 
;                  | >=05h    | -            | Reserved, must be ignored 
;                  |---------------------------------------------------------------------------------------------------------
;
;                  Note: a more complete description of these modes may be found in the VESA DI-EXT standard.
; Related .......:
; Link ..........:
; Example .......: No
Func ImageMode(Const $physical_monitor, Const $mode)
	Local Const $return = SetVCPFeature($physical_monitor, 0xDB, $mode)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VCPVersion
; Description ...: Defines the version number of the MCCS standard recognized by the display. 
; Syntax.........: VCPVersion($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: SH byte: defines the MCCS version number SL byte: defines the MCCS revision number e.g. 03h 00h defines a MCCS 
;                  level of 3.0 (this standard). Note: Support of this code is a mandatory requirement for compliance with MCCS 
;                  standard Version 2 and higher.
; Related .......:
; Link ..........:
; Example .......: No
Func VCPVersion(Const $physical_monitor)
	Local Const $return = SetVCPFeature($physical_monitor, 0xDF, 0)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: HorizontalPosition_Phase
; Description ...: Increasing (decreasing) this value moves the image toward the right (left) side of the display. 
; Syntax.........: HorizontalPosition_Phase($physical_monitor, $position)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $position         - The desired horizontal position.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func HorizontalPosition_Phase(Const $physical_monitor, Const $position)
	Local Const $return = SetVCPFeature($physical_monitor, 0x20, $position)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: HorizontalSize
; Description ...: Increasing (decreasing) thisvalue will increase (decrease) the width of the image.
; Syntax.........: HorizontalSize($physical_monitor, $width)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $width            - The desired horizontal size.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func HorizontalSize(Const $physical_monitor, Const $width)
	Local Const $return = SetVCPFeature($physical_monitor, 0x22, $width)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: HorizontalPincushion
; Description ...: Increasing (decreasing) this value will cause the right and left sides of the image to become more (less) convex.
; Syntax.........: HorizontalPincushion($physical_monitor, $convex)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $convex           - The desired horizontal pincushion.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func HorizontalPincushion(Const $physical_monitor, Const $convex)
	Local Const $return = SetVCPFeature($physical_monitor, 0x24, $convex)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: HorizontalPincushionBalance
; Description ...: Increasing (decreasing) this value will move the center section of the image toward the right (left) side of 
;                  the display.
; Syntax.........: HorizontalPincushionBalance($physical_monitor, $balance)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $balance          - The desired horizontal pincushion balance.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func HorizontalPincushionBalance(Const $physical_monitor, Const $balance)
	Local Const $return = SetVCPFeature($physical_monitor, 0x26, $balance)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: HorizontalConvergenceRB
; Description ...: Increasing (decreasing) this value will shift the red pixels to the right (left) across 
;                  the image and the blue pixels left (right) across the image with respect to the green pixels. 
; Syntax.........: HorizontalConvergenceRB($physical_monitor, $convergence)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $convergence      - The desired horizontal red and blue convergence.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func HorizontalConvergenceRB(Const $physical_monitor, Const $convergence)
	Local Const $return = SetVCPFeature($physical_monitor, 0x28, $convergence)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: HorizontalConvergenceMG
; Description ...: Increasing (decreasing) this value will shift the magenta pixels to the right (left) across the image and the 
;                  green pixels left (right) across the image with respect to the magenta pixels.
; Syntax.........: HorizontalConvergenceMG($physical_monitor, $convergence)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $convergence      - The desired horizontal magenta and green convergence.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func HorizontalConvergenceMG(Const $physical_monitor, Const $convergence)
	Local Const $return = SetVCPFeature($physical_monitor, 0x29, $convergence)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: HorizontalLinearity
; Description ...: Increasing (decreasing) thisvalue will increase (decrease) the density of pixels in the image center. 
; Syntax.........: HorizontalLinearity($physical_monitor, $linearity)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $linearity        - The desired horizontal linearity.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func HorizontalLinearity(Const $physical_monitor, Const $linearity)
	Local Const $return = SetVCPFeature($physical_monitor, 0x2A, $linearity)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: HorizontalLinearityBalance
; Description ...: Increasing (decreasing) this value shifts the density of pixels from the left (right) side to the right 
;                  (left) side of the image.
; Syntax.........: HorizontalLinearityBalance($physical_monitor, $balance)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $balance          - The desired horizontal linearity balance.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func HorizontalLinearityBalance(Const $physical_monitor, Const $balance)
	Local Const $return = SetVCPFeature($physical_monitor, 0x2C, $balance)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VerticalPosition_Phase
; Description ...:  Increasing (decreasing) this value moves the image toward the top (bottom) edge of the display.
; Syntax.........: VerticalPosition_Phase($physical_monitor, $position)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $position         - The desired vertical position.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func VerticalPosition_Phase(Const $physical_monitor, Const $position)
	Local Const $return = SetVCPFeature($physical_monitor, 0x30, $position)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VerticalSize
; Description ...: Increasing (decreasing) this value will increase (decrease) the height of the image.
; Syntax.........: VerticalSize($physical_monitor, $size)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $size             - The desired vertical size.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func VerticalSize(Const $physical_monitor, Const $size)
	Local Const $return = SetVCPFeature($physical_monitor, 0x32, $size)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VerticalPincushion
; Description ...: Increasing (decreasing) this value will cause the top and bottom edges of the image to become more (less) convex. 
; Syntax.........: VerticalPincushion($physical_monitor, $pincushion)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $pincushion       - The desired vertical pincushion.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func VerticalPincushion(Const $physical_monitor, Const $pincushion)
	Local Const $return = SetVCPFeature($physical_monitor, 0x34, $pincushion)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VerticalPincushionBalance
; Description ...: Increasing (decreasing) this value will move the center section of the image toward the top (bottom) edge of 
;                  the display.
; Syntax.........: VerticalPincushionBalance($physical_monitor, $balance)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $balance          - The desired vertical pincushion balance.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func VerticalPincushionBalance(Const $physical_monitor, Const $balance)
	Local Const $return = SetVCPFeature($physical_monitor, 0x36, $balance)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VerticalConvergenceRB
; Description ...: Increasing (decreasing) this value shifts the red pixels up (down) across the image and the blue pixels down 
;                  (up) across the image with respect to the green pixels.
; Syntax.........: VerticalConvergenceRB($physical_monitor, $convergence)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $convergence      - The desired vertical convergence of the red and blue pixels.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func VerticalConvergenceRB(Const $physical_monitor, Const $convergence)
	Local Const $return = SetVCPFeature($physical_monitor, 0x38, $convergence)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VerticalConvergenceMG
; Description ...: Increasing (decreasing) this value will shift the magenta pixels up (down) across the image and the green 
;                  pixels down (up) across the image with respect to the magenta pixels.
; Syntax.........: VerticalConvergenceMG($physical_monitor, $convergence)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $convergence      - The desired vertical convergence of the magenta and green pixels.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func VerticalConvergenceMG(Const $physical_monitor, Const $convergence)
	Local Const $return = SetVCPFeature($physical_monitor, 0x39, $convergence)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VerticalLinearity
; Description ...: Increasing (decreasing) this value will increase (decrease) the density of scan lines in the image center.
; Syntax.........: VerticalLinearity($physical_monitor, $linearity)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $linearity        - The desired vertical linearity.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func VerticalLinearity(Const $physical_monitor, Const $linearity)
	Local Const $return = SetVCPFeature($physical_monitor, 0x3A, $linearity)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VerticalLinearityBalance
; Description ...: Increasing (decreasing) this value shifts the density of scan lines from the top (bottom) end to the bottom 
;                  (top) end of the image.
; Syntax.........: VerticalLinearityBalance($physical_monitor, $balance)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $balance          - The desired vertical linearity balance. 
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func VerticalLinearityBalance(Const $physical_monitor, Const $balance)
	Local Const $return = SetVCPFeature($physical_monitor, 0x3C, $balance)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: HorizontalParallelogram
; Description ...: Increasing (decreasing) this value shifts the top section of the image to the right (left) with respect to the 
;                  bottom section of the image.
; Syntax.........: HorizontalParallelogram($physical_monitor, $parallelogram)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $parallelogram    - The desired horizontal parallelogram. 
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func HorizontalParallelogram(Const $physical_monitor, Const $parallelogram)
	Local Const $return = SetVCPFeature($physical_monitor, 0x40, $parallelogram)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VerticalParallelogram
; Description ...: Increasing (decreasing) this value shifts the top section of the image to the right (left) with respect to the 
;                  bottom section of the image.
; Syntax.........: VerticalParallelogram($physical_monitor, $parallelogram)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $parallelogram    - The desired vertical parallelogram.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func VerticalParallelogram(Const $physical_monitor, Const $parallelogram)
	Local Const $return = SetVCPFeature($physical_monitor, 0x41, $parallelogram)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: HorizontalKeystone
; Description ...: Increasing (decreasing) this value will increase (decrease) the horizontal size at the top of the image with 
;                  respect to the horizontal size at the bottom of the image. 
; Syntax.........: HorizontalKeystone($physical_monitor, $size)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $size             - The desired horizontal keystone.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func HorizontalKeystone(Const $physical_monitor, Const $size)
	Local Const $return = SetVCPFeature($physical_monitor, 0x42, $size)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VerticalKeystone
; Description ...: Increasing (decreasing) this value will increase (decrease) the vertical size at the left of the image with 
;                  respect to the vertical size at the right of the image.
; Syntax.........: VerticalKeystone($physical_monitor, $size)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $size             - The desired vertical keystone.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func VerticalKeystone(Const $physical_monitor, Const $size)
	Local Const $return = SetVCPFeature($physical_monitor, 0x43, $size)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: Rotation
; Description ...: Increasing (decreasing) this value rotates the image (counter) clockwise about the centerpoint of the screen. 
; Syntax.........: Rotation($physical_monitor, $rotation)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $rotation         - The desired rotation.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func Rotation(Const $physical_monitor, Const $rotation)
	Local Const $return = SetVCPFeature($physical_monitor, 0x44, $rotation)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: TopCornerFlare
; Description ...: Increasing (decreasing) this value will increase (decrease) the distance between the left and right sides at 
;                  the top of the image.
; Syntax.........: TopCornerFlare($physical_monitor, $distance)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $distance         - The desired top corner flare.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func TopCornerFlare(Const $physical_monitor, Const $distance)
	Local Const $return = SetVCPFeature($physical_monitor, 0x46, $distance)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: TopCornerHook
; Description ...: Increasing (decreasing) this value moves the top of the image to the right (left).
; Syntax.........: TopCornerHook($physical_monitor, $top_corner_hook)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $top_corner_hook  - The desired top corner hook.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func TopCornerHook(Const $physical_monitor, Const $top_corner_hook)
	Local Const $return = SetVCPFeature($physical_monitor, 0x48, $top_corner_hook)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: BottomCornerFlare
; Description ...: Increasing (decreasing) this value will increase (decrease) the distance between the left and right sides at 
;                  the bottom of the image.
; Syntax.........: BottomCornerFlare($physical_monitor, $bottom_corner_flare)
; Parameters ....: $physical_monitor    - Handle to a monitor.
;                  $bottom_corner_flare - The desired bottom corner flare.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func BottomCornerFlare(Const $physical_monitor, Const $bottom_corner_flare)
	Local Const $return = SetVCPFeature($physical_monitor, 0x4A, $bottom_corner_flare)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: BottomCornerHook
; Description ...: Increasing (decreasing) this value moves the bottom of the image to the right (left).
; Syntax.........: BottomCornerHook($physical_monitor, $bottom_corner_hook)
; Parameters ....: $physical_monitor   - Handle to a monitor.
;                  $bottom_corner_hook - The desired bottom corner hook.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func BottomCornerHook(Const $physical_monitor, Const $bottom_corner_hook)
	Local Const $return = SetVCPFeature($physical_monitor, 0x4C, $bottom_corner_hook)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: HorizontalMirror
; Description ...: This VCP code allows the image to be mirrored horizontally. 
; Syntax.........: HorizontalMirror($physical_monitor, $mirror)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $mirror           - The desired horizontal mirror.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |--------------------------------------------------
;                  | Byte: SL |
;                  |----------|---------------------------------------
;                  | 00h      | Normal mode 
;                  | 01h      | Mirrored horizontally mode 
;                  | >=02h    | Reserved, must be ignored 
;                  |--------------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func HorizontalMirror(Const $physical_monitor, Const $mirror)
	Local Const $return = SetVCPFeature($physical_monitor, 0x82, $mirror)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: VerticalMirror
; Description ...: This VCP code allows the image to be mirrored vertically. 
; Syntax.........: VerticalMirror($physical_monitor, $mirror)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $mirror           - The desired vertical mirror.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |--------------------------------------------------
;                  | Byte: SL | 
;                  |----------|---------------------------------------
;                  | 00h      | Normal mode 
;                  | 01h      | Mirrored vertically mode 
;                  | >=02h    | Reserved, must be ignored 
;                  |--------------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func VerticalMirror(Const $physical_monitor, Const $mirror)
	Local Const $return = SetVCPFeature($physical_monitor, 0x84, $mirror)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: DisplayScaling
; Description ...: Changing this value will affect the scaling (input versus output) function of the display.
; Syntax.........: DisplayScaling($physical_monitor, $scaling)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $scaling          - The desired display scaling.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Note: This VCP code can be used to scale up or down to the maximum screen size. Controls values 02h -> 06h are 
;                  primarily intended for use with computer displays and controls values 07h -> 0Ah are primarily intended for 
;                  use with TV applications. 
;
;                  |---------------------------------------------------------------------
;                  | Byte: SL | Name         | Description  
;                  |---------------------------------------------------------------------
;                  | 00h      | -            | Reserved, must be ignored 
;                  | 01h      | No scaling   | No effect, 1:1 relationship 
;                  | 02h      | Max Image    | Scale to maximum image size with no aspect
;                  |          |              | (AR) ratio distortion 
;                  | 03h      | Max Vt 1     | Scale to maximum vertical image size with 
;                  |          |              | no AR distortion 
;                  | 04h      | Max Hz 1     | Scale to maximum horizontal image size with 
;                  |          |              | no AR distortion 
;                  | 05h      | Max Vt 2     | Scale to maximum vertical image size with 
;                  |          |              | AR distortion 
;                  | 06h      | Max Hz 2     | Scale to maximum horizontal image size with 
;                  |          |              | AR distortion 
;                  | 07h      | Full mode    | Linear expansion (compression) of the image 
;                  |          |              | on horizontal axis. 
;                  | 08h      | Zoom mode    | Linear expansion (compression) of the image 
;                  |          |              | on horizontal and vertical axes. 
;                  | 09h      | Squeeze mode | Display all of image content on visible screen. 
;                  |          |              | May result in unused areas of visible screen … 
;                  |          |              | bars at top, bottom, or sides. 
;                  | 0Ah      | Variable     | Display all of image content by applying 
;                  |          |              | non-linear expansion (compression) to the 
;                  |          |              | horizontal  axis. 
;                  | >=0Bh    | -            | Reserved, must be ignored 
;                  |---------------------------------------------------------------------
;
; Note: A more complete description of modes 07h ?0Ah may be found in the VESA DI-EXT standard.
; Related .......:
; Link ..........:
; Example .......: No
Func DisplayScaling(Const $physical_monitor, Const $scaling)
	Local Const $return = SetVCPFeature($physical_monitor, 0x86, $scaling)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: WindowPositionTLX
; Description ...: Defines the top left X pixel of an area of the image. 
; Syntax.........: WindowPositionTLX($physical_monitor, $position)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $position         - The desired top left X pixel window position.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Specified in co-ordinates of incoming image before any scaling etc. in the display.
; Related .......:
; Link ..........:
; Example .......: No
Func WindowPositionTLX(Const $physical_monitor, Const $position)
	Local Const $return = SetVCPFeature($physical_monitor, 0x95, $position)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: WindowPositionTLY
; Description ...: Defines the top left Y pixel of an area of the image. 
; Syntax.........: WindowPositionTLY($physical_monitor, $position)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $position         - The desired top left Y pixel window position.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Specified in co-ordinates of incoming image before any scaling etc in the display. 
; Related .......:
; Link ..........:
; Example .......: No
Func WindowPositionTLY(Const $physical_monitor, Const $position)
	Local Const $return = SetVCPFeature($physical_monitor, 0x96, $position)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: WindowPositionBRX
; Description ...: Defines the bottom right X pixel of an area of the image. 
; Syntax.........: WindowPositionBRX($physical_monitor, $position)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $position         - The desired bottom right x pixel window position.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Specified in co-ordinates of the incoming image before any scaling etc in the display. 
; Related .......:
; Link ..........:
; Example .......: No
Func WindowPositionBRX(Const $physical_monitor, Const $position)
	Local Const $return = SetVCPFeature($physical_monitor, 0x97, $position)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: WindowPositionBRY
; Description ...: Defines the bottom right Y pixel of an area of the image. 
; Syntax.........: WindowPositionBRY($physical_monitor, $position)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $position         - The desired bottom right y pixel window position.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Specified in co-ordinates of the incoming image before any processing (e.g. scaling) in the display.
; Related .......:
; Link ..........:
; Example .......: No
Func WindowPositionBRY(Const $physical_monitor, Const $position)
	Local Const $return = SetVCPFeature($physical_monitor, 0x98, $position)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: ScanMode
; Description ...: Controls the scan characteristics. 
; Syntax.........: ScanMode($physical_monitor, $mode)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $mode             - The desired scan mode.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Note: This VCP code is intended for use with TV applications. 
;
;                  |--------------------------------------------------------
;                  | Byte: SL |
;                  |----------|---------------------------------------------
;                  | 00h      | Normal operation (no overscan or underscan) 
;                  | 01h      | Underscan 
;                  | 02h      | Overscan 
;                  | >=03h    | Reserved, must be ignored 
;                  |--------------------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func ScanMode(Const $physical_monitor, Const $mode)
	Local Const $return = SetVCPFeature($physical_monitor, 0xDA, $mode)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: Degauss
; Description ...: Causes a CRT display to perform a degauss cycle. 
; Syntax.........: Degauss($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - True
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Any value not equal to zero causes a single cycle of the degauss operation. Note: A value of 0 must be ignored. 
; Related .......:
; Link ..........:
; Example .......: No
Func Degauss(Const $physical_monitor)
	Local Const $return = SetVCPFeature($physical_monitor, 0x01, True)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: NewControlValue
; Description ...: Used to indicate that a display’s user control(s) (excluding power control) has been used to change a control 
;                  value.
; Syntax.........: NewControlValue($physical_monitor, $value)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $value            - The desired control value.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |--------------------------------------------------------------
;                  | Byte: SL   |
;                  |------------|-------------------------------------------------
;                  | 00h        | Reserved, must be ignored 
;                  | 01h        | No new control value(s) 
;                  | 02h        | One or more new control value(s) has been saved 
;                  | 03h -> FEh | Reserved, must be ignored 
;                  | FFh        | No user controls are present
;                  |--------------------------------------------------------------
;
;                  All changes made using the controls on the display must be reported even if these values have not been saved. 
;                  The new control value must be reported to a host request for the current control value (i.e. a “GetVCP” 
;                  command) A value = 02h must only be reset to a value = 01h by a host write operation and not by the display.
;
;                  Support of this code is a mandatory requirement for compliance with MCCS standard Version 2 and higher.
;
;                  Note: A recommended implementation of this VCP code in conjunction with VCP code 52h is outlined in Section 13.2
; Related .......:
; Link ..........:
; Example .......: No
Func NewControlValue(Const $physical_monitor, Const $value)
	Local Const $return = SetVCPFeature($physical_monitor, 0x02, $value)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: SoftControls
; Description ...: Allows display controls to be used as soft keys.
; Syntax.........: SoftControls($physical_monitor, $option)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $option        - The desired 
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |-----------------------------------------------------------------
;                  | Byte: SL   |
;                  |------------|----------------------------------------------------
;                  | 00h        | No button active 
;                  | 01h        | Button 1 active 
;                  | 02h        | Button 2 active 
;                  | 03h        | Button 3 active 
;                  | 04h        | Button 4 active 
;                  | 05h        | Button 5 active 
;                  | 06h        | Button 6 active 
;                  | 07h        | Button 7 active 
;                  | 08h -> FEh | Reserved, must be ignored 
;                  | FFh        | No controls present 
;                  |-----------------------------------------------------------------
;
;                  Notes: 1. A ‘button active’ value should only be reset to 00h by host write operation and not by the display 
;                         2. This command and associated activity must not be affected by disabling the OSD (if present), see VCP CAh 
; Related .......:
; Link ..........:
; Example .......: No
Func SoftControls(Const $physical_monitor, Const $option)
	Local Const $return = SetVCPFeature($physical_monitor, 0x03, $option)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: ActiveControl
; Description ...: This VCP code may be used to obtain the VCP codes stored in a “FIFO stack” if the recommendations outlined in 
;                  section 13.2 have been implemented. 
; Syntax.........: ActiveControl($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - See Remarks.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: A read must cause the VCP code to be removed from the “FIFO stack”. The last entry in the “stack” must be 00h 
;                  indicating that no further VCP codes are present on the stack i.e. the VCP codes for all adjustments made have 
;                  been read by the host. Note: When the host sets the New Control Value (VCP code 02h) equal to 01h, then the 
;                  display must clear the stack. 
;
;                  Examples: 
;                   If luminance has been changed then return value of 10h.
;                   If red gain has been changed then return value of 16h.
; Related .......:
; Link ..........:
; Example .......: No
Func ActiveControl(Const $physical_monitor)
	Local Const $return = SetVCPFeature($physical_monitor, 0x52, 0)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: PerformancePreservation
; Description ...: This command provides the capability to control up to 16 features aimed at maintaining the performance of a 
;                  display. e.g. Features designed to minimize image burn-in.
; Syntax.........: PerformancePreservation($physical_monitor, $flag)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $flag             - A bit flag with the desired bit set.
; Return values .: Success - See Remarks.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: The terms used here are generic, specific implementation details are left to the manufacturer. A possible 
;                  value is selected by setting the corresponding bit = 1. Note: Setting more than one bit = 1 in either byte is 
;                  invalid and must be ignored by the display. On a read the MH-ML bytes contain the flags corresponding to those 
;                  functions that are supported by the display. The SH/SL bytes contain the bit field with the appropriate bit(s) 
;                  set to indicate the current status of the display. The following table defines the SH and SL bytes, and the 
;                  MH and ML bytes for read operations only. 
;
;                 Data size: Write = 2 bytes / Read = 4 bytes 
;
;                 |---------------------------------------------------------------------------------
;                 | Byte: SH / MH |
;                 |---------------|-----------------------------------------------------------------
;                 | Bit 7         | Image “orbiting” mode 
;                 | Bit 6         | Low luminance mode with “active” video mode 
;                 | Bit 5         | Slow luminance reduction when a static image is detected mode 
;                 | Bit 4         | Slow luminance reduction when no user activity is detected mode 
;                 | Bits 3 -> 0   | Reserved, must be ignored
;                 |---------------------------------------------------------------------------------
;
;                 |---------------------------------------------------------------------------------
;                 | Byte: SL / ML |
;                 |---------------|-----------------------------------------------------------------
;                 | Bit 7         | A white vertical bar (or line) moving slowly horizontally across
;                 |               | the screen on a black background. 
;                 | Bit 6         | A white image filling the display area. 
;                 | Bit 5         | A black vertical bar (or line) moving slowly horizontally across 
;                 |               | the screen on a black background. 
;                 | Bit 4         | Reverse video … the displayed image is the inverse color of the 
;                 |               | source image. 
;                 | Bit 3         | Display is active but video is blanked. 
;                 | Bit 2         | A grayscale pattern moving slowly horizontally across the screen. 
;                 | Bits 1 -> 0   | Reserved, must be ignored
;                 |---------------------------------------------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func PerformancePreservation(Const $physical_monitor, Const $flag)
	Local Const $return = SetVCPFeature($physical_monitor, 0x54, $flag)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: InputSource
; Description ...: Used to select the active video source.
; Syntax.........: InputSource($physical_monitor, $source)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $source           - The desired input source.
; Return values .: Success - See Remarks.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Data size: Write = 4 bytes / Read = 8 bytes A possible value is selected by setting the corresponding bit = 1. 
;                  Note: Setting more than one bit = 1 is invalid and must be ignored by the display.
;
;                  |-----------------------------------------------------------------------------
;                  | Byte 0      |
;                  |-------------|---------------------------------------------------------------
;                  | Bit 7       | Analog Video (R/G/B) # 1
;                  | Bit 6       | Analog Video (R/G/B) # 2
;                  | Bit 5       | Digital Video (TMDS) # 1
;                  | Bit 4       | Digital Video (TMDS) # 2
;                  | Bit 3       | Composite Video # 1 
;                  | Bit 2       | Composite Video # 2 
;                  | Bit 1       | S-video # 1 
;                  | Bit 0       | S-video # 2 
;                  |-------------|---------------------------------------------------------------
;                  | Byte 1      |
;                  |-------------|---------------------------------------------------------------
;                  | Bit 7       | Tuner – Analog # 1 
;                  | Bit 6       | Tuner – Analog # 2 
;                  | Bit 5       | Tuner – Digital # 1 
;                  | Bit 4       | Tuner – Digital # 2 
;                  | Bit 3       | Component Video (YPrPb / YCrCb) # 1
;                  | Bit 2       | Component Video (YPrPb / YCrCb) # 2
;                  | Bit 1       | Component Video (YPrPb / YCrCb) # 3
;                  | Bit 0       | Reserved, must be ignored 
;                  |-------------|---------------------------------------------------------------
;                  | Byte 2      |
;                  |-------------|---------------------------------------------------------------
;                  | Bit 7       | Digital Video (DisplayPort) # 1 
;                  | Bit 6       | Digital Video (DisplayPort) # 2 
;                  | Bits 5 -> 0 | Reserved, must be ignored 
;                  | Byte 3      |
;                  | Bits 7 -> 0 | Reserved, must be ignored 
;                  |-----------------------------------------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func InputSource(Const $physical_monitor, Const $source)
	Local Const $return = SetVCPFeature($physical_monitor, 0x60, $source)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: AmbientLightSensor
; Description ...: Used to control the action of an ambient light sensor.
; Syntax.........: AmbientLightSensor($physical_monitor, $sensor)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $sensor           - The desired action of the ambient light sensor.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |---------------------------------------------------
;                  | Byte: SL | Definitions 
;                  |----------|----------------------------------------
;                  | 00h      | Reserved, must be ignored 
;                  | 01h      | Ambient light sensor is disabled 
;                  | 02h      | Ambient light sensor is enabled 
;                  | >=03h    | Reserved, must be ignored 
;                  |---------------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func AmbientLightSensor(Const $physical_monitor, Const $sensor)
	Local Const $return = SetVCPFeature($physical_monitor, 0x66, $sensor)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: RemoteProcedureCall
; Description ...: Allows initiation of a routine / macro resident in the display.
; Syntax.........: RemoteProcedureCall($physical_monitor, $procedure)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $procedure        - The desired routine.
; Return values .: Success - See True.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Only one RPC is defined at this time:
;
;                  |----------------------------------------------------------------
;                  | Byte    | Definition 
;                  |---------|------------------------------------------------------
;                  | 0       | Defines the operation (see below) 
;                  | 1 + 2   | Offset into the LUT 
;                  | 3 + 4   | 1st Red LUT value 
;                  | 5 + 6   | 1st Green LUT value 
;                  | 7 + 8   | 1st Blue LUT value 
;                  | 9 + 10  | Increment to next LUT entry 
;                  | 11 + 12 | 2nd Red LUT value 
;                  | 13 + 14 | 2nd Green LUT value 
;                  | 15 + 16 | 2nd Blue LUT value 
;                  | 17 + 18 | Increment to next LUT entry 
;                  | 19 + 20 | etc 
;                  |----------------------------------------------------------------
;
;                  |----------------------------------------------------------------
;                  | Byte 0     | Operation Definitions 
;                  |------------|----------------------------------------------------
;                  | 00h        | Reserved, must be ignored 
;                  | 01h        | Indicates that a spline curve routine must be 
;                  |            | applied to the data (supplied in byte 1 and higher)) 
;                  |            | and the resulting data used to derive a full set of 
;                  |            | values for the display color LUT which must then be 
;                  |            | loaded. 
;                  | 02h -> DFh | Reserved, must be ignored 
;                  | E0h -> FFh | Reserved for manufacturer specific operations
;                  |----------------------------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func RemoteProcedureCall(Const $physical_monitor, Const $procedure)
	SetVCPFeature($physical_monitor, 0x76, $procedure)
	Return (@error ? SetError(1, @extended, False) : True)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: EDIDOperation
; Description ...: This command allows a selected block (128 bytes) of EDID to be read.
; Syntax.........: EDIDOperation($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |---------------------------------------------------
;                  | Byte 0     | EDID block number 
;                  |------------|--------------------------------------
;                  | 00h        | Base EDID 
;                  | 01h        | First extension block 
;                  | 02h        | Second extension block 
;                  | 03h        | Third extension block 
;                  | 04h -> FFh | Etc. 
;                  |---------------------------------------------------
;
;                  Note: After receipt of the 128 bytes, users are advised to create a new checksum and verify that it matches 
;                        the checksum in the last byte of the EDID block. 
; Related .......:
; Link ..........:
; Example .......: No
Func EDIDOperation(Const $physical_monitor)
	Local Const $return = SetVCPFeature($physical_monitor, 0x78, 0)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: TVChannelUpDown
; Description ...: Used to increment / decrement between TV-channels.
; Syntax.........: TVChannelUpDown($physical_monitor, $action)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $action           - The desired action to perform.
; Return values .: Success - True.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: The exact behavior is implementation specific (e.g. increment / decrement to next numeric channel or increment 
;                  / decrement to next channel with a signal). 
;
;                  |--------------------------------------------------------------------
;                  | Byte: SL |
;                  |----------|---------------------------------------------------------
;                  | 00h      | Reserved, must be ignored 
;                  | 01h      | Increment channel 
;                  | 02h      | Decrement channel 
;                  | >=03h    | Reserved, must be ignored
;                  |--------------------------------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func TVChannelUpDown(Const $physical_monitor, Const $action)
	SetVCPFeature($physical_monitor, 0x8B, $action)
	Return (@error ? SetError(1, @extended, False) : True)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: FlatPanelSubPixelLayout
; Description ...: Indicates the type of LCD sub-pixel structure.
; Syntax.........: FlatPanelSubPixelLayout($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |-------------------------------------------------------------------
;                  | Byte: SL |
;                  |----------|--------------------------------------------------------
;                  | 00h      | Sub-pixel layout is not defined 
;                  | 01h      | Red / Green / Blue vertical stripe 
;                  | 02h      | Red / Green / Blue horizontal stripe 
;                  | 03h      | Blue / Green / Red vertical stripe 
;                  | 04h      | Blue/ Green / Red horizontal stripe 
;                  | 05h      | Quad-pixel, a 2 x 2 sub-pixel structure 
;                  |          | with red at top left, blue at bottom right 
;                  |          | and green at top right and bottom left 
;                  | 06h      | Quad-pixel, a 2 x 2 sub-pixel structure with 
;                  |          | red at bottom left, blue at top right and
;                  |          | green at top left and bottom right 
;                  | 07h      | Delta (triad) 
;                  | 08h      | Mosaic with interleaved sub-pixels of different colors 
;                  | >=09h    | Reserved, must be ignored
;                  |-------------------------------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func FlatPanelSubPixelLayout(Const $physical_monitor)
	Local Const $return = SetVCPFeature($physical_monitor, 0xB2, 0)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: DisplayTechnologyType
; Description ...: Indicates the base technology type.
; Syntax.........: DisplayTechnologyType($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |--------------------------------------
;                  | Byte: SL |
;                  |----------|---------------------------
;                  | 00h      | Reserved, must be ignored 
;                  | 01h      | CRT (shadow mask) 
;                  | 02h      | CRT (aperture grill) 
;                  | 03h      | LCD (active matrix) 
;                  | 04h      | LCoS 
;                  | 05h      | Plasma 
;                  | 06h      | OLED 
;                  | 07h      | EL 
;                  | 08h      | Dynamic MEM e.g. DLP 
;                  | 09h      | Static MEM e.g. iMOD 
;                  | >=0Ah    | Reserved, must be ignored 
;                  |--------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func DisplayTechnologyType(Const $physical_monitor)
	Local Const $return = SetVCPFeature($physical_monitor, 0xB6, 0)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: DisplayDescriptorLength
; Description ...: Returns the length (in bytes) of non-volatile storage in the display available for writing a display descriptor.
; Syntax.........: DisplayDescriptorLength($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: The maximum descriptor length is 256 bytes.
; Related .......: TransmitDisplayDescriptor
; Link ..........:
; Example .......: No
Func DisplayDescriptorLength(Const $physical_monitor)
	Local Const $return = SetVCPFeature($physical_monitor, 0xC2, 0)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: TransmitDisplayDescriptor
; Description ...: Allows a display descriptor (up to maximum length defined by the display (see code C2h) to be written (read) 
;                  to (from) non-volatile storage in the display.
; Syntax.........: TransmitDisplayDescriptor($physical_monitor, $descriptor)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $descriptor       - The desired display descriptor.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: The data must conform to ISO 8859-2 (Latin 1) code set (ASCII code). If an attempt is made to write beyond the 
;                  maximum storage length, the descriptor must be truncated with the excess bytes being discarded.
; Related .......:
; Link ..........:
; Example .......: No
Func TransmitDisplayDescriptor(Const $physical_monitor, Const $descriptor)
	Local Const $return = SetVCPFeature($physical_monitor, 0xC3, $descriptor)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: EnableDisplayOfDisplayDescriptor
; Description ...: If enabled, the display descriptor written to the display using VCP code TransmitDisplayDescriptor must be 
;                  displayed when no video is being received.
; Syntax.........: EnableDisplayOfDisplayDescriptor($physical_monitor, $enable)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $enable           - Whether or not to display the display descriptor. 
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: The duration for which it is displayed is left to individual manufacturers. 
;
;                  |--------------------------------------
;                  | Byte: SL |
;                  |----------|---------------------------
;                  | 00h      | Reserved, must be ignored 
;                  | 01h      | Display is enabled 
;                  | 02h      | Display is disabled 
;                  | >=03h    | Reserved, must be ignored 
;                  |--------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func EnableDisplayOfDisplayDescriptor(Const $physical_monitor, Const $enable)
	Local Const $return = SetVCPFeature($physical_monitor, 0xC4, $enable)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: ApplicationEnableKey
; Description ...: A 2 byte value used to allow an application to only operate with known products.
; Syntax.........: ApplicationEnableKey($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: The display manufacturer and application author agree to a code such that application will only run when a 
;                  valid code is present in the display.
; Related .......:
; Link ..........:
; Example .......: No
Func ApplicationEnableKey(Const $physical_monitor)
	Local Const $return = SetVCPFeature($physical_monitor, 0xC6, 0)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: StatusIndicators
; Description ...: This command provides the capability to control up to 16 LED (or similar) indicators which may be used to 
;                  indicate aspects of the system status.
; Syntax.........: StatusIndicators($physical_monitor, $indicator)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $indicator        - The desired 
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: The capability string must report the functions supported by the display and these must be mapped to the 16 
;                  bits of the command in the sequence reported in the capability string starting with the most significant bit 
;                  of the first byte. 
;
;                  Meaning of values reported in the capability string: 
;                  |----------------------------------------------------------
;                  | Byte: SH    |                               | Mapping #
;                  |-------------|-------------------------------|------------
;                  | Bit 7       | Host power is ‘on’            | 1 
;                  | Bit 6       | Hard drive is active          | 2 
;                  | Bit 5       | New e-mail received           | 3 
;                  | Bit 4       | New voicemail received        | 4 
;                  | Bit 3       | Appointment reminder          | 5 
;                  | Bit 2       | Phone is busy                 | 6 
;                  | Bit 1       | Speaker phone function active | 7 
;                  | Bit 0       | Battery is charging           | 8 
;                  |-------------|-------------------------------|------------
;                  | Byte: SL    |                               |
;                  |-------------|-------------------------------|------------
;                  | Bit 7       | LAN is active                 | 9 
;                  | Bits 6 -> 0 | Reserved, must be ignored     | 10 -> 16
;                  |----------------------------------------------------------
;
;                  In all cases writing a 1 to the indicator must turn it ‘on’ and writing a 0 to the indicator must turn it ‘off’. 
; Related .......:
; Link ..........:
; Example .......: No
Func StatusIndicators(Const $physical_monitor, Const $indicator)
	Local Const $return = SetVCPFeature($physical_monitor, 0xCD, $indicator)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: AuxiliaryDisplaySize
; Description ...: This command returns a 1 byte value that defines the number of characters and the number of rows available.
; Syntax.........: AuxiliaryDisplaySize($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: An ‘auxiliary display’ is a small alpha-numeric display associated with the primary display and able to be 
;                  accessed via the primary display.
;
;                  |--------------------------------------------------
;                  | Byte: SL    |
;                  |-------------|------------------------------------
;                  | Bits 7 -> 6 | The number of rows + 1 
;                  | Bits 5 -> 0 | The number of characters / row + 1 
;                  |--------------------------------------------------
;
;                  i.e. The maximum auxiliary display size is 5 rows each with 65 characters
; Related .......:
; Link ..........:
; Example .......: No
Func AuxiliaryDisplaySize(Const $physical_monitor)
	Local Const $return = SetVCPFeature($physical_monitor, 0xCE, 0)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: AuxiliaryDisplayData
; Description ...: This command transmits a number of bytes of alphanumeric data to be displayed on the auxiliary display.
; Syntax.........: AuxiliaryDisplayData($physical_monitor, $data)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $data             - The data to be displayed on the auxiliary display. 
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: An ‘auxiliary display’ is a small alpha-numeric display associated with the primary display and able to be 
;                  accessed via the primary display.
;
;                  The data must conform to ISO 8859-2 (Latin 1) code set (ASCII code). 
;
;                  The auxiliary display will be written from the top left position, moving to right along each line and then 
;                  starting at left end of the next line.
; Related .......:
; Link ..........:
; Example .......: No
Func AuxiliaryDisplayData(Const $physical_monitor, Const $data)
	SetVCPFeature($physical_monitor, 0xCF, $data)
	Return (@error ? SetError(1, @extended, False) : True)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: OutputSelect
; Description ...: Used to select the active video output.
; Syntax.........: OutputSelect($physical_monitor, $output)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $output           - The desired active video output.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Data size: Write = 4 bytes / Read = 8 bytes 
;
;                  A possible value is selected by setting the corresponding bit = 1. Note:Setting more than one bit = 1 is 
;                  invalid and must be ignored by the display.
;
;                 |---------------------------------------------------
;                 | Byte 0      |                                    
;                 |-------------|-------------------------------------
;                 | Bit 7       | Analog Video (R/G/B) # 1           
;                 | Bit 6       | Analog Video (R/G/B) # 2           
;                 | Bit 5       | Digital Video (TMDS) # 1           
;                 | Bit 4       | Digital Video (TMDS) # 2           
;                 | Bit 3       | Composite Video # 1                
;                 | Bit 2       | Composite Video # 2                
;                 | Bit 1       | S-video # 1                        
;                 | Bit 0       | S-video # 2                        
;                 |-------------|-------------------------------------
;                 | Byte 1      |                                    
;                 |-------------|-------------------------------------
;                 | Bit 7       | Tuner – Analog # 1                 
;                 | Bit 6       | Tuner – Analog # 2                 
;                 | Bit 5       | Tuner – Digital # 1                
;                 | Bit 4       | Tuner – Digital # 2                
;                 | Bit 3       | Component Video (YPrPb / YCrCb) # 1
;                 | Bit 2       | Component Video (YPrPb / YCrCb) # 2
;                 | Bit 1       | Component Video (YPrPb / YCrCb) # 3
;                 | Bit 0       | Reserved, must be ignored          
;                 |-------------|-------------------------------------
;                 | Byte 2      |                                    
;                 |-------------|-------------------------------------
;                 | Bit 7       | Digital Video (DisplayPort) # 1    
;                 | Bit 6       | Digital Video (DisplayPort) # 2    
;                 | Bits 5 -> 0 | Reserved, must be ignored          
;                 |-------------|-------------------------------------
;                 | Byte 3      |                                    
;                 |-------------|-------------------------------------
;                 | Bits 7 -> 0 | Reserved, must be ignored          
;                 |---------------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func OutputSelect(Const $physical_monitor, Const $output)
	Local Const $return = SetVCPFeature($physical_monitor, 0xD0, $output)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: AssetTag
; Description ...: Allows an Asset Tag to be written to a display or read from a display.
; Syntax.........: AssetTag($physical_monitor, $tag)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $tag              - The desired asset tag.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Data length: Read / write = 16 bytes
;                 
;                  It also allows for control by the display manufacturer of which applications may write an asset tag.
;                  
;                  Data must be stored in ASCII (code page # 437) starting in byte 2 (MSB of the asset tag). If the stored asset 
;                  tag is <14 characters then the asset tag must be terminated with the ASCII character A0h and, if required, the
;                  remainder of the asset tag bytes packed with ASCII character 20h. The 2 byte key may be a simple a “secret” 
;                  number or be derived by taking certain required elements of the base EDID and manipulating the values of those
;                  elements by a mathematical formula – the formula used for a particular display (or family of displays) should 
;                  only be released by the display manufacturer to users they trust. 
;
;                  Note: When shipped from the manufacturing location, the data field must be set=00h unless an asset tag has 
;                        been stored to meet a customer requirement. 
;
;                  Read operation:
;                    No key required, the 16 bytes returned by the display may contain any value in bytes 0 and 1. The key should 
;                    not be returned. 
;
;                  Write operation:
;                    A successful write operation requires that bytes 0 and 1 contain the correct key, if they do not then the 
;                    display must take no action.
;
;                  |---------------------------------
;                  | Byte | Definition 
;                  |------|--------------------------
;                  | 0    | MSB of key 
;                  | 1    | LSB of key 
;                  | 2    | MSB of asset tag 
;                  | 3    | ^
;                  | 4    | |
;                  | 5    | |
;                  | 6    | |
;                  | 7    | |
;                  | 8    | |
;                  | 9    | |
;                  | 10   | |
;                  | 11   | |
;                  | 12   | |
;                  | 13   | |
;                  | 14   | V
;                  | 15   | LSB of asset tag 
;                  |---------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func AssetTag(Const $physical_monitor, Const $tag)
	Local Const $return = SetVCPFeature($physical_monitor, 0xD2, $tag)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: AuxiliaryPowerOutput
; Description ...: Controls output of an auxiliary power output from a display to a host device.
; Syntax.........: AuxiliaryPowerOutput($physical_monitor, $output)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $output           - The desired auxiliary power output from a display to a host device.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |-----------------------------------------
;                  | Byte: SL |
;                  |----------|------------------------------
;                  | 00h      | Reserved, must be ignored 
;                  | 01h      | Disable auxiliary output power 
;                  | 02h      | Enable auxiliary output power 
;                  | >=03h    | Reserved, must be ignored
;                  |-----------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func AuxiliaryPowerOutput(Const $physical_monitor, Const $output)
	Local Const $return = SetVCPFeature($physical_monitor, 0xD7, $output)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: ScratchPad
; Description ...: Provides 2 bytes of volatile storage for use of software application(s) … leading to more efficient operation.
; Syntax.........: ScratchPad($physical_monitor, $data)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $data             - The data to be written to the volatile storage. 
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Notes:
;                        1. The display must set these bytes = 00h following a power-on or power off/on cycle. 
;                        2. Aside from the actions of note 1, the display must not take any action with these bytes. 
; Related .......:
; Link ..........:
; Example .......: No
Func ScratchPad(Const $physical_monitor, Const $data)
	Local Const $return = SetVCPFeature($physical_monitor, 0xDE, $data)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: AudioSpeakerVolume
; Description ...: Allows the volume to be adjusted. 
; Syntax.........: AudioSpeakerVolume($physical_monitor, $volume)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $volume           - The desired volume level.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |---------------------------------------------------
;                  | Byte: SL   |
;                  |------------|--------------------------------------
;                  | 00h        | Fixed (default) level 
;                  | 01h -> FEh | Volume level 
;                  | FFh        | Mute 
;                  |---------------------------------------------------
;
;                  Note: The level will increase from a minimum at a value = 01h to a maximum at a value = FEh
; Related .......:
; Link ..........:
; Example .......: No
Func AudioSpeakerVolume(Const $physical_monitor, Const $volume)
	Local Const $return = SetVCPFeature($physical_monitor, 0x62, $volume)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: SpeakerSelect
; Description ...: Allows a “pair” (may be physically more than two speakers) of speakers to be selected.
; Syntax.........: SpeakerSelect($physical_monitor, $speaker)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $speaker          - The desired "pair" of speakers.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |--------------------------------------------
;                  | Byte: SL   |
;                  |------------|-------------------------------
;                  | 00h        | Front L / R 
;                  | 01h        | Side L / R 
;                  | 02h        | Rear L / R 
;                  | 03h        | Center / Sub woofer 
;                  | 04h -> FFH | Reserved, must be ignored.
;                  |--------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func SpeakerSelect(Const $physical_monitor, Const $speaker)
	Local Const $return = SetVCPFeature($physical_monitor, 0x63, $speaker)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: AudioMicrophoneVolume
; Description ...: Increasing (decreasing) thisvalue will increase (decrease) the microphone gain.
; Syntax.........: AudioMicrophoneVolume($physical_monitor, $gain)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $gain             - The desired microphone gain.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
Func AudioMicrophoneVolume(Const $physical_monitor, Const $gain)
	Local Const $return = SetVCPFeature($physical_monitor, 0x64, $gain)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: AudioMute
; Description ...: Provides for the audio to be muted or unmuted.
; Syntax.........: AudioMute($physical_monitor, $mute)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $mute             - Whtehr or not to mute the audio. 
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |--------------------------------------
;                  | Byte: SL |
;                  |----------|---------------------------
;                  | 00h      | Reserved, must be ignored 
;                  | 01h      | Mute the audio 
;                  | 02h      | Unmute the audio 
;                  | >=03h    | Reserved, must be ignored
;                  |--------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func AudioMute(Const $physical_monitor, Const $mute)
	Local Const $return = SetVCPFeature($physical_monitor, 0x8D, $mute)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: AudioTreble
; Description ...: Allows control of the high frequency component of the audio. 
; Syntax.........: AudioTreble($physical_monitor, $treble)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $treble           - The desired level of treble.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |----------------------------------------
;                  |Byte: SL    |
;                  |------------|---------------------------
;                  | 00h        | Reserved, must be ignored 
;                  | 01h -> 7Fh | Cut the treble 
;                  | 80h        | Neutral … no effect 
;                  | 81h -> FFh | Boost the treble 
;                  |----------------------------------------
;
;                  Notes:
;                     • As value is reduced below 80h, the treble content will be increasingly cut.
;                     • As value is increased above 80h, the treble content will be increasingly boosted. 
; Related .......:
; Link ..........:
; Example .......: No
Func AudioTreble(Const $physical_monitor, Const $treble)
	Local Const $return = SetVCPFeature($physical_monitor, 0x8F, $treble)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: AudioBass
; Description ...: Allows control of the low frequency component of the audio.
; Syntax.........: AudioBass($physical_monitor, $bass)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $bass             - The desired level of bass.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |----------------------------------------
;                  |Byte: SL    |
;                  |------------|---------------------------
;                  | 00h        | Reserved, must be ignored 
;                  | 01h -> 7Fh | Cut the bass 
;                  | 80h        | Neutral … no effect 
;                  | 81h -> FFh | Boost the bass 
;                  |----------------------------------------
;
;                  Notes:
;                     • As value is reduced below 80h, the bass content will be increasingly cut.
;                     • As value is increased above 80h, the bass content will be increasingly boosted.
; Related .......:
; Link ..........:
; Example .......: No
Func AudioBass(Const $physical_monitor, Const $bass)
	Local Const $return = SetVCPFeature($physical_monitor, 0x91, $bass)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: AudioBalanceLR
; Description ...: Affects the left – right balance of audio output.
; Syntax.........: AudioBalanceLR($physical_monitor, $balance)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $balance          - The desired balance.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: Increasing (decreasing) the value will cause the balance to move to the right (left).
;
;                  |-----------------------------------------
;                  | Byte: SL   |
;                  |------------|----------------------------
;                  | 00h        | Reserved, must be ignored 
;                  | 01h -> 7Fh | Left (L) channel dominates 
;                  | 80h        | Centered 
;                  | 81h -> FEh | Center / Sub woofer 
;                  | FFh        | Reserved, must be ignored 
;                  |-----------------------------------------
;
;                  Notes:
;                    • As value is reduced below 80h, the left channel will be increasingly dominant 
;                    • As value is increased above 80h, the right channel will become increasingly dominant. 
; Related .......:
; Link ..........:
; Example .......: No
Func AudioBalanceLR(Const $physical_monitor, Const $balance)
	Local Const $return = SetVCPFeature($physical_monitor, 0x93, $balance)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: AudioProcessorMode
; Description ...: This control allows one of several audio processing modes to be selected.
; Syntax.........: AudioProcessorMode($physical_monitor, $mode)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $mode             - The desired audio processing mode.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |--------------------------------------------------------------------------------------------------------------------
;                  | Byte: SL   | Name            | Definition
;                  |--------------------------------------------------------------------------------------------------------------------
;                  | 00h        |                 | Audio processing is not supported.
;                  | 01h        | Mono            | Both display audio channels use the left audio channel 
;                  | 02h        | Stereo          | Incoming left and right audio channels feed separate display output audio channels.
;                  | 03h        | Stereo expanded | As defined by the manufacturer.
;                  | 04h -> 10h | Reserved        | Must be ignored
;                  | 11h        | SRS 2.0         | SRS stereo 
;                  | 12h        | SRS 2.1         | SRS stereo + subwoofer 
;                  | 13h        | SRS 3.1         | SRS stereo + subwoofer + center 
;                  | 14h        | SRS 4.1         | SRS stereo + subwoofer + rear 
;                  | 15h        | SRS 5.1         | SRS stereo + subwoofer + rear + center 
;                  | 16h        | SRS 6.1         | SRS stereo + subwoofer + side 
;                  | 17h        | SRS 7.1         | SRS stereo + subwoofer + side + center 
;                  | 18h -> 20h | Reserved        | Must be ignored
;                  | 21h        | Dolby 2.0       | Dolby stereo 
;                  | 22h        | Dolby 2.1       | Dolby stereo + subwoofer 
;                  | 23h        | Dolby 3.1       | Dolby stereo + subwoofer + center 
;                  | 24h        | Dolby 4.1       | Dolby stereo + subwoofer + rear 
;                  | 25h        | Dolby 5.1       | Dolby stereo + subwoofer + rear + center 
;                  | 26h        | Dolby 6.1       | Dolby stereo + subwoofer + side 
;                  | 27h        | Dolby 7.1       | Dolby stereo + subwoofer + side + center 
;                  | 28h -> 30h | Reserved        | Must be ignored
;                  | 31h        | THX 2.0         | THX stereo 
;                  | 32h        | THX 2.1         | THX stereo + subwoofer 
;                  | 33h        | THX 3.1         | THX stereo + subwoofer + center 
;                  | 34h        | THX 4.1         | THX stereo + subwoofer + rear 
;                  | 35h        | THX 5.1         | THX stereo + subwoofer + rear + center 
;                  | 36h        | THX 6.1         | THX stereo + subwoofer + side 
;                  | 37h        | THX 7.1         | THX stereo + subwoofer + side + center 
;                  | >=38h      | Reserved        | Shall be ignored 
;                  |--------------------------------------------------------------------------------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func AudioProcessorMode(Const $physical_monitor, Const $mode)
	Local Const $return = SetVCPFeature($physical_monitor, 0x94, $mode)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: MonitorStatus
; Description ...: Video mode and status of a DPVL capable monitor.
; Syntax.........: MonitorStatus($physical_monitor)
; Parameters ....: $physical_monitor - Handle to a monitor.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |---------------------------------------------------------------------
;                  | Byte: SL    | Value | Definition 
;                  |-------------|-------|-----------------------------------------------
;                  | Bits 7 -> 3 |       | Reserved, set = 0 
;                  | Bit 2       | = 0   | No error detected in the last header received 
;                  |             | = 1   | Error detected in the last header received 
;                  | Bit 1       | = 0   | Monitor is able to receive the next packet 
;                  |             | = 1   | Monitor is unable to accept another packet 
;                  | Bit 0       | = 0   | Raster scan mode 
;                  |             | = 1   | DPVL mode 
;                  |---------------------------------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func MonitorStatus(Const $physical_monitor)
	Local Const $return = SetVCPFeature($physical_monitor, 0xB7, 0)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: PacketCount
; Description ...: Counter for the DPVL packets received (valid and invalid ones).
; Syntax.........: PacketCount($physical_monitor, $count)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $count            - Reset the count to 0x0000.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: This value counts from 0000h to FFFFh and then rolls over to 0000h. The host can reset the value to 0000h.
; Related .......:
; Link ..........:
; Example .......: No
Func PacketCount(Const $physical_monitor, Const $count)
	Local Const $return = SetVCPFeature($physical_monitor, 0xB8, $count)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: MonitorXOrigin
; Description ...: The X origin of the monitor in the virtual screen.
; Syntax.........: MonitorXOrigin($physical_monitor, $origin)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $origin           - The desired x origin.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: The support of this command indicates the multi-display support of the display. If a display supports this 
;                  command, the monitor must also support Monitor Y Origin command. “0000h” to “FFFFh” or 0 to 65535 
; Related .......:
; Link ..........:
; Example .......: No
Func MonitorXOrigin(Const $physical_monitor, Const $origin)
	Local Const $return = SetVCPFeature($physical_monitor, 0xB9, $origin)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: MonitorYOrigin
; Description ...: The Y origin of the display in the virtual screen.
; Syntax.........: MonitorYOrigin($physical_monitor, $origin)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $origin           - The desired y origin.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: The support of this command indicates the multi-display support of the display. If a display supports this 
;                  command, the monitor must also support Monitor X Origin command. “0000h” to “FFFFh” or 0 to 65535 
; Related .......:
; Link ..........:
; Example .......: No
Func MonitorYOrigin(Const $physical_monitor, Const $origin)
	Local Const $return = SetVCPFeature($physical_monitor, 0xBA, $origin)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: HeaderErrorCount
; Description ...: Error Counter for the DPVL header.
; Syntax.........: HeaderErrorCount($physical_monitor, $count)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $count            - Reset the count to zero. 
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: The counter value saturates at FFFFh. Host can reset to 0000h.
; Related .......:
; Link ..........:
; Example .......: No
Func HeaderErrorCount(Const $physical_monitor, Const $count)
	Local Const $return = SetVCPFeature($physical_monitor, 0xBB, $count)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: BodyCRCErrorCount
; Description ...: CRC error Counter for the DPVL body (containing video data).
; Syntax.........: BodyCRCErrorCount($physical_monitor, $reset)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $reset            - Reset to 0x0000. 
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: The counter value saturates at FFFFh. The Host can reset to 0000h.
; Related .......:
; Link ..........:
; Example .......: No
Func BodyCRCErrorCount(Const $physical_monitor, Const $reset)
	Local Const $return = SetVCPFeature($physical_monitor, 0xBC, $reset)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: ClientID
; Description ...: Assigned identification number for the monitor.
; Syntax.........: ClientID($physical_monitor, $id)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $id               - The desired identification number for the monitor.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......: 
; Remarks .......: Valid range is 0000h to FFFEh, FFFFh is reserved for broadcast. 
; Related .......: 
; Link ..........:
; Example .......: No
Func ClientID(Const $physical_monitor, Const $id)
	Local Const $return = SetVCPFeature($physical_monitor, 0xBD, $id)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: LinkControl
; Description ...: Indicates the status of the DVI link.
; Syntax.........: LinkControl($physical_monitor, $status)
; Parameters ....: $physical_monitor - Handle to a monitor.
;                  $status           - The desired status.
; Return values .: Success - See description.
;                  Failure - False - @error - 1
; Author ........: Matthew G. Jaberwocky6669
; Modified.......:
; Remarks .......: |-------------------------------------------------
;                  | Byte: SL    | Value | Definition 
;                  |-------------|-------|---------------------------
;                  | Bits 7 -> 1 |       | Reserved, set = 0 
;                  | Bit 0       | = 0   | Link shutdown is disabled 
;                  |             | = 1   | Link shutdown is enabled
;                  |-------------------------------------------------
; Related .......:
; Link ..........:
; Example .......: No
Func LinkControl(Const $physical_monitor, Const $status)
	Local Const $return = SetVCPFeature($physical_monitor, 0xBE, $status)
	Return (@error ? SetError(1, @extended, False) : $return)
EndFunc
#endregion ; Monitor Configuration Wrapper
