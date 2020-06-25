if [[ `id -u` -eq 0 ]] ; then
    echo "Do not run this with sudo (do not run random things with sudo!)." ;
    exit 1 ;
fi

sudo sh -c "echo 'deb http://download.webmin.com/download/repository sarge contrib' >> /etc/apt/sources.list"
wget http://www.webmin.com/jcameron-key.asc
sudo apt-key add jcameron-key.asc
sudo apt update 
sudo apt list --upgradable
sudo rm -r jcameron-key.asc
sudo apt install webmin -y