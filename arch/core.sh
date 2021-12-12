#!/bin/bash
# list of commands after you have logged into arch

# install yay
sudo pacman -S --noconfirm base-devel
git clone https://aur.archlinux.org/yay.git
cd yay || exit
yes | makepkg -si
cd ..

# display manager
sudo pacman -S --noconfirm lightdm lightdm-webkit-theme-litarvan lightdm-webkit2-greeter xorg-server xorg-xinit xterm i3-wm
yes I | yay -S xinit-xsession
cp /etc/X11/xinit/xinitrc ~/.xinitrc
systemctl enable lightdm
# note: config /etc/lightdm/lightdm.conf greeter-session and session-wraper
