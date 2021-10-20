#!/bin/bash

PLIST=$(pgrep omxplayer)

# echo $PLIST

if [ -z "$PLIST" ]
then
	echo 0
else
	kill $PLIST
	echo 0
fi
