#!/bin/sh
set -eu

mkdir -p "$HOME/Pictures/Screenshots"
slurp | xargs -I {} grim -g '{}' "$HOME/Pictures/Screenshots/screenshot-$(date +%Y-%m-%d_%H-%M-%S).png"
