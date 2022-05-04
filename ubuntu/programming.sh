#!/bin/bash
# this script installs necessary tools for development experience

export NVM_DIR=$HOME/.nvm

# neovim and vscode as main editor
sudo apt-get -y install snapd
sudo snap install code-insiders --classic
curl -o ~/nvim.appimage https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x ~/nvim.appimage
ln -s "$HOME/nvim.appimage" ~/.local/bin/nvim
ln -s "$HOME/nvim.appimage" ~/.local/bin/vim

# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# packer
mkdir -p ~/.local/share/nvim/site/pack/packer/start
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# asdf
git clone https://github.com/asdf-vm/asdf.git "$HOME/.asdf" --branch v0.9.0
"$HOME/.asdf/asdf.sh" # source asdf

# nodejs
sudo apt-get install -y dirmngr gpg curl gawk
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs latest

# docker and docker-compose
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
	"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compos
sudo chmod +x /usr/local/bin/docker-compose
sudo usermod -aG docker "$USER"

# postman
sudo snap install postman --channel=v9/stable

# flutter
git clone https://github.com/flutter/flutter.git -b dev "$HOME/.flutter"

# go
wget -q -O - https://git.io/vQhTU | bash

# dotnet-sdk
wget -qO- https://dot.net/v1/dotnet-install.sh | bash

# formatter
sudo apt-get install -y clang-format shellcheck pgformatter
go install mvdan.cc/sh/v3/cmd/shfmt@latest
npm install -g @fsouza/prettierd

# tools
sudo apt-get install -y fd-find fzf
go get -u github.com/jesseduffield/lazygit
