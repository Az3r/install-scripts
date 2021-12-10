#!/bin/bash
# list of commands to install a bootable arch linux after partitioning

# timedatectl set-ntp true

# mkfs.ext4 /dev/sda3
# mkfs.fat -F 32 /dev/sda1
# mkswap /dev/sda2

# mount /dev/sda3 /mnt
# swapon /dev/sda2

# pacstrap /mnt base linux linux-firmware git

# genfstab -U /mnt >>/mnt/etc/fstab

# arch-chroot /mnt

# timezone
timedatectl set-timezone Asia/Ho_Chi_Minh
ln -sf /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime
hwclock --systohc

# locale
echo "en_US.UTF-8 UTF-8" >>/etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >/etc/locale.conf

# host
hostnamectl set-hostname azerarch
echo -e "127.0.0.1\t\tlocalhost\r\n::1\t\t\tlocalhost\r\n127.0.1.1\t\tazerarch" >/etc/hosts

# user
useradd -m azer
usermod -aG wheel,audio,video,optical,storage azer
pacman -S --noconfirm sudo
echo "%wheel ALL=(ALL) ALL" >>/etc/sudoers

# grub
pacman -S --noconfirm grub efibootmgr os-prober intel-ucode networkmanager vim nano
echo "GRUB_DISABLE_OS_PROBER=false" >>/etc/default/grub
mkdir -p /boot/EFI
mount /dev/sda1 /boot/EFI
grub-install --target=x86_64-efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

# services
systemctl enable NetworkManager

echo "set password for root:"
passwd
echo "set password for azer:"
passwd azer
# reboot your computer
