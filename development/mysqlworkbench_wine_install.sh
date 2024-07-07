# wine
sudo dpkg --add-architecture i386 
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
sudo apt update
sudo apt install --install-recommends winehq-stable -y

# winetricks
cd "${HOME}/Downloads"
wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
sudo mv winetricks /usr/bin/winetricks

# MS .Net 4.8 + MS Fonts
winetricks dotnet48 allfonts 

# далее:
# изменить dpi экрана на 110 в winetricks
# 1) wine VC_redist.x64.exe
# 2) wine mysql-workbench-community-8.0.38-winx64.msi
# 3) скопировать в папку установленного в Wine Workbench файлы chcp.com и ulib.dll
