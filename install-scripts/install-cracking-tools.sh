#!/bin/bash
echo 'INSTALLING CRACKING TOOLS'
sudo apt install -y crowbar fcrackzip rarcrack
#sql server password hash cracking tools
sudo git clone https://github.com/zinhart/Powershell-PostExploitation.git /opt/powershell-post-exploitation
sudo cp -r /opt/powershell-post-exploitation/Invoke-MDFHashes /home/vagrant/ftphome/invoke-mdfhashes
sudo rm -rf /opt/powershell-post-exploitation