#!/bin/bash

bookmark=$(cat ~/.config/bookmarks/bookmarks.txt | fzf --pointer="->" --info=inline --prompt "[Dmenu] -> " --height 50% --color 'border:#88C0D0,info:#88C0D0,bg+:#5E81AC,gutter:-1' )

#cat ~/.config/bookmarks/bookmarks.txt | fzf --pointer="->" --info=inline --prompt "[Bookmarks] -> " --height 50% --color 'border:#88C0D0,info:#88C0D0,bg+:#5E81AC,gutter:-1' | awk '{print $1}' |xargs -I {} open "{}"
#cat ~/.config/bookmarks/bookmarks.txt | fzf --info=inline --prompt "[Bookmarks] -> " --height 50% --color 'border:#88C0D0,info:#88C0D0,bg+:#5E81AC,gutter:-1' | awk '{print $1}' | pbcopy
#xdotool type $(cat ~/.config/bookmarks/bookmarks.txt | fzf --info=inline --prompt "[Bookmarks] -> " --height 50% --color 'border:#88C0D0,info:#88C0D0,bg+:#5E81AC,gutter:-1' | awk '{print $1}')

if echo "$bookmark"  | grep -q 'https:'; then 
  echo "$bookmark" | awk '{print $1}' | xargs -I {} open "{}"
  echo "opened!"
elif echo "$bookmark" | grep -q 'editbookmarks'; then
  #alacritty -e vim ~/.config/bookmarks/bookmarks.txt
  # this just opens vim in the menu bruh
  vim ~/.config/bookmarks/bookmarks.txt
elif echo "$bookmark" | grep -q 'restartyabai'; then
  brew services restart yabai && brew services restart skhd
elif echo "$bookmark" | grep -q 'apps'; then
  .config/scripts/launcher.sh
elif echo "$bookmark" | grep -q 'files'; then
  .config/scripts/pdf-launcher.sh
else 
  echo "$bookmark" | pbcopy
  echo "copied!"
fi
