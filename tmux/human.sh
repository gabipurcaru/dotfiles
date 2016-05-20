#!/bin/bash

tm_icon=""

set -g status-left-length 32
set -g status-right-length 150
set -g status-interval 5


tm_battery="#(~/.dotfiles/bin/battery_indicator.sh)"

tm_date="%R %d %b"

set -g status-right $tm_battery' '$tm_date
