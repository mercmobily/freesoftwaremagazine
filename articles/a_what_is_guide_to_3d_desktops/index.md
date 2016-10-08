---
nid: '1757'
title: 'A “what is” guide to 3D desktops - put in a bowl, mix, add chips for topping'
authors: 'Mitch Meyran'
published: '2006-09-13 8:50:45'
tags: '3d-desktop,aiglx,xgl,nvidia,ati,sis,matrox'
license: verbatim_only
section: end_users
listed: 'true'

---
I’ve been talking about them, complaining about what you CAN’T do, about the troubles with 3D cards... Personally I’m getting a bit lost with all this. So, I’ve decided to compile all the information I could find out about those pesky 3D desktops.

Since last week, comments, accounts from other websites, personal experiments, further readings and general nosiness allowed me to update my article. Still, further comments are welcome.


<!--break-->



# A “what is” guide to 3D desktops—updated


## XGL

Essentially developed by Novell for SuSE and the first “elegant” 3D desktop, it came out with Compiz, a window manager that can replace Gnome’s (and now KDE’s and others) window manager. Allowing desktop rotations, window transparencies and deformations, it is nice-looking, fluid and can run on hardware more than five years old.

In short, if your existing X configuration supports somewhat advanced 3D acceleration and DRI, you can run XGL: it will start your normal X, ask it to draw a single, full-screen OpenGL window in which a simple new X server runs...

The advantage:

It will run (fast) on almost any 4 year-old video hardware, provided it has accelerated 3D (free or otherwise).

It will run on older cards, but don’t expect astonishing performances.

The problems:

Cards that can’t handle outputting video (meaning colour spaces different than xRGB) to a texture will have to use software rendering; it’s slower than video output to a VGA framebuffer, and 3D acceleration for applications require the card to handle several GL contexts.


## AIGLX

Championed by Red Hat and NVIDIA (amongst others) this method intends to add 3D acceleration to composite (ie. which can declare any element rendered separately and asks the hardware to assemble it all on screen) X; this was accepted by the Xorg and freedesktop projects, so version 7.1 of Xorg has seen a nice AIGLX extension added. This solves the two main problems XGL encountered: 3D acceleration is still made available to applications, and video output can still make use of existing X extentions like xv.

AIGLX first came with a modified version of Metacity, Gnome’s default window manager. Changes to Metacity are being merged upstream, and its plugins are being homogeneized with Compiz’s.

However, AIGLX requires full compliance with the X ABI version 1.0, the support of GL_EXT_texture_from_pixmap, and DRI support; things that most proprietary drivers don’t support fully as of yet, not even NVIDIA, proponent of the project: DRI doesn’t work with their “legacy” driver (71.84), and GL_EXT_texture_from_pixmap isn’t supported (71.84 and 87.74).

One good comment about both ATI’s and NVIDIA’s drivers though, those were quite quickly updated to support the new X 1.0 ABI.

Meaning that right now, only owners of Intel, some Sis and older ATI hardware (pre-X1xxx) can make use of AIGLX, since those have free, AIGLX-supporting drivers.


# The Support


 | | | | | |
-|-|-|-|-|-|
Manu | model | Xorg 7 | Manufacturer’s | XGL | AIGLX | 
Intel | i810 to i965 | 2D,3D | See Xorg’s | Useless | Yes | 
NVIDIA | Riva/TnT/Geforce1/2/MX | 2D | 2D,3D, closed | Yes# | No | 
NVIDIA | GeForce3/4/FX/6/7 | 2D | 2D,3D, closed | Yes## | No | 
ATI | Rage128 to Radeon 9200 | 2D,3D | was there one? | No | No* | 
ATI | Radeon 7000 to Radeon 9200 | 2D,3D | obsolete | Useless | Yes** | 
ATI | Radeon 9500 to X1850 | Experimental | 2D,3D | Yes | Experimental** | 
Sis | 300,540,630,730 | 2D,3D | outdated | Useless | Yes | 
Sis | 315/550/650/651/740/661/741/760/330 | 2D | none | No | No | 

=TABLE_CAPTION=Chips Manufacturers Comparison=

