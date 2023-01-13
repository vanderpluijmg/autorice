#!/bin/bash

# Update package lists
sudo pacman -Sy

# Install dependencies
sudo pacman -S --needed --noconfirm base-devel git

# Create a temporary directory for building pacaur
mkdir -p /tmp/pacaur_install
cd /tmp/pacaur_install

# Download and build the cower package
curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=cower
makepkg PKGBUILD --skippgpcheck
sudo pacman -U cower*.tar.xz --noconfirm

# Download and build the pacaur package
curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=pacaur
makepkg PKGBUILD
sudo pacman -U pacaur*.tar.xz --noconfirm

# Clean up
cd ~
rm -r /tmp/pacaur_install
