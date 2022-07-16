ECHO OFF
ECHO %~dp0
ECHO Current directory: %cd%
ECHO Checking for all changes made through these updates so far...

::IF NOT EXIST "unzip.exe" (
::    ECHO Info-Zip is not installed! Downloading...
::    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1DdxfR1i6vmTHMYD8qI6bXkJEOy4v7JWN', 'unzip.exe')"
::)


::LIST
::bitsandchisels-2.6.13.jar
IF NOT EXIST "mods/bitsandchisels-2.6.13.jar" (
    ECHO Bits and Chisels is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1m6BVWysWwcqvGql0gPLbKT0Fs_yKAN6E', 'bitsandchisels-2.6.13.jar')"
    move bitsandchisels-2.6.13.jar mods
)

::cc-restitched-1.100.8.jar
IF NOT EXIST "mods/cc-restitched-1.100.8.jar" (
    ECHO Computercraft is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1Vsois6vHWc54d36yLSzLNajT0sgqIHdU', 'cc-restitched-1.100.8.jar')"
    move cc-restitched-1.100.8.jar mods
)

::chisel.jar
IF NOT EXIST "mods/chisel.jar" (
    ECHO Chisel is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1WC-e3ZDKHtDx_NqYDmemB3hmmh8ljFj3', 'chisel.jar')"
    move chisel.jar mods
)

::continuity.jar
IF NOT EXIST "mods/continuity.jar" (
    ECHO Continuity is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1pUtjHaKq5Z6dY9L4s2gGXd3l9og0RHAT', 'continuity.jar')"
    move continuity.jar mods
)

::createdeco-1.2.7a-fabric-1.18.2.jar
::IF NOT EXIST "mods/createdeco-1.2.7a-fabric-1.18.2.jar" (
::    ECHO Create Deco is not installed! Downloading...
::    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1nheV2ochw3r8elINKCmaVE8L_O75bnoR', 'createdeco-1.2.7a-fabric-1.18.2.jar')"
::    move createdeco-1.2.7a-fabric-1.18.2.jar mods
::)

::create-stuff-additions1.18.2_v1.1.6.jar
IF NOT EXIST "mods/create-stuff-additions1.18.2_v1.1.6.jar" (
    ECHO Create Stuff Additions is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1LmJVqUlCJv5Ke6wo51v2TinbNuIO_DbF', 'create-stuff-additions1.18.2_v1.1.6.jar')"
    move create-stuff-additions1.18.2_v1.1.6.jar mods
)

::immersive-portals.jar
IF NOT EXIST "mods/immersive-portals.jar" (
    ECHO Immersive Portals is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1Ob7kyF1VlNLSABpbvlsOHCl1AH3wMIAG', 'immersive.zip')"
    powershell -Command "Expand-Archive -Path immersive.zip -DestinationPath '%cd%' -Force"
    move immersive-portals.jar mods
    move immersive_portals_fabric.json config
    del immersive.zip
)

::indium.jar
IF NOT EXIST "mods/indium.jar" (
    ECHO Indium is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1wTjd1yQ0x1EfGR7CU-8PKyTV9JOE_Aa9', 'indium.zip')"
    powershell -Command "Expand-Archive -Path indium.zip -DestinationPath '%cd%' -Force"
    move indium.jar mods
    move indium-renderer.properties config
    del indium.zip
)

::Pehkui.jar
IF NOT EXIST "mods/Pehkui.jar" (
    ECHO Pehkui is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1xyjAxj9SXtp9k_1qY49vq20zNgmR354t', 'pehkui.zip')"
    powershell -Command "Expand-Archive -Path pehkui.zip -DestinationPath '%cd%' -Force"
    move Pehkui.jar mods
    mkdir %cd%\config\pehkui
    move config.json config\pehkui
    del pehkui.zip
)

::sodium-fabric-mc1.18.2-0.4.1+build.15.jar
IF NOT EXIST "mods/sodium-fabric-mc1.18.2-0.4.1+build.15.jar" (
    ECHO Sodium is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1LrHdHD2NOToUAdj6eUj3Q67ZToai38SM', 'sodium-fabric-mc1.18.2-0.4.1+build.15.jar')"
    move sodium-fabric-mc1.18.2-0.4.1+build.15.jar mods
)

::July 15th Update
IF NOT EXIST "mods/trinkets-3.3.1.jar" (
    ECHO Downloading July 15th update... (I swear it's just like 17mb I don't know why Google Drive insists it should take so long to download)
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1j6t_OWqxa1qDJZJS5r1CSs1D-6ZMq5xx', 'mods.zip')"
    powershell -Command "Expand-Archive -Path mods.zip -DestinationPath '%cd%/mods' -Force"
    del mods.zip
)
    
ECHO Update complete! 
pause
