#!/bin/sh

PROCESS="avconv"

ps | grep "$PROCESS" | grep -v "grep" > /dev/null

if [ $? != 0 ]
then
    echo "not running"
fi
