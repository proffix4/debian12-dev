sudo apt install libgdk-pixbuf-xlib-2.0-0 libgdk-pixbuf2.0-0 -y
wget https://github.com/cryptomator/cryptomator/releases/download/1.14.0/cryptomator_1.14.0-0ppa1_amd64.deb
sudo dpkg -i cryptomator_1.14.0-0ppa1_amd64.deb
rm cryptomator_1.14.0-0ppa1_amd64.deb
sudo apt update -y
sudo apt install cryptomator -y
