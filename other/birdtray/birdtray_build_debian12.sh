sudo apt install libx11-dev qtbase5-dev libqt5opengl5-dev libqt5svg5-dev qttools5-dev libqt5x11extras5-dev -y
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build .
sudo cp -p birdtray /bin