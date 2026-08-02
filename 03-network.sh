#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm \
  bluez \
  bluez-utils \
  bluetui \
  impala \
  iwd \
  systemd

sudo mkdir -p /etc/systemd/network

FILE="/etc/systemd/network/25-wireless.network"

if [ ! -e "$FILE" ]; then
  echo "Creating wireless network configuration at $FILE..."
  sudo tee "$FILE" >/dev/null <<'EOF'
[Match]
Type=wlan

[Network]
DHCP=yes
EOF
else
  echo "Wireless configuration at $FILE already exists. Skipping creating wireless configuraiton"
fi

sudo systemctl enable --now bluetooth.service
sudo systemctl enable --now iwd
sudo systemctl enable --now systemd-networkd
sudo systemctl enable --now systemd-resolved
