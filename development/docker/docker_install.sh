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
docker run hello-world

# Signing in with Docker Desktop for Linux
sudo apt install pass -y
gpg --generate-key
pass init ВАШ_ОТКРЫТЙ_КЛЮЧ_КОТОРЫЙ_ВЫ_СГЕНЕРИРОВАЛИ_С_ВАШЕЙ_ПОЧТОЙ_АККАУНТА_DOCKER
