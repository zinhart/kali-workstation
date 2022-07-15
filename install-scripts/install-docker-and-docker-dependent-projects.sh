#!/bin/bash
echo 'INSTALLING DOCKER AND DOCKER DEPENDANT PROJECTS'
sudo apt install -y docker.io
# Java RMI Injections
sudo git clone https://github.com/zinhart/ysoserial.git /opt/ysoserial
 # wrote this in a way that is extensible, add all other projects here so their images can be auto built.
projects=('/opt/ysoserial')
for i in ${projects[@]} ; do echo $i | cut -d '/' -f 3 | sudo xargs docker build $i -t ; done 