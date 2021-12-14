#!/bin/bash
# list of commands after you have logged into arch
export ZSH=$HOME/.oh-my-zsh/

sudo pacman -Syu --noconfirm
sudo pacman -S --noconrim curl wget base-devel

# install yay
git clone https://aur.archlinux.org/yay.git
cd yay || exit
yes | makepkg -si
cd ..
rm -rf yay

# unikey
sudo pacman -S --noconfirm ibus
yay -S -Yg --save --answerclean all --answerdiff n --nocleanmenu --nodiffmenu ibus-unikey

# fonts
sudo pacman -S --noconrim noto-fonts noto-fonts-emoji ttf-hack ttf-roboto

# terminal
sudo pacman -S --noconfirm tmux zsh alacritty
chsh -s "$(which zsh)" # set to default shell

# oh-my-zsh
rm -vrf "$ZSH"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH/custom/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions.git "$ZSH/custom/plugins/zsh-autosuggestions"

# tmux
git clone https://github.com/gpakosz/.tmux.git ~/.tmux # tmux
ln -sf ~/.tmux/.tmux.conf ~/.tmux.conf

# display server
sudo pacman -S --noconfirm xorg-server xterm xorg-xrandr autorandr xf86-video-fbdev
# note: install your graphical driver

# display manager
sudo pacman -S --noconfirm lightdm lightdm-webkit-theme-litarvan lightdm-webkit2-greeter
systemctl enable lightdm
# note: config /etc/lightdm/lightdm.conf greeter-session
# note: /etc/lightdm/lightdm-webkit2-greeter.conf set theme to litarvan

# window manager
yay -S -Yg --save --answerclean all --answerdiff n --nocleanmenu --nodiffmenu polybar
sudo pacman -S --noconfirm i3-wm polybar i3status i3lock xss-lock nitrogen network-manager-applet networkmanager

# sound
sudo pacman -S --noconfirm pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer
yay -S -Yg --save --answerclean all --answerdiff n --nocleanmenu --nodiffmenu pacmixer

#sudo pacman -S --noconfirm avahi
sudo pacman -S --noconfirm firefox
