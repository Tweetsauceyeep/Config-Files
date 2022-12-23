#!/usr/bin/env sh

PLUGIN_DIR="$HOME/.config/sketchybar/plugins"
BACKGROUND_COLOR="0xff2E3440"
BACKGROUND_HEIGHT=30

SPACE_ICONS=("" "1" "2" "3" "4" "5" "6" "7")
for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))
  sketchybar --add space      space.$sid left                    \
             --set space.$sid associated_space=$sid              \
                              icon=${SPACE_ICONS[i]}             \
                              icon.padding_left=20               \
                              icon.padding_right=20              \
                              icon.highlight_color=0xff88C0D0    \
                              background.padding_left=-10         \
                              background.padding_right=-8        \
                              background.height="$BACKGROUND_HEIGHT"               \
                              background.corner_radius=12         \
                              background.color="$BACKGROUND_COLOR"        \
                              background.drawing=on              \
                              label.drawing=off                  \
                              click_script="$SPACE_CLICK_SCRIPT"
done


