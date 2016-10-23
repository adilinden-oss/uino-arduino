#\*uino Arduino Support

These are the support files for the \*uino boards. This is only for the 1.6.x series of Arduino releases, it will not work with earlier releases.

##Install

Checkout the repository into the Sketchbook hardware folder.  The \*uino boards supported will now be listed in the Arduino IDE "Boards" menu.

##Prepare Board

All of the firmware and bootloaders required for the \*uino boards are present.  To install the bootloader in the ATmega1284p or the ATmega32U4 connect a programmer of your choice, such as the AVRISP MKII and follow these steps.

###\*uino-32u4

Connect the programmer to the programming header of the ATmega32U4. With the AVRISP MKII the board also needs external power (USB). From within the Arduino IDE

1. Under "Tools > Boards" select:
    * \*uino-32u4
2. Select "Tools > Burn Bootloader"
3. Success! 

###\*uino-1284p

Connect the programmer to the programming header of the ATmega1284p.  With the AVRISP MKII the board also needs external power. From within the Arduino IDE

1. Under "Tools > Boards" select:
    * \*uino-1284p
2. Select "Tools > Burn Bootloader"
3. Success! 

Connect the programmer to the programming header of the ATmega8U2.  With the AVRISP MKII the board also needs external power. From within the Arduino IDE

1. Under "Tools > Boards" select:
    * \*uino-1284p - ATmega8U2 Burn Firmware
2. Select "Tools > Burn Bootloader"
3. Success! 

##References

- [Arduino IDE 1.5 3rd party Hardware specification](https://github.com/arduino/Arduino/wiki/Arduino-IDE-1.5-3rd-party-Hardware-specification)
- [Arduino Hardware Cores migration guide from 1.0 to 1.6](https://github.com/arduino/Arduino/wiki/Arduino-Hardware-Cores-migration-guide-from-1.0-to-1.6)

##Changes

Monday October 17, 2016

- Added optiboot bootloader for ATmega1284p with board definition for \*uino-1284p.
- Added arduino-usbserial firmware for the USB serial bridge implmented in ATmega8U2 on the \*uino-1284p board.

Sunday October 16, 2016

- Added support for \*uino-1284p.
- Loaded sketch to blink on-board LEDs successfully.
- Noticed that Arduino IDE 1.6.12 already includes support for ATmega1284P in Servo library.

Saturday October 15, 2016

- Now have proper pin mappings for *uino-32u4.
- Loaded real board with bootloader successfully.
- Loaded sketch to blink on-board LEDs successfully.

Friday October 14, 2016

- Added inital cut for \*uino-32u4 based on Leonardo.  Still uses Leonardo port assignments.
- Added Caterina bootloader.

