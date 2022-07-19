#!/usr/bin/env bash

#sketchybar --set $NAME label="$(date '+|   %H:%M:%S |   %m/%d/%y (%a) | ')"

#sketchybar --set $NAME label="$(date '+ (%a) %m/%d |  %H:%M:%S |')"
sketchybar --set $NAME label="$(date '+ %m-%d-%Y | %I:%M:%S |')"
