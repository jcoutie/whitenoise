#!/bin/bash

LASTLINE=$(amixer -M sget Headphone | tail -1)

BRACKETS=$(grep -oP '(?<=\[).*?(?=%)' <<< $LASTLINE)

NEWVOL=$(($BRACKETS+5))

if [ $NEWVOL -gt 85 ]
then
	NEWVOL=85
fi

amixer -q -M sset Headphone $NEWVOL%

# echo $LASTLINE
echo $NEWVOL
