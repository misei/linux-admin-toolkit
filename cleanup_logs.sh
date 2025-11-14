#!/bin/bash
LOG_DIR="/var/log"    ### Clean up Logs
DAYS=30

echo "Cleaning logs older than $DAYS days in $LOG_DIR"
find $LOG_DIR -type f -mtime +$DAYS -exec rm -f {} \;

echo "Done."
