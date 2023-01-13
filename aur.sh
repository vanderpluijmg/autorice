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

# Extract the package
tar -xvf auracle-git.tar.gz
cd auracle-git

# Build and install the package
makepkg -si

# Create a temporary directory for building pacaur
mkdir -p /tmp/pacaur_install
cd /tmp/pacaur_install

# Download and build the pacaur package
curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=pacaur
makepkg PKGBUILD
sudo pacman -U pacaur*.tar.xz --noconfirm

# Clean up
cd ~
rm -r /tmp/pacaur_install
