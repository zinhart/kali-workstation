#!/bin/bash
# cross compilation tools
# echo 'INSTALLING CROSS COMPILTATION TOOLS'
# sudo dpkg --add-architecture i386 && sudo apt update && sudo apt -y install wine32 mingw-w64;
 # csharp
# sudo apt -y install mono-complete;

#!/bin/bash
# cross compilation tools
echo 'INSTALLING CROSS COMPILTATION TOOLS'
echo '* libraries/restart-without-asking boolean true' | sudo debconf-set-selections
export DEBIAN_FRONTEND=noninteractive
export NEEDRESTART_MODE=a 
sudo dpkg --add-architecture i386 && sudo apt -y update && sudo apt -y install wine32 mingw-w64;
# csharp
sudo apt -y install mono-complete;
