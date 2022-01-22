#!/bin/bash
# Last update : January, 2022

# Author: kral2
# Description: Brew maintenance - Cleanup
# Brew maintenance - Cleanup outdated formulas (last 14 days by default)
# For all installed or specific formulae, remove any older versions from the
# cellar. In addition, old downloads from the Homebrew download-cache are deleted.

ORG_NAME="kral2"
REPO_NAME="macos-scripts"

LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/$ORG_NAME/$REPO_NAME/releases/latest)
LATEST_RELEASE_TAG=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')

script_name=$(basename "$0")
version="$LATEST_RELEASE_TAG"
echo "$script_name - version $version"
echo "A cli tool to Cleanup outdated formulas (last 14 days by default)"
echo ""

brew cleanup --prune
