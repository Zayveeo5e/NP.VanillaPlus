# Vanilla+ common issues

This will go over a majority of the common issues one might have with Vanilla+, and how to solve them. 
If you see this, please read it before asking for help. 
Chances are, your issue is in here. 
However, if you can't figure it out, feel free to ask for help.

## COMPILE ERROR Undefined variable "VANILLA"

This is because the current VanillaPlus setup uses the `-vanilla` launch option, which was added in Northstar 1.21.0
Update Northstar to the newest version to solve the issue.

## COMPILE ERROR Undefined variable "AddModTitle"

This error comes up if Vanilla+ is not properly installed or enabled. 
First, make sure you've followed the install guide correctly. 99% of the cause of this issue is a install that isn't properly set up. 
If you're sure that it's set up right, check the `enabledmods.json` file in the `R2Titanfall` folder. 
If you see that `VanillaPlus` is set to `false`, set it to `true`. 
If you don't see `VanillaPlus`, it isn't installed right.

## Call was unable to find function with name 'NorthstarCodeCallback_GenerateUIPresence'. Is it global?

This error comes up if you have 2.3 or higher of Vanilla+, and 1.19 or lower of Northstar (not the core mods of Northstar, but the files such as `NorthstarLauncher.exe` and `Northstar.dll` found in the `Titanfall2` folder). 
This is because 2.3 was a patch for a compile error introduced in Northstar 1.20. 

Update Northstar to solve the issue

## COMPILE ERROR Undefined variable "NSPushUIPresence"

This error comes up if you have Northstar 1.20 or higher, and have Vanilla+ 2.2 or lower. 
The reasoning is similar to the answer above, except instead of an up to date Vanilla+ and out of date Northstar, this is due to an up to date Vanilla+ and an out of date Northstar.

Update Vanilla+ to the latest version to solve the issue

## Random authentication failed error

If you have this error message in game and can skip it by clicking `OK`, this is due to the fact that older versions (pre 2.0) of Vanilla+ used `Northstar.Client`, meaning it would still try (and fail) to authenticate you with Northstar servers. 
You can simply keep pressing `OK` to ignore it, or update Vanilla+ to the newest version. 
If updating from a version with this error, remove the `Northstar.Client` mod as it's no longer used
