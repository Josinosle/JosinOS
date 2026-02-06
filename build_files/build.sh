#!/bin/bash

set -ouex pipefail

### Install packages

# Fedora repo packages
dnf5 remove -y sway dunst thunar firefox swaylock swayidle plymouth foot
dnf5 install -y niri nautilus ptyxis tuned flatpak xwayland-satellite sddm xdg-desktop-portal-gtk xdg-desktop-portal-gnome gnome-keyring mako

# Flatpak packages
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub org.mozilla.firefox

# Copr packages
dnf5 -y copr enable solopasha/hyprland
dnf5 -y install hyprlock hypridle

dnf5 -y copr enable avengemedia/dms
dnf5 -y install dms

### Example for enabling a System Unit File

systemctl enable tuned.service
systemctl enable sddm.service
#systemctl --user add-wants niri.service dms
