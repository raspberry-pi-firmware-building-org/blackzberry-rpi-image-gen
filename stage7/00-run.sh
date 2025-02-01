#!/bin/bash 



libs="/usr/share/libarys/"
wp="/usr/share/libarys/wiringpi-gpio"


export gc="git clone "

status info "Cloning GPIO Control Libarys!"



status info "Creaing Libary-Collection Folder: $lib \n $wp"
mkdir -p $libs 
mkdir -p $wp 
