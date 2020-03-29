wget https://codeload.github.com/iredmail/iRedMail/tar.gz/1.1
tar zxvf iRedMail-1.1.tar.gz
sudo cp -r ./iRedMail-1.1 /var/www/html/mail
sudo bash /var/www/html/mail/iRedMail.sh
sudo rm -r ./iRedMail-1.1