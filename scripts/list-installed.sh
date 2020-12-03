#!/bin/bash
# Generate output of packages installed with brew (formula & cask), mac AppStore or Setapp

timestamp=$(date +"%Y-%m-%d")
outfile="/Users/kral2/Documents/macos_installed_packages.md"

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

## Brew Casks
echo "\`\`\`" | cat - $outfile > temp && mv temp $outfile
brew list --casks | cat - $outfile > temp && mv temp $outfile
echo "\`\`\`bash" | cat - $outfile > temp && mv temp $outfile
echo | cat - $outfile > temp && mv temp $outfile
echo "## Brew Casks (GUI):" | cat - $outfile > temp && mv temp $outfile
echo | cat - $outfile > temp && mv temp $outfile

## Brew Formula
echo "\`\`\`" | cat - $outfile > temp && mv temp $outfile
brew list --formula --full-name | cat - $outfile > temp && mv temp $outfile
echo "\`\`\`bash" | cat - $outfile > temp && mv temp $outfile
echo | cat - $outfile > temp && mv temp $outfile
echo "## Brew Formula (CLI):" | cat - $outfile > temp && mv temp $outfile
echo | cat - $outfile > temp && mv temp $outfile
echo "# ${timestamp}" | cat - $outfile > temp && mv temp $outfile
