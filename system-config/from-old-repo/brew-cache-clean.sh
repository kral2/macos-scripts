#!/bin/bash
# Brew maintenance - Cleanup outdated formulas
# For all installed or specific formulae, remove any older versions from the
# cellar. In addition, old downloads from the Homebrew download-cache are deleted.

brew cleanup --cache
brew cask cleanup
