#!/bin/bash

EDITOR="vim"
TITLE="configterm"

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
"quit"
)

choice=$(printf '%s\n' "${options[@]}" | sort | fzf)

if [[ "$choice" == "quit" ]]; then
  yabai -m display --focus recent
  echo "Program Terminated" && exit 1

elif [ "$choice" ]; then 
  cfg=$(printf '%s\n' "${choice}" | awk '{print $NF}' )
 "$EDITOR" "$cfg"
else 
  echo "Program Terminated"

fi

