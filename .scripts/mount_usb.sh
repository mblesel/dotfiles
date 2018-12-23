#!/usr/bin/env bash

if [ -z $1 ]; then
    echo "No device selected"
    exit 1
fi

mount $1 /mnt/usb
