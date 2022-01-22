#!/bin/sh
# Last update : January, 2022

# Author: kral2
# Description: Stop mcafee

ORG_NAME="kral2"
REPO_NAME="macos-scripts"

LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/$ORG_NAME/$REPO_NAME/releases/latest)
LATEST_RELEASE_TAG=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')

script_name=$(basename "$0")
version="$LATEST_RELEASE_TAG"
echo "$script_name - version $version"
echo "A cli tool to Stop mcafee"
echo ""

# start
echo "########################################"
echo "Temporarily disabling McAfee"
echo "########################################"
sudo /usr/local/McAfee/AntiMalware/VSControl stop
sudo /usr/local/McAfee/AntiMalware/VSControl stopoas
sudo /usr/local/McAfee/WebProtection/bin/WPControl stop
sudo /usr/local/McAfee/StatefulFirewall/bin/StatefullFirewallControl stop
echo "########################################"
echo "McAfee temporarily disabled"
echo "########################################"
