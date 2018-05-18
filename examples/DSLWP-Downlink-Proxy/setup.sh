#!/bin/bash

if [ $UID -ne 0 ]; then
    echo "Superuser privileges are required to run this script."
    echo "e.g. \"sudo $0\""
    exit 1
fi


basepath=$(cd `dirname $0`; pwd)

echo $basepath > /usr/local/lib/python2.7/dist-packages/grc.pth

echo "[Desktop Entry]
Name=LilacProxy
Exec=sh "$PWD"/launch.sh
Icon="$PWD"/logo/mun_icon.ico
Terminal=false
Type=Application
Name[en_US]=dslwp_proxy.desktop">$PWD/lilacsat_dslwp.desktop
sudo chmod 777 $PWD/lilacsat_dslwp.desktop


