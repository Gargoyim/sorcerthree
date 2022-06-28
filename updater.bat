ECHO OFF
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

::continuity-2.0.0+1.18.2.jar
IF NOT EXIST "mods/continuity-2.0.0+1.18.2.jar" (
    ECHO Continuity is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1pUtjHaKq5Z6dY9L4s2gGXd3l9og0RHAT', 'continuity-2.0.0+1.18.2.jar')"
    move continuity-2.0.0+1.18.2.jar mods
)

::createdeco-1.2.7a-fabric-1.18.2.jar
IF NOT EXIST "mods/createdeco-1.2.7a-fabric-1.18.2.jar" (
    ECHO Create Deco is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1nheV2ochw3r8elINKCmaVE8L_O75bnoR', 'createdeco-1.2.7a-fabric-1.18.2.jar')"
    move createdeco-1.2.7a-fabric-1.18.2.jar mods
)

::create-stuff-additions1.18.2_v1.1.6.jar
IF NOT EXIST "mods/create-stuff-additions1.18.2_v1.1.6.jar" (
    ECHO Create Stuff Additions is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1LmJVqUlCJv5Ke6wo51v2TinbNuIO_DbF', 'create-stuff-additions1.18.2_v1.1.6.jar')"
    move create-stuff-additions1.18.2_v1.1.6.jar mods
)

::immersive-portals-1.4.7-mc1.18.2-fabric.jar
IF NOT EXIST "mods/immersive-portals-1.4.7-mc1.18.2-fabric.jar" (
    ECHO Immersive Portals is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1lCHR6qwNY2xGHohtDinjCHQuFdW5cu0s', 'immersive.zip')"
    powershell -Command "expand-archive -Path "immersive.zip""
    move immersive/immersive-portals-1.4.7-mc1.18.2-fabric.jar mods
    move immersive/immersive_portals_fabric.json config
)

::indium-1.0.6+mc1.18.2.jar
IF NOT EXIST "mods/indium-1.0.6+mc1.18.2.jar" (
    ECHO Indium is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1JdJjfSLjXwDQ_5UE7m6DHo68Q2i9iv5d', 'indium.zip')"
    powershell -Command "expand-archive -Path "indium.zip""
    move indium/indium-1.0.6+mc1.18.2.jar mods
    move indium/indium-renderer.properties config
)

::Pehkui-3.3.1+1.14.4-1.19.jar
IF NOT EXIST "mods/Pehkui-3.3.1+1.14.4-1.19.jar" (
    ECHO Pehkui is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1J7pMURQ2CgCOGv3GntW9UwBipz7qvWhj', 'pehkui.zip')"
    powershell -Command "expand-archive -Path "pehkui.zip""
    move pehkui/Pehkui-3.3.1+1.14.4-1.19.jar mods
    move pehkui/pehkui config
)

::sodium-fabric-mc1.18.2-0.4.1+build.15.jar
IF NOT EXIST "mods/sodium-fabric-mc1.18.2-0.4.1+build.15.jar" (
    ECHO Sodium is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1LrHdHD2NOToUAdj6eUj3Q67ZToai38SM', 'sodium-fabric-mc1.18.2-0.4.1+build.15.jar')"
    move sodium-fabric-mc1.18.2-0.4.1+build.15.jar mods
)
    
ECHO Update complete! 
pause
