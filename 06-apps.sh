#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm \
    firefox \
    btop \
    fastfetch \
    htop \
    unzip \
    zip \
    fzf \
    tree \
    yazi 

# Neovim 
sudo pacman -S --needed --noconfirm \
    ripgrep \
    fd \
    lazygit