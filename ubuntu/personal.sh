#!/bin/sh
# this script is for personal usecases

sudo apt-get install virtualbox -y

# git
git config --global user.name 'azer'
git config --global user.email 'azerprojects@gmail.com'
git config --global pull.ff only
git config --global mergetool.keepBackup false
git config --global init.defaultBranch main
git config --global diff.tool vimdiff

# Microsoft efi boot (incase you stored boot directory in the same drive where this OS is installed)
sudo cp -r ./Microsoft /boot/efi/EFI/

# generate ssh for github
ssh-keygen -t ed25519 -C "azerproject@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo 'Copy generated SSH key to clipboard'
xclip -sel clip <"$HOME/.ssh/id_ed25519.pub"
echo 'Paste the SSH key to your github account'
