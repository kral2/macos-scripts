#!/bin/bash

# Show hidden files and relaunch Finder

# Usage:
# > ./show_hidden_files.sh [true|false|--help]

usage () {
    printf "%s \n" "Usage : ./show_hidden_files.sh [true | false | --help]"
	printf "\n"
	printf "%s \n" "true  : show hidden files"
	printf "%s \n" "false : mask hidden files"
	printf "\n"
	printf "%s \n" "--help  : print this usage message."
}

if [ -z "$1" ]; then
	usage
elif [ "$1" = "--help" ]; then
	usage
else
	action=$1
	defaults write com.apple.Finder AppleShowAllFiles "${action}"
    killall Finder
fi
