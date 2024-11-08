sudo apt install wget libx11-dev qtbase5-dev libqt5opengl5-dev libqt5svg5-dev qttools5-dev libqt5x11extras5-dev libx11-xcb-dev -y
wget https://github.com/gyunaev/birdtray/archive/refs/tags/v1.11.4.tar.gz
tar -xvf v1.11.4.tar.gz
cd birdtray-1.11.4
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build .
sudo cp -p birdtray /bin
cd ..
cd ..
rm -r birdtray-1.11.4
rm v1.11.4.tar.gz 