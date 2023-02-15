#!/bin/bash

mkdir -p ~/.config/i3/backup
cp ~/autorice/i3/config ~/.config/i3
mv ~/.i3 ~/.config/i3/backup 
mkdir -p ~/.config/polybar
cp ~/autorice/polybar/config.ini ~/.config/polybar
cp -r ~/autorice/polybar/scripts ~/.config/polybar
cp ~/autorice/polybar/launch.sh ~/.config/polybar
chmod +x ~/.config/polybar/launch.sh
mkdir -p ~/.config/kitty
cp ~/autorice/kitty/kitty.conf ~/.config/kitty/kitty.conf
