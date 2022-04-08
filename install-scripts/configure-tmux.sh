#!/bin/bash
echo 'installing tmux config';
sudo git clone https://github.com/zinhart/tmux-config.git /opt/tmux-config;
sudo cp /opt/tmux-config/.tmux.conf /home/vagrant;
sudo rm -rf /opt/tmux-config;