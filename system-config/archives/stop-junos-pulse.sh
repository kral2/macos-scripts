#!/bin/bash
# Juniper Pulse (VPN software), stop it and unload tray icon

launchctl unload /Library/LaunchAgents/net.juniper.pulsetray.plist
