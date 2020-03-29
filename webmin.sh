sudo echo 'deb http://download.webmin.com/download/repository sarge contrib' >> /etc/apt/sources.list
wget http://www.webmin.com/jcameron-key.asc
sudo apt-key add jcameron-key.asc
sudo apt update 
sudo apt list --upgradable
sudo apt install webmin 