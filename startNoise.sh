#!/bin/bash

PLIST=$(pgrep omxplayer)

# echo $PLIST

if [ -z "$PLIST" ]
then
	/home/pi/whitenoise/test.sh
fi

echo 1
