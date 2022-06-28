ECHO OFF
ECHO Checking for updates...
powershell -noprofile -command "(New-Object Net.WebClient).DownloadFile(\"https://raw.githubusercontent.com/Gargoyim/sorcerthree/master/updater.bat\", 'updater.bat')"
call updater.bat
EXIT
