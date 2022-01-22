#!/bin/bash
# Last update : January, 2022

# Author: kral2
# Description: Restart CoreAudio service
# https://apple.stackexchange.com/questions/16842/restarting-sound-service

ORG_NAME="kral2"
REPO_NAME="macos-scripts"

LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/$ORG_NAME/$REPO_NAME/releases/latest)
LATEST_RELEASE_TAG=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')

script_name=$(basename "$0")
version="$LATEST_RELEASE_TAG"
echo "$script_name - version $version"
echo "A cli tool to restart CoreAudio service"
echo ""

# start
sudo kill -9 `ps ax|grep 'coreaudio[a-z]' | awk '{print $1}'`
