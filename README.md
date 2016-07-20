# Hue-DDI-Controller
#### Written in AutoIT.
#### Primary code file is HueControlGUI.au3

A simple program to synchronize the dimming of lights and multiple computer monitors at the same time, to match various lighting conditions.

Two primary functions:

* Use DDI/CI commands to control brightness/contrast/color of multiple displays, in different lighting conditions. Cool color temperature and full brightness during for visibility, warm color temperature and dim screen for nighttime, or whatever your heart desires.  Display parameters must be hardcoded.

* Interface via HTTP with Philips Hue Lighting Bridge. Uses Hue API to directly set lighting parameters.

* Accessible via GUI tray app or directly via hotkey - Ctrl + Alt + Q/W/E/R/T/Y for the different presets. 

Result? One click/hotkey to optimize both your lighting and your monitor for time of day, which would otherwise require so much fiddling that you wouldn't even bother.




