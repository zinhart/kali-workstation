#!/bin/bash
# cross compilation tools
echo 'INSTALLING CROSS COMPILTATION TOOLS'
sudo dpkg --add-architecture i386 && sudo apt update && sudo apt -y install wine32 mingw-w64;
