#!/bin/sh
sudo apt-get update -y && sudo apt full-upgrade -y
sudo apt autoremove -y

flatpak update -y

sudo killall snap-store -q
sudo snap refresh

sudo fstrim -av