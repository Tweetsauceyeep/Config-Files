#!/bin/bash

open -a Xquartz
#bookmark=$(cat ~/.config/bookmarks/bookmarks.txt | fzf --pointer="->" --info=inline --prompt "[Dmenu] -> " --height 50% --color 'border:#88C0D0,info:#88C0D0,bg+:#5E81AC,gutter:-1')
bookmark=$(cat ~/.config/bookmarks/bookmarks.txt | dmenu -i -l '15' -c -p "muh bookmarks:")

if echo "$bookmark"  | grep -q 'https:'; then 
  echo "$bookmark" | awk '{print $1}' | xargs -I {} open "{}"
  echo "opened!"
elif echo "$bookmark" | grep -q 'restartyabai'; then
  brew services restart yabai && brew services restart skhd
elif echo "$bookmark" | grep -q 'sketchybar'; then
  brew services restart sketchybar
else 
  echo "$bookmark" | pbcopy
fi

yabai -m window --focus recent


#elif echo "$bookmark" | grep -q 'apps'; then
#~/.config/scripts/launcher.sh
#elif echo "$bookmark" | grep -q 'files'; then
#~/.config/scripts/pdf-launcher.sh
