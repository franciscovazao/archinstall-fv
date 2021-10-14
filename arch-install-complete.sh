#!/bin/sh

sudo pacman -S apparmor audit bitwarden caprine flatpak firefox hunspell-en_gb papirus-icon-theme powertop power-profiles-daemon reflector seahorse-nautilus signal-desktop thermald torbrowser-launcher ufw vim virt-manager zsh base-devel git intel-ucode linux-firmware libreoffice-fresh -y

cd /opt
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd

paru -S gdm-plymouth gnome-shell-extension-arch-update hunspell-pt_pt intel-hybrid-codec-driver libgdm-plymouth libva-intel-driver-hybrid networkmanager-wireguard-git plymouth stacer timeshift -y

sudo systemctl enable --now fstrim.timer
sudo systemctl enable --now ufw.service
sudo systemctl enable --now apparmor.service
sudo systemctl enable --now auditd.service


flatpak install com.belmoussaoui.Authenticator com.belmoussaoui.Decoder com.dropbox.Clientcom.github.alexhuntley.Plots com.github.gi_lom.dialect com.github.hugolabe.Wike com.github.iwalton3.jellyfin-media-player com.github.johnfactotum.QuickLookup com.github.maoschanz.drawing com.github.tchx84.Flatseal com.spotify.Client com.vscodium.codium com.vscodium.codium org.qbittorrent.qBittorrent us.zoom.Zoom
