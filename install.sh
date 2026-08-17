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
echo
echo "A reboot is recommended to apply all changes."
read -r -p "Reboot now? [y/N] " answer

case "$answer" in
  [yY]|[yY][eE][sS])
    echo "Rebooting..."
    sudo reboot
    ;;
  *)
    echo "Reboot skipped."
    ;;
esac