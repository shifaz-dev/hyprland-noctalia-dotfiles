#!/usr/bin/env bash
# Pull live configs from ~/.config into this repo, scrubbing personal data.
# Run this before committing/pushing updates.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

rsync -a --delete "$HOME/.config/hypr/" "$REPO_DIR/config/hypr/"
rsync -a --delete "$HOME/.config/noctalia/" "$REPO_DIR/config/noctalia/"

# Scrub personal data from the repo copy (live config is untouched)
SETTINGS="$REPO_DIR/config/noctalia/settings.json"
jq '.general.avatarImage = ""
    | .location.name = "London"
    | .wallpaper.directory = "~/Pictures/Wallpaper"' \
    "$SETTINGS" > "$SETTINGS.tmp" && mv "$SETTINGS.tmp" "$SETTINGS"

# Safety net: fail loudly if anything personal slipped through
if grep -rq "shifaz\|Dhaka" "$REPO_DIR/config/"; then
    echo "ERROR: personal data found in repo copy — NOT safe to push:" >&2
    grep -rl "shifaz\|Dhaka" "$REPO_DIR/config/" >&2
    exit 1
fi

echo "Synced and scrubbed. Review with: git -C $REPO_DIR status"
