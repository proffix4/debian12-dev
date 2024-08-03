sudo apt install libx11-dev libqt6core6 qt6-base-dev libqt6widgets6 qt6-svg-dev libx11-xcb-dev -y
git clone https://github.com/gyunaev/birdtray
cd birdtray
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr ..
cmake --build .
