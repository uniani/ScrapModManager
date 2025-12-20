@echo off
setlocal enabledelayedexpansion
chcp 65001>nul
title Scrap Mod Manager
for /f "tokens=2,*" %%a in ('reg query "HKCU\SOFTWARE\Valve\Steam" /v "SteamPath"') do (
set "Steam_Path=%%b" )
if not defined Steam_Path (
set /p GAME_DIR=Enter game path:
) else (
set "GAME_DIR=%Steam_Path%/steamapps/common/Scrap Mechanic"
)
call :write_cfg
pause
exit

:write_cfg
(
echo GAME_DIR=!GAME_DIR!
)>"Data/config.cfg"
exit /b