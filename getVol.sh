#!/bin/bash

LASTLINE=$(amixer -M sget Headphone | tail -1)

BRACKETS=$(grep -oP '(?<=\[).*?(?=%)' <<< $LASTLINE)

# echo $LASTLINE
echo $BRACKETS
