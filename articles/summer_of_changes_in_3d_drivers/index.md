---
nid: '2511'
title: 'Free software drivers: the unmatrix'
authors: 'Mitch Meyran'
published: '2007-10-01 0:00:00'
tags: 'linux,dri,nouveau,x'
license: verbatim_only
section: end_users
listed: 'true'

---
Well, it’s been a while—“cough!”—the set’s all dusty since my previous post about 3D cards...

One thing that isn’t quite dusty though, is the state of free software drivers! I will sum up the different evolutions (some would even say, revolutions) that have occurred over this summer (June-September 2007).


<!--break-->


First, let me write out a list of drivers...


# Known free drivers and their implementations


## VIA: UniChrome and OpenChrome

VIA was a leader in the area of free drivers: they were actually the first hardware manufacturers to release their drivers in source code form—no, really! However, those were not under a permissive license, were inelegantly coded (you needed to run them as root) but they had a very, very important characteristic: they were pretty much feature-complete, and most rare, they didn’t need VBE modesetting to work—meaning that right now, they don’t need a PC BIOS. That helps in making portable drivers.

Those restricted sources led to the creation of the UniChrome driver—this was supposed to be a very clean reimplementation of the original source code, and is, in fact, the basis for Xorg’s VIA driver. It offers 2D and 3D acceleration and some Xv and MPEG2 acceleration. It has a single maintainer, and is considered the most stable VIA driver out there.

Due to UniChrome’s limited abilities in code tinkering, OpenChrome was forked (there is still some communication between the branches); while less stable, OpenChrome provides MPEG-4 acceleration and XvMC (X video Motion Compensation). The latter is considered a very good implementation of hardware-accelerated XvMC.

This is not quite recent: the OpenChrome fork happened in 2005. It is now getting a bit more attention because of its focus on Xv and XvMC—which, due to HD concerns, are becoming more and more important.


## Matrox: their own, and Xorg’s

Matrox actually went the way VIA started; they now release a driver in source form, and this driver is reimplemented under Xorg’s licenses. The end result pretty much works—when some new bug doesn’t crash the party. Still, these drivers provide 2D, 3D and Xv acceleration.

On the whole, nothing new on planet Matrox. At best, some more bug fixing... Because there sure isn’t anything new feature or hardware wise.


## Intel: direct support

Probably the most forthcoming hardware manufacturer in matters of free code, Intel provides no specifications—but they do have an engineer working exclusively on a free software driver for their video hardware: all those integrated graphics processors do have a driver!

It provides 2D, 3D and Xv acceleration, along with multiple screen support and covers pretty much all of Intel’s video hardware (except the long-dead i740, which was more Cirrus Logic than Intel anyway). More importantly, it is unobfuscated, feature complete, and under a permissive license (MIT and GPL—depending on where the code is, in X or in Linux).


## ATI/AMD: a revolution

You must have seen it: since ATI was bought by AMD, there was some tension: will AMD change its tradition of cooperation with free software? They relied on Linux to prove the efficiency of their winning K8 core and 64-bit instruction set, should they use the same method on their new graphic hardware?

Well actually, they have—and they pretty much went all-out: not only have they promised to release the specs for their non-DRM hardware from the r300 up, there will be no NDA, along with a skeleton driver and code samples to boot!

So, right now, Novell maintains a package, named radeonhd, providing support for r500 and r600 hardware under SuSE Linux, last week. The Avivo driver, which had started supporting r500 cards, is thus nipped in the bud—not that Jerome Glisse, its lead maintainer, is complaining.

For those looking for a more feature complete driver, AMD released a new revision of its closed source fglrx driver, version 8.41, at the same time.


## XGI: mixed bag

XGI was probably one of the first companies to support their graphics hardware through a free driver—but they were unlucky: not only did most of their talents go to ATI last year, their licensing agreement with SGI prevents them from releasing the DRI part of their driver under a free license.

As such, the driver (lacking DRI acceleration) is quite feature-complete, maintained, clean and supporting most of their hardware range, but it is also not much better than the VESA driver due to its need for CPU copies to be efficient. The DRI binary module does work well with the released sources, but it’s just not the same as having a free driver...


## NVIDIA: ah, come on!

Right now, NVIDIA is probably the black sheep of Linux support: while they do provide a somewhat accelerated 2D driver for all their hardware (from the Riva128 to the Geforce 8), that driver has its source obfuscated, uses inefficient acceleration processes (it’s stuck on XAA), has seen pretty much no improvement in years, and needs to be ripped out entirely when you want to use their (admittedly high quality) binary blob.

They also disparaged the FOSS community by saying that no one apart from them would be able to create quality graphics drivers for their hardware, and that a community supported, feature-complete driver is impossible.

That ruffled some feathers last year, and a few Xorg developers took it to task. That started Nouveau, probably one of the biggest efforts in hardware reverse engineering seen these days. What do they have?

Right now, Nouveau is still in alpha. It bid goodbye to XAA (now completely replaced with EXA), Xv is complete, implementing OpenChrome’s XvMC is a work in progress, and 3D support has been pretty much figured out for several chip generations (right now, glxgears works on Geforce2 and 6). The driver works on almost all of the NVIDIA hardware range—only support for nv04 (original Tnt1) will have to be reduced, due to this chip’s fundamental incompatibility with EXA.

Still, it’s far from being complete.


# So, what’s going on?

