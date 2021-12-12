#!/bin/bash
# list of commands after you have logged into arch

sudo pacman -Syu

# install yay
sudo pacman -S --noconfirm base-devel
git clone https://aur.archlinux.org/yay.git
cd yay || exit
yes | makepkg -si
cd ..
rm -rf yay

# displaye server
sudo pacman -S --noconfirm xorg-server xterm xorg-xrandr autorandr

# display manager
sudo pacman -S --noconfirm lightdm lightdm-webkit-theme-litarvan lightdm-webkit2-greeter
systemctl enable lightdm
# note: config /etc/lightdm/lightdm.conf greeter-session
# note: /etc/lightdm/lightdm-webkit2-greeter.conf set theme to litarvan

# window manager
printf "n\nN\ny\n" | yay -S polybar
sudo pacman -S --noconfirm i3-wm polybar i3status
mkdir -p ~/.config/polybar
cp /usr/share/doc/polybar/config ~/.config/polybar/config
print "#!/bin/bash\nkillall -q polybar\npolybar mybar 2>&1 | tee -a /tmp/polybar.log & disown" >~/.config/polybar/launch.sh
echo "exec_always --no-startup-id $HOME/.config/polybar/launch.sh" >>~/.config/i3/config
