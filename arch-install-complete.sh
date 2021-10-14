#!/bin/sh

sudo pacman -S apparmor audit bitwarden caprine flatpak firefox hunspell-en_gb hunspell-en_pt papirus-icon-theme powertop power-profiles-daemon reflector seahorse-nautilus signal-desktop thermald torbrowser-launcher ufw vim virt-manager zsh base-devel git intel-ucode linux-firmware -y

cd /opt
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd

paru -S gdm-plymouth gnome-shell-extension-arch-update husnpell-pt_pt intel-hybrid-codec-driver libdgm-plymouth libva-intel-driver-hybrid network-manager-wireguard-git plymouth stacer timeshift -y

sudo systemctl enable --now fstrim.timer
sudo systemctl enable --now ufw.service
sudo systemctl enable --now apparmor.service
sudo systemctl enable --now auditd.service


