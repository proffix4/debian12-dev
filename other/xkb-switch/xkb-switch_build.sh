sudo apt install libxkbfile-dev -y
mkdir build && cd build
cmake ..
make
sudo make install
sudo make DESTDIR=$HOME/.local install
sudo ldconfig
