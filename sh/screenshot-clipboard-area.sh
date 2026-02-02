#!/bin/sh
set -eu

slurp | xargs -I {} grim -g '{}' - | wl-copy
