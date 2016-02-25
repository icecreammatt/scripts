#!/bin/sh
echo "Restarting to Windows"
sudo efibootmgr -n 4
sudo shutdown -r now
