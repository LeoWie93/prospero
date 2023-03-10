#!/bin/bash
location=~/.aliases
echo "" > $location

echo "alias ll='ls -lah --color=auto'" >> $location
echo "alias git-fu='git add . && git commit --amend --no-edit && git push origin main -f'" >> $location
echo "alias git-fp='git fetch origin && git remote prune origin'" >> $location
