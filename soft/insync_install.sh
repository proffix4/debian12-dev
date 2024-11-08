wget https://cdn.insynchq.com/builds/linux/3.9.4.60020/insync_3.9.4.60020-bookworm_amd64.deb
sudo dpkg -i insync_3.9.4.60020-bookworm_amd64.deb
rm insync_3.9.4.60020-bookworm_amd64.deb
sudo apt update -y
sudo apt install insync insync-nemo -y
