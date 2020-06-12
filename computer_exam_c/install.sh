if [[ `id -u` -eq 0 ]] ; then
    echo "Do not run this with sudo (do not run random things with sudo!)." ;
    exit 1 ;
fi

sudo apt update
sudo apt install apache2 vsftpd openssh-server xinetd telnetd isc-dhcp-server gedit net-tools -y
sudo chmod 777 ~/server/computer_exam_c/*
~/server/computer_exam_c/change.sh
