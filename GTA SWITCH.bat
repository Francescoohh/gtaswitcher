@echo off
title GTA SWITCH
cd "C:\Program Files\Rockstar Games"
if not exist "Grand Theft Auto V MOD" (
	set attivo=Moddato
	set switchabile=Originale
) else if not exist "Grand Theft Auto V ORIG" (
	set attivo=Originale
	set switchabile=Moddato
)
echo Attualmente attivo: %attivo%
echo Vuoi passare a %switchabile% ?
pause
if %attivo%==Moddato (
	ren "Grand Theft Auto V" "Grand Theft Auto V MOD"
	ren "Grand Theft Auto V ORIG" "Grand Theft Auto V"
) else if %attivo%==Originale (
	ren "Grand Theft Auto V" "Grand Theft Auto V ORIG"
	ren "Grand Theft Auto V MOD" "Grand Theft Auto V"
)
echo Completato il passaggio da %attivo% a %switchabile%.
pause
exit