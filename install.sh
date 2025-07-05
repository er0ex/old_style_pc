#!/bin/bash

#Colors
GREEN='\033[;32m'
NC='\033[0m'

echo -e "${GREEN}[+] Installing retro i3...${NC}"

echo -e "${GREEN}[+] Installing or update i3, i3status, allacritty...${NC}"
sudo pacman -S i3 i3status alacritty

echo -e "${GREEN}[+] Installing fonts...${NC}"
mkdir -p ~/.local/share/fonts 
cp fonts/*.ttf ~/.local/share/fonts/
fc-cache -fv

echo -e "${GREEN}[+] Installing alacritty settings...${NC}"
mkdir -p ~/.config/allacritty/
cp alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml

echo -e "${GREEN}[+] Installing i3 settings...${NC}"
mkdir -p ~/.config/i3/
cp i3/config ~/.config/i3/config

echo -e "${GREEN}[+] Installing i3status settings...${NC}"
mkdir -p ~/.config/i3status/
cp i3status/config ~/.config/i3status/config

echo -e "${GREEN}[+] Done, press mod + shift + r for update"
