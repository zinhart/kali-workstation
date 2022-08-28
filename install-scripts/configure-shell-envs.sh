echo 'CONFIGURING ZSH ENVIRONMENT'
echo 'export HISTORY_IGNORE="(&|ls|[bf]g|exit|history)"' >> /home/vagrant/.zshrc
echo 'setopt HIST_EXPIRE_DUPS_FIRST' >> /home/vagrant/.zshrc
echo 'setopt HIST_IGNORE_DUPS' >> /home/vagrant/.zshrc
echo 'setopt HIST_IGNORE_ALL_DUPS' >> /home/vagrant/.zshrc
echo 'setopt HIST_IGNORE_SPACE' >> /home/vagrant/.zshrc
echo 'setopt HIST_FIND_NO_DUPS' >> /home/vagrant/.zshrc
echo 'setopt HIST_SAVE_NO_DUPS' >> /home/vagrant/.zshrc
echo 'alias history="history -f"' >> /home/vagrant/.zshrc 
echo 'CONFIGURING BASH ENVIRONMENT'
echo 'export HISTIGNORE="&:ls:[bf]g:exit:history"' >> /home/vagrant/.bashrc
echo 'export HISTCONTROL=ignoredups' >> /home/vagrant/.bashrc
echo 'export HISTTIMEFORMAT="%F %T "' >> /home/vagrant/.bashrc