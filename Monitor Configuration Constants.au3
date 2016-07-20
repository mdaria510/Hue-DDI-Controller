#include-once

Global Const $MC_CAPS_NONE                                         = 0x00000000
Global Const $MC_CAPS_MONITOR_TECHNOLOGY_TYPE                      = 0x00000001
Global Const $MC_CAPS_BRIGHTNESS                                   = 0x00000002  
Global Const $MC_CAPS_CONTRAST                                     = 0x00000004
Global Const $MC_CAPS_COLOR_TEMPERATURE                            = 0x00000008
Global Const $MC_CAPS_RED_GREEN_BLUE_GAIN                          = 0x00000010
Global Const $MC_CAPS_RED_GREEN_BLUE_DRIVE                         = 0x00000020
Global Const $MC_CAPS_DEGAUSS                                      = 0x00000040
Global Const $MC_CAPS_DISPLAY_AREA_POSITION                        = 0x00000080
Global Const $MC_CAPS_DISPLAY_AREA_SIZE                            = 0x00000100
Global Const $MC_CAPS_RESTORE_FACTORY_DEFAULTS                     = 0x00000400
Global Const $MC_CAPS_RESTORE_FACTORY_COLOR_DEFAULTS               = 0x00000800
Global Const $MC_RESTORE_FACTORY_DEFAULTS_ENABLES_MONITOR_SETTINGS = 0x00001000          

Global Const $MC_HORIZONTAL_POSITION = 0
Global Const $MC_VERTICAL_POSITION   = 1

Global Const $MV_RED_DRIVE   = 0
Global Const $MV_GREEN_DRIVE = 1
Global Const $MV_BLUE_DRIVE  = 2

Global Const $MV_RED_GAIN   = 0
Global Const $MV_GREEN_GAIN = 1
Global Const $MV_BLUE_GAIN  = 2

Global Const $MC_WIDTH  = 0
Global Const $MC_HEIGHT = 1 

Global Const $MC_SHADOW_MASK_CATHODE_RAY_TUBE    = 0
Global Const $MC_APERTURE_GRILL_CATHODE_RAY_TUBE = 1
Global Const $MC_THIN_FILM_TRANSISTOR            = 2
Global Const $MC_LIQUID_CRYSTAL_ON_SILICON       = 3
Global Const $MC_PLASMA                          = 4
Global Const $MC_ORGANIC_LIGHT_EMITTING_DIODE    = 5
Global Const $MC_ELECTROLUMINESCENT              = 6
Global Const $MC_MICROELECTROMECHANICAL          = 7
Global Const $MC_FIELD_EMISSION_DEVICE           = 8

Global Const $MC_SUPPORTED_COLOR_TEMPERATURE_NONE   = 0x00000000
Global Const $MC_SUPPORTED_COLOR_TEMPERATURE_4000K  = 0x00000001
Global Const $MC_SUPPORTED_COLOR_TEMPERATURE_5000K  = 0x00000002
Global Const $MC_SUPPORTED_COLOR_TEMPERATURE_6500K  = 0x00000004
Global Const $MC_SUPPORTED_COLOR_TEMPERATURE_7500K  = 0x00000008
Global Const $MC_SUPPORTED_COLOR_TEMPERATURE_8200K  = 0x00000010
Global Const $MC_SUPPORTED_COLOR_TEMPERATURE_9300K  = 0x00000020
Global Const $MC_SUPPORTED_COLOR_TEMPERATURE_10000K = 0x00000040
Global Const $MC_SUPPORTED_COLOR_TEMPERATURE_11500K = 0x00000080

Global Const $RESTORE_FACTORY_DEFAULTS                    = 0x04
Global Const $RESTORE_FACTORY_LUMINANCE_CONTRAST_DEFAULTS = 0x05
Global Const $RESTORE_FACTORY_GEOMETRY_DEFAULTS           = 0x06
Global Const $RESTORE_FACTORY_COLOR_DEFAULTS              = 0x08
Global Const $RESTORE_FACTORY_TV_DEFAULTS                 = 0x0A
Global Const $SETTINGS                                    = 0xB0

Global Const $COLOR_TEMPERATURE_INCREMENT = 0x0B
Global Const $COLOR_TEMPERATURE_REQUEST   = 0x0C
Global Const $FLESH_TONE_ENHANCEMENT      = 0x11
Global Const $BACKLIGHT_CONTROL           = 0x13
Global Const $SELECT_COLOR_PRESET         = 0x14

Global Const $POWER_MODE    = 0xD6
Global Const $POWER_ON      = 0x01
Global Const $POWER_STANDBY = 0x02
Global Const $POWER_SUSPEND = 0x03
Global Const $POWER_OFF     = 0x04

Global Const $tag_MC_TIMING_REPORT = "BYTE bTimingStatusByte; DWORD dwHorizontalFrequencyInHZ; DWORD dwVerticalFrequencyInHZ"

Global Const $Dxva2 = DllOpen("Dxva2.dll")
