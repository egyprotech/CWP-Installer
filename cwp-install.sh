#!/bin/bash
yum -y install wget -y
yum -y update
sudo fallocate -l 8G /swapfile
sudo dd if=/dev/zero of=/swapfile count=8192 bs=1MiB
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
free -m
yum install nano -y
sudo nano /etc/fstab
echo "/swapfile   swap    swap    sw  0   0" >> /etc/fstab
sudo yum install screen wget -y
screen
wget http://centos-webpanel.com/cwp-el7-latest
sh cwp-el7-latest