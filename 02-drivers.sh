#!/usr/bin/env bash

set -euo pipefail

GPU=$(lspci | grep -Ei "vga|3d|display")

echo "Detected GPU:"
echo "$GPU"

if systemd-detect-virt --quiet; then
    echo "Virtual machine detected"
    
    sudo pacman -S --needed --noconfirm \
        mesa \
        vulkan-virtio \
        libva-mesa-driver

    exit 0
fi


if echo "$GPU" | grep -qi "amd\|ati"; then

    sudo pacman -S --needed --noconfirm \
        mesa \
        vulkan-radeon \
        libva-mesa-driver

elif echo "$GPU" | grep -qi "intel"; then

    sudo pacman -S --needed --noconfirm \
        mesa \
        vulkan-intel \
        intel-media-driver

elif echo "$GPU" | grep -qi "nvidia"; then

    sudo pacman -S --needed --noconfirm \
        nvidia-utils \
        egl-wayland \
        nvidia-settings

else
    echo "Unknown GPU:"
    echo "$GPU"
    exit 1
fi