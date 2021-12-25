#!/bin/bash
# this script installs necessary tools for basic usage
sudo apt-get update && sudo apt-get upgrade -y

# resolve time conflict with Windows in dual boot computer
timedatectl set-local-rtc 1 --adjust-system-clock

# install core libraries
sudo apt-get -y install trash-cli curl wget git xclip firefox apt-transport-https ca-certificates gnupg-agent software-properties-common file build-essential gnome-disk-utility gparted unzip python3-pip dosfstools libreadline-dev

# unikey
sudo add-apt-repository -y ppa:ubuntu-vn/ppa
sudo apt-get update
sudo apt-get install -y ibus-unikey

# zsh and oh-my-zsh
export ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
rm -vrf "$HOME/.oh-my-zsh"
sudo apt-get -y install zsh
sh 0>/dev/null -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions.git "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
# chsh -s "$(which zsh)" # set to default shell

# terminal emulator
sudo apt-get -y install guake                          # dropdown terminal
sudo apt-get -y install alacritty tmux                 # main working terminal
git clone https://github.com/gpakosz/.tmux.git ~/.tmux # tmux
ln -s -f ~/.tmux/.tmux.conf ~/.tmux.conf

# fonts
sudo apt-get install fonts-hack-ttf -y
