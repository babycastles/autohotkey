REM This script executes a PowerShell command to list every process that has an open window in windows
REM And kill those processes
powershell -command "(New-Object -comObject Shell.Application).Windows() | foreach-object {$_.quit()}; Get-Process | Where-Object {$_.MainWindowTitle -ne \"\"} | stop-process"
