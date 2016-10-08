---
nid: '3023'
title: 'Freeing your phone with the FIC Neo FreeRunner'
authors: 'Anthony Taylor'
published: '2008-10-06 9:08:23'
tags: 'openmoko,freerunner,smartphone'
license: verbatim_only
section: interviews
listed: 'true'

---
The temptation to compare the FreeRunner and the Apple iPhone can be overwhelming. They both run a Unix-like operating system; they both have GPS, wi-fi, and accelerometers; they are both cell phones.

In spite of their similarities, their differences are even more striking.

<!--break-->

# The difference is freedom

Yes, the iPhone is arguably the greatest cell phone on the market. It is a technological work of art. As long as you don't mind Apple's restrictions on the software you may install, the iPhone may be the phone for you. Keep in mind, Apple has the final say on what software you are allowed to install, and they have shown a willingness and an aptitude for censoring the software allowed on the iPhone.

In essence, the iPhone you purchase belongs to Apple, not to you.

The FreeRunner isn't as great a cell phone as the iPhone. The entire _point_ of the FreeRunner is that it isn't really a cell phone. It's a hand-held computer with GPS and cell phone communications hardware built in. The Freerunner doesn't really compete with the iPhone. That's a fool's task. Instead, the FreeRunner competes with other hand-held computers, like the Nokia N810 (which ironically doesn't contain GSM hardware).

The FreeRunner provides access to the GPS, GSM, GPRS, wi-fi, and accelerometer hardware. There is no signing key from Apple. There is no distribution restrictions. There are no prohibitions on the types of applications that may be built.

There is only freedom.

# Freedom is beautiful

The Neo FreeRunner has about the same footprint as the iPhone, at 120.7 mm by 62 mm, but is a bit thicker, at 18.5 mm. The FreeRunner has a nice rubberized texture, and the rounded ends fit naturally in the hand. 

The recessed screen makes it difficult to reach small buttons near the edge of the screen, especially in the corners.

The hardware specifications are fairly impressive for a device this size and cost:

* 400 MHz ARM (Samsung 2442)
* 128 MB SDRAM
* 256 MB flash
* 2.8 inch 480 x 640 touchscreen (282 pixels/inch)
* Triband GSM / GPRS
* GPS
* 2 3D accelerometers
* Bluetooth
* 802.11 b/g
* Micro SD slot (supports up to 8GB uSD cards)

The SMedia Glamo 3362 chipset supports 3D hardware acceleration, but due to the lack of documentation, the X11 drivers do not provide hardware acceleration. Also, the GPU bus is only capable of 7 MB/sec. These two bottlenecks result in slow graphics. Full-screen full-motion video will be impossible to achieve. (Carsten Haitzler, AKA The Rasterman, [explains some of the issues in this email](http://lists.openmoko.org/pipermail/community/2008-April/016153.html). More information can be found throughout that thread.)

# Choices, choices, choices

[As per the OpenMoko wiki](http://wiki.openmoko.org/wiki/Distributions), there are at least 9 distributions that may be run on the FreeRunner. Four of these are official OpenMoko projects, three are ports of existing distributions, and two are community-drive distributions. Each distribution has a distinct goal.

Three of the four official distributions are really just variations on a theme. OM2007.2 was OpenMoko's first attempt at a smartphone distribution. The interface was developed solely using Gtk+. Although a fairly complete smartphone distribution, the underlying phone support proved unreliable. Work shifted away from OM2007.2 to a major overhaul, originally dubbed "ASU," which became OM2008.8. This distribution moved away from Gtk+, instead moving to a combination of toolkits in addition to Gtk+, including Qt and EFL (the Enligthenment Foundation Libraries). OM2008.9 Update is the first point release update to OM2008.8.

The fourth official distribution is the FreeSmartphone.Org (FSO) distribution. The goal of FSO is to provide a stable DBUS-based infrastructure for smartphone telephony. FSO provides an example application for basic functionality, but FSO is geared more towards application developers than end-users.

Both of the community-based distributions build on one of the official distributions. The Stable Hybrid Release (SHR) builds on FSO, and intends to marry the functionality of the OM* distributions with the stability and reliability of the FSO infrastructure. The Fat and Dirty OM (FDOM) release builds upon the OM* distributions directly, providing more applications and functionality.

Of the three other distributions, only QtExtended (renamed from Qtopia) is designed to provide smartphone functionality. The other two, Debian and Gentoo, are ports of the popular Linux distributions.

# Many choices, one conclusion

With all these choices, is there a single distribution that lives up to the promise of the Neo FreeRunner? Not yet. Some, such as the now-obsolete OpenMoko 2007.2, showed promise, but were unable to deliver. Right now, FSO and Qtopia appear to be the most stable for use as an everyday phone. SHR promises to expand on FSO and deliver a truly open platform based on a stable framework.

In the end, the FreeRunner is not a cell phone replacement just yet, and definitely not an "iPhone killer." It's a solid platform to build on, though, and there is a lot of activity, a lot of promise, and a lot of potential.

It's also a lot of fun.

# Related links

## Openmoko Wiki

* [My favorite, SHR](http://wiki.openmoko.org/wiki/SHR_Development)
* [Openmoko community](http://openmoko.org/)
* [Debian on the Freerunner](http://wiki.openmoko.org/wiki/Debian)
* [Qtopia on the Freerunner](http://wiki.openmoko.org/wiki/Qtopia_on_FreeRunner)

## Other links

* [Purchase a Freerunner](http://openmoko.com/)
* [FreeSmartPhone.org, AKA fso](http://freesmartphone.org/index.php/Main_Page)
