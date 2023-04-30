#! /bin/bash

echo "Atualizando"

apt update -y
apt upgrade -y

echo "Instalando"

apt install apache2 -y
apt install unzip -y

echo "copiando projeto"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "unzipando e copiando projeto"
unzip main.zip

cd linux-site-dio-main 
cp * -r /var/www/html/

echo "Finalizado!!"
