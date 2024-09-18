sudo apt-get update -y
sudo apt-get install apt-transport-https lsb-release curl -y
echo "deb [signed-by=/usr/share/keyrings/i2p-archive-keyring.gpg] https://deb.i2p.net/ $(lsb_release -sc) main" \
  | sudo tee /etc/apt/sources.list.d/i2p.list
curl -o i2p-archive-keyring.gpg https://geti2p.net/_static/i2p-archive-keyring.gpg
gpg --keyid-format long --import --import-options show-only --with-fingerprint i2p-archive-keyring.gpg
sudo cp i2p-archive-keyring.gpg /usr/share/keyrings
sudo apt-get update -y
sudo apt-get install i2p i2p-keyring -y
i2prouter start
