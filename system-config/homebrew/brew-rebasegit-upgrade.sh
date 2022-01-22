#!/bin/bash
# Upgrade Brew from pre-1.0 versions
# Usually you get stuck with 0.99 ...
# after completing the Git rebase, run "brew upgrade" to update all your installed formulas

cd "$(brew --repo)" && git fetch && git reset --hard origin/master && brew update
