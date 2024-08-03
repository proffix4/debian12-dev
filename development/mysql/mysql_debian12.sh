#!/bin/sh
sudo apt-get update -y && sudo apt full-upgrade -y
sudo apt install wget -y
cd /tmp
wget https://repo.mysql.com//mysql-apt-config_0.8.30-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.30-1_all.deb
sudo apt update -y
sudo apt install mysql-server -y
apt policy mysql-server
sudo systemctl status mysql 
sudo systemctl start mysql
sudo systemctl enable mysql

sudo mysql_secure_installation
