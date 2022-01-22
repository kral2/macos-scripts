#!/bin/bash
# Last update : January, 2022

# Author: kral2
# Description: List CPU information
# https://apple.stackexchange.com/questions/352769/does-macos-have-a-command-to-retrieve-detailed-cpu-information-like-proc-cpuinf/352770
# Also : https://apple.stackexchange.com/questions/238777/how-do-i-identify-which-cpu-a-macbook-uses/238789#238789
# Interesting output with `system_profiler SPHardwareDataType | grep Processor`

ORG_NAME="kral2"
REPO_NAME="macos-scripts"

LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/$ORG_NAME/$REPO_NAME/releases/latest)
LATEST_RELEASE_TAG=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')

script_name=$(basename "$0")
version="$LATEST_RELEASE_TAG"
echo "$script_name - version $version"
echo "A cli tool to List CPU information"
echo ""

usage () {
    printf "%s \n" "Usage : ./cpu_info.sh [--short | --all | --help]"
    printf "\n"
    printf "%s \n" "--short : print CPU Brand/Model, Core count, Thread count."
	printf "%s \n" "--all   : print all cpu information."
    printf "%s \n" "--help  : print this usage message."
}

# start
if [ -z "$1" ]; then
    sysctl -n machdep.cpu.brand_string
    sysctl -a | grep machdep.cpu.core_count | sed 's/machdep.//'
    sysctl -a | grep machdep.cpu.thread_count | sed 's/machdep.//'
elif [ "$1" = "--all" ]; then
    sysctl -a | grep machdep.cpu
elif [ "$1" = "--short" ]; then
    sysctl -n machdep.cpu.brand_string
    sysctl -a | grep machdep.cpu.core_count | sed 's/machdep.//'
    sysctl -a | grep machdep.cpu.thread_count | sed 's/machdep.//'
elif [ "$1" = "--help" ]; then
	usage
else
    usage
fi
