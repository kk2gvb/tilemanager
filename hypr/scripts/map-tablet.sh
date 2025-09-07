#!/usr/bin/env bash

TABLET="ugtablet-9-inch-pentablet"
# Выбери "HDMI-A-1" или "eDP-1"
TARGET="HDMI-A-1"

if [ "$TARGET" = "HDMI-A-1" ]; then
    hyprctl keyword tablet:transform "$TABLET,0.545,0,0.455,0,1,0,0,0,1"
else
    hyprctl keyword tablet:transform "$TABLET,0.545,0,0,0,1,0,0,0,1"
fi

