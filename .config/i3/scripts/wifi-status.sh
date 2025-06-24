#!/bin/bash

INTERFACE="wlan0"  #set your (check with `iwctl device list`)

if iwctl station $INTERFACE show | grep -q "connected"; then
    SSID=$(iwctl station $INTERFACE show | grep "Connected network" | awk '{print $3}')
    IP=$(ip -4 addr show $INTERFACE | grep -oP '(?<=inet\s)\d+(\.\d+){3}' || echo "No IP")
    
    # output
    echo "$SSID"
else
    echo "Disconnected 睊"
fi
