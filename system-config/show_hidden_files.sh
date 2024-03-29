#!/bin/bash
# Last update : January, 2022

# Author: kral2
# Description: Show hidden files and relaunch Finder

ORG_NAME="kral2"
REPO_NAME="macos-scripts"

LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/$ORG_NAME/$REPO_NAME/releases/latest)
LATEST_RELEASE_TAG=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')

script_name=$(basename "$0")
version="$LATEST_RELEASE_TAG"
echo "$script_name - version $version"
echo "A cli tool to show/mask hidden files and relaunch Finder"
echo ""

# Usage:
usage () {
    printf "%s \n" "Usage : ./show_hidden_files.sh [true | false | --help]"
	printf "\n"
	printf "%s \n" "true  : show hidden files"
	printf "%s \n" "false : mask hidden files"
	printf "%s \n" "--help  : print this usage message."
}

# start
if [ -z "$1" ]; then
	usage
elif [ "$1" = "--help" ]; then
	usage
else
	action=$1
	defaults write com.apple.Finder AppleShowAllFiles "${action}"
    killall Finder
fi
