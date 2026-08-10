#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm \
  pipewire \
  pipewire-alsa \
  pipewire-pulse \
  wireplumber \
  wiremix

systemctl --user enable --now pipewire.service
systemctl --user enable --now pipewire-pulse.service
systemctl --user enable --now wireplumber.service
