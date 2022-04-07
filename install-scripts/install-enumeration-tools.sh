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


