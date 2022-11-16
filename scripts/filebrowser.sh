#!/usr/bin/env bash

TITLE=popuplauncher

SCREEN_WIDTH=`yabai -m query --displays --display | jq .frame.w`
SCREEN_HEIGHT=`yabai -m query --displays --display | jq .frame.h*2`

# yeah idk how this works
TERM_WIDTH=640
TERM_HEIGHT=1200

let "X=SCREEN_WIDTH/2-TERM_WIDTH/2"
let "Y=SCREEN_HEIGHT/2-TERM_HEIGHT/2"

#alacritty -t "${TITLE}" -o window.position.x="${X}" -o window.position.y="${Y}" -o window.dimensions.lines=20 -o window.dimensions.columns=50
# this works 
alacritty -t "${TITLE}" -o window.opacity=0.95 -o window.padding.y=10 -o window.padding.x=10 -e lf ~

