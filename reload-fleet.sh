#!/bin/sh
# Destroy and resubmit to fleet
# each file ending in *.service
for service in *.service; do
    echo $service
    fleetctl destroy $service
    fleetctl submit $service
    fleetctl load $service
    fleetctl start $service
done
