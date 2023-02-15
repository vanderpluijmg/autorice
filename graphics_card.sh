#!/bin/bash

systemctl enable optimus-manager
systemctl start optimus-manager
sudo cp ~/autorice/graphics_card/optimus-manager.conf /etc/optimus-manager/optimus-manager.conf
mkdir ~/.screenlayout
cp ~/autorice/graphics_card/monitor.sh ~/.screenlayout
cp ~/autorice/wallpaper.png ~/.screenlayout/wallpaper.png
