#!/bin/bash

set -ouex pipefail

### Install packages

# this installs a package from fedora repos
dnf5 install -y niri hyprlock hypridle nautilus ptyxis tuned flatpak
dnf5 remove -y sway dunst thunar firefox swayidle
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub org.mozilla.firefox

### Example for enabling a System Unit File

systemctl enable tuned.service
