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
# DONE need set set wesng(https://github.com/bitsadmin/wesng.git) for windows kernel exploits and add it to the path variable.
# DONE add wwwolf php webshell to tools https://github.com/WhiteWinterWolf/wwwolf-php-webshell
# Seclists wordlist
# command injection wordlists
# [hacktricks one](https://github.com/carlospolop/Auto_Wordlists/blob/main/wordlists/command_injection.txt)
# [hackers club](https://hackersonlineclub.com/command-injection-cheatsheet/)
# [payloadbox](https://github.com/payloadbox/command-injection-payload-list)