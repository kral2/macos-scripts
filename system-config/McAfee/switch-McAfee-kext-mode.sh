#!/bin/bash
# Last update : January, 2022

# Author: kral2
# Description: Switch McAfee Endpoint Security to kext-less mode (less crash)
# https://docs.mcafee.com/bundle/endpoint-security-10.6.0-installation-guide-macOS/page/GUID-74D9510B-A542-4811-AF36-78EA5949128A.html

ORG_NAME="kral2"
REPO_NAME="macos-scripts"

LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/$ORG_NAME/$REPO_NAME/releases/latest)
LATEST_RELEASE_TAG=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')

script_name=$(basename "$0")
version="$LATEST_RELEASE_TAG"
echo "$script_name - version $version"
echo "A cli tool to Switch McAfee Endpoint Security to kext-less mode (less crash)"
echo ""

sudo "/Library/Application Support/Oracle/BaseImage/toggle-kext"
