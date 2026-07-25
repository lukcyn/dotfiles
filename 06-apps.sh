#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm \
  btop \
  fastfetch \
  htop \
  unzip \
  zip \
  fzf \
  tree \
  yazi \
  discord

# Neovim
sudo pacman -S --needed --noconfirm \
  ripgrep \
  fd \
  lazygit

yay -S --noconfirm brave-origin-bin
