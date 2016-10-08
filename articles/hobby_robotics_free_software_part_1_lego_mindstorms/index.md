---
nid: '3572'
title: 'Hobby Robotics with Free Software: Part 1 - Lego Mindstorms'
authors: 'Terry Hancock'
published: '2011-08-26 10:21:23'
tags: 'linux,robotics,lego,mindstorms'
license: verbatim_only
section: end_users
listed: 'true'

---
My son has expressed an interest in getting into robotics as a hobby/learning exercise, which is pretty exciting to me, too. I want to get us set up to do some fun stuff, and I don't want things to be too hard so that we never really get started. One of the obvious choices for this is the Lego Mindstorms system, but the software that comes with it is designed only for Windows and Macintosh systems. Fortunately, there are free software alternatives. What will it cost in time and money to set up using our Debian GNU/Linux computers, and what will we get for that effort?

<!--break-->

I've been casually interested in robotics for years, but I've never really been able to afford to experiment with it. So this is an opportunity for me as well as for my son. On the other hand, I've collected electromechanical junk for years with the hope of being able to use it in a robotics project someday. And I have collected machines so that I have a small machine shop set up by now, just waiting for the opportunity to be useful. This will be fun!

=IMAGE=fig_hexapod_robot.jpg=A hexapod robot (Photo Credit: R. Steven Rainwater / CC By-SA 2.0)=

We could just launch into building a robot entirely from scratch, but as novice as we are, I'm afraid we'd get quickly bogged down in piddling details before we got anything working. So there's a lot to be said for a kit-based approach -- at least at the beginning.

But which kit?

Lego Mindstorms came out many years ago, and quickly became a favorite, not just among kids, but also adult robot experimenters. It is very versatile, allows you to use existing Lego brick parts, and it's relatively cheap. As might seem reasonable for its market, Lego Mindstorms uses a very simplified, GUI-assisted programming environment, which is proprietary and runs only on Windows or Macintosh computers. However, there have been a number of different projects to create free software alternatives, so it is possible to work with Lego Mindstorms hardware on a free platform like the Debian GNU/Linux system that my son actually has on his computer. Failing that, we could run a Windows 98 SE instance in VirtualBox (but I doubt it would come to that).

My son's goal is to create a walking robot -- in other words, a "hexapod". This is pretty advanced and complicated, so I suggested inserting a basic wheeled "mouse" robot as an intermediate step. A "mouse" robot is sort of the "hello world" of robotics -- it's a robot that simply controls wheels so that it can move around on a flat floor. So I'm going to want a system that will let us do both stages.

My son's computer, like the other computers in our household, is a Debian GNU/Linux system, so it'll be most convenient if we can get the host software working on that platform.

# The Lego Solution

