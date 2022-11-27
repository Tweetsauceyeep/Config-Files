#!/bin/bash

open -a Xquartz
#bookmark=$(cat ~/.config/bookmarks/bookmarks.txt | fzf --pointer="->" --info=inline --prompt "[Dmenu] -> " --height 50% --color 'border:#88C0D0,info:#88C0D0,bg+:#5E81AC,gutter:-1')
bookmark=$(cat ~/.config/bookmarks/bookmarks.txt | dmenu -i -l '15' )

if echo "$bookmark"  | grep -q 'https:'; then 
  echo "$bookmark" | awk '{print $1}' | xargs -I {} open "{}"
  echo "opened!"
elif echo "$bookmark" | grep -q 'editbookmarks'; then
  /Applications/Alacritty.app/Contents/MacOS/alacritty -e vim ~/.config/bookmarks/bookmarks.txt
elif echo "$bookmark" | grep -q 'restartyabai'; then
  brew services restart yabai && brew services restart skhd
elif echo "$bookmark" | grep -q 'xquartz'; then
  open -a XQuartz
elif echo "$bookmark" | grep -q 'notes'; then
  /Applications/Alacritty.app/Contents/MacOS/alacritty -e vim Obsidian-Notes/index.md
elif echo "$bookmark" | grep -q 'editdmenu'; then
  /Applications/Alacritty.app/Contents/MacOS/alacritty -e vim dmenu/config.h
elif echo "$bookmark" | grep -q 'sketchybar'; then
  brew services restart sketchybar
else 
  echo "$bookmark" | pbcopy
  echo "copied!" | terminal-notifier -sound default
fi



#elif echo "$bookmark" | grep -q 'apps'; then
#~/.config/scripts/launcher.sh
#elif echo "$bookmark" | grep -q 'files'; then
#~/.config/scripts/pdf-launcher.sh
