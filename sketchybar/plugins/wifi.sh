
#!/usr/bin/env sh

#WIFI=$(m wifi status | grep -w "SSID: .*" | sed 's/SSID: //g')
WIFI=$(m wifi status | grep -w "SSID: .*" | sed 's/SSID: //' | tr -d ' ')
#CURRENT_WIFI="$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I)"
#SSID="$(echo "$CURRENT_WIFI" | grep -o "SSID: .*" | sed 's/^SSID: //')"
CURR_TX="$(echo "$CURRENT_WIFI" | grep -o "lastTxRate: .*" | sed 's/^lastTxRate: //')"

if [ "$WIFI" = "" ]; then
  sketchybar --set $NAME label="| 睊 Disconnected"
else
  sketchybar --set $NAME label="|   $WIFI"
fi
