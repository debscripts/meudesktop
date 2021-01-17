#!/bin/bash
wget https://github.com/ice-wm/icewm/releases/download/2.0.1/icewm-2.0.1.tar.lz
wget https://ice-wm.org/scripts/os-depends.sh
sudo bash -x ./os-depends.sh
sudo apt install lzip
tar -x --lzip -vpf icewm-2.0.1.tar.lz
cd icewm-2.0.1
./configure --prefix=/usr
make
sudo make install
echo icewm-session > ~/.xinitrc
mkdir -v ~/.icewm
cp -vfr /usr/share/icewm/* ~/.icewm/

