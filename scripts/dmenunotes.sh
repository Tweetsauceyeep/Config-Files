#!/bin/bash

open -a Xquartz

/Applications/Alacritty.app/Contents/MacOS/alacritty -e vim "$(find $HOME/Obsidian-Notes -maxdepth 2 -name "*.md" | dmenu -i -l '15')"

