#!/bin/bash
# Enable/Disable Winkhub lights
# light <index> <on/off>

HOST="192.168.1.11:5000"

active=false
if [[ $2 == "on" ]]; then
    active="true"
else
    active="false"
fi

curl -X PUT "http://$HOST/lights/$1/power" -d "{\"id\": $1, \"active\": $active, \"value\": 255 }" --header  "Content-Type: application/json"
