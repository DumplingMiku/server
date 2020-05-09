if [[ `id -u` -eq 0 ]] ; then
    echo "Do not run this with sudo (do not run random things with sudo!)." ;
    exit 1 ;
fi

sudo cp ~/server/computer_exam_c/cp/vsftpd.conf /etc/vsftpd.conf 
sudo cp ~/server/computer_exam_c/cp/telnet /etc/xinetd.d/telnet
sudo cp ~/server/computer_exam_c/cp/.profile /root/.profile
sudo cp ~/server/computer_exam_c/cp/lightdm.conf /etc/lightdm/lightdm.conf
sudo cp ~/server/computer_exam_c/cp/dhcpd.conf /etc/dhcp/dhcpd.conf
sudo cp ~/server/computer_exam_c/clear.sh ~/Desktop/
sudo cp ~/server/computer_exam_c/clear-root.sh /root/Desktop/
sudo service vsftpd restart
sudo service xinetd restart

