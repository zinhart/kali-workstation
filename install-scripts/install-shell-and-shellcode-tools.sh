#!/bin/sh
echo 'INSTALLING SHELL AND SHELLCODE TOOOLS'
sudo apt install -y evil-winrm powercat rlwrap shellter
# 32 bit dependencies for shellter to run(must be run as root)
dpkg --add-architecture i386 && apt-get update && apt-get install wine32
#ysoserial rmi injections
sudo git clone https://github.com/zinhart/ysoserial.git /opt/ysoserial