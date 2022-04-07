#!/bin/sh
echo 'INSTALLING ENUMERATION TOOLS'
sudo apt install -y snmpenum gobuster
# I've found the most reliable way to transfer enum scripts ftp.
# So it makes to store these local enumeration scripts in the ftp user home directory.
# Consequently this means that the ftp user home directory must exist, which means that this script cannot be run fore configure-pureftpd.sh
# which is a hidden dependency that I don't like. So to be safe we create ftp user home if it does not exist
mkdir -p /home/vagrant/ftphome
echo 'INSTALLING LOCAL ENUMERATION TOOLS'
# possibly will have this be a cron job in the future
curl -L https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh -o /home/vagrant/ftphome/linpeas.sh
curl -L https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEASany_ofs.exe -o /home/vagrant/ftphome/winpeas.exe
# My active directory scripts created during pwk.
# Repo needs to be public or we need to pass a personal access token 
git clone https://github.com/zinhart/domain-enumeration.git /home/vagrant/ftphome/domain-enumeration
# JAVA RMI enumation tools
git clone https://github.com/zinhart/remote-method-guesser.git /opt/remote-method-guesser

