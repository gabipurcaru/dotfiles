#!/bin/bash
# modified from http://ficate.com/blog/2012/10/15/battery-life-in-the-land-of-tmux/

if [[ `uname` == 'Linux' ]]; then
  current_charge=$(upower -d | grep percentage | grep -Eo "[0-9.]+%" | head -n1)
  time_left=$(upower -d | grep 'time to empty' | grep -Eo "[0-9.]+.*$" | head -n1)
fi

echo "$current_charge | $time_left remaining"
