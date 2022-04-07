#!/bin/sh
# port redirection/tunneling
echo 'INSTALLING PORT REDIRECTION AND TUNNELING TOOLS'
sudo apt install -y httptunnel rinetd chisel proxychains
# plink has a dependency on med-config which just fucks the
# unattended install, have not found a way around this.