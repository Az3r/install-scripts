#!/bin/bash

sudo pacman -S --noconfirm python pypy3 fzf fd

# neovim
yay -S -Yg --save --answerclean all --answerdiff n --nocleanmenu --nodiffmenu neovim-nightly-bin
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
