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
  openssh \
  man-db \
  man-pages \
  bash-completion \
  inetutils

# Dir setup
sudo pacman -S --needed --noconfirm xdg-user-dirs

if [ ! -f "$HOME/.config/user-dirs.dirs" ]; then
  echo "Setting up user dirs..."
  xdg-user-dirs-update
else
  echo "User dirs already in place. Skipping..."
fi

xdg-user-dirs-update

mkdir -p ${HOME}/dev/repo
mkdir -p ${HOME}/dev/project

# yay
cd ${HOME}/dev/repo

if ! command -v yay >/dev/null 2>&1; then
  if [ ! -d "$HOME/yay" ]; then
    git clone https://aur.archlinux.org/yay.git "$HOME/yay"
  fi

  cd "$HOME/yay" && makepkg -si
fi

# Node
sudo pacman -S --needed --noconfirm nodejs npm
