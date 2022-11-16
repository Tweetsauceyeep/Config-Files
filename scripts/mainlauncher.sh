#!/bin/bash

bookmark=$(cat ~/.config/bookmarks/bookmarks.txt | fzf --pointer="->" --info=inline --prompt "[Dmenu] -> " --height 50% --color 'border:#88C0D0,info:#88C0D0,bg+:#5E81AC,gutter:-1' )

#cat ~/.config/bookmarks/bookmarks.txt | fzf --pointer="->" --info=inline --prompt "[Bookmarks] -> " --height 50% --color 'border:#88C0D0,info:#88C0D0,bg+:#5E81AC,gutter:-1' | awk '{print $1}' |xargs -I {} open "{}"
#cat ~/.config/bookmarks/bookmarks.txt | fzf --info=inline --prompt "[Bookmarks] -> " --height 50% --color 'border:#88C0D0,info:#88C0D0,bg+:#5E81AC,gutter:-1' | awk '{print $1}' | pbcopy
#xdotool type $(cat ~/.config/bookmarks/bookmarks.txt | fzf --info=inline --prompt "[Bookmarks] -> " --height 50% --color 'border:#88C0D0,info:#88C0D0,bg+:#5E81AC,gutter:-1' | awk '{print $1}')
# Normal bookmarks

if echo "$bookmark" | grep -q 'editbookmarks'; then
  vim ~/.config/bookmarks/bookmarks.txt
elif echo "$bookmark" | grep -q 'restartyabai'; then
  brew services restart yabai && brew services restart skhd
elif echo "$bookmark" | grep -q 'urlbookmarks'; then
  cat ~/.config/bookmarks/urlbookmarks.txt | fzf --pointer="->" --info=inline --prompt "[Dmenu] -> " --height 49% --color 'border:#88C0D0,info:#88C0D0,bg+:#5E81AC,gutter:-1' | awk '{print $1}' | xargs -I {} open "{}"
elif echo "$bookmark" | grep -q 'apps'; then
  .config/scripts/launcher.sh
elif echo "$bookmark" | grep -q 'files'; then
  .config/scripts/pdf-launcher.sh
elif echo "$bookmark" | grep -q 'editurls'; then
  vim ~/.config/bookmarks/urlbookmarks.txt
fi
