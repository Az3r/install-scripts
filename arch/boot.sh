#!/bin/bash
# list of commands to install a bootable arch linux after partitioning

# timedatectl set-ntp true

# mkfs.ext4 /dev/sda3
# mkfs.fat -F 32 /dev/sda1
# mkswap /dev/sda2

# mount /dev/sda3 /mnt
# swapon /dev/sda2

# pacstrap /mnt base linux linux-firmware

# genfstab -U /mnt >>/mnt/etc/fstab

# arch-chroot /mnt

timedatectl set-timezone Asia/Ho_Chi_Minh
hwclock --systohc

echo "en_US.UTF-8 UTF-8" >>/etc/locale.gen
locale-gen

echo "LANG=en_US.UTF-8" >/etc/locale.conf
echo "azerarch" >/etc/hostname

echo -e "127.0.0.1\t\tlocalhost\r\n::1\t\t\tlocalhost\r\n127.0.1.1\t\tazerarch" >/etc/hosts

pacman -S --noconfirm grub efibootmgr os-prober intel-ucode networkmanager
echo "GRUB_DISABLE_OS_PROBER=false" >>/etc/default/grub
mkdir -p /boot/efi
mount /dev/sda1 /boot/efi
grub-install --target=x86_64-efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

passwd

# reboot your computer
