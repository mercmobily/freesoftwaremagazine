---
nid: '3573'
title: 'Hobby Robotics with Free Software: Part 2 - Arduino'
authors: 'Terry Hancock'
published: '2011-09-02 14:34:58'
tags: 'free-software,open-hardware,arduino,robotics,merkur'
license: verbatim_only
section: end_users
listed: 'true'

---
As I mentioned in my previous column, my son and I want to explore robotics as a hobby and a learning experience. We don't have an unlimited budget, so I wanted to do some estimating of what it would cost to do it using different technology standards. In the first part, I explored Lego Mindstorms, but the open-hardware (and free software) Arduino system has been getting better and better. So I want to consider that possibility in this column and make a comparison to see which is a better option for us.

<!--break-->

Arduino is _much_ newer, having only come into its own in the last few years. But it's also a fully open-hardware (or [Open Source Hardware](http://en.wikipedia.org/wiki/Open-source_hardware) -- meaning that the plans are free for anyone to use to make Arduino components), and indeed, there are multiple Arduino suppliers to choose from. Software host environments for communicating with and programming Arduino controllers are available as free software packages in various well-established programming languages. The whole Arduino culture is very free and open.

=IMAGE=fig_arduino.jpg=Open hardware Arduino microcontroller board (PD / Wikimedia Commons)=

# The Arduino Solution

Ideologically, of course, Arduino is much more satisfying: it's open hardware from top to bottom, so anyone can make Arduino components. The software is invariably free software, and a wide variety of bindings are available for programming languages.

=ZOOM=Ideologically, of course, Arduino is much more satisfying: it's open hardware from top to bottom, so anyone can make Arduino components=

This is the big win for Arduino. I can literally type:

=CODE_START=
# apt-get install arduino
=CODE_END=

...and get basic IDE and language support for Arduino.

Pragmatically, though, I'm concerned that Arduino will be harder to use. When you try to get more flexibility, you usually pay a price in complexity. I expect this to be particularly true of the hardware, though the software may be a little easier to install on Debian.

## Arduino kits

The best place to start with Arduino is probably something like the [SparkFun Inventor's Kit for Arduino](http://www.sparkfun.com/products/10173)($94.95).

This kit includes: 

* Arduino Uno microcontroller with USB connector
* Arduino and breadboard holder
* Printed 36-page Oomlout manual
* 12 color circuit overlays
* Clear Bread Board
* 74HC595 Shift Register
* 2N2222 Transistors
* 1N4148 Diodes
* DC Motor with wires
* Small Servo
* 5V Relay
* TMP36 Temp Sensor
* Flex sensor
* Softpot
* 6' USB Cable
* Jumper Wires
* Photocell
* Tri-color LED
* Red and Green LEDs
* 10K Trimpot
* Piezo Buzzer
* Big 12mm Buttons
* 330 and 10K Resistors
* Male Headers


=IMAGE=fig_arduino_mouse.jpg=A robot using the Arduino microcontroller shield (Photo Credit: Marlon J. Manrique / CC By 2.0)=

## Solutions for hardware chassis construction

The sticky part for Arduino is the choice of hardware chassis construction. Certainly, there is no "big kit" of Arduino robotics like the Lego Mindstorms NXT kit described above. This is certainly unfortunate.

There are, however, kits from many other sources. On the high end, there is the [Vex Protobot Set](http://www.vexrobotics.com/products/vex-robot-starter-bundles/276-2231.html), which costs about $199.99. This is a very professional prototyping set which has been used in FIRST robotics competitions, and provides a similar level of complexity to the passive hardware included in the NXT kit. I've intentionally chosen a kit without a robot controller (the VEX controller kits use PIC-based controllers, whereas we want to use Arduino). It's a relatively small kit for the price, which is the main drawback, although it is certainly very classy looking, and it does include servos.

=ZOOM=Merkur is based in the Czech Republic, and has been manufacturing steel construction toys for many years=

Another option, for about the same price, but with more parts, is the large [M8 set](http://www.botbrain.com/mproddetail.asp?prod=M8) ($199.95),from [Merkur](http://www.merkursets.com/). Merkur is based in the Czech Republic, and has been manufacturing steel construction toys for many years -- these are similar to the "Erector Sets" that I remember as a child, but are still in production. Merkur claims the M8 set is "1405 parts", but be aware that that does include the screws and nuts. There are, of course, smaller sets -- my daughter has the [M010 Formula Race Car](http://www.botbrain.com/mproddetail.asp?prod=M10) set ($24.95), which would probably serve as a chassis for a mouse robot. I even found [a plan for a hexapod robot](http://robotika.cz/articles/hexapod/cs) based on the Merkur M8 set, although it is in Czech ([Google Translate translation](http://translate.google.com/translate?langpair=cs|en&u=http%3A%2F%2Frobotika.cz%2Farticles%2Fhexapod%2Fcs)). There's also a radio-controlled [hexapod kit](http://www.targetmarket.cz/merkur-roboticky-pavouk/d-70687/) available from Merkur directly (€113.53), though I'm not certain if I they will ship to the USA (sorry, but I can't read Czech).

You might also want to check out some other options available from [Girders and Gears](http://www.girdersandgears.com). They sell a variety of different modular building systems of this type, from different manufacturers.

=IMAGE=merkur_hexapod.jpg=The Merkur-based hexapod (from the website linked above - Non-Free/Fair Use)=

There are also some much more "ready-made" components that could be purchased. From [SparkFun](http://www.sparkfun.com), for example, you can get the "Arduino-compatible" [POP-BOT](http://www.sparkfun.com/products/9501) ($159.95), which is essentially a ready-made mouse robot. This even includes the microcontroller itself. I also found a chassis specifically built for hexapods, called [Robodyssey Roach Hexapod Robot Frame Kit](http://www.robotshop.com/robodyssey-roach-hexapod-robot-frame-kit.html) ($129.95).

## Servos

Most of the chassis hardware kits above do not include servos, so we'll have to consider that as an extra cost. [Jameco](http://www.jameco.com) sells the [Hitec HS-311](http://www.jameco.com/webapp/wcs/stores/servlet/Product_10001_10001_358635_-1) servo referred to in the Merkur hexapod plans above for $16.95 (or $15.95 for 5 or more -- the plan calls for 12, so that would be $203.40 for the hexapod).

From [SparkFun](http://www.sparkfun.com), there are [small](http://www.sparkfun.com/products/9065) ($8.95), [medium](http://www.sparkfun.com/products/10333) ($10.95), and [large](http://www.sparkfun.com/products/9064) ($12.95) servos with different performance characteristics. For just a little more, there are also [continuous rotation versions](http://www.sparkfun.com/products/9347) if you need them. Using the large servos in place of the Hitex HS-311s in the hexapod model above would total $139.92.

A very large selection of servos and other actuators are available from [Robot Shop](http://www.robotshop.com).

For a mouse robot, an excellent starter component is the [Dual Motor GearBox](http://www.sparkfun.com/products/319)($10.95 from Sparkfun) made by Tamiya.

## Remote control

For wireless remote control of our robot, we'll need some kind of radio modem system. Perhaps the simplist would be to use Bluetooth. Sparkfun has the [Bluetooth Mate Gold](http://www.sparkfun.com/products/9358) shield ($64.95) to do this. Of course, you'd also need a Bluetooth adapter for the host computer. With all of the wireless input devices used nowadays, this is a common device. Amazon has the [IOGEAR USB 2.1 Bluetooth Micro Adapter GBU421](http://www.amazon.com/IOGEAR-Bluetooth-Micro-Adapter-GBU421/dp/B0018O9JIG) ($12.84), for example, making the total cost for Bluetooth networking to be $77.79.

Another approach would be to use the XBee radio modem devices: two [XBee 1mW Chip Antenna](http://www.sparkfun.com/products/8664)($22.95 each), the Arduino [XBee Shield](http://www.sparkfun.com/products/9976) ($24.95), and the [XBee Explorer Dongle](http://www.sparkfun.com/products/9819) ($24.95). That would provide a complete host-to-robot networking system for just under $100.

# Cost and benefits

We can put together a very nice experimental system using:

* Arduino Inventor's Kit ($94.95)
* Merkur M8 kit ($199.95)
* Tamiya gearbox ($10.95)
* Set of 12 large servos from Sparkfun ($139.92)
* Bluetooth wireless networking ($77.79)

This would cost $523.56. It would give us a variety of experimental sensors and controls, an Arduino board, and sufficient chassis construction materials to build both a mouse robot and a hexapod (we can use the plan pictured above for the chassis). The software environment would be extremely easy to install (mostly Debian packages), and it is possible to control the robot with Python scripting on the host computer.

So, by combining Arduino and the Merkur building system we can do a little more than the Lego Mindstorms system in the previous column for a little bit less money (there's some mismatch between the sensor systems we can use). It's also going to be a little easier to scale up to larger robots using Arduino. Based on this, I think it's very likely that we'd be better off to go with an Arduino system.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=
