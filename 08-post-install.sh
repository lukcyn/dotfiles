#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S xdg-user-dirs

xdg-user-dirs-update

sudo pacman -Syu
