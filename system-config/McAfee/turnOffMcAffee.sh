#!/bin/sh

# Stop McAfee

echo "########################################"
echo "Temporarily disabling McAfee"
echo "########################################"
sudo /usr/local/McAfee/AntiMalware/VSControl stop
sudo /usr/local/McAfee/AntiMalware/VSControl stopoas
sudo /usr/local/McAfee/WebProtection/bin/WPControl stop
sudo /usr/local/McAfee/StatefulFirewall/bin/StatefullFirewallControl stop
echo "########################################"
echo "McAfee temporarily disabled"
echo "########################################"
