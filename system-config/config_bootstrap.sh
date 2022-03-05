#!/bin/bash
# Last update : March, 2022

# Author: kral2
# Description: bootstrap a new MacOS system configuration

script_name=$(basename "$0")

echo "$script_name"
echo "A cli tool to bootstrap a new MacOS system configuration"
echo ""

# Install and activate Homebrew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' > $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install oh-my-zsh
/bin/sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Ansible
brew install ansible

# Clone macos-scripts repo
#git clone https://github.com/kral2/macos-scripts.git
