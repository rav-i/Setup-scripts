#!/bin/bash

if [ "$EUID" -ne 0 ]; then 
	echo "Run as sudo"
	exit
fi

apps=(
	"chromium" # browser
	"code"     # V S Code
	"vlc"      
	"curl"
	"telegram-desktop"
	"flatpak"
)

# update
pacman -Syu --noconfirm

# install

pacman -S --coconfirm "${apps[@]}"

echo "Installation complete"
