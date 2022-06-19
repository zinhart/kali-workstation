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
bash install-path-modifications.sh;
# to do
# Add this jsp webshell, very nice! https://github.com/tennc/webshell/blob/master/jsp/shell.jsp
# Add squid, set /etc/squid/squid.conf, set squid auth configure.
# command injection wordlists
# [hackers club](https://hackersonlineclub.com/command-injection-cheatsheet/)
# [payloadbox](https://github.com/payloadbox/command-injection-payload-list)
# verify wine install
# add windows kernel exploits https://github.com/zinhart/windows-kernel-exploits.git
# add strongswan vpn client