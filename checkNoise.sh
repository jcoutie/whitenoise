#!/bin/bash

PLIST=$(pgrep omxplayer)

# echo $PLIST

if [ -z "$PLIST" ]
then
	echo 0
else
	echo 1
fi
