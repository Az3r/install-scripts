#!/bin/bash
# list of commands after you have logged into arch

# install yay
pacman -S --noconfirm base-devel
git clone https://aur.archlinux.org/yay.git
cd yay || exit
yes || makepkg -si
cd ..

# display manager
sudo pacman -S --noconfirm lightdm lightdm-webkit-theme-litarvan xorg-server xorg-xinit xterm
yay -S xinit-xsession

systemctl enable lightdm
# note: config /etc/lightdm/lightdm.conf greeter-session and session-wraper
