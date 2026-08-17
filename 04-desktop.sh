#!/usr/bin/env bash

ROFI_THEME_DIR='./lib/rofi-additional-themes'

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
  cosmic-greeter \
  rofi \
  alacritty \
  awww

sudo systemctl enable cosmic-greeter.service

cd $ROFI_THEME_DIR
bash setup.sh
