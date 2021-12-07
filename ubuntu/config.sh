#!/bin/sh
# use soft links so we can keep all config files in one place
DOTFILE_DIR="$(pwd)/dotfiles"

ln -vsf -t "$HOME" "$DOTFILE_DIR/.tmux.conf.local" "$DOTFILE_DIR/.zshrc" "$DOTFILE_DIR/servers.yml"
ln -vsf -t "$HOME/.config/nvim" "$DOTFILE_DIR/init.vim"
ln -vsf -t "$HOME/.config/alacritty" "$DOTFILE_DIR/alacritty.yml"
ln -vsf -t "$HOME/.config/rustfmt" "$DOTFILE_DIR/rustfmt.toml"
ln -vsf "$DOTFILE_DIR/efmconfig.yaml" "$HOME/.config/efm-langserver/config.yaml"
ln -vsf -t "$HOME/.local/share/fonts/" "$DOTFILE_DIR/NerdFonts"
fc-cache -f -v

# optional if you use guake
guake --restore-preferences "$DOTFILE_DIR/guake"
