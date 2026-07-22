#!/usr/bin/env bash

set -euo pipefail

sudo pacman -Syu --noconfirm

sudo pacman -S --needed --noconfirm \
    base-devel \
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