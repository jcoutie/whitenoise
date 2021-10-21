#!/bin/bash

LASTLINE=$(amixer -c 0 -M sget Headphone | tail -1)

BRACKETS=$(grep -oP '(?<=\[).*?(?=%)' <<< $LASTLINE)

# echo $LASTLINE
echo $BRACKETS
