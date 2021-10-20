#!/bin/bash

LASTLINE=$(amixer -M sget Headphone | tail -1)

BRACKETS=$(grep -oP '(?<=\[).*?(?=%)' <<< $LASTLINE)

NEWVOL=$(($BRACKETS-5))

if [ $NEWVOL -lt 0 ]
then
	NEWVOL=0
fi

amixer -q -M sset Headphone $NEWVOL%

# echo $LASTLINE
echo $NEWVOL
