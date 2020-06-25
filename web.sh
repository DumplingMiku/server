if [[ `id -u` -eq 0 ]] ; then
    echo "Do not run this with sudo (do not run random things with sudo!)." ;
    exit 1 ;
fi

sudo apt install php7.2 -y
sudo apt install php-pear php7.2-curl php7.2-dev php7.2-gd php7.2-mbstring php7.2-zip php7.2-mysql php7.2-xml php7.2-fpm -y
sudo apt install nginx -y
sudo apt install nginx-extras -y
sudo apt install mariadb-server -y