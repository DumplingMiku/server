#!/bin/bash
#
for((i=1;i<=9;i=i+1))
do
        user1="t0$i"
        pass="passwd0$i"
        echo "t0$i:passwd0$i" | sudo chpasswd
        sudo rm -R /var/www/html/$user1
        sudo rm -R /home/$user1
        sudo mkdir /home/$user1
        sudo mkdir /home/$user1/WEB
	sudo ln -ns /home/$user1/WEB /var/www/html/$user1
done
for((i=10;i<=60;i=i+1))
do
        user1="t$i"
        pass="passwd$i"
        echo "t$i:passwd$i" | sudo chpasswd
	sudo rm -R /var/www/html/$user1
        sudo rm -R /home/$user1
        sudo mkdir /home/$user1
        sudo mkdir /home/$user1/WEB
        sudo ln -ns /home/$user1/WEB /var/www/html/$user1
done
