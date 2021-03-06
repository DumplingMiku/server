# 要使用請先安裝git
`sudo apt install git`  

# 安裝完後輸入
`git clone https://github.com/DumplingMiku/server.git`  

如欲無法安裝，重起系統即可解決  

安裝前進入root模式 一般為 `sudo su`
  
安裝nginx|安裝php7.2|安裝MariaDB 使用web.sh  

安裝webmin後台 使用webmin.sh  

安裝寶塔後台 使用baota.sh  

安裝電郵系統 使用mail.sh  

安裝遠端 使用vnc.sh  

# 安裝完寶塔面板後可以進入頁面安裝服務套件，不必再安裝web.sh

# mail.sh 使用事項  
因為它會打亂網站，所以要另找其他伺服器製作，或先安裝完再做其他網站架設。  

安裝前先在 `/etc/hosts` 第一行新增 127.0.0.1   網域 主機名 localhost  
主機名可打 `hostname -f` 查詢，舉例 127.0.0.1    example.com example localhost  

mail 安裝可參考 https://www.linuxpilot.com/open-source-email-server-hands-on-iredmail  

# 給予使用者所有sql全縣  
`Grant All Privileges On *.* To *@localhost Identified By '*' With Grant Option;` 
*號可以任意更換，如名稱:123，密碼:456  
`Grant All Privileges On *.* To 123@localhost Identified By '456' With Grant Option;`  

# 讓webmin可以外網訪問，這方法不安全慎用  
> 使用vim   `sudo vim /etc/webmin//miniserv.conf`  
> 使用nano  `sudo nano /etc/webmin/miniserv.conf`  
> 使用gedit `sudo gedit /etc/webmin/miniserv.conf`  

找到 "ssl=1" 把它改成 "ssl=0" ，*1*為啟用*0*為停用。  

# vnc  
安裝完成後執行`vncserver`創建密碼，需低於八位數
vnc安裝可參考  https://www.tecmint.com/install-and-configure-vnc-server-on-ubuntu/  