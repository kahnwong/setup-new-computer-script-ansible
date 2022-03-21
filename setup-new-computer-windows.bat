VERSION="v1.0.0"
::===============================================================================
:: title           setup-new-computer-windows.bat
::                 karnsireew@baania.com
::                 https://github.com/kahnwong
::===============================================================================
::   A shell script to help with the quick setup and installation of tools and
::   applications for new employees at Baania.
::
::   Quick Instructions:
::   1. Run the script:
::      ./setup-new-computer-windows.bat
::
::   2. Some installs will need your password
::
::===============================================================================


::===============================================================================
::  Install chocolatey
::===============================================================================
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

::===============================================================================
::  Install applications
::===============================================================================
choco install 7zip -y
choco install angryip -y
choco install audacity -y
choco install beekeeper-studio -y
choco install bitwarden -y
choco install calibre -y
choco install calibre-dedrm -y
choco install ccleaner -y
choco install defraggler -y
choco install ditto -y
choco install docker -y
choco install eac -y
choco install f.lux -y
choco install fastcopy -y
choco install fbreader -y
choco install filezilla -y
choco install firefox -y
choco install foobar2000 -y
choco install freefilesync -y
choco install fsviewer -y
choco install gh -y
choco install git -y
choco install git-fork -y
choco install goggalaxy -y
choco install googlechrome -y
choco install googledrive -y
choco install gpodder -y
choco install handbrake -y
choco install hyper -y
choco install jdownloader -y
choco install libreoffice-still -y
choco install logitech-options -y
choco install logitech-webcam-software -y
choco install microsoft-teams -y
choco install mkvtoolnix -y
choco install mp3tag -y
choco install nextcloud-client -y
choco install notepadplusplus -y
choco install qgis -y
choco install slack -y
choco install steam-client -y
choco install sumatrapdf.install -y
choco install syncthing -y
choco install synctrayzor -y
choco install teamviewer -y
choco install todotxt.net -y
choco install vlc -y
choco install vscode -y
choco install windirstat -y
choco install winrar -y
choco install zoom -y
