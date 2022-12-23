#!/usr/bin/env sh

# Some events send additional information specific to the event in the $INFO
# variable. E.g. the front_app_switched event sends the name of the newly
# focused application in the $INFO variable:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting
#!/usr/bin/env sh

case $INFO in
  "Discord")
    ICON=ﭮ
    ;;
  "FaceTime")
    ICON=
    ;;
  "Finder")
    ICON=
    ;;
  "Google Chrome")
    ICON=
    ;;
  "Spotify")
    ICON=
    ;;
  "Warp")
    ICON=
    ;;
  *)
    ICON=""
    ;;
esac

sketchybar --set $NAME icon=$ICON label="$INFO"
