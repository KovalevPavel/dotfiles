#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Launch bar
polybar bar_0 2>&1 | tee -a /tmp/polybar_0.log & disown

echo "Bar launched..."
