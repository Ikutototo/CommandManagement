#!/bin/zsh

echo "root directory";cd /;ls -l

filename=$(date '+%Y-%m-%d')
touch "$filename"