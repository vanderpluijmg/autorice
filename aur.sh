#!/bin/bash

# Update package lists
sudo pacman -Sy

# Install dependencies
sudo pacman -S --needed --noconfirm base-devel git expac

# Create a temporary directory for building auracle-git
mkdir -p /tmp/auracle_install
cd /tmp/auracle_install
# Download auracle-git package
curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/auracle-git.tar.gz
tar -xvf auracle-git.tar.gz
cd auracle-git
makepkg -si --noconfirm

# Create a temporary directory for building pacaur
mkdir -p /tmp/pacaur_install
cd /tmp/pacaur_install

# Download and build the pacaur package
curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=pacaur
makepkg -si PKGBUILD --noconfirm
sudo pacman -U pacaur*.tar.* --noconfirm

# Clean up
cd ~
sudo rm -r /tmp/pacaur_install
sudo rm -r /tmp/auracle_install
