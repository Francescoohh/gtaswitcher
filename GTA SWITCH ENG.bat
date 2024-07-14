@echo off
title GTA SWITCH
cd "C:\Program Files\Rockstar Games"
if not exist "Grand Theft Auto V MOD" (
	set active=Modded
	set switchable=Original
) else if not exist "Grand Theft Auto V ORIG" (
	set active=Original
	set switchable=Modded
)
echo Active: %active%
echo Change to %switchable% ?
pause
if %attivo%==Modded (
	ren "Grand Theft Auto V" "Grand Theft Auto V MOD"
	ren "Grand Theft Auto V ORIG" "Grand Theft Auto V"
) else if %attivo%==Original (
	ren "Grand Theft Auto V" "Grand Theft Auto V ORIG"
	ren "Grand Theft Auto V MOD" "Grand Theft Auto V"
)
echo Successfully switched from %attivo% to %switchabile%.
pause
exit