With all those free driver events, several issues were brought to light and are being worked on—on many levels.


## Driver redundancy

Several drivers provide very similar features, and, at the same time, features are getting more numerous: video acceleration is not done through video overlays anymore, blitters are on the way out too, thus the preferred solution is now the use textured surfaces—using shaders units on Intel, NVIDIA, ATI and VIA hardware at the very least.

This is pretty much an Xv matter, but due to the flexibility of this solution, XvMC will gleefully make use of those features. Add to that colour space conversion acceleration and video decompression, it pretty much means that most current hardware solutions (and several older ones too) would allow very similar algorithms to perform a required operation.

Apparently, the favoured solution would be to create a single module for a given feature, which would then interface with the hardware through a common API, or use some form of software emulation, or, if not possible, simply refuse to load.

The two main advantages would be that new features would be brought in common to all able hardware, while at the same time reducing code duplication, which usually means much faster hardware support and simpler testing cycles.

Considering what’s happening inside Linux on the Wi-Fi, ATA, IEEE1394, file systems and sound stacks, it sure seems effective.

For this reason, discussions are being made to modularize elements such as XvMC, some parts of DRI, and Mesa too (see Tungsten Graphics’s Gallium3D project)—leaving the DRM (as in Direct Rendering Module) the last part to remain really hardware-dependent.

Does it mean that video drivers will be much smaller? Well, not exactly: right now, video drivers are made of at least three pieces: the essential X.org driver, the DRI acceleration piece, and its in-kernel DRM corresponding part. While the DRM part is pretty much impossible to make more common, this part may actually grow—the addition of a kernel-side memory manager and context switcher (for now called TTM) would actually make a driver bigger.

But overall, through modularity, it would mean that the sum of code required to support most of today’s hardware would get much, much smaller.

After all, that’s the philosophy behind X.org’s 7th revision to the X protocol version 11 (X11R7).


## GPU to generic computing

On the bonus side, this would pave the way to making use of those shaders units as generic computing coprocessors through a unified API—and damn, aren’t those 128 unified shaders on an NVIDIA 8800 tempting!

What would be the use? Well, a shaders unit is, nowadays, little more (or less) than an oversized high precision, high clocked floating point computing unit. Being able to tap into them for stuff like SETI or Folding@home would be interesting. They would also help tremendously in ray tracing (“real” 3D) and other modeling applications.


## Kernel engineering

Those were first mentioned to the general public on the Nouveau wiki: Linux (and other kernels are not much better) doesn’t provide anything to support graphics development: certainly no frozen API (which is understandable and often a good thing), but also no way to tell when a piece of graphics hardware is already held by a driver (which makes using the console’s frame buffer driver for your hardware a good way to crash X), and no way to map graphics memory—which can be quite complex: how does one navigate between PCI addressing, AGP (with its dedicated memory and different contexts than PCI) and PCI Express? Well, right now, all drivers do it the best they can.

For that reason, you have very fast exchanges between the kernel and the Xorg communities going on right now on how to implement frame buffer drivers (which are currently in the kernel) and DRM modules around a graphics memory manager.

An in-kernel memory manager for graphics hardware would allow several improvements:


* it would be much easier to add several accelerated video adapters, of similar or different designs,
* no more headaches caused by the dichotomy between hardware-accelerated frame buffers and DRI,
* more efficient context switching,
* better stability and performances through unified video memory addressing (right now, there is generic PCI, AGP and PCI Express to deal with—all three are different),
* some other stuff yet to be determined.


# And performance, in all this?

This is the reason there will be NO update to my driver matrix for a little while yet: there has been little improvement in the area of supported features (we may cite a still maturing randr1.2 implementation, now used by the radeon, nouveau and Intel drivers), or hardware (last time, AMD already supported their r500 and r600 hardware in fglrx, and NVIDIA hasn’t unveiled G9x chips yet), or incredible breakthroughs (the r300 driver is undergoing cleanup, but AMD hasn’t released the r300 family specs yet, as it will come last).

In fact, the only releases (apart from those cited above) are: NVIDIA’s 100.14.19 driver (which solved a regression over the previous release, but I can’t test it as it screws up my screen detection and won’t allow manual override), and AMD/ATI’s 8.41 release (which, as I said, improves performance significantly yet renders artifacts all over the place). Right now, there is only a LOT of restructuring going on.


# Conclusion

So, many things have changed over the summer; the FOSS drivers have seen lots of news, lots of progress and have started redefining themselves in a drastic way. That’s cool.

However, this takes time, and for now us poor users have very little to see.

But jeez, the coming months are going to be interesting!


# Bibliography

[Phoronix - XGI](http://www.phoronix.com/scan.php?page=news_item&px=NjA3MQ)

[Phoronix - XGI 2](http://www.phoronix.com/scan.php?page=news_item&px=NTg1OQ)

[Phoronix - Avivo’s end](http://www.phoronix.com/scan.php?page=news_item&px=NjA0MA)

[The Nouveau wiki](http://nouveau.freedesktop.org)

[The Gallium3D stack](http://www.tungstengraphics.com/gallium3D.htm)

[The VIA drivers](http://wiki.openchrome.org/tikiwiki/tiki-index.php?page=The+Different+Unichrome+family+display+drivers)

[The irregular Nouveau Development Companion 27 at Phoronix](http://www.phoronix.com/scan.php?page=article&item=861&num=1)


