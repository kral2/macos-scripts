#!/bin/bash

# Show hidden files and relaunch Finder

if [ -z $1 ]; then
	action="true"
else
	action=$1
fi

defaults write com.apple.Finder AppleShowAllFiles ${action}
killall Finder