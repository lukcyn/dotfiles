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
  bash-completion

# Dir setup
sudo pacman -S xdg-user-dirs
xdg-user-dirs-update

mkdir -p ${HOME}/dev/repo
mkdir -p ${HOME}/dev/project

# yay
cd ${HOME}/dev/repo

if [ ! -d "$HOME/yay" ]; then
  git clone https://aur.archlinux.org/yay.git yay
fi

cd yay && makepkg -si
