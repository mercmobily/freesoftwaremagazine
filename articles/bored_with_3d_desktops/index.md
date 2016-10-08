---
nid: '1797'
title: 'Getting bored with 3D desktops? I''m definitely not!'
authors: 'Mitch Meyran'
published: '2006-10-14 6:00:00'
tags: '3d-desktop,graphics-card,aiglx,xgl,nvidia,ati,sis,matrox'
license: verbatim_only
section: opinions
listed: 'true'

---
Well, while I haven’t posted anything new in a while, I’m (AGAIN) updating my 3D desktop article.

This time, I’ll answer some comments I have seen appear in response to the two previous incarnations of this very same article, as well as revise (further) some of the content.

This revised version brings some confirmations from users, and adds a preliminary Matrox product line support description.

**_The matrix in this article has been superceded by the one in _**[this article](http://www.freesoftwaremagazine.com/blogs/more_3d_desktops).


<!--break-->



# 3D desktop: the proprietary strikes back (sort of)


## Out of subject: Vista

I know, it’s not free; but I’d like to point out that there is indeed some 3D acceleration being used by Microsoft in its forthcoming operating system. Does it look nice? It is a matter of taste (my take: not too bad, but definitely MacOS-ish).

Is it worth it? Well, from what I saw when I tried a beta on the most powerful machine I have (a X2 3800+ with 2 GB of RAM, a SATA-2 hard disk with native command queueing and a Geforce 6600)... Not so good.

Is it useful? Well, it’s mostly eye-candy: it doesn’t extend desktop real estate, it doesn’t allow you to have a quick peek at the application under the active window easily, it doesn’t shuffle windows to create a quick mosaic, it doesn’t create virtual desktops...

Frankly, I prefer the state of things in the GNU/Linux/xBSD world.


## The underlying 3D system, legacy solution: XGL

Essentially developed by Novell for SuSE and the first “elegant” 3D desktop, it came out with Compiz.

First, a standard X server starts, with support for accelerated GL X but no composite; acting as an X client, XGL loads, taking control of the whole screen and mouse cursor. This client is ALSO a compatible X11 server, which then accepts various clients (applications and window manager). To simplify things, this ‘virtual’ X transforms all windows and elements into textures that are then displayed in the full-screen, 3D accelerated ‘native’ X.

In short, if your existing X configuration (version 6.9 for example) supports somewhat advanced 3D acceleration and DRI, you can run XGL: it will start your normal X, ask it to draw a single, full-screen OpenGL window in which a simple new X server runs...

The advantage:

It will run (more or less fast) on almost any video hardware, provided the hardware has robust accelerated 3D (free or otherwise).

The problems:


* Cards that can’t handle outputting video (meaning colour spaces different than xRGB) to a texture will have to use software rendering: it’s slower than video output to a VGA framebuffer.
* 3D acceleration for applications require the card to handle several GL contexts. If it can’t support several contexts, you will get software rendering for the applications.


## The underlying 3D system, the present/future: AIGLX

Championed by Red Hat and NVIDIA (amongst others) this method intends to add 3D acceleration to composite (ie. which can declare any element rendered separately and asks the hardware to assemble it all on screen) X; this was accepted by the Xorg and freedesktop projects, so version 7.1 of Xorg has seen a nice AIGLX extension added. This solves the two main problems XGL encountered: 3D acceleration is still made available to applications even when the card can’t handle multiple GL contexts, and video output can still make use of existing X extentions like xv (at the cost of some strange results on some operations).

AIGLX first came with a modified version of Metacity, Gnome’s default window manager. Changes to Metacity are being merged upstream, and its plugins are being homogeneized with Compiz’s. At the same time, Compiz can now make use of AIGLX.

In order to work, AIGLX requires full compliance with the X ABI version 1.0, and DRI support; to support Compiz, it also requires the support of GL_EXT_texture_from_pixmap.


## The window managers: Metacity, Compiz and Beryl

Metacity is Gnome’s successor to Enlightenment (which went and became a desktop environment in its own right); it has recently been extended to support compositing and 3D plugins, like Compiz—however it is still experimental in that aspect.

Compiz first appeared as a compositing window manager to replace Gnome’s (and now KDE’s and others). Allowing desktop rotations, window transparencies and deformations, it is nice-looking, fluid and can run on hardware more than five years old (tested successfully on a NVIDIA RivaTNT). It is modular in structure, using plug-ins to perform 3D operations.

Compiz has recently seen a fork, first called compiz-Quinn but which then changed name to become Beryl. While Compiz is a lightweight WM and is expected to remain so, Beryl intends to include more advanced plugins, skinnable controls and themes, and a management system separate from Gnome’s gconf—so as to run under more varied environments.


# Drivers updates


## Proprietary drivers

To make things clear, proprietary drivers are those that don’t come with all their source code available. They usually bring a licenced version of OpenGL that replaces Mesa’s, some management tools, and arguably better performances than existing free drivers provide.

On the other hand, they can be slow to support newer hardware or API changes, or never support a particular version of a chip that a free driver may support eventually.

Right now, the most used proprietary drivers are NVIDIA’s and ATI’s. Both support Xorg’s 1.0 ABI in their released versions.

However, for stuff like `GL_EXT_texture_from_pixmap`, only NVIDIA’s beta driver provides support (meaning that AIGLX starts with it) but on the condition that you use a very recent compositing window manager (for example, Mandriva 2007’s compiz version 0.0.13 fails with an exception). There is no news from ATI that I could find about this.


## Free drivers

The [nouveau project](http://nouveau.freedesktop.org/wiki) is now working on implementing a memory manager for NVIDIA cards which would make both their revamped nv driver (added EXA support) and their new 3D driver (DRI, DRM, GLX and GLSL being worked on) almost working on the whole NVIDIA cards range (from NV04 to G70).

They rule but they need help.

On the ATI/Radeon side, support for r300 and better cores is progressing slowly but steadily. Very recent hardware doesn’t work at all though.

Intel has opened the sources for all of their IGP drivers, and took in some open source driver specialists—support on that side is strong.

Meaning that right now (October 14th, 2006), only owners of Intel, some Sis and older ATI hardware (pre-X1xxx) can easily make use of AIGLX, since those have free, AIGLX-supporting drivers. The courageous may get AIGLX and a 3D window manager working on NVIDIA hardware with their beta driver: version 96.25 at the time of writing.


# The support


 | | | | | | |
-|-|-|-|-|-|-|
Manu | model | Xorg 7.1 | Manufacturer’s | XGL | AIGLX | WM (Compiz) | 
Intel | i810 to i965 | 2D,3D | See Xorg’s | Useless | Yes | Yes - AIGLX | 
NVIDIA | TnT to GeForce1 (1) | 2D | 2D,3D, closed | Yes | No | Yes - XGL basic | 
NVIDIA | GeForce2 to 7 | 2D | 2D,3D, closed | Yes - medium (3D) to full | Yes - Beta, incomplete | Yes - XGL (AIGLX) (2) | 
ATI | Mach64, early Rage | 2D | obsolete | No - missing functions | No - missing DRI | No | 
ATI | Rage M2 to Fury | 2D,3D | obsolete | No | Yes | No - missing functions | 
ATI | Radeon 7000 to 9200 | 2D,3D | obsolete | Useless | Yes (3) | Yes - AIGLX | 
ATI | Radeon 9500 to X1850 | Experimental | 2D,3D | Yes | Experimental (4) | Yes - AIGLX or XGL (fglrx) | 
Sis | 300,540,630,730 | 2D,3D | outdated | Useless | Yes | Yes - AIGLX | 
Sis | others | 2D | none | No | No | No | 
Matrox | G200 to G550 | see vendor | provides sources | Useless | Yes | Yes - AIGLX (5) | 
Matrox | others | 2D on G100 and older | 2D/3D on Parhelia | ? | ? | ? | 

=TABLE_CAPTION=Graphic chips families comparison=

_Notes: XGL basic means that while the interface is accelerated, applications are not: no fast video, no fast 3D; medium (3D) means that 3D is accelerated, but not video. Full means that both video and 3D are accelerated for applications._

_(1) These cards require legacy NVIDIA driver (71.84). “MX” relates to both GF2MX and GF4MX, since both are Geforce2-level._

_(2) 3D applications are accelerated, video is fast from the FX onward. The recent beta proprietary driver allows AIGLX initialization, but not all existing window managers work on it; the free driver is being worked on, but is not useable yet._

_(3) Early Radeon cards (7x00 to 9200) are fully supported by Xorg’s “radeon” driver (except 9100 due to radically different memory management caused by cached/shared video memory)._

_(4) Card models from 9500 to X600 use the R3xx chip family. 3D support is being implemented, and AIGLX is working on R3XX cores (tested 9500, got reports on 9600). R4xx is under heavy development. If the free driver supports 3D, then AIGLX support is practically guaranteed._

_(5) User reported a working G450, but couldn't make a G400 to work. The same driver is used for chips ranging from G200 to G550, it would thus stand to reason that all may work eventually. I have yet to parse the sources to find out the license, but they seem embedded with 'trunk' Xorg sources._

_“Useless” refers to the fact that there are no working proprietary 3D driver, and that the driver integrated with Xorg is good enough to run AIGLX, which works better than XGL anyway. So while XGL would work, it is of no use except if you use an older version of Xorg or Xfree86._


# Cards I have tried


## NVIDIA


* I’ve tried a Riva TNT rev.4 with 16MB of SDRAM (Asus V3400TNT/TVout 16 Mb). It ran without DRI using legacy NVIDIA driver on a 800x600x32bit driver (16bit didn’t display windows or desktop), at a snail’s pace. More RAM, a higher clocked chip and working NVIDIA DRI support would provide much better results—I’d like to try a TNT2 card.
* The Geforce 4 is a ti4200 with 128MB of DDR (MSI ti4200/8x); it doesn’t have accelerated video, but I think 3D acceleration worked for applications.
* Geforce FX 5200 with 128MB of DDR and Geforce 6600 with 256MB were the more “recent” NVIDIA hardware I tried. Video and 3D are stable and fast on both (Google Earth works, but there is a performance hit).

Conclusion: recent NVIDIA drivers run XGL on basically all cards, but good performance requires recent hardware; the beta (96.25) and Quadro (96.26) drivers support AIGLX, but not all window manager can deal with it (Beryl 0.2.1 does).


## ATI

I don’t have as great a range of ATI hardware as I have NVIDIA; still, here is some information.


* A Mach64-based Rage Mobility (M1) would load a DRM module (not compiled by default on vanilla kernels), but it would issue a DRI/DRM version mismatch. Courageous folks may get it to work, but...
* An r128 (Rage128 TVout) card could load AIGLX, but misses visuals 0x23 to 0x32 (it’s been said that this is meaningless, but that the driver misses necessary accelerations required by compiz); so compiz won’t load on Rage hardware.
* No r100 or r200 cards, sorry. However, they are considered fully supported, so my guess is AIGLX works very well on those. Reports say a r200 (7500) works very well.
* A R300 (Radeon 9500) could run AIGLX, and quite well at that; the driver may need some more refining still, but it basically works. A rv370 (X550) too (reports).

I have nothing more recent at my disposal, so owners of X6xx to X1xxx cards, if you could please give me a status report on those cards, with both the free and closed source driver, on both AIGLX and XGL...


## Sis

Only a 750 available to test; there is no 3D support and no DRM module for those cards, so no 3D desktop on it at all. Too bad.


## Intel

No hardware to test; a report of AIGLX working slowly on a i810 reached me, and the Fedora website reports good working 830 to 9XX, so it stands to reason to think that AIGLX works well on pretty much all Intel IGPs anyway.

I found no mention whatsoever about the old Intel i740; but considering it was even less powerful than a NVIDIA TNT, my take is that not only it doesn't work, but even if it did, it would be slow as hell.


## Matrox

No hardware to test. G200 to G550 chips should work, either now or shortly. Older hardware (G100 and older) might work one day, but I'd say they'd be too slow to handle anything more than simple compositing.


# Conclusion

It would be nice to get detailed comments on the hardware you test and report: distribution, proprietary/free driver, chip revision, amount of video RAM, X version, etc.

Personally, I use the latest Mandriva 2007 on a spare hard drive that I move from one computer to the other. It uses recent CVS extracts of Mesa, meaning that it supports the widest range available of free 3D drivers. More recent would be Gentoo, but I don’t feel like learning a new distribution for those tests.


# More on 3D desktops

An older version of the matrix can be found in [A glimpse into 3D desktops...](http://www.freesoftwaremagazine.com/blogs/a_glimpse_into_3d_desktops) and you can read more on 3D desktops in [A “what is” guide to 3D desktops](http://www.freesoftwaremagazine.com/blogs/a_what_is_guide_to_3d_desktops).


# Bibliography

[A Gentoo howto](http://gentoo-wiki.com/HOWTO_AIGLX).

[Release Notes for Xorg 7.1](http://ftp.x.org/pub/X11R7.1/doc/RELNOTES4.html).

[ATI driver status](http://dri.freedesktop.org/wiki/ATIRadeon).

[Fedora notes on AIGLX](http://fedoraproject.org/wiki/RenderingProject/aiglx).

[The NouVeau project](http://nouveau.freedesktop.org/wiki).

[The DRI Matrox support page.](http://dri.freedesktop.org/wiki/Matrox?action=highlight&value=CategoryHardware)


