#!/bin/bash
echo 'INSTALLING SHELL AND SHELLCODE TOOLS'
sudo apt install -y evil-winrm powercat rlwrap shellter
sudo git clone https://github.com/zinhart/webshells /home/vagrant/ftphome/webshells
cd /home/vagrant/ftphome/webshells && git submodule update  --init --recursive
sudo git clone https://github.com/zinhart/windows-kernel-exploits.git /home/vagrant/ftphome/windows-kernel-exploits