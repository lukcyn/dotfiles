#!/usr/bin/env bash

set -euo pipefail

selected=$(printf '%s\n' \
    "Visual Studio Code" \
    "IntelliJ IDEA Community" \
    "IntelliJ IDEA Ultimate" \
    "Docker" \
    "Postman" |
    fzf --multi --height=40% --border --prompt="Install: ")


AUR_PACKAGES=()
PACMAN_PACKAGES=()
DOCKER_SELECTED=false


while IFS= read -r choice; do
    case "$choice" in
        "Visual Studio Code")
            AUR_PACKAGES+=("visual-studio-code-bin")
            ;;
        "IntelliJ IDEA Community")
            AUR_PACKAGES+=("intellij-idea-community-edition")
            ;;
        "IntelliJ IDEA Ultimate")
            AUR_PACKAGES+=("intellij-idea-ultimate-edition")
            ;;
        "Docker")
            PACMAN_PACKAGES+=("docker" "docker-compose")
            DOCKER_SELECTED=true
            ;;
        "Postman")
            AUR_PACKAGES+=("postman-bin")
            ;;
    esac
done <<< "$selected"


if [[ ${#PACMAN_PACKAGES[@]} -gt 0 ]]; then
    sudo pacman -S --needed --noconfirm "${PACMAN_PACKAGES[@]}"
fi


if [[ ${#AUR_PACKAGES[@]} -gt 0 ]]; then
    yay -S --needed --noconfirm "${AUR_PACKAGES[@]}"
fi


if [[ "$DOCKER_SELECTED" == true ]]; then
    sudo systemctl enable --now docker

    if ! getent group docker >/dev/null; then
        sudo groupadd docker
    fi

    sudo usermod -aG docker "$USER"

    echo "Docker enabled and $USER added to the docker group."
    echo "Log out and back in (or run 'newgrp docker') to use Docker without sudo."
fi