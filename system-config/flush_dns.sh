#!/bin/bash

# Last update : September, 2021
# Author: kral2
# Description: flush DNS cache

script_name=$(basename "$0")
version="0.1.0"
echo "$script_name - version $version"
echo "A cli tool to flush macOS DNS cache"
echo ""

dscacheutil -flushcache
sudo killall -HUP mDNSResponder

echo "DNS cache entries flushed, Bonjour restarted."