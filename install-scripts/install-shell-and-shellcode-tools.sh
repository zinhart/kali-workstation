#!/bin/bash
echo 'INSTALLING SHELL AND SHELLCODE TOOLS'
sudo apt install -y evil-winrm powercat rlwrap shellter
# 32 bit dependencies for shellter to run(must be run as root)
dpkg --add-architecture i386 && apt-get update && apt-get install wine32
sudo git clone https://github.com/WhiteWinterWolf/wwwolf-php-webshell /home/vagrant/ftphome/wwwolf-php-webshell
