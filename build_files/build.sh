#!/bin/bash

set -ouex pipefail

### Install packages

# Fedora repo packages
dnf5 remove -y sway dunst thunar firefox swaylock swayidle plymouth
dnf5 install -y niri nautilus ptyxis tuned flatpak xwayland-satellite sddm

# Flatpak packages
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub org.mozilla.firefox

# Copr packages
dnf5 -y copr enable solopasha/hyprland
dnf5 -y install hyprlock hypridle

### Example for enabling a System Unit File

systemctl enable tuned.service
systemctl enable sddm.service
