#!/bin/bash

# Switch between bluetooth profiles:
# HSP/HFP over mSBC bi-directional (input/output)
# A2DP-LDAC unidirectional (only input)

ldac=`pactl list | grep Active | grep ldac`
card=`pactl list | grep "Name: bluez_card." | cut -d ' ' -f 2`

if [ -n "$ldac" ]; then
    echo "Switching $card to HSP/HFP over mSBC (bi-directional and lower quality sound)..."
    pactl set-card-profile $card headset-head-unit-msbc
    echo "...done"
else
    echo "Switching $card to A2DP-LDAC (unidirectional and high quality sound)..."
    pactl set-card-profile $card a2dp-sink-ldac
    echo "...done"
fi

# https://bbs.archlinux.org/viewtopic.php?pid=1973004
# https://wiki.archlinux.org/title/bluetooth_headset#Switch_between_HSP/HFP_and_A2DP_setting