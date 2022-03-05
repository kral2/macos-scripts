#!/bin/bash
# Last update : January, 2022

# Author: kral2
# Description: Update shell for current user

ORG_NAME="kral2"
REPO_NAME="macos-scripts"

LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/$ORG_NAME/$REPO_NAME/releases/latest)
LATEST_RELEASE_TAG=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')

script_name=$(basename "$0")
version="$LATEST_RELEASE_TAG"
echo "$script_name - version $version"
echo "A cli tool to update shell for current user"
echo ""

# Usage
usage () {
    printf "%s \n" "Usage : "
	printf "\n"
	printf "%s \n" "--help  : print this usage message."
}

# start

## we want to use zsh installed by homebrew instead of default system zsh in /bin/zsh
## This is required to get zsh pure theme autolinked to the homebrew installed zsh
## before changing shell for current user, we need to update the list of autorized shells.

USER_ZSH=$(which zsh) # get path to zsh for current user.
sudo sh -c "echo $USER_ZSH >> /etc/shells"
sudo chsh -s $USER_ZSH $USER

# remove duplicate lines
sudo mv /etc/shells /etc/shells.bkp
sudo uniq /etc/shells.bkp /etc/shells