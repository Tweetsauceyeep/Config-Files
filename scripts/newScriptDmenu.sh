#!/bin/bash

open -a Xquartz

function scripts()
{
  ls 
}

TERMINAL="/Applications/Alacritty.app/Contents/MacOS/alacritty"
SCRIPTS=$( (echo new; scripts) | dmenu -l 15 -c)


if [[ x]]
