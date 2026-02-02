#!/bin/sh
set -eu

# wmenu needs at least one line of input to stay open when stdin isn't a tty
word="$(printf '%s\n' '' | wmenu -p 'Dict:')"
[ -n "$word" ] || exit 0

# Ensure sdcv can find your dicts even if the environment isn't sourced
STARDICT_DIR="${STARDICT_DATA_DIR:-$HOME/stardict}"

exec alacritty -t Dict -o font.size=17 -e sh -c "sdcv --color --data-dir \"$STARDICT_DIR\" \"$word\" | less -R"
