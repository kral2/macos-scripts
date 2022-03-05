#!/bin/bash
# Last update : January, 2022

# Author: kral2
# Description: Update macOS system names

ORG_NAME="kral2"
REPO_NAME="macos-scripts"

LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/$ORG_NAME/$REPO_NAME/releases/latest)
LATEST_RELEASE_TAG=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')

script_name=$(basename "$0")
version="$LATEST_RELEASE_TAG"
echo "$script_name - version $version"
echo "A cli tool to update macOS system names"
echo ""

# Usage
usage () {
    printf "%s \n" "Usage : "
	printf "\n"
	printf "%s \n" "--help  : print this usage message."
}

# start
NEW_NAME="$1"

sudo scutil --set HostName "$NEW_NAME.local"
sudo scutil --set LocalHostName "$NEW_NAME"
sudo scutil --set ComputerName "$NEW_NAME"
dscacheutil -flushcache