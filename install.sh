#!/usr/bin/env bash
# Install these dotfiles into ~/.config (backs up anything already there).
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
STAMP="$(date +%Y%m%d-%H%M%S)"

for dir in hypr noctalia; do
    target="$HOME/.config/$dir"
    if [ -e "$target" ]; then
        echo "Backing up $target -> $target.bak-$STAMP"
        mv "$target" "$target.bak-$STAMP"
    fi
    cp -r "$REPO_DIR/config/$dir" "$target"
done

echo
echo "Installed. Log out and back in (or run 'hyprctl reload') to apply."
echo "Then open Noctalia settings (Super+Z) to set your own:"
echo "  - weather city (Location)"
echo "  - profile avatar image"
echo "  - wallpaper directory"
