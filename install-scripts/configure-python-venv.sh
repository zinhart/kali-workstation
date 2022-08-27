echo 'INSTALLING AND CONFIGURING IMPACKET IN PYTHON VIRTUALENV'
sudo git clone https://github.com/SecureAuthCorp/impacket.git /opt
sudo apt -y install virtualenv
virtualenv impacket-venv
source impacket-venv/bin/activate
cd impacket
pip3 install -r requirements.txt
pip3 install .
cd ../impacket-venv/bin