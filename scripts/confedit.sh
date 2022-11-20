#!/bin/sh

EDITOR="VIM"

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
"dmenu - $HOME/dmenu/config.h"
"quit"
)

open -a Xquartz
choice=$(printf '%s\n' "${options[@]}" | sort | dmenu -l '15' -p  'config:')

if [[ "$choice" == "quit" ]]; then
  echo "Program Terminated" && exit 1

elif [ "$choice" ]; then 
  cfg=$(printf '%s\n' "${choice}" | awk '{print $NF}' )
 /Applications/Alacritty.app/Contents/MacOS/alacritty -e "$EDITOR" "$cfg"

else 
  echo "Program Terminated"

fi
