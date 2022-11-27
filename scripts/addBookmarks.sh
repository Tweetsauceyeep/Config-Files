#!/bin/bash

file="$HOME/.config/bookmarks/bookmarks.txt"
bookmark="$(pbpaste)"

if grep -q "$bookmark" "$file"; then
  echo "$bookmark Already added :3" | terminal-notifier -sound default -title Bookmarks
else
  echo "$bookmark is now saved to the file" | terminal-notifier -sound default -title Bookmarks
  echo "$bookmark" >> "$file"
fi
