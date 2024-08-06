#!/bin/sh
sudo apt-get update -y && sudo apt full-upgrade -y

#--------------------------------------------------------------------------------------
echo BASE soft install ...

sudo apt install thunderbird thunderbird-l10n-ru birdtray retext qbittorrent -y
sudo apt install pdfarranger drawing vlc ffmpeg obs-studio gtkhash img2pdf -y
sudo apt install curl wget xfburn gparted synaptic gdebi smartmontools -y
sudo apt install p7zip-full unace arj cabextract -y
sudo apt install ksnip riseup-vpn telegram-desktop redshift redshift-gtk shotcut -y
sudo apt install pavucontrol ntpdate ntp imagemagick cantata mpd strawberry -y
sudo apt install neofetch libavcodec-extra -y
sudo apt install lightdm-settings -y
#sudo apt install systemd-timesyncd nala stacer -y
sudo apt install rclone-browser -y
sudo -v ; curl https://rclone.org/install.sh | sudo bash
sudo apt autoremove -y

#--------------------------------------------------------------------------------------
echo Far2l install ...

sudo apt-get install libwxgtk-webview3.2-dev libx11-dev libxi-dev libpcre3-dev libxerces-c-dev libuchardet-dev libssh-dev libssl-dev libsmbclient-dev libnfs-dev libneon27-dev libarchive-dev cmake pkg-config g++ git checkinstall -y
git clone https://github.com/elfmz/far2l
cd far2l
mkdir build
cd build
cmake -DUSEWX=yes -DCMAKE_BUILD_TYPE=Release ..
make -j$(nproc --all)
sudo make install
sudo ldconfig

#--------------------------------------------------------------------------------------
echo Wine + winetricks install ...

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

winecfg -v win11

cd "${HOME}/Downloads"
wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
sudo mv winetricks /usr/bin/winetricks
winetricks pptfonts

winecfg -v win11

#--------------------------------------------------------------------------------------
echo SNAP + snap soft install ...

sudo apt update -y
sudo apt install snapd
sudo snap install snap-store
snap install mysql-workbench-community
#snap run mysql-workbench-community

# BASE -----------------------------------------
echo PRO soft install ...

sudo apt-get install git -y
sudo apt install default-jdk -y
sudo apt install build-essential gdb libgtk-3-dev -y
sudo apt install nasm edb-debugger -y
sudo apt install checkinstall -y

# укажите ваше имя и почту ниже для git
git config --global user.name "proffix4"
git config --global user.email "proffix4@gmail.com"

# ANDROID -----------------------------------------
echo Android soft install ...

sudo apt install qemu-kvm android-tools-adb -y

# укажите ваш логин всесто tsn ниже
sudo adduser tsn kvm
sudo chown tsn /dev/kvm
sudo chmod o+x /dev/kvm
sudo chmod 777 -R /dev/kvm
sudo usermod -aG plugdev $LOGNAME

# PYTHON -----------------------------------------
echo Python soft install ...

sudo rm /usr/lib/python3.*/EXTERNALLY-MANAGED
python3 -m pip install --upgrade pip

sudo apt install python3-pip python3-pyqt5 python3-pyqt5.qtsql qttools5-dev-tools -y
sudo apt install pyqt5-dev-tools python3-dev libjpeg62-turbo-dev python3-tk python3-matplotlib -y
pip3 install setuptools numpy pandas openpyxl xlrd
pip3 install python-docx XlsxWriter openpyxl
pip3 install ebooklib pykson bs4 pygame
pip3 install requests html2text beautifulsoup4 wget 
pip3 install Pillow 
sudo pip3 pyinstaller
pip3 install mysql-connector-python pykson

# sudo apt search python3-wx
sudo apt-get install python3-wxgtk-media4.0 python3-wxgtk-webview4.0 python3-wxgtk4.0 python3-wxmplot python3-wxutils -y

# JAVA -----------------------------------------
echo Java soft install ...

sudo apt install openjdk-17-jdk openjdk-17-jre
java -version

# .NET -----------------------------------------
echo .Net soft install ...

wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-8.0

# DB -----------------------------------------
echo Database soft install ...

sudo apt install sqlitebrowser -y

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

# Docker -----------------------------------------
echo Docker soft install ...

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y

# Install Docker
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Add USER to Docker
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# Test Docker
sudo docker run hello-world

# For signing
sudo apt install pass -y

#--------------------------------------------------------------------------------------
echo Flatpak + flathub soft install ...

sudo apt update -y
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.gnome.gThumb -y

# Final -----------------------------------------
echo Final ...

sudo apt-get update -y && sudo apt full-upgrade -y
sudo apt autoremove -y
sudo fstrim -av
