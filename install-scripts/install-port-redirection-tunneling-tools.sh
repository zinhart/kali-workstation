#!/bin/bash
# port redirection/tunneling
echo 'INSTALLING PORT REDIRECTION AND TUNNELING TOOLS'
sudo apt install -y sshuttle httptunnel rinetd chisel proxychains
# plink has a dependency on med-config which just fucks the unattended install, have not found a way around this.
# add an account ONLY for tunneling. We accomplish this by setting the accounts login shell to /bin/false
# create the account
sudo useradd -m tunnelboy
# set password
(echo tunnelboy; echo tunnelboy) | sudo passwd tunnelboy
# restrict to only be used for tunneling
sudo chsh --shell /bin/false tunnelboy
