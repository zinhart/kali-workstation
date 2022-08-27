export DEBIAN_FRONTEND=noninteractive;
bash install-cross-compilation-tools.sh;
bash install-port-redirection-tunneling-tools.sh;
bash install-file-transfer-tools.sh;
bash configure-pureftpd.sh;
bash install-shell-and-shellcode-tools.sh;
bash install-enumeration-tools.sh;
bash install-docker-and-docker-dependent-projects.sh;
bash install-cracking-tools.sh;
bash install-misc.sh;
bash install-exploit-frameworks-vulnerability-scanners.sh;
bash configure-tmux.sh;
# this is no longer necesarry because we will use virtual env for impacket and all other python packages
#bash install-path-modifications.sh;
bash configure-python-venv.sh;
# to do
# Add this jsp webshell, very nice! https://github.com/tennc/webshell/blob/master/jsp/shell.jsp done
# Add squid, set /etc/squid/squid.conf, set squid auth configure. Not going to do auth at this time, done
# command injection wordlists
# [hackers club](https://hackersonlineclub.com/command-injection-cheatsheet/) unnecesary
# [payloadbox](https://github.com/payloadbox/command-injection-payload-list) unnecasary
# verify wine install
# add windows kernel exploits https://github.com/zinhart/windows-kernel-exploits.git done
# add strongswan vpn client done
# add bloodhound(from repo NOT kali package)
# add: snmp scripts sudo apt install snmp-mibs-downloader done
# also we want the mibs strings english not the numbers so we need to have a line like
# sudo cp /etc/snmp/snmp.conf /etc/snmp/snmp.conf.bak;
# sudo sed -i 's/mibs :/#mibs:/' /etc/snmp/snmp.conf
# add evolution mail client
# Offsec Profesional report templates: apt install texlive-latex-recommended texlive-fonts-extra texlive-latex-extra pandoc p7zip-full
# Add my fork of noraj unnecesary
# compgen - list every possible command that can be auto completed done
# setup python virtual env done