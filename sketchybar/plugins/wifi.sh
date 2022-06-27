#!/usr/bin/env bash
WIFI=$( networksetup -getairportnetwork en1 | cut -c 24-)

sketchybar --set $NAME label="$(echo "|"   \ $WIFI)"


