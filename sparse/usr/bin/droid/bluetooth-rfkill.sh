#!/bin/bash

if [[ ${RFKILL_STATE} == 0 || ${RFKILL_STATE} == 2 ]];then
    killall brcm_patchram_plus
else
    if [[ $(`ps aux | grep [b]rcm`|wc -l) == 0 ]];then
        /usr/sbin/brcm_patchram_plus --patchram /vendor/firmware/bcm4335.hcd --enable_hci --bd_addr $(/bin/cat /efs/bluetooth/bt_addr) --no2bytes --tosleep 6000 /dev/ttyHS0
    fi
fi
