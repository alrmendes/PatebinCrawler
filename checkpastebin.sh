#!/bin/sh

CHECK=$(ps aux | grep -v grep | grep pastebin_crawler)
LOG_FILE="/home/pi/programs/pastebin_crawler/pastebin_crawler_output.log"

if [ "$CHECK" = "" ]; then
	echo "not running..."
	echo "Starting..."
	/home/pi/programs/pastebin_crawler/pastebin_crawler_new.py >> $LOG_FILE & 
else 
	echo "already running"
fi
