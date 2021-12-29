#!/bin/sh
# shell scipt to prepend i3status with more stuff
i3status --config ~/.config/i3status/config | while :
do
    read line
    LG=$(xkb-switch)
#    echo "LG: $LG | $line" || exit 1
		if [ $LG == "br" ]
    then
        dat="[{ \"full_text\": \"🖮: $LG\", \"color\":\"#FFFFFF\" },"
    else
        dat="[{ \"full_text\": \"🖮: $LG\", \"color\":\"#E2E2E2\" },"
    fi
    echo "${line/[/$dat}" || exit 1
done
