#!/bin/bash

PLIST=$(pgrep omxplayer)

# echo $PLIST

if [ -z "$PLIST" ]
then
	./test.sh
fi

echo 1
