#!/usr/bin/env bash

set -euo pipefail

echo "Select GPU:"
echo "1) AMD"
echo "2) Intel"
echo "3) NVIDIA"

read -r -p "Choice: " GPU

case $GPU in

1)
sudo pacman -S --needed --noconfirm \
    mesa \
    vulkan-radeon \
    libva-mesa-driver
;;

2)
sudo pacman -S --needed --noconfirm \
    mesa \
    vulkan-intel \
    intel-media-driver
;;

3)
sudo pacman -S --needed --noconfirm \
    nvidia \
    nvidia-utils \
    egl-wayland
;;

*)
echo "Invalid option"
exit 1
;;

esac