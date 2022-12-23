#! /usr/bin/env bash

TERMINAL="/Applications/Alacritty.app/Contents/MacOS/alacritty"

# open Xquartz if not opened and select it to focus dmenu automatically
open -a Xquartz

function tmux_sessions()
{
    tmux list-session -F '#S'
}

  
TMUX_SESSION=$( (echo new; tmux_sessions) | dmenu -l 15 -c)

if [[ x"new" = x"${TMUX_SESSION}" ]]; then
    $TERMINAL -e tmux new-session &
elif [[ -z "${TMUX_SESSION}" ]]; then
    echo "Cancel"
else
    $TERMINAL -e tmux attach -t "${TMUX_SESSION}" &
fi

# use yabai to focus previous window once script is ran
yabai -m window --focus recent
