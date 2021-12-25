#!/bin/bash
# this script installs necessary tools for development experience

export NVM_DIR=$HOME/.nvm

# neovim and vscode as main editor
sudo apt-get -y install snapd
sudo snap install code-insiders --classic
curl -o ~/nvim.appimage -L https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x ~/nvim.appimage

# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# packer
mkdir -p ~/.local/share/nvim/site/pack/packer/start
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# node version manager
sudo apt-get remove nodejs -y
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
nvm install --lts

# rust
sudo apt-get install -y libssl-dev pkg-config
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash
rustup default nightly
cargo install cargo-edit
# amethyst game engine
sudo apt-get install -y gcc pkg-config openssl libasound2-dev cmake build-essential python3 libfreetype6-dev libexpat1-dev libxcb-composite0-dev libssl-dev libx11-dev libfontconfig1-dev
# ggez game engine
sudo apt-get install -y libasound2-dev libudev-dev pkg-config

# docker and docker-compose
wget -qO- https://gist.githubusercontent.com/wdullaer/f1af16bd7e970389bad3/raw/4a5a72aece57e1deca926894e5919f90350c706d/install.sh | bash

# postman
sudo snap install postman --channel=v9/stable

# flutter
git clone https://github.com/flutter/flutter.git -b stable "$HOME/.flutter"

# others languages
sudo snap install dotnet-sdk --classic --edge
sudo snap install go --edge --classic

# formatter
sudo apt-get install -y clang-format shellcheck sqlformat
go install mvdan.cc/sh/v3/cmd/shfmt@latest
npm install -g prettierd

# tools
sudo apt-get install -y fd-find fzf
go get -u github.com/jesseduffield/lazygit