(#)These cards require legacy NVIDIA driver (71.84). “MX” relates to both GF2MX and GF4MX, since both are Geforce2-level.

(##)3D applications are accelerated on a Geforce 6 (not tried on others), video is fast from the FX onward.

(*)Card models named Rage (128, Mobility, II, pro etc.) were either Mach64 2D chips with added functionalities (those don’t have a working DRI/DRM and are called with the “ati” driver) or “real” 3D chips (their DRI/DRM module is r128). 3D works with r128, but missing visuals make Compiz unable to load.

(**)Early Radeon (7x00 to 9200) are fully supported by Xorg’s “radeon” driver.

(***)Card models from 9500 to X600 use the R3xx chip family. 3D support is being implemented, and AIGLX is working on R3XX cores (tested 9500, got reports on 9600). R4xx is under heavy development. If the free driver supports 3D, then AIGLX support is practically guaranteed.

“Useless” refers to the fact that there are no working proprietary 3D driver, and that the driver integrated with Xorg is good enough to run AIGLX—which works better than XGL anyway. So while XGL would work, it is of no use except if you use an older version of Xorg or Xfree86.


# Cards I could try


## NVIDIA

NVIDIA has no worthwhile free driver, so you basically need to use their closed one. Luckily, they have quite nice support.

The NouVeau project has made some progress on a free driver though: right now, they’re adding EXA and DRI/DRM support to the nv driver... They’re doing an extraordinary job with very little data to base themselves on, so if you could help them...

But let’s now see what I discovered:


* I’ve tried a Riva TNT rev.4 with 16MB of SDRAM. It ran without DRI using legacy NVIDIA driver on a 800x600x32bit driver (16bit didn’t display windows or desktop), at a snail’s pace. More RAM, a higher clocked chip and working NVIDIA DRI support would provide much better results.
* The Geforce 4 is a ti4200 with 128MB of DDR; it didn’t have accelerated video, but I think 3D acceleration worked for applications. DRI was reported to work.
* Geforce FX 5200 with 128MB of DDR and Geforce 6600 with 256MB were the more “recent” NVIDIA hardware I tried. Video was stable on both, and 3D worked on the 6600 (Google Earth worked fast).

Conclusion, recent NVIDIA drivers run XGL on basically all cards, but good performance requires recent hardware.


## ATI

I don’t have as great a range of ATI hardware as I have NVIDIA; still, here is some information.


* A Mach64-based Rage Mobility (M1) would load a DRM module (not compiled by default on vanilla kernels), but it would issue a DRI/DRM version mismatch. Courageous folks may get it to work, but...
* An r128 (Rage128 TVout) card could load AIGLX, but misses visuals 0x23 to 0x32—so compiz won’t load on Rage 128 hardware (maybe once all visuals are implemented in the driver...)
* No r100 or r200 cards, sorry. However, they are considered fully supported, so my guess is AIGLX works very well on those.
* A R300 (Radeon 9500) could run AIGLX, and quite well—the driver may need some more licking, but it basically works.

I have nothing more recent at my disposal, so owners of X6xx to X1xxx cards, if you could please give me a status report on those cards, with both the free and closed source driver, on both AIGLX and XGL...


## Sis

Only a 750 available to test; there is no 3D support and no DRM module for those cards, so no 3D desktop on it at all. Too bad.


## Intel

No hardware to test; a report of AIGLX working slowly on a i810 reached me, and the Fedora website reports good working 830 to 9XX, so it stands to reason to think that AIGLX works well on pretty much all Intel IGPs anyway.


# Conclusion

If I get more information, I will update this chart more. I’m currently writing a more complete guide—that I’ll publish in PDF format here—with more in-depth details.

It would be nice to get detailed comments on the hardware you test and report: distribution, proprietary/free driver, chip revision, amount of video RAM, X version, etc.

Personally, I use the latest Mandriva 2007 RC (with Cooker updates) on a spare hard drive that I move from one computer to the other. It uses recent CVS extracts of Mesa, meaning that it supports the widest range available of free 3D drivers. More recent would be Gentoo, but I don’t feel like learning a new distribution for those tests.


# Bibliography

Last weeks entry—[A glimpse into 3D desktops...](http://www.freesoftwaremagazine.com/blogs/a_glimpse_into_3d_desktops).

[A Gentoo howto](http://gentoo-wiki.com/HOWTO_AIGLX).

[Release Notes for Xorg 7.1](http://ftp.x.org/pub/X11R7.1/doc/RELNOTES4.html).

[ATI driver status](http://dri.freedesktop.org/wiki/ATIRadeon).

[Fedora notes on AIGLX](http://fedoraproject.org/wiki/RenderingProject/aiglx).

[The NouVeau project](http://nouveau.freedesktop.org/wiki).


