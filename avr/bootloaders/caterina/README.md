##ATmega32U4 Bootloader

The Caterina bootloader for the ATmega32U4 modified to support *uino-32u4.

###Requirements

The avr-gcc compiler is required.  It is provided by the Arduino IDE.  Make sure the Arduino IDE is installed.  I created a symlink as '$HOME/Apps/arduino' pointing to the actual installation location.

LUFA version 111009 is required.  Download LUFA from [https://github.com/abcminiuser/lufa/archive/LUFA-111009.zip] into this same directory.

###Add new board (optional)

Edit 'Descriptors.c' an find line 192.  There add a new DEVICE_PID and name for the new board.  Observe the character length of 16 characters.  If necessary scroll further down and add a new VENDOR_PID and vendor name for the new board.  Observer the character length of 11 characters.

Modify the 'build.sh' and add a new section for the new board matching the PID and VID of the new board.

###Build

Execute `make` which will build new files for each board.  Before commiting to git make sure to run `make clean`.  `make` takes optional arguments.  If TOOLROOT is not specified then any avr-gcc tools in path will be used.  Using TOOLROOT it is possible to explicitly specifiy Arduino IDE build tools.  The USB VID and PID can also be specified on command line.  Example:

```
make TOOLROOT=$HOME/Apps/arduino/hardware/tools VID=0x1209 PID=0x414c
```

