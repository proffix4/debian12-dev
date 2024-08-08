sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
#sudo apt install plasma-discover-backend-flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flatseal -y
