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
# to do
# need set set wes for windows kernel exploits and add it to the path variable.