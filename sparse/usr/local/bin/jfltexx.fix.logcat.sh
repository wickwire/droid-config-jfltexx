#!/bin/sh

loglink="/dev/log"

if ! [[ -L "$loglink" && -d "$loglink" ]];then
    rm -rf /dev/log
    ln -s /dev/alog /dev/log
fi
