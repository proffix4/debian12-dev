#!/bin/sh
flatpak install flathub org.gnome.gThumb -y
sudo flatpak override --filesystem=host:rw org.gnome.gThumb
