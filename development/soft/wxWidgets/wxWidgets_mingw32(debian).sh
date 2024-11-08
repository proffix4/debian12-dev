sudo apt install mingw-w64 -y
mkdir buildmingw
cd buildmingw
../configure --prefix=/usr/x86_64-w64-mingw32/ --host=x86_64-w64-mingw32 --build=x86_64-linux --disable-shared --with-msw CFLAGS=-I/usr/x86_64-w64-mingw32/include/ --enable-unicode
make -j$(nproc --all)
sudo make install
sudo ldconfig
