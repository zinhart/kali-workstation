#!/bin/bash
echo 'INSTALLING ENUMERATION TOOLS'
sudo apt install -y snmpenum gobuster
# JAVA RMI enumation tools
# sudo git clone https://github.com/zinhart/remote-method-guesser.git /opt/remote-method-guesser
# we either need to make a dockerfile for the rmg, create a mvn build environment, or use the prebuilt jar which I don't like.
# Until I get around to making a dockerfile we will use the prebuilt jar.
sudo curl -L https://github.com/qtc-de/remote-method-guesser/releases/download/v4.2.2/rmg-4.2.2-jar-with-dependencies.jar -o /opt/rmg.jar
# I've found the most reliable way to transfer enum scripts/binaries is ftp.
# So it makes to store these local enumeration scripts in the ftp user home directory.
# Consequently this means that the ftp user home directory must exist, which means that this script cannot be run fore configure-pureftpd.sh
# which is a hidden dependency that I don't like. So to be safe we create ftp user home if it does not exist
mkdir -p /home/vagrant/ftphome
echo 'INSTALLING LOCAL ENUMERATION TOOLS'
# possibly will have this be a cron job in the future
sudo curl -L https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh -o /home/vagrant/ftphome/linpeas.sh
sudo curl -L https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEASany_ofs.exe -o /home/vagrant/ftphome/winpeas.exe
# My active directory scripts created during pwk.
# Repo needs to be public or we need to pass a personal access token 
sudo git clone https://github.com/zinhart/domain-enumeration.git /home/vagrant/ftphome/domain-enumeration
# kerberoasting script
sudo curl -L https://raw.githubusercontent.com/EmpireProject/Empire/master/data/module_source/credentials/Invoke-Kerberoast.ps1 -o /home/vagrant/ftphome/invoke-kerberoast.ps1
# sysinternals
sudo curl -L https://download.sysinternals.com/files/SysinternalsSuite.zip -o /home/vagrant/ftphome/sysinternals.zip
sudo unzip /home/vagrant/ftphome/sysinternals.zip -d /home/vagrant/ftphome/sysinternals
sudo rm /home/vagrant/ftphome/sysinternals.zip
# mimikatz in memory
sudo curl -L https://raw.githubusercontent.com/samratashok/nishang/master/Gather/Invoke-Mimikatz.ps1 -o /home/vagrant/ftphome/invoke-mimikatz.ps1
# another wordlist that has many fuzzing parameters. The command injection wordlist came in handy on pwk dev net adam.
sudo git clone https://github.com/carlospolop/Auto_Wordlists.git /opt/auto-wordlists
# install and configure snmp
sudo apt -y install snmp-mibs-downloader
sudo cp /etc/snmp/snmp.conf /etc/snmp/snmp.conf.bak;
sudo sed -i 's/mibs :/#mibs:/' /etc/snmp/snmp.conf
# pspy
sudo curl -L https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy32 -o /home/vagrant/ftphome/pspy32
sudo curl -L https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy64 -o /home/vagrant/ftphome/pspy64
# compgen - lists all available commands
#sudo apt install compgen