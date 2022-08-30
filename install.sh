#!/bin/bash


EXIT_SUCCESS=0
EXIT_FAILURE=1

echo "Hello in installation Packet Tracer in Gnu/Linux
echo "Preparing to install 
# run as root
[ "$EUID" -ne 0 ] \
  && echo "root required to execute this script." >&2 \
  && exit $EXIT_FAILURE

for packettracer_package in *.deb
do
  DIR="/tmp/packettracer-installation-tmp-dir/"
  if [ -d "$DIR" ]; then
  rm -rf "$DIR"
else
  mkdir -pv  /tmp/packettracer-installation-tmp-dir/
fi

cp -v "$packettracer_package" "$DIR" 
cd "$DIR"
echo "moving to `pwd` to install"
ar -xv "$packettracer_package" 
mkdir control
tar -C control -Jxf control.tar.xz
mkdir data
tar -C data -Jxf data.tar.xz
cd data
# Copy files of installation 
cp -rv usr /
cp -rv opt / 
done


# installation Desktop
echo "Installing icons in menu"
xdg-desktop-menu install /usr/share/application/cisco-pt.desktop
xdg-desktop-menu install /usr/share/application/cisco-ptsa.desktop
update-mime-database /usr/share/mime
gtk-update-icon-cache -ft /usr/share/icons/gnome
xdg-mime default cisco-ptsa.desktop x-scheme-hanler/pttp

# Finalization installation 
rm -rfv /tmp/packettracer-installation-tmp-dir
echo ""
echo "If there any issue please report in Github @Mohammed-Alnahdi"
echo ""
echo "or send an email to mohammed-alnahdi@protonmail.com"
cat << 'EOF'
======================================================================
if you use Window Manager instead Desktop Environment such as 
Suckless Dwm, i3, or AwesomeWM run this command by root:
ln -sf /opt/pt/packettracer /usr/bin
=====================================================================
EOF
echo ""
echo "press <Enter> to Finish Installation"
echo ""
read
echo "Have a nice studying, Good Bye!"
echo ""
