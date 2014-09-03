#!/bin/bash
ifconfig | grep "inet" | grep -v "127.0.0.1" | sed -e 's/^ *//' | awk '{ print $2 }' | sort | uniq
