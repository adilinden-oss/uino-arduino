##\*uino Arduino Support

These are the support files for the \*uino boards.  To use, checkout the repository into the Sketch books hardware folder.  The *uino boards supported should be automatically listed in the Arduino IDE Boards menu.

This is only for the 1.6.x series of Arduino releases, it will not work with earlier releases.

###References:

- [Arduino IDE 1.5 3rd party Hardware specification](https://github.com/arduino/Arduino/wiki/Arduino-IDE-1.5-3rd-party-Hardware-specification)
- [Arduino Hardware Cores migration guide from 1.0 to 1.6](https://github.com/arduino/Arduino/wiki/Arduino-Hardware-Cores-migration-guide-from-1.0-to-1.6)

###Changes

Saturday October 15, 2016

- Now have proper pin mappings for *uino-32u4.
- Loaded real board with bootloader successfully.
- Loaded sketch to blink on-board LEDs successfully.

Friday October 14, 2016

- Added inital cut for \*uino-32u4 based on Leonardo.  Still uses Leonardo port assignments.
- Added Caterina bootloader.
