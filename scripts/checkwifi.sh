#!/bin/sh

IP="192.168.66.1"

/bin/ping -c 5 "$IP" > /dev/null

if [ $? != 0 ]
then
    echo "restart wlan0"
    /sbin/ifconfig 'wlan0' down
    sleep 5
    /sbin/ifconfig 'wlan0' up
fi
