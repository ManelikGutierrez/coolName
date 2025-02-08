#GUI Install
setup-xorg-base
# Terminal install
apk add st
echo "Installing desktop GUI"
apk add alpine-desktop
apk add xfce4
apk add thunar-volman
rc-service dbus start
rc-update add dbus
rc-update add udev
reboot now