##Firmware for the ATmega8U2 on the \*uino-1284p

This is the arduino-usbserial firmware modified for the \*uino-1282p. It was taken from the Arduino IDE 1.6.12.

###Burn the usbserial chip using command line

I was able to successfully built and burn the usbserial code to the *uino-1284p board using the Atmel AVRISP MKII. The particular Arduino IDE version was 1.6.12 on 64 bit Ubuntu 16.04. The USB to serial chip is the ATmega8U2 running at 16MHz. 

To burn the bootloader using an AVRISK MKII from command line run `make` with the path to the installed Arduino IDE tools directory. Mine is located in `$HOME/Apps/arduino`.

```
make TOOLROOT=$HOME/Apps/arduino/hardware/tools program
```

###Build the usbserial hex

Place the LUFA source code into this directory.  It is build against LUFA-100807 which can be found at [http://www.fourwalledcubicle.com/files/LUFA/LUFA-100807.zip].  Unzip in the current directory.  The `Makefile` expects the LUFA sources to be in `LUFA-100807`.

Modify `Makefile` and `Descriptors.c` as desired.

```
make TOOLROOT=$HOME/Apps/arduino/hardware/tools
```

###Notes on USB VID and PID for LUFA and arduino-usbserial

Note on USB Vendor IDs (VID) and Product IDs (PID): The arduino-usbdfu
project uses Atmel's VID and MCU-specific PIDs to maintain compatibility
with their FLIP software.  The source code to the arduino-usbserial
project includes Atmel's VID and a PID donated by them to LUFA.  This
PID is used in LUFA's USBtoSerial project, which forms the basis for
arduino-usbserial.  According to the LUFA documentation, this VID/PID
combination is:

 "For use in testing of LUFA powered devices during development only,
 by non-commercial entities. All devices must accept collisions on this
 VID/PID range (from other in-development LUFA devices) to be resolved
 by using a unique release number in the Device Descriptor. No devices
 using this VID/PID combination may be released to the general public."

The production version of the arduino-usbserial firmware uses the
Arduino VID.  This is only for use with official Arduino hardware and
should not be used on other products.
