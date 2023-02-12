#!/bin/bash

$location=~/.bashrc

echo "Register aliases"

echo "alias ll='ls -lah --color=auto'" >> $location
echo "alias gitfp='git fetch origin && git remote prune origin'" >> $location
