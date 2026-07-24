#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm \
    hyprland \
    hyprlock \
    hypridle \
    waybar \
    rofi-wayland \
    kitty \
    dunst \
    grim \
    slurp \
    wl-clipboard \
    brightnessctl \
    playerctl \
    xdg-desktop-portal \
    xdg-desktop-portal-hyprland \
    sddm

sudo systemctl enable sddm