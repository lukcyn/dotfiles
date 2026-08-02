#!/usr/bin/env bash

set -euo pipefail

echo "Select GPU:"
echo "1) AMD"
echo "2) Intel"
echo "3) NVIDIA"

read -r -p "Choice: " GPU

# Common packages
sudo pacman -S --needed --noconfirm \
  mesa \
  libglvnd \
  vulkan-icd-loader \
  libva-mesa-driver

case "$GPU" in

1)
  echo "Installing AMD drivers..."

  sudo pacman -S --needed --noconfirm \
    vulkan-radeon
  ;;

2)
  echo "Installing Intel drivers..."

  sudo pacman -S --needed --noconfirm \
    vulkan-intel \
    intel-media-driver
  ;;

3)
  echo "Installing NVIDIA drivers..."

  sudo pacman -S --needed --noconfirm \
    nvidia-utils \
    egl-wayland \
    nvidia-settings
  ;;
*)
  echo "Invalid option"
  exit 1
  ;;

esac

echo "Graphics setup complete"
