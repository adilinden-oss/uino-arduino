#!/bin/bash

TOOLROOT=$HOME/Apps/arduino/hardware/tools
BINROOT=${TOOLROOT}/avr/bin

OLD_PATH=${PATH}
export PATH=${BINROOT}:${OLD_PATH}

make clean

# Build *uino-32u4 bootloader
make VID=0x1209 PID=0x414c F_CPU=16000000
mv Caterina.hex Caterina-uino-32u4.hex

PATH=${OLD_PATH}
