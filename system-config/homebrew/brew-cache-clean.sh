#!/bin/bash
# Brew maintenance - Cleanup outdated formulas (last 14 days by default)
# For all installed or specific formulae, remove any older versions from the
# cellar. In addition, old downloads from the Homebrew download-cache are deleted.

brew cleanup --prune
