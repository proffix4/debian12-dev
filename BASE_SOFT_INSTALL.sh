#!/bin/sh
sudo apt-get update -y && sudo apt full-upgrade -y

sudo apt install thunderbird thunderbird-l10n-ru birdtray gthumb retext qbittorrent -y
sudo apt install pdfarranger drawing vlc ffmpeg obs-studio gtkhash img2pdf -y
sudo apt install curl wget xfburn gparted dosfstools mtools synaptic gdebi smartmontools -y
sudo apt install p7zip-full unace arj cabextract -y
sudo apt install ksnip riseup-vpn telegram-desktop redshift redshift-gtk shotcut -y
sudo apt install pavucontrol ntpdate ntp imagemagick cantata mpd strawberry -y
sudo apt install neofetch libavcodec-extra mc -y
sudo apt install lightdm-settings dconf-editor -y
sudo apt install systemd-timesyncd -y
sudo apt install iotop pidgin-otr -y
sudo apt install geeqie -y
sudo apt install hdparm -y
sudo apt-get install cups foomatic-db -y
#sudo apt install nala stacer -y
sudo apt install rclone-browser -y
sudo -v ; curl https://rclone.org/install.sh | sudo bash
gsettings set org.gnome.nm-applet disable-connected-notifications "true"
gsettings set org.cinnamon.desktop.wm.preferences button-layout 'icon,menu:minimize,maximize,close'
sudo apt autoremove -y
