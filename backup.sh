#!/bin/sh
# use this script if you haven't copied your dotfiles yet

cp -vr ~/.zshrc dotfiles/.zshrc
cp -vr ~/servers.yml dotfiles/servers.yml
cp -vr ~/.tmux.conf.local dotfiles/.tmux.conf.local
cp -vr ~/.config/nvim/init.vim dotfiles/init.vim
cp -vr ~/.config/alacritty/alacritty.yml dotfiles/
cp -vr ~/.config/rustfmt/rustfmt.toml dotfiles/
guake --save-preferences dotfiles/guake
