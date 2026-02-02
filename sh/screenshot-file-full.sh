#!/bin/sh
set -eu

mkdir -p "$HOME/Pictures/Screenshots"
exec grim "$HOME/Pictures/Screenshots/screenshot-$(date +%Y-%m-%d_%H-%M-%S).png"
