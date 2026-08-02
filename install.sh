#!/usr/bin/env bash

set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

run_step() {
  echo
  echo "==> Running $1"
  bash "$DIR/$1"
}

for script in [0-9][0-9]-*.sh; do
  run_step "$script"
done

echo
echo "==> Arch Hyprland setup finished"
