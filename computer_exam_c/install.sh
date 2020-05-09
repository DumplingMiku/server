if [[ `id -u` -eq 0 ]] ; then
    echo "Do not run this with sudo (do not run random things with sudo!)." ;
    exit 1 ;
fi

sudo apt install apache2 vsftpd openssh-server xinetd telnetd isc-dhcp-server
./change.sh