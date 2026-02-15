---
nid: '3141'
title: 'Enter gNewSense - the free Ubuntu'
authors: 'Benedikt Ahrens'
published: '2009-04-14 1:22:05'
tags: 'ubuntu,gnewsense'
license: verbatim_only
section: end_users
listed: 'true'

---
The project gNewSense started with the goal of creating a GNU/Linux distribution whose first priority is users' freedom - even if this limits user comfort and hardware support. As a starting point Ubuntu's operating system is used.

(Translated into English by Yann Kiraly)

<!--break-->


# About Debian and Ubuntu

A free Ubuntu? Isn't Ubuntu free already?
No, [Ubuntu](http://www.ubuntu.com) isn't free according to how the Free Software Foundation [FSF](http://www.fsf.org) defines freedom [the guidelines the FSF uses to determine the freedom of an operating system can be found here](http://www.gnu.org/philosophy/free-system-distribution-guidelines.html) - and the same is true of Debian, the foundation Ubuntu is based on. The goal of these distributions is to support as much hardware as possible and thereby to make their installation as easy to use and as comfortable for the user as possible - market share is the objective here after all. The principles of free software are sometimes neglected in the process. A somewhat easygoing attitude towards freedom can be found in all areas of software production, from the Linux kernel to the distribution of software by Debian and Ubuntu.
(Note: It is up to the reader to find out if the assertions made here are similarly applicable to other distributions, for example SUSE. Below, the author concerns himself exclusively with Debian and Ubuntu.)

## The Linux Kernel

Most components of a computer, for example CD drives, hard disks, network cards etc. - require software to communicate with the mainboard that is kept in a memory module on the component itself. This software is called firmware. In most cases the firmware is installed permanently on the component. For other components, especially network cards, the firmware is copied to the component by the driver (that is by the kernel module) when the module is loaded.

To provide a more comfortable experience for the user the firmware of some components (for example the firmware of Broadcom network cards that are run using the driver "tg3") is integrated into the Linux kernel. This sounds reasonable as the respective components often don't work without the firmware. But sadly most firmware does not fit the criteria of free software as the manufacturers have not published their source code. I will use the driver "tg3" as an example. Even though the driver is free and has a GPL license it uses [non-free firmware](http://www.broadcom.com/support/ethernet_nic/driver-sla.php?driver=570x-Linux). Here is an excerpt from the source code:

=CODE_START=
/*
 * tg3.c: Broadcom Tigon3 ethernet driver.
 *
 * Copyright (C) 2001, 2002, 2003, 2004 David S. Miller (davem@redhat.com)
 * Copyright (C) 2001, 2002, 2003 Jeff Garzik (jgarzik@pobox.com)
 * Copyright (C) 2004 Sun Microsystems Inc.
 * Copyright (C) 2005-2007 Broadcom Corporation.
 *
 * Firmware is:
 *      Derived from proprietary unpublished source code,
 *      Copyright (C) 2000-2003 Broadcom Corporation.
 *
 *      Permission is hereby granted for the distribution of this firmware
 *      data in hexadecimal or equivalent format, provided this copyright
 *      notice is accompanying it.
 */
=CODE_END=

Software that is derived from proprietary software is not free.
The tg3 module - including the firmware - is part of the [original kernel](http://www.kernel.org/).


## The distributions

How do the distributions deal with the official Linux kernel?
The Debian project is based on a [strict contract](http://www.debian.org/social_contract) which includes [guidelines for software distributed by Debian - DFSG](http://www.debian.org/social_contract#guidelines).
A [vote held in 2006](http://www.debian.org/vote/2006/vote_007.en.html) concerning non-free software in the Linux kernel resulted in an approval of the distribution of this non-free software. The gist of it is that the usability of the software is more important than compliance with the social contract and the freedom of the user.

The distributions do not only distribute non-free software in the Linux kernel, however. The Ubuntu package "linux-firmware" is part of the "main" section - and therefore of the section that, according to Ubuntu, is supposed to only contain free software. Nonetheless, the package [contains non-free firmware](https://bugs.launchpad.net/~gnewsense).

Another example:
For years Debian and Ubuntu ignored the fact that X.org contained non-free software ([the Debian bug report](http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=211765), [Debian developer polls on the treatment of non-free software](http://www.debian.org/vote/2004/vote_002), [and again](http://www.debian.org/vote/2006/vote_007), [Ubuntu bug report (copied from Debian)](https://bugs.launchpad.net/debian/+bug/6765/comments/8)). Non-free software was consciously left in the "main" section so as not to restrict the comfort and usability of the operating system.

Thanks to a new license for the affected software the problem [has been resolved in the mean time](http://www.fsf.org/news/thank-you-sgi).

In addition, Debian and Ubuntu facilitate the installation of non-free software, for example by providing the repositories "contrib" and "non-free" (Debian) or "restricted" and "multiverse" (Ubuntu) as well as through a graphical interface for the installation of proprietary drivers for graphics cards, WLAN cards etc. (Ubuntu, in GNOME in the menu "System -> Administration").
Also, the standard browsers Iceweasel (Debian) and Firefox (Ubuntu) offer the possibility of installing non-free plugins.


# gNewSense

## The Idea

The [gNewSense project](http://www.gnewsense.org) has the goal of creating a GNU/Linux distribution that has the freedom of the user as its top priority - even if this limits comfort and hardware compatibility. The basis for action of the distribution are the [guidelines of the FSF for free operating systems](http://www.gnu.org/philosophy/free-system-distribution-guidelines.html).
The following citation describes the goal of gNewSense "Note that our goal is to produce a fully free distribution, not to have as many features as possible" [from here](http://www.gnewsense.org/Main/Features). In practise, this means that gNewSense aims to: 1. only distribute free software according to the FSF's definition; and 2. not to facilitate the installation of non-free software.
These two goals are in need of a brief clarification:
regarding 1.: it is hard to ensure that any non-trivial software-collection is 100% free - every source file must be checked regarding its license. However, gNewSense immediately removes any software from its offerings if it is discovered not to be free, even if this leads to extensive limitations ([as happened with the non-free X.org software mentioned above](http://wiki.gnewsense.org/Main/Broken3dApps)).
regarding 2.: the user remains free to install non-free software, of course. However, gNewSense does not offer the user any help in this respect, for example in the form of providing such software or instructions on installing non-free software.

## The Implementation

For this purpose, founders Brian Brazil and Paul O'Malley wrote a series of scripts, the so-called "Builder", that remove non-free elements from Ubuntu.
Every user can use the Builder to make his own free GNU/Linux distribution. An interesting special case is the ready made distribution, however - which is called gNewSense like the project, of which a live cd ISO image is [available](http://www.gnewsense.org/Mirrors/Mirrors).
The current version gNewSense 2.1 is based on Ubuntu 8.04.1 and therefore offers an almost identical look and feel, as can be seen in the [screenshots](http://wiki.gnewsense.org/Screenshots/Screenshots). The live mode allows you to test your hardware - not unimportant, as the removal of non-free drivers makes some hardware components that are supported by Ubuntu unusable (see below). You can launch the installation to the hard drive from live mode. Instructions and howtos regarding installation and administration of the system can be found at [the gNS wiki](http://wiki.gnewsense.org/).

## What limitations does gNewSense have?

Considering the explanations above it is no surprise that using gNewSense is more restricting than using Ubuntu. Missing support for many WLAN cards, missing GLX as well as no Firefox do not make gNewSense more attractive for the user. In order to prevent disappointment it is strongly recommended to read up on hardware support and provided software before the installation. To do this, gNewSense should be started in live mode from the CD. This is a risk-free way to test graphics, sound, network cards etc. Because the removal of non-free firmware from the kernel is done automatically, there is no precise list of computer components supported by Ubuntu that gNewSense does not support. A starting point for finding out about supported hardware is an [FSF webpage](http://www.fsf.org/resources/hw). For more information, you should visit the [gNewSense forum](http://wiki.gnewsense.org/index.php?n=ForumMain.ForumMain) or post a request on the [mailing list](http://www.gnewsense.org/index.php?n=Community.Community). WLAN cards, various LAN cards and graphics cards for which there are no free drivers are generally not supported.
Compared to Ubuntu the software repositories "restricted" and "multiverse" are, of course, missing as well, the section "universe", however, is [activated by default](http://www.gnewsense.org/Main/Features).

## Why use gNewSense anyway?

gNewSense is one of the operating systems that is classified as free by the FSF and is [actively supported by it](http://www.gnu.org/links/links.html#FreeGNULinuxDistributions). The GNU project provides a modified version of the Firefox browser for the operating system, called [Icecat](http://www.gnu.org/software/gnuzilla/), which can easily be installed using the package management system. Icecat exclusively offers the installation of free plugins and includes some security features Firefox lacks.
A few of the components not supported by gNewSense can be supported after all by installing a new kernel of the [Linux Libre project](http://www.fsfla.org/svnwiki/selibe/linux-libre/index) - [Ali Gunduz](http://aligunduz.org) offers ready made [Debian packages](http://aligunduz.org/gNewSense/). The current kernel 2.6.28-libre, for example, allows the use of the tg3 module without non-free firmware. Also, some Atheros WLAN cards are supported by the modules atk5 and atk8 (included in the kernel 2.6.28).

# Conclusion

By using gNewSense you can show that the freedom of the software you use is truly important to you. Hardware manufacturers can thereby be motivated to provide free drivers and firmware for their products and to allow transparency and innovation in this area of software production in the process. In addition, you can show the mother projects of gNewSense, Debian and Ubuntu, that you want to stick to principles and contracts consistently and are not content with phony exceptions.

# License

This article is published under the GNU Free Documentation License.

