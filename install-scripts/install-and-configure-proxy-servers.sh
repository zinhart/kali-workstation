echo 'INSTALL AND CONFIGURING PROXY SERVERS'
sudo apt install -y squid
sudo git clone https://github.com/zinhart/squid-proxy.git /opt/squid-proxy
sudo mv /etc/squid/squid.conf /etc/squid/squid.conf.bak
sudo cp /opt/squid-proxy/squid.conf /etc/squid
sudo systemctl restart squid