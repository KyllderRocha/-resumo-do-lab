#!/bin/bash

echo "Updating server..."
apt update
apt upgrade -y
apt install apache2 -y
apt install unzip -y

echo "Downloading and Setting the aplication..."

cd /tmp
wget https://github.com/denilsonbonatti/lionux-site-dio/archive/refs/heads/main.zio
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
