if [[ `id -u` -eq 0 ]] ; then
    echo "Do not run this with sudo (do not run random things with sudo!)." ;
    exit 1 ;
fi

sudo cp ~/server/computer_exam_c/cp/vsftpd.conf /etc/vsftpd.conf 
sudo cp ~/server/computer_exam_c/cp/telnet /etc/xinetd.d/telnet
sudo cp ~/server/computer_exam_c/cp/.profile /root/.profile
#sudo cp ~/server/computer_exam_c/cp/lightdm.conf /etc/lightdm/lightdm.conf
sudo cp ~/server/computer_exam_c/cp/dhcpd.conf /etc/dhcp/dhcpd.conf
sudo cp ~/server/computer_exam_c/clear.sh ~/Desktop/
#sudo cp -r ~/server/computer_exam_c/clear-root.sh /root/Desktop/
sudo chmod 777 ~/Desktop/clear.sh
sudo service vsftpd restart
sudo service xinetd restart
cd ~/server/computer_exam_c/www
sudo cp -r * /var/www/html
history -c
~/server/computer_exam_c/adduser.sh
