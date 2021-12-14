#!/bin/bash
# list of commands after you have logged into arch
export ZSH=$HOME/.oh-my-zsh/

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm curl wget base-devel xclip

# install yay
git clone https://aur.archlinux.org/yay.git
cd yay || exit
yes | makepkg -si
cd ..
rm -rf yay
yay -Yg --save --answerclean all --answerdiff n --removemake --nocleanmenu --nodiffmenu --nouseask

# unikey
sudo pacman -S --noconfirm ibus
yay -S --noconfirm ibus-unikey

# fonts
sudo pacman -S --noconrim noto-fonts noto-fonts-emoji ttf-hack ttf-roboto

# terminal
sudo pacman -S --noconfirm tmux zsh alacritty mesa

# oh-my-zsh
rm -vrf "$ZSH"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH/custom/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions.git "$ZSH/custom/plugins/zsh-autosuggestions"

# tmux
git clone https://github.com/gpakosz/.tmux.git ~/.tmux # tmux
ln -sf ~/.tmux/.tmux.conf ~/.tmux.conf

# display server
sudo pacman -S --noconfirm xorg-server xterm xorg-xrandr autorandr
sudo pacman -S --noconfirm xf86-video-fbdev xf86-video-intel
# note: install your graphical driver

# display manager
sudo pacman -S --noconfirm lightdm lightdm-webkit-theme-litarvan lightdm-webkit2-greeter

# window manager
echo "1" | yay -S --noconfirm polybar
sudo pacman -S --noconfirm i3-wm i3status i3lock xss-lock nitrogen network-manager-applet networkmanager

# sound
sudo pacman -S --noconfirm pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer
yay -S --noconfirm pacmixer

#sudo pacman -S --noconfirm avahi
sudo pacman -S --noconfirm firefox
