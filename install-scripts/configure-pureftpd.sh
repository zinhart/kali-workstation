#!/bin/bash
echo 'CONFIGURING PURE-FTPD USER'
FTPUSER="trivalante"
#(1) Fetch pure-ftpd from aptitude.
#sudo apt install pure-ftpd pure-ftpd-common
#(2) Create a group for Pure-FTPD.
sudo groupadd ftpgroup
#(3) Add a user to the group (revoke the home directory and deny access to shell login).
sudo useradd -g ftpgroup -d /dev/null -s /bin/false ftpuser
#(4) Create a directory for your ftp-files (you can also specify a specific user e.g.: /root/ftphome/bob).
mkdir -p /home/vagrant/ftphome
#(5) Create a ftp-user, in our example $FTPUSER (again you can set "-d /home/vagrant/ftphome/$FTPUSER" if you wish).
(echo ${FTPUSER}; echo ${FTPUSER}) | sudo pure-pw useradd ${FTPUSER} -u ftpuser -g ftpgroup -d /home/vagrant/ftphome
#(6) Update the ftp database after adding our new user.
sudo pure-pw mkdb
#(7) This is optional, you can list the users in the database, and enumerate specific users...
#pure-pw list
#pure-pw show bob
#(8) We set symbolic links for some files, so that auth will work with virutal users OR system accounts.
sudo ln -s /etc/pure-ftpd/conf/PureDB /etc/pure-ftpd/auth/PureDB
#(11) The specified ftp directory (and all it's sub-direcotries) needs to be owned by "ftpuser".
sudo chown -R ftpuser:ftpgroup /home/vagrant/ftphome
#(12) disable pam and unix auth (or whats the point in having virtual users)
sudo rm /etc/pure-ftpd/auth/70pam
sudo rm /etc/pure-ftpd/auth/65unix
#(13) Finally we restart Pure-FTPD. You should now be able to log in with your created user account.
sudo systemctl restart pure-ftpd
# have this run as a service enabled on reboot
sudo systemctl enable pure-ftpd