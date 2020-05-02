#!/bin/bash
DIR=~/Pictures/wallpapers/
FILES=(${DIR}*.*)
SIZE=${#FILES[@]}
# seed random with year and bi-weekly signal
RANDOM=$(date +%Y)$[$(date +%W) / 2]
IMAGE_INDEX=$[$RANDOM % SIZE]
echo Setting wallpaper to ${FILES[$IMAGE_INDEX]}
feh --bg-scale ${FILES[$IMAGE_INDEX]}

