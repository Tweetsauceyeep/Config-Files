#!/bin/bash

file="$HOME/.config/bookmarks/bookmarks.txt"
bookmark="$(pbpaste)"

if grep -q "$bookmark" "$file"; then
  osascript -e 'display notification "Bookmark already added :3" with title "Bookmark"'
else
  osascript -e 'display notification "Bookmark is now saved to the file" with title "Bookmark added!"'
  echo "$bookmark" >> "$file"
fi
