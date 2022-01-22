#!/bin/bash
# Last update : January, 2022

# Author: kral2
# Description: XXXX

ORG_NAME="kral2"
REPO_NAME="macos-scripts"

LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/$ORG_NAME/$REPO_NAME/releases/latest)
LATEST_RELEASE_TAG=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')

script_name=$(basename "$0")
version="$LATEST_RELEASE_TAG"
echo "$script_name - version $version"
echo "A cli tool to xxx"
echo ""

# Usage
usage () {
    printf "%s \n" "Usage : "
	printf "\n"
	printf "%s \n" "--help  : print this usage message."
}

# start
