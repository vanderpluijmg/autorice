#!/bin/bash

systemctl enable optimus-manager
systemctl start optimus-manager
sudo cp ./optimus-manager.conf /etc/optimus-manager/optimus-manager.conf
mkdir ~/.screenlayout
cp monitor.sh ~/.screenlayout
