@echo off
REM Copy the current batch file to a target folder
COPY "%0" "C:\Temp\MyBatchCopy.bat" >nul

REM Start the copied batch file in a new window (optional)
start /wait "MyBatchCopy.bat"

REM Infinite loop to keep running
:loop
echo This batch is running forever...
timeout /t 5 /nobreak >nul
goto loop
