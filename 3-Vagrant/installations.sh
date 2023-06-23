#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get -y install apache2
sudo a2enmod rewrite
sudo apt-get install unzip -y

cd /tmp
wget https://github.com/robson-tazinaffo/projetos-web/releases/download/cv-online/curriculo-online.zip
unzip curriculo-online.zip
cp -R * /var/www/html/

sudo service apache2 restart