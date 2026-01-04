#!/bin/bash
LOG_FILE="$HOME/mydotfiles/mako/historial.txt"
echo "$(date '+%Y-%m-%d %H:%M:%S') | $1 | $2 | $3" >> "$LOG_FILE"
