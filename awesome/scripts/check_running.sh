#!/bin/bash

# Checks whether a program is already running; runs if not running
if [[ $(pgrep -c $1) -eq 0 ]]; 
then
        $1
fi
