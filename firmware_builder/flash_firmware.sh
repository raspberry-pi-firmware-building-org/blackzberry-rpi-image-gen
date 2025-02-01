#!/bin/bash 
# flash_firmware.sh

echo -e "Console > Firmware is ready for flash!"

echo -e "Console > READING: Available Drives!"
sudo fdisk -l

read -p "Enter Drive: " drive

echo -e "Console > SET: $drive as Target-Device!!!"


echo -e "Console > Lisiting Available Firmware-Images!!!"
ls -l ../out/*

read -p "Enter Firmware-Image: " image


echo -e "Console > TRY TO FLASH: $drive WITH: $image NOW!!!"
read -p "Continue Flashing?(Yy/Nn) > " yn
case $yn in 
    y|Y) break; continue;;
    n|N) echo -e "Console > Exit Flash-Script!!!"; exit;;
    *) echo "Invalid Input!"; continue;;
esac


echo -e "Console > START FLASHING FIRMWARE!!!"
sudo dd if=$image of=$drive bs=4M status=progress