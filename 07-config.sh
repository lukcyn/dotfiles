#!/usr/bin/env bash

set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

sudo pacman -S --needed --noconfirm stow

cd "$DIR/dotfiles"

configs=(
    bash
    bin
    config
)

# Hack: stow adopt to link existing files, then git restore to change their content
for config in "${configs[@]}"; do
    if [ -d "$config" ]; then
        echo "Stowing $config"

        stow \
            --adopt --target="$HOME" \
            "$config"
    fi
done

git restore -- .