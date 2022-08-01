#!/usr/bin/env bash

# Run xidlehook
xidlehook \
  --not-when-fullscreen \
  --not-when-audio \
  --timer 180 \
    'xrandr --output eDP-1 --brightness .1; xrandr --output HDMI-1 --brightness .1' \
    'xrandr --output eDP-1 --brightness 1; xrandr --output HDMI-1 --brightness 1' \
  --timer 10 \
    'xrandr --output eDP-1 --brightness 1; xrandr --output HDMI-1 --brightness 1; i3lock-fancy-dualmonitor' \
    '' \
  --timer 600 \
    'systemctl suspend' \
    ''
