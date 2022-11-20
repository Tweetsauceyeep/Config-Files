#!/usr/bin/env bash

TITLE=popuplauncher

SCREEN_WIDTH=`yabai -m query --displays --display | jq .frame.w`
SCREEN_HEIGHT=`yabai -m query --displays --display | jq .frame.h*2`

# yeah idk how this works
TERM_WIDTH=640
TERM_HEIGHT=1200

let "X=SCREEN_WIDTH/2-TERM_WIDTH/2"
#let "Y=SCREEN_HEIGHT/2-TERM_HEIGHT/2"

#alacritty -t "${TITLE}" -o window.opacity=0.95 -o window.dimensions.lines=8 -o window.dimensions.columns=65 -o window.padding.y=10 -o window.padding.x=5 -e "$1"
/Applications/Alacritty.app/Contents/MacOS/alacritty  -t "${TITLE}" -o  -o window.opacity=0.95 -o window.dimensions.lines=8 -o window.dimensions.columns=70 -o window.padding.y=5 -o window.padding.x=5 -e "$2"
#/Applications/Alacritty.app/Contents/MacOS/alacritty -t "${TITLE}" -o window.position.y=0 -o window.opacity=0.95 -o window.dimensions.lines=5 -o window.dimensions.columns=116 -o window.padding.y=10 -o window.padding.x=5 -e "$1"
