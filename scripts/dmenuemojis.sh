#!/bin/bash

emoji=$(cat $HOME/.config/bookmarks/emoji-list.txt | fzf)

echo $emoji | awk '{print $1}' | sed  's/ *$//' | pbcopy 
terminal-notifier -message "copied!"
