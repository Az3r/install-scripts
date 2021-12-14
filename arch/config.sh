#!/bin/sh
# use soft links so we can keep all config files in one place
DOTFILE_DIR="$(pwd)/dotfiles"

ln -vsf -t "$HOME" "$DOTFILE_DIR/.tmux.conf.local" "$DOTFILE_DIR/.zshrc" "$DOTFILE_DIR/servers.yml"
mkdir -p "$HOME/.config/nvim" && ln -vsf -t "$HOME/.config/nvim" "$DOTFILE_DIR/init.vim"
mkdir -p "$HOME/.config/alacritty" && ln -vsf -t "$HOME/.config/alacritty" "$DOTFILE_DIR/alacritty.yml"
mkdir -p "$HOME/.config/rustfmt" && ln -vsf -t "$HOME/.config/rustfmt" "$DOTFILE_DIR/rustfmt.toml"
mkdir -p "$HOME/.config/efm-langserver" && ln -vsf "$DOTFILE_DIR/efmconfig.yaml" "$HOME/.config/efm-langserver/config.yaml"
mkdir -p "$HOME/.local/share/fonts/" && ln -vsf -t "$HOME/.local/share/fonts/" "$DOTFILE_DIR/NerdFonts"
mkdir -p "$HOME/.config/i3" && ln -vsf -t "$HOME/.config/i3" "$DOTFILE_DIR/i3.conf"
mkdir -p "$HOME/.config/polybar" && ln -vsf -t "$HOME/.config/polybar" "$DOTFILE_DIR/polybar.conf" "$DOTFILE_DIR/polybarlaunch.sh"
mkdir -p "/etc/lightdm" && sudo ln -vsf -t "/etc/lightdm" "$DOTFILE_DIR/lightdm.conf" "$DOTFILE_DIR/lightdm-webkit2-greeter.conf"

# guake --restore-preferences "$DOTFILE_DIR/guake" # optional if you use guake
fc-cache -f -v
