#!/bin/bash

# Show hidden files and relaunch Finder

# Usage:
# > ./show-hidden-files.sh [true|false]

if [ -z "$1" ]; then
	echo ""
	echo "Usage information: ./show-hidden-files.sh [true|false]"
	echo "- true: show hidden files"
	echo "- false: mask hidden files"
else
	action=$1
	defaults write com.apple.Finder AppleShowAllFiles "${action}"
    killall Finder
fi
