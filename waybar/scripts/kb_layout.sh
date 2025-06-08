#!/bin/bash

# Получаем JSON-вывод и извлекаем активную раскладку для основной клавиатуры
layout=$(hyprctl -j devices | jq -r '.keyboards[] | select(.main) | .active_keymap' | awk -F'+' '{print $1}')

# Выводим результат
if [ -z "$layout" ]; then
    echo "Unknown"
else
    echo "$layout"
fi
