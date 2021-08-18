#!/bin/bash

# Restart CoreAudio service
# https://apple.stackexchange.com/questions/16842/restarting-sound-service

sudo kill -9 `ps ax|grep 'coreaudio[a-z]' | awk '{print $1}'`
