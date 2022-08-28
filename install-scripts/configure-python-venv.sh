echo 'INSTALLING PYTHON VIRTUALENV'
echo "$(whoami)";
echo 'INSTALLING AND CONFIGURING IMPACKET IN PYTHON VIRTUALENV'
sudo apt -y install virtualenv
virtualenv /home/vagrant/Desktop/python-venv
git clone https://github.com/SecureAuthCorp/impacket.git /home/vagrant/Desktop/impacket
source /home/vagrant/Desktop/python-venv/bin/activate
cd /home/vagrant/Desktop/impacket
pip3 install chardet
pip3 install -r requirements.txt
pip3 install .
cd /home/vagrant/Desktop/python-venv
echo 'INSTALLING AND CONFIGURING WESNG IN PYTHON VIRTUALENV'
pip install wesng
#windows exploit suggester next generation
./bin/wes --update
rm -rf /home/vagrant/Desktop/impacket
