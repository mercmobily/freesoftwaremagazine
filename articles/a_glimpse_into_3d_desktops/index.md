---
nid: '1750'
title: 'A glimpse into 3D desktops...'
authors: 'Mitch Meyran'
published: '2006-09-06 14:13:27'
tags: '3d-desktop,graphics-card,aiglx,xgl,nvidia,ati,sis,matrox'
license: verbatim_only
section: end_users
listed: 'true'

---
I’ve been talking about them, complaining about what you CAN’T do, about the troubles with 3D cards... Personally I’m getting a bit lost with all this. So, I’ve decided to compile all the information I could find out about those pesky 3D desktops.

Comments required.

**_The matrix in this article has been superceded by the one in _**[this article](http://www.freesoftwaremagazine.com/blogs/more_3d_desktops).


<!--break-->



# A “what is” guide to 3D desktops


## XGL

Essentially developed by Novell for SuSE and the first “elegant” 3D desktop, it came out with Compiz, a window manager that can replace Gnome’s (and now KDE’s and others) window manager. Allowing desktop rotations, window transparencies and deformations, it is nice-looking, fluid and can run on hardware more than five years old.

In short, if your existing X configuration supports somewhat advanced 3D acceleration and DRI, you can run XGL: it will start your normal X, ask it to draw a single, full-screen OpenGL window in which a simple new X server runs...

The advantage:

It will run (fast) on almost any 4 year-old video hardware, provided it has accelerated 3D (free or otherwise).

The problems:

Cards that can’t handle outputting video to a texture will have to use software rendering—it’s slower than video output to a VGA framebuffer, and any form of 3D acceleration in applications has gone bye-bye.


## AIGLX

Championed by Red Hat and NVIDIA (amongst others) this method intends to add 3D acceleration to composite (ie. which can declare any element rendered separately and asks the hardware to assemble it all on screen) X—and this was accepted by the Xorg and freedesktop projects, so version 7.1 of Xorg has seen a nice AIGLX extension added. This solves the two main problems XGL encountered: 3D acceleration is still made available to applications, and video output can still make use of existing X extentions like xv.

However, AIGLX requires full compliance with the X ABI version 1.0, the support of GL_EXT_texture_from_pixmap, and DRI support—things that most proprietary drivers don’t support as of yet, not even NVIDIA’s—proponent of the project.

Meaning that right now, only owners of Intel, some Sis and older ATI hardware (pre-X1xxx) can make use of AIGLX.


# The Support


 | | | | | |
-|-|-|-|-|-|
Manu | model | Xorg 7 | Manufacturer’s | XGL | AIGLX | 
Intel | i810 to i965 | 2D, Full 3D | ...is free | Yes, good video | Yes | 
NVIDIA | GeForce3/4 | 2D only | 2D/3D, closed | Yes, slow video | No | 
NVIDIA | GeForceFX/6/7 | 2D only | 2D/3D, closed | Yes, fast video | No | 
ATI | 9500 to X1850 | 2D/3D* | 2D, partial 3D, closed | Yes, fast video | Yes* | 
ATI | 7500 to 9200 | 2D, Full 3D | obsolete | Yes, slow video | Yes | 

=TABLE_CAPTION=Chips Manufacturers Comparison=

(*)Card models from 9500 to X600 use the R3xx chip family. 3D support is being implemented, and some may thus be able to use AIGLX—some users report having run AIGLX on a 9600 (R350) under Ubuntu. R4xx is under heavy development. If the free driver supports 3D, then AIGLX support is practically guaranteed.


# Conclusion

Help wanted—I’ve personally tested a GeForce 4200, a GeForce 5200 and a GeForce 6600. I need some input from Intel/Sis/ATI owners to make this article as complete as possible.


# Bibliography

[A Gentoo howto](http://gentoo-wiki.com/HOWTO_AIGLX).

[Release Notes for Xorg 7.1](http://ftp.x.org/pub/X11R7.1/doc/RELNOTES4.html).

[ATI driver status](http://dri.freedesktop.org/wiki/ATIRadeon).

[Fedora notes on AIGLX](http://fedoraproject.org/wiki/RenderingProject/aiglx).


