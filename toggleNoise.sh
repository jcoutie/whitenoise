#!/bin/bash

PLIST=$(pgrep omxplayer)

# echo $PLIST

if [ -z "$PLIST" ]
then
	./test.sh
	echo 1
else
	kill $PLIST
	echo 0
fi
