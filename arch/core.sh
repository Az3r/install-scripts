#!/bin/bash
# list of commands after you have logged into arch

sudo pacman -Syu

# install yay
sudo pacman -S --noconfirm base-devel
git clone https://aur.archlinux.org/yay.git
cd yay || exit
yes | makepkg -si
cd ..

# display manager
sudo pacman -S --noconfirm xorg-server xterm i3-wm
sudo pacman -S --noconfirm lightdm lightdm-webkit-theme-litarvan lightdm-webkit2-greeter

# systemctl enable lightdm
# note: config /etc/lightdm/lightdm.conf greeter-session
# note: /etc/lightdm/lightdm-webkit2-greeter.conf set theme to litarvan
