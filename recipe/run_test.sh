#!/bin/bash

# Start virtual X server
Xvfb :1 -screen 0 1024x768x24 &
sleep 1
export DISPLAY=:1

# Run tests
python -c 'import stimuli'
pip check
stimuli sys-info --help

# Clean up
killall Xvfb