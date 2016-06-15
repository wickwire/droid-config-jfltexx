#!/bin/sh

zycache="/var/cache/pk-zypp-cache"

if ! [[ -L "$zycache" && -d "$zycache" ]];then
    mv $zycache /var/cache/.pk-zypp-cache
    ln -sf /var/cache/zypp $zycache
fi
