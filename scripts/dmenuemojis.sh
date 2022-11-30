#!/bin/bash

open -a Xquartz
emoji=$(cat $HOME/.config/bookmarks/emojis.txt | dmenu -l 20)

echo $emoji | awk '{print $NF}' | sed  's/ *$//' | pbcopy 
terminal-notifier -message "copied!"
