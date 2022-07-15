# Kali Workstation

## Intro 
This repo  auto builds a kali vm with my preferred pentesting tools.  
It comes with:
- tmux configured
- virtual ftp account configured through pure-ftp
- proxychains, chisel, rinetd, sshuttle, httptunnel
  - An account only for tunneling
- cross compiling tools
- shellter for payload injection
- ysoserial configed through docker
- For the full list read the /install-scripts

## Prerequisites
- chocolatey 
- vmware workstation
```
choco install vagrant vagrant-vmware-utility -y
```
## Usage
This project uses the vmware provider
Go to project root and
``` powershell
vagrant up
```