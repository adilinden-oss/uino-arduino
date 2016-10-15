##ATmega32U4 Bootloader

The Caterina bootloader for the ATmega32U4 modified to support *uino-32u4.

###Requirements

The avr-gcc compiler is required.  It is provided by the Arduino IDE.  Make sure the Arduino IDE is installed.  I created a symlink as '$HOME/Apps/arduino' pointing to the actual installation location.

LUFA version 111009 is required.  Download LUFA from [https://github.com/abcminiuser/lufa/archive/LUFA-111009.zip] into this same directory.

###Add new board (optional)

Edit 'Descriptors.c' an find line 192.  There add a new DEVICE_PID and name for the new board.  Observe the character length of 16 characters.  If necessary scroll further down and add a new VENDOR_PID and vendor name for the new board.  Observer the character length of 11 characters.

Modify the 'build.sh' and add a new section for the new board matching the PID and VID of the new board.

###Build

Execute `./build.sh` which will build new files for each board.  Before commiting to git make sure to run `make clean`.  

