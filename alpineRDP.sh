apk update 
apk upgrade
apk add xrdp xorg-server xfce4 xfce4-terminal dbus-x11
rc-update add xrdp default
service xrdp start
iptables -A INPUT -p tcp --dport 3389 -j ACCEPT
ufw allow 3389/tcp
