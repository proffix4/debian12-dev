#!/bin/sh
sudo apt-get update -y && sudo apt full-upgrade -y

sudo apt install thunderbird thunderbird-l10n-ru birdtray gthumb retext qbittorrent -y
sudo apt install pdfarranger drawing vlc ffmpeg obs-studio gtkhash img2pdf -y
sudo apt install curl wget xfburn gparted synaptic gdebi smartmontools -y
sudo apt install p7zip-full unace arj cabextract -y
sudo apt install ksnip riseup-vpn telegram-desktop redshift redshift-gtk shotcut -y
sudo apt install pavucontrol ntpdate ntp imagemagick -y
sudo apt install rclone-browser -y
sudo -v ; curl https://rclone.org/install.sh | sudo bash
sudo apt autoremove -y