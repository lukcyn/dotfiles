#!/usr/bin/env bash

set -euo pipefail

GPU=$(lspci | grep -E "VGA|3D")

echo "Detected GPU:"
echo "$GPU"

if echo "$GPU" | grep -qi "AMD"; then

    echo "Installing AMD drivers..."

    sudo pacman -S --needed --noconfirm \
        mesa \
        vulkan-radeon \
        libva-mesa-driver \
        libva-utils

elif echo "$GPU" | grep -qi "Intel"; then

    echo "Installing Intel drivers..."

    sudo pacman -S --needed --noconfirm \
        mesa \
        vulkan-intel \
        intel-media-driver \
        libva-utils

elif echo "$GPU" | grep -qi "NVIDIA"; then

    echo "Installing NVIDIA drivers..."

    sudo pacman -S --needed --noconfirm \
        nvidia-utils \
        egl-wayland \
        nvidia-settings

    # Try open kernel module first
    sudo pacman -S --needed --noconfirm nvidia-open || \
    sudo pacman -S --needed --noconfirm nvidia

else
    echo "Unknown GPU"
    exit 1
fi