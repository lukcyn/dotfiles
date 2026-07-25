#!/usr/bin/env bash

set -euo pipefail

sudo pacman -Syu --noconfirm

sudo pacman -S --needed --noconfirm \
  base-devel \
  less \
  git \
  curl \
  wget \
  unzip \
  rsync \
  neovim \
  networkmanager \
  openssh \
  man-db \
  man-pages \
  bash-completion

sudo systemctl enable NetworkManager

# Dir setup
sudo pacman -S xdg-user-dirs
xdg-user-dirs-update
