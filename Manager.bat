@echo off
chcp 65001>nul
title Scrap Mod Manager
for /f "tokens=2,*" %%a in ('reg query "HKCU\SOFTWARE\Valve\Steam" /v "SteamPath"') do (
set Steam_Path=%%b )
set /p GAME_DIR="Enter game directory path: "
call :write_cfg
pause
exit

:write_cfg
(
echo GAME_DIR=%GAME_DIR%
echo 
)>Data/config.cfg
exit /b