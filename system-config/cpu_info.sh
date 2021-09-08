#!/bin/bash

# List CPU information
# https://apple.stackexchange.com/questions/352769/does-macos-have-a-command-to-retrieve-detailed-cpu-information-like-proc-cpuinf/352770

# Also : https://apple.stackexchange.com/questions/238777/how-do-i-identify-which-cpu-a-macbook-uses/238789#238789
# Interesting output with `system_profiler SPHardwareDataType | grep Processor`

usage () {
    printf "%s \n" "Usage : ./cpu_info.sh [--short | --all | --help]"
    printf "\n"
    printf "%s \n" "--short : print CPU Brand/Model, Core count, Thread count."
	printf "%s \n" "--all   : print all cpu information."
    printf "%s \n" "--help  : print this usage message."
}

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
