---
nid: '2577'
title: 'The Matrix strikes back, or: the return of AIGLX'
authors: 'Mitch Meyran'
published: '2007-11-15 6:30:52'
tags: 'gnu/linux,nvidia,ati,xorg'
license: verbatim_only
section: end_users
listed: 'true'

---
My last post was about Mandriva 2008.0 and Ubuntu 7.10—and I let slip a little bit about trying drivers with them.

Now, however, I have compiled enough data to (roll drums please) update the 3D driver matrix!

_**This article updates and replaces [this previous version](http://www.freesoftwaremagazine.com/blogs/3d_driver_matrix_the_evolution).**_


<!--break-->


But first, a little overview of what has happened since the last update.


# Manufacturer and coders


## A little bit of the same

Intel kept working on improving its current free driver. While no hardware specifications come from Intel, it makes little doubt that fully functional, unobfuscated code represents a nice form of hardware documentation. Moreover, said code does not get lost in reinventing the wheel, and reuses whatever is already available.

Considering how puny Intel’s graphical hardware still is, it actually is a big help.

Just to be sure, I’ll be precise about what Intel IGPs contain:


* shared system memory; some are even able to allocate memory dynamically;
* a texel unit, for the programmable ones, a pixel shading unit, but no vertex shading unit, as vertex shaders can be rendered on CPU time quite easily: a 300MHz CPU can do vertex shading on complex scenes without too much trouble, current processors treat it as an afterthought;
* limited MPEG-2 decompression capabilities on recent hardware. As far as I know, this is mostly done through the pixel shading unit, used for inverse Discrete Cosine Transform.

VIA released a new version of their source code for their Chrome hardware. Although it’s as buggy as before, it still provides invaluable documentation about their hardware—which is, by the way, the most full-featured, open sourced, hardware in circulation right now: it supports MPEG-4 decompression, for example.

OpenChrome and UniChrome have almost fallen into disuse, due to an unfortunate lack of maintainers. Still, their code is still held as a reference by many developers.

NVIDIA released closed source drivers for their cards from the GeforceFX to last, as successors to the 97.xx driver series—but now, numbered at 100.xx.xx. Those tout better stability, better compatibility with 7.x Xorg releases, and (from my personal experience) much better behaviour with Compiz: pixmap handling has gotten much, much better (less black window bug, more speed).


## Some news and breakthroughs

The Nouveau project has kept working on their eponymous driver. Still not ready for alpha releases, they are however getting very close to completing one of the most complete 2D accelerated drivers out there: XAA support has been completely removed in favour for EXA, X video acceleration is getting ever closer, be it through hardware overlays (when present) or blitter (when present), and accelerated XRENDER is a work in progress across the range.

Unfortunately,Geforce8 cards keep resisting: initializing them is still a big no-no, hardware overlays are a thing long gone, and blitters are not supported either (nor since Geforce7); on those cards, pretty much everything has to go through the 3D units—which are still very obfuscated.

Don’t fret though, work has started on the triangle engines: nv30 and nv10 have seen some code thrown their way, and fixed function shaders might just come (there was some talks of running texture-less Quake recently—from glxgears to Quake, now that’s progress!).

Interestingly, the Nouveau project is getting ever closer to beating NVIDIA at 2D support under X; their implementation is shaping up to be both more complete and up to date than NVIDIA’s.

I must, however, backtrack on something I said previously: XvMC won’t be implemented in Nouveau; it’s not powerful enough, and too much trouble to implement at this time. Anyway, another video extension is being developed (chiefly by Intel, but other developers at freedesktop.org seem to like the idea) to do what XvMC does, and more. Expect code from that project to be implemented inside Nouveau as soon as it’s out.

Oh, and the Matrox driver is getting, albeit little by little, EXA and X monitor auto detection support.


## Incredible changes

But all this is not what shook up the GNU/Linux graphics movement. No, what happened made even more noise than when Intel decided to dedicate a programmer to maintaining its drivers.

AMD/ATI released their hardware’s specifications under no Non Disclosure Agreement (meaning that they are available for anybody to download); these specifications don’t cover dedicated video acceleration and encryption devices, but do detail everything else: 2D acceleration, shaders access, down to the card’s initialization codes: this means that a VESA BIOS Extension call is not required anymore, essentially making those specifications useful for any Radeon owner—even if said Radeon is running on a PPC Mac with no PC BIOS.

That alone is pretty groovy by itself, but they also released a skeleton driver and other code snippets to illustrate unclear areas of the code.

It was so big a release, in fact, that a team of Novell engineers made a working 2D driver available in under a week. A second version for this RadeonHD driver soon followed.

By the way, the avivo r500 driver was gleefully abandoned right after its version 0.0.1 release following this news; it had been made basically both redundant and obsolete.

The plan is now as follows: AMD will release 2D specs for r600 hardware, then 3D specs, then the same for r500, then r400, and lastly r300 (which is not that much different from r400 anyway). In the meantime, existing code from the current r300 driver will be ported to the newer driver, when relevant.

The Radeon and RadeonHD drivers will probably be merged once RadeonHD has gained some stability, and Radeon code gets clean enough.

This leaves NVIDIA as the only card maker to not release any specifications about its hardware, now.


# Where no one has gone before


## Future plans

Programmers aren’t stupid; they will reuse code when it is available. What prevented this though, was that there was not enough code on known hardware to be worth sharing. But, this is now changing. Why?


* Intel has a free driver running, and it is now very nice.
* VIA, S3 and Sis did, one way or another, provide some extra stuff.
* ATI, first reluctantly, then openly, provide specifications for their hardware.
* Nouveau has actually figured out a lot of stuff about NVIDIA hardware, and more importantly, across the whole range, and now “just” needs a lot of code to run.

The OpenGL-compatible Mesa 3d project, along with DRI, have hit their limit; a new project, started by the same guys, is called Gallium; it aims at implementing a common 3D API across all cards it can support, with software emulation where needed. In fact, a little bit like what Mesa aimed at in the beginning, but in a more flexible and modular manner.

A project like Gallium aims at preventing code duplication across hardware; this would allow new cards to be supported much faster, since one would merely need to determine what the card supports in hardware, and emulate the rest, to support it.

How to interact with the hardware would be simplified by another thing which is in the work: a unified memory manager for graphics hardware would make stuff like ISA, PCI, AGP or PCI-Express irrelevant at the driver level; what would remain would be, in fact, a card’s most basic interface: how to initialize it, how to send video to it, how to initialize its 2D acceleration, how to initialize its 3D acceleration, how to perform context switching... While not trivial, those operations are actually the only ones that need to be written for a card. The rest should be, in fact, the same for all cards.

That’s the plan, anyway; it will take some time to become complete. Still, projects like DRI2 are going this way.


## The Matrix


 | | | | | |
-|-|-|-|-|-|
**Chip maker** | **Driver** | **Family** | **Model** | **Support?** | **Working Compiz?** | 
Intel | gma | i810 | i810 to i965 | 2D, EXA,3D | Yes | 
NVIDIA | Nvidia 71 | nv04 to nv30 | TnT to Geforce4 | 2D,3D | Yes through XGL | 
NVIDIA | Nvidia 96 | nv10 to nv20 | Geforce2/MX to 6 | 2D,3D | Yes | 
NVIDIA | Nvidia 97-100 | nv30 to nv60 | Geforce FX to 8 | 2D,3D | Yes | 
NVIDIA | nouveau | nv04 to nv50 | TnT to Geforce7 | 2D, advanced EXA | No | 
ATI | dri | Mach | Mach32/64, early Rage | 2D, EXA, (3D *) | No | 
ATI | dri | Rage (r128) | Rage M2 to Fury | 2D, EXA | Unknown | 
ATI | radeon | r100 to r4xx | Radeon 7000 to X850 | 2D, EXA,3D | Yes | 
ATI | radeonhd | r500,r600 | Radeon X1600 to X2900 | 2D | No | 
ATI | fglrx | r300 to r6xx | Radeon 9500 to X2900 | 2D,3D | Yes | 
Sis | dri | 730 | 300,540,630,730 | 2D, 3D, experimental EXA | Yes | 
Sis | Sis | Others | 740,750 etc. | 2D or None | No | 
Matrox | dri | G200 to G550 | G200 to G550 | 2D, 3D, experimental EXA | Yes | 
Matrox | >o< | G100 | G100 | None | No | 
Matrox | matrox | Parhelia | Parhelia | 2D,3D, closed | ? | 

=TABLE_CAPTION=The matrix. As you can see, I don’t mention AIGLX anymore, and I sort the list by driver revision/version.=

(*) _In X 6.9, Mach hardware used to have 3D acceleration; however, its driver has fallen prey to bit rot, and doesn’t work any more (hard crash)._


## General work on Compiz

The merger between Compiz and Beryl is now done and stabilized; Compiz-fusion took the best of both projects, and delivers rock-stable eye-candy and hardware acceleration. Some notes on version 0.6.0 though:


* while Beryl 0.2 was able to rotate the cube with little CPU load, it skyrockets under Compiz-fusion;
* whatever hardware you may be using, Compiz is extremely dependent upon the quality of pixmap handling: as such, even a top of the line graphics chip will give bad results if there is a bottleneck somewhere;
* Xgl seems pretty much gone now; AIGLX is now the preferred solution for most (if not all) current distributions.

In order to have a great experience, you should check what follows:


* AGP support; some kernels may have AGPGART compiled in, and may fail to initialize it correctly (sometimes only on cold boot). In those cases, rebooting the machine will provide a significant boost. If it does, you should consider recompiling/upgrading your kernel to load the appropriate AGPGART module later.
* PCI Express should prove no problem at all, and isn’t affected by the above problem.
* A puny chip (like the NVIDIA 5200) can still outperform some NVIDIA 6500 and lower, due to its 128-bit wide memory bus (the 6200-6500 is only 64-bit wide). This becomes apparent when you put strain on it (like when running a virtual machine with emulated VGA, like dosbox or Qemu, which dump humongous amounts of graphics per second on the frame buffer), where the 5200+NVIDIA driver 97.55 puts the 6200 to shame (while the latter is three times more powerful shader-wise). Driver versions 100.14.19 and later improve the situation somewhat, but ye be warned: under Compiz, a graphics card is only as powerful as its interface and its frame buffer bus...
* if you use integrated graphics with shared memory, enabling dual channel should improve your experience tremendously for the above reason; dual channel, in practice, switches on a 128-bit wide system memory bus... And an NVIDIA 6150 or an Intel 950 may just rock with those.
* ATI hardware proves how much in advance it was: a Radeon 9600 Pro for example is still a force to be reckoned with feature and power wise. If you have one, hold onto it, as recent events at AMD’s makes it one of the most appealing cards under GNU/Linux today. Not only is the proprietary fglrx driver much better than earlier releases performance and feature wise (8.42.3 supports AIGLX, Composite and an extra 10% performance boost), the free driver is very good and bound to get even better in the coming months—if not weeks. The X300 (for PCI Express system) is worth a look too.


# Conclusion

Frankly, apart from the announcement of an overhaul of the graphics APIs all over the place (yes, PC-BSD may just follow on Gallium and DRI2, so Linux isn’t the only kernel considered), this matrix’s main changes amount to AIGLX becoming a commodity, and a reinforced presence by AMD/ATI.


## Bibliography

Sources remain the same as previous matrix refreshes (plus a few [Phoronix](http://www.phoronix.com) articles), but of interest are:

[http://code-monkey.de/articles/tag/mga](http://code-monkey.de/articles/tag/mga)

[http://www.x.org/wiki/dri2](http://www.x.org/wiki/dri2)

[http://wiki.x.org/wiki/ttm](http://wiki.x.org/wiki/ttm)

