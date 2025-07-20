#!/bin/bash

command=`setxkbmap -query | grep "layout" | sed "s/^layout:[' ']*//"`

if [[ $command == 'us' ]]; then
	`eww -c ~/.config/eww/widgets/bar update en_reveal=true ru_reveal=false`
elif [[ $command == 'ru' ]]; then
	`eww -c ~/.config/eww/widgets/bar update en_reveal=false ru_reveal=true`
fi