Unsurprisingly, there are much better kits available for Lego, so the way to start out is with one of the kits. Probably this one: [LEGO Mindstorms NXT 2.0 (8547)](http://shop.lego.com/product/?p=8547).

This kit contains the NXT "intelligent brick", which consists of a 32-bit microprocessor, an LCD display, 4 input ports, 3 output ports, bluetooth support, and a USB port. With this are two touch sensors, an ultrasonic range sensor, and a "color sensor" (I think this means a light sensor that reports the color of the light). Three motor-powered servos are included. And it comes with a large collection of passive components including Lego "Technic" parts, wheels, and treads (there's a total of 619 parts, which presumably includes the NXT brick, servos, and sensors as well as the passive parts).

This kit costs $279.99 from the Lego store. It can be found a little cheaper than that if you shop around.

=IMAGE=fig_lego_mouse.jpg=A simple mouse robot using a Lego NXT kit (Photo Credit: Nogwater@Flickr / CC By-SA 2.0)=

This kit alone is adequate to make simple "mouse" robots, and can do a few things beyond that. However, there are a lot of accessories we'd be likely to want fairly soon, and we'd clearly need more components to build the hexapod design.

## The catch: free software support

This is frankly a very attractive solution for our situation, but the sticky part comes when we look into the host-computer software for working with the NXT. 

Lego makes a fairly big deal about their "intuitive" and "easy-to-use" NXT-G programming environment which is a graphical, object-oriented language based on plugging together software virtual bricks. It's a cool idea, and it's easy for me to see why this is particularly good for younger users. On the other hand, I've heard complaints from more serious experimenters that the software is very limiting in what it allows you to do.

=ZOOM=Whether we like the NXT-G software in concept or not, though, it is proprietary and it is only available for Windows and Macintosh operating systems!=

Whether we like the NXT-G software in concept or not, though, it is proprietary and it is only available for Windows and Macintosh operating systems! This is going to be awkward at best to install on my son's Debian GNU/Linux computer. Plus, he's also avidly studying Python programming -- so I suspect he is imaging using Python to program his robot.

This argues for us to instead go the route of installing one of the free software alternatives for programming Lego microcontroller bricks. The NXT is the newer microcontroller, and it is unfortunately not compatible with the software developed for the previous RCX intelligent brick. That means there's some clutter to get through in the free software packages, but it appears to me that the best package to work with is probably John Hansen's ["Not eXactly C" (NXC) and "Next Byte Codes" (NBC)](http://bricxcc.sourceforge.net/nbc/) free software packages. This would probably mean my son would have to learn the specialized "Not eXactly C" language, although that probably wouldn't be a show-stopper. I'm not aware of any Python bindings for NXT as yet.

=ZOOM=This argues for us to instead go the route of installing one of the free software alternatives for programming Lego microcontroller bricks=

The author even wrote a nice book called [LEGO Mindstorms NXT Power Programming: Robotics in C](http://www.amazon.com/exec/obidos/ASIN/0973864974/lejos-20) which runs about $20.

It's too bad, but it appears that the graphical IDE for NXC (the "BricX Command Center"), despite being free software, is designed for Windows only. There are of course, a wide variety of general purpose IDEs available as standard packages with Debian GNU/Linux, but configuring them to work well with NXC would probably be a bit of a chore.

Programming NXT (or RCX) in Python doesn't seem to be an option. There is a package called [PyLNP](http://www.hare.demon.co.uk/lego/pylnp.html) that is designed to interface remotely with a [BrickOS](http://brickos.sourceforge.net/) system installed on the (older) RCX-based Lego microcontroller. I didn't find any analog for the current NXT-based controller, although it's probably not _that_ hard to write code for an NXC module to talk to the host computer and a Python package for the host to talk to it.

## What about the hexapod goal?

Scaling up to a more complex robot seems hard with NXT hardware -- the intelligent brick provides few ports for additional servos or sensors. There is a walker design included in the book [The LEGO MINDSTORMS NXT 2.0 Discovery Book](http://www.amazon.com/LEGO-MINDSTORMS-NXT-Discovery-Book/dp/1593272111/ref=sr_1_4?ie=UTF8&qid=1306772885&sr=8-4) by Laurens Valk, which uses just the three servos available in the NXT kit. Technically, it's a "six-legged walker", but it's obviously a bit simplistic, since the legs aren't independent.

Going beyond simple "mouse robot" designs will quickly require additional components to extend the NXT system.  Of the accessories sold by Lego, I think we'd probably want to add these (not all at once, but as we go on):

* 9798 Rechargeable Battery ($54.99)
* 9845 Sound Sensor ($29.99)
* MS1034 Compass Sensor ($54.99)
* MS1040 Accelerometer Sensor ($54.99)
* MS1044 Gyroscopic Sensor ($54.99)

To do anything really sophisticated, though, we'll need more than the 4-in/3-out ports that the basic NXT brick gives us. What we really need is an ability to extend the platform with a bus controller. Some third-parties have provided such extensions. [Mindsensors](http://www.mindsensors.com) sells an [8-servo controller](http://www.mindsensors.com/index.php?module=pagemaster&PAGE_user_op=view_page&PAGE_id=93)  ($49.95). This attaches to one of the _sensor_ ports on the NXT via the I2C protocol, and allows control of up to 8 standard servos of the type used in radio control airplanes and cars (i.e. _not_ the 9842 Lego servos).

They also sell servos of this type, along with Lego-compatible mounting hardware. Assuming we fill out the 8 servos, we might get a four-pack of the [HS311 Continuous Rotation RC Servos](http://www.mindsensors.com/index.php?module=pagemaster&PAGE_user_op=view_page&PAGE_id=115) ($24.75), two [RC Mini-Servos](http://www.mindsensors.com/index.php?module=pagemaster&PAGE_user_op=view_page&PAGE_id=96) ($18.75), and maybe even two of the [Servo Operated Pneumatic Valve Kit](http://www.mindsensors.com/index.php?module=pagemaster&PAGE_user_op=view_page&PAGE_id=141) ($22.95) (just because that looks like fun). 

Adding all that up, I would spend over $780 on the Lego NXT-based solution. Obviously, I could cut corners in some places, or spend more in others, depending on the details, but I think this is a fair estimate of what I'd be getting myself into.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=
