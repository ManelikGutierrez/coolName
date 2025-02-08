sudo apk update 
sudo apk upgrade
sudo apk add xrdp xorg-server xfce4 xfce4-terminal dbus-x11
sudo rc-update add xrdp default
sudo service xrdp start
sudo iptables -A INPUT -p tcp --dport 3389 -j ACCEPT
sudo ufw allow 3389/tcp
