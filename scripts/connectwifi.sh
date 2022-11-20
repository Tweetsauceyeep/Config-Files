#!/bin/bash

open -a Xquartz

network=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport scan | awk '{ print $1 }' | dmenu -l 20 -i -p "wifi:")
#name=$("$network" | awk '{ print $1 }')
password=$(dmenu < /dev/null)

networksetup -setairportnetwork en1 "${name}" "${password}"

