export DEBIAN_FRONTEND=noninteractive;
sudo apt update;
bash configure-shell-envs.sh;
bash install-cross-compilation-tools.sh;
bash configure-python-venv.sh;
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
bash install-and-configure-proxy-servers.sh;
bash configure-login-shell.sh;
# to do
# add bloodhound(from repo NOT kali package) need to find a way to auto config neo4j
# install jd-gui
# install jq # can basically turn json to list
# install c# cross compiling tools
# probably want to install selenium via python and possibly .net selenium package: https://github.com/adamdriscoll/selenium-powershell.git
# Install PowershellRedTeam Tools: https://github.com/zinhart/PowerShell-Red-Team