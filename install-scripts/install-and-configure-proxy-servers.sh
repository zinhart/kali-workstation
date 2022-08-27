echo 'INSTALL AND CONFIGURING PROXY SERVERS'
sudo apt install -y squid
sudo git clone https://github.com/zinhart/squid-proxy.git /opt
sudo mv /etc/squid/squid.conf /etc/squid/squid.conf.bak
sudo cp /opt/squid-proxy/squid.conf /etc/squid
