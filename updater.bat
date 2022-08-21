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
    mkdir "%cd%\config\pehkui"
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
    ECHO Downloading July 15th update... I swear it's just like 17mb I don't know why Google Drive insists it should take so long to download
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1j6t_OWqxa1qDJZJS5r1CSs1D-6ZMq5xx', 'mods.zip')"
    powershell -Command "Expand-Archive -Path mods.zip -DestinationPath '%cd%/mods' -Force"
    del mods.zip
)

::July 30th Update
IF NOT EXIST "mods/Adorn-3.5.0.jar" (
    ECHO Downloading July 30th update... This one adds some funny little things like extra witch stuff and some furniture. It'll be pretty cool, bear with me!
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1EbuMhJPqSWpYe5JdtWsQT9LFCrBCzDY3', 'mods2.zip')"
    powershell -Command "Expand-Archive -Path mods2.zip -DestinationPath '%cd%/mods' -Force"
    del mods2.zip
)

::August 16th Update
IF NOT EXIST "mods/create-1.18.2-0.5.0c-708.jar" (
    ECHO Downloading August 16th update... This one just updates Create to the version that adds trains and steam engines. It also updates a separate mod that would otherwise crash, and throws in some compatibility stuff for ComputerCraft. But all any of us should really care about are the trains
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1I7nQJv7Lec9rAFlQlA0osPGxl5EEaB_Q', 'mods3.zip')"
    powershell -Command "Expand-Archive -Path mods3.zip -DestinationPath '%cd%/mods' -Force"
    ECHO Attempting to delete files...
    del "mods\create-mc1.18.2_v0.4.1+631.jar"
    del "mods\createaddition-1.18.2-20220621a.jar"
    del mods3.zip
)


::August 21st Update
IF NOT EXIST "mods/fabric-api-0.58.0+1.18.2.jar" (
    ECHO Downloading August 21st update... This just fixes an issue I caused with the previous update. No actual content or anything. Before launching, be sure to update your Fabric version from 0.14.8 to 0.14.9!
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1fIvQKy-C5TwXx6Qbn4C4lGCNuhYBsu4K', 'mods4.zip')"
    powershell -Command "Expand-Archive -Path mods4.zip -DestinationPath '%cd%/mods' -Force"
    ECHO Attempting to delete files...
    del "mods\createaddition-1.18.2-20220813a.jar"
    del "mods\fabric-api-0.56.0+1.18.2.jar"
    del mods4.zip
)

ECHO Update complete! 
pause
