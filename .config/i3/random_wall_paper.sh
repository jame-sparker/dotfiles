#!/bin/bash
DIR=~/Pictures/wallpapers/
FILES=(${DIR}*.*)
SIZE=${#FILES[@]}

# seed random with year and weekly signal
RANDOM=$(date +%Y)$(date +%W)
IMAGE_INDEX=$[$RANDOM % SIZE]
echo Setting wallpaper to ${FILES[$IMAGE_INDEX]}

wal -s -i ${FILES[$IMAGE_INDEX]}
