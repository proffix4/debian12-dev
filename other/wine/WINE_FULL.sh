sudo dpkg --add-architecture i386
sudo apt-get update -y
sudo apt install wine32:i386 -y
sudo apt install wine -y

sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
sudo apt update
sudo apt install --install-recommends winehq-stable -y
sudo apt install --install-recommends winehq-stable:i386 -y

#winecfg -v win11

cd "${HOME}/Downloads"
wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
sudo mv winetricks /usr/bin/winetricks
winetricks pptfonts

winecfg -v win11
