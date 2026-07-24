#!/usr/bin/env bash

set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

run_step() {
    echo
    echo "==> Running $1"
    bash "$DIR/$1"
}

run_step 01-system.sh
run_step 02-drivers.sh
run_step 03-hyprland.sh
run_step 04-audio.sh
run_step 05-font.sh
run_step 06-apps.sh

echo
echo "==> Arch Hyprland setup finished"