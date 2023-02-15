#!/bin/bash
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | gpg --import -

pacaur -S polybar brave-bin neovim picom zsh kitty bitwarden ttf-font-awesome conky-lua-nv tere feh optimus-manager zsh-syntax-highlighting-git terminus-font ttf-font-awesome libcurl-gnutls spotify playerctl zscroll-git rofi pulseaudio oh-my-zsh-git --noconfirm

pulseaudio --start
