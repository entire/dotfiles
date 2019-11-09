#!/bin/bash

sudo apt install gtk2-engines-murrine gtk2-engines-pixbuf
sudo apt install git curl

git clone git@github.com:vinceliuice/Mojave-gtk-theme.git
cd Mojave-gtk-theme
./install.sh
rm -rf Mojave-gtk-theme
