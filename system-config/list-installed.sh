#!/bin/bash
# Last update : January, 2022

# Author: kral2
# Description: Generate output of packages installed with brew (formula & cask), mac AppStore or Setapp

ORG_NAME="kral2"
REPO_NAME="macos-scripts"

LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/$ORG_NAME/$REPO_NAME/releases/latest)
LATEST_RELEASE_TAG=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')

script_name=$(basename "$0")
version="$LATEST_RELEASE_TAG"
echo "$script_name - version $version"
echo "A cli tool to generate output of packages installed with brew (formula & cask), mac AppStore or Setapp"
echo ""

# start
timestamp=$(date +"%Y-%m-%d")
outfile="$HOME/Documents/macos_installed_packages.md"

touch $outfile

## Setapp Applications
echo "\`\`\`" | cat - $outfile > temp && mv temp $outfile
ls /Applications/Setapp | cat - $outfile > temp && mv temp $outfile
echo "\`\`\`bash" | cat - $outfile > temp && mv temp $outfile
echo | cat - $outfile > temp && mv temp $outfile
echo "## Setapp:" | cat - $outfile > temp && mv temp $outfile
echo | cat - $outfile > temp && mv temp $outfile

## Mac AppStore Applications
echo "\`\`\`" | cat - $outfile > temp && mv temp $outfile
mas list | cat - $outfile > temp && mv temp $outfile
echo "\`\`\`bash" | cat - $outfile > temp && mv temp $outfile
echo | cat - $outfile > temp && mv temp $outfile
echo "## Mac AppStore:" | cat - $outfile > temp && mv temp $outfile
echo | cat - $outfile > temp && mv temp $outfile

## Custom Brew Taps
brew list --full-name | grep / | sort | uniq | cat - $outfile > temp && mv temp $outfile
echo | cat - $outfile > temp && mv temp $outfile
echo "## Custom Taps in use:" | cat - $outfile > temp && mv temp $outfile

## Brew Casks
echo "\`\`\`" | cat - $outfile > temp && mv temp $outfile
brew list --versions --casks | cat - $outfile > temp && mv temp $outfile
echo "\`\`\`bash" | cat - $outfile > temp && mv temp $outfile
echo | cat - $outfile > temp && mv temp $outfile
echo "## Brew Casks (GUI):" | cat - $outfile > temp && mv temp $outfile
echo | cat - $outfile > temp && mv temp $outfile

## Brew Formula
echo "\`\`\`" | cat - $outfile > temp && mv temp $outfile
brew list --versions --formulae | cat - $outfile > temp && mv temp $outfile
echo "\`\`\`bash" | cat - $outfile > temp && mv temp $outfile
echo | cat - $outfile > temp && mv temp $outfile
echo "## Brew Formula (CLI):" | cat - $outfile > temp && mv temp $outfile
echo | cat - $outfile > temp && mv temp $outfile
echo "# ${timestamp}" | cat - $outfile > temp && mv temp $outfile
