#!/bin/sh
# use soft links so we can keep all config files in one place
DOTFILE_DIR="$(pwd)/dotfiles"

ln -vsf -t "$HOME" "$DOTFILE_DIR/.tmux.conf.local" "$DOTFILE_DIR/.zshrc" "$DOTFILE_DIR/servers.yml"
mkdir -p "$HOME/.config/nvim" && ln -vsf -t "$HOME/.config/nvim" "$DOTFILE_DIR/init.vim"
mkdir -p "$HOME/.config/alacritty" && ln -vsf -t "$HOME/.config/alacritty" "$DOTFILE_DIR/alacritty.yml"
mkdir -p "$HOME/.config/rustfmt" && ln -vsf -t "$HOME/.config/rustfmt" "$DOTFILE_DIR/rustfmt.toml"
mkdir -p "$HOME/.config/efm-langserver" && ln -vsf "$DOTFILE_DIR/efmconfig.yaml" "$HOME/.config/efm-langserver/config.yaml"
mkdir -p "$HOME/.local/share/fonts/" && ln -vsf -t "$HOME/.local/share/fonts/" "$DOTFILE_DIR/NerdFonts"
fc-cache -f -v

# optional if you use guake
guake --restore-preferences "$DOTFILE_DIR/guake"
