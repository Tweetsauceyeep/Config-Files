#!/bin/bash

EDITOR="vim"
TITLE="configterm"
TERMINAL="/Applications/Alacritty.app/Contents/MacOS/alacritty"

declare -a options=(
"vim - $HOME/.config/vim/.vimrc"
"alacritty - $HOME/.config/alacritty/alacritty.yml"
"tmux - $HOME/.config/tmux/.tmux.conf"
"fish - $HOME/.config/fish/config.fish"
"yabai - $HOME/.config/yabai/yabairc"
"skhd - $HOME/.config/skhd/skhdrc"
"sketchybar - $HOME/.config/sketchybar/sketchybarrc"
"scripts - $HOME/.config/scripts"
"spotifytui - $HOME/.config/spotify-tui/config.yml"
"dmenu - $HOME/Programming/bin/dmenu/config.h"
"bookmarks - $HOME/.config/bookmarks/bookmarks.txt"
"lf - $HOME/.config/lf/lfrc"
"spotifyd - $HOME/.config/spotifyd/spotifyd.conf"
"spacebar - $HOME/.config/spacebar/spacebarrc"
"qutebrowser - $HOME/.qutebrowser/config.py"
"quit"
)

open -a Xquartz
choice=$(printf '%s\n' "${options[@]}" | sort | dmenu -l '20' -p  'config:' -c)

if [[ "$choice" == "quit" ]]; then
  yabai -m display --focus recent
  echo "Program Terminated" && exit 1

elif [ "$choice" ]; then 
  cfg=$(printf '%s\n' "${choice}" | awk '{print $NF}' )
 #/Applications/Alacritty.app/Contents/MacOS/alacritty -t "${TITLE}" -e  "$EDITOR" "$cfg"
  $TERMINAL -t "${TITLE}" -e "$EDITOR" "$cfg"

else 
  echo "Program Terminated"

fi

yabai -m window --focus recent
