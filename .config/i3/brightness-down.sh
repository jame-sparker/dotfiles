#!/bin/bash
[[ $(echo "$(xbacklight -get) < 10" | bc) -ne 0 ]] &&\
[[ $(echo "$(xbacklight -get) > 1 " | bc) -ne 0 ]] &&\
xbacklight -set 1 || xbacklight -dec 10
