---
nid: '2169'
title: '3D drivers matrix - the evolution'
authors: 'Mitch Meyran'
published: '2007-04-04 7:00:00'
tags: 'linux,aiglx,nvidia,nouveau,xorg'
license: verbatim_only
section: end_users
listed: 'true'

---
Did you game well? If no, is it because you had 3D driver issues and couldn’t make head nor tail out of this mess? Here, I discuss the most recent driver releases on the most demanding 3D application there is today on the GNU/Linux desktop.


<!--break-->


**_The matrix in this article has been superceded by the one in _**[this article](http://www.freesoftwaremagazine.com/blogs/more_3d_desktops).

You guessed it, 3D desktops! Since my last version of the matrix is getting a bit old, it’s time for an update.


<!--break-->



# 3D drivers matrix—the evolution

Yup, the matrix is back—the driver matrix, that is. Following several comments and some further experiments on my part, I am glad to bring you an updated driver table.

Before that however, the news!


## ATI

ATI/AMD is churning out updated drivers monthly. They are more stable, faster, cater to more recent revisions of Xorg—but they still won’t support AIGLX nor do they provide hardware-accelerated GL_EXT_texture_from_pixmap. They also cut support to r100/r200 cards. Too bad.

However, more recent cards are now supported and some 2D-only cards get 3D acceleration. Rejoice—XGL may now be available to you! You may need to disable compositing in `xorg.conf` though:

`Option "Composite" "disabled"`

The free driver suffers from slow performance. However, in most cases it Just Works (tm). Some of you may notice that videos don’t morph with the cube when you rotate Compiz’s cube—these drivers still make use of hardware overlays and keyed colours, which allow the best, flicker-free, least CPU intensive video display. It doesn’t render on the same context as the 3D one, meaning display gets... funky. Be glad, if they weren’t well done you’d get hard crashes...

Improving performance with the free Radeon driver is no more than an upgrade away: apparently, upgrading the kernel to version 2.6.18 (or more recent) while using the latest Mesa CVS version may yield much better performance. I’ll try it and keep you all posted (last time I tried was with a 2.6.17 kernel).


## NVIDIA

NVIDIA have divided their drivers into 3 “families”:


* 71.xx supports “archaic” hardware: from the original TnT to the pre-MX Geforce2, this driver supports Xorg 7.1 but won’t provide AIGLX nor `GL_EXT_texture_from_pixmap`.
* 96.xx supports “legacy” hardware: from the Geforce2MX to Geforce4, the revamped MX memory controller may explain why those cards basically support AIGLX (which wasn’t too hard) and `GL_EXT_texture_from_pixmap`. With those cards, 3D desktop is doable if not quite slick (my ti4200/128MB likes it, at least), and merely suffers from some flickering in large video playback (DVD resolution isn’t too enjoyable if you’re VERY sensitive to flickering; if you’re not, it’s more than watchable).
* 97.xx driver releases (and subsequent) cater to GeforceFX to Geforce8, which probably benefit from their programmable shaders to provide better 3D: starting with Geforce6, hardware contexts may allow better 3D applications integration with 3D desktops. This also seems to provide overlay emulation (hardware overlay is re-routed to a GL texture) resulting in pretty much flicker-free videos—personally, I can stand watching a DVD with that.

Those chips still suffer from an annoying bug, however: when you fill up the frame buffer, all subsequent windows (or dialogues) will appear black. The only way to solve that is to either increase the frame buffer size (possible with integrated 6150, for example) or reduce frame buffer use (close some windows, minimize then restore the black window, disable some plugins).

Please note that you pretty much HAVE to add those options to `xorg.conf`:

`Option "AddARGBGLXVisuals" "true"`

`Option "TripleBuffer" "true"`

Otherwise, you may not get working window borders.

On the free side, version 1.99 of the free nv driver is out—it now provides basic 2D support for Geforce8 cards too.

For the Nouveau free NVIDIA driver, see the “News” section later in this article.


## Matrox

Ask and ye shall receive... I asked last time if anybody had tried running AIGLX on Matrox hardware. It appears that it works, but that the driver is too buggy to make it reliable: texture cutoffs happen on G400 hardware (this may have been corrected in more recent Mesa CVS/release packages).

The G400 MAX is basically a single-card “SLI” solution with two G400 cores glued together. However, current drivers can only make use of a single core (use of the second core is undocumented)—resulting in degraded performances.

It seems that the Xorg driver isn’t directly supported by Matrox; however, since Matrox publishes apparently unobfuscated sources (with a non-free license though), the Xorg package is usually not too far behind (when not innovating altogether).


## Intel

Driver cleanup is still going on; improved stability and better performance seem to be the norm in various reports.

Nothing else is new here, though—we’ll see what more recent chips (and future add-in cards) will provide...


## Sis, VIA

There seems to be a bit of movement on their side, but nothing more than faint echoes in the press of newer drivers.


# Miscellaneuous news


## Window managers

While Compiz has been a constant fixture ever since Novell showed off their spinning cube, a fair bit of changes have taken place:


* Beryl, Quinnstorm’s Compiz fork, has reached “stable” version 0.2. It comes with nice eye-candy, but since Compiz has started implementing more eye-candy itself, talks are (reportedly) going on about merging the two back together.
* Promoted by Mandriva, the Metisse compositing window manager takes a different approach: no more cube, now you can play with the windows themselves and still retain input capabilities (something Compiz/Beryl prevents). I haven’t tried it yet, but rest assured that as soon as I upgrade my system to Mandriva 2007.1 Spring, I’ll give you a full account. From what I heard, this is actually an experiment at revamping the traditional way of interacting with your desktop—and it won’t require 3D hardware.
* KDE4 is coming slowly. Its window manager may in fact take a leaf out of Metisse’s book and revisit one’s way of using one’s desktop. If it actually works, I may leave GNOME behind.


## Nouveau

The guys at Nouveau have raised interesting questions for the kernel developers. From what I could gather, kernel 2.6.21 and Xorg 7.2 will provide a much better support for video awareness at the kernel level (removing troubles when using both the frame buffer and the Xorg driver for a single chip) and for multiple screen solutions (basically the result of randr1.2 development—concurrently being implemented in Nouveau and Xorg radeon driver) which will allow on-the-fly display management while reducing driver complexity.

On the functionality front, right now, they are working on the memory manager—so as to provide reliable context switching and back/front buffer blipping on all cards—and mapping newer cards’ hardware instructions. Once those are done, textures can be used. By the end of the year, it may be able to run all cards on all platforms with 2D EXA and 3D acceleration.

Note that several distributions have started shipping early Nouveau versions and/or Renouveau (their hardware state dumping utility) packages—right now the project is being swamped under card dumps (which leaves them a bit bewildered).


# The matrix has you (at least, your card)

Without further ado, ladies and gents, here comes the updated matrix (as of 2007-03-29):


 | | | | | | |
-|-|-|-|-|-|-|
Chip maker | Family | Model | Xorg 7.1 | Maker’s driver | XGL/AIGLX | Working Compiz? | 
Intel | i810 | i810 to i965 | 2D,3D | Developped in Xorg | AIGLX | Yes | 
NVIDIA | Riva | Riva128 | 2D | Archived | No | No | 
NVIDIA | TnT/Geforce | TnT to Geforce2 (not MX) | 2D (1) | 2D,3D (71.xx) | XGL | Yes | 
NVIDIA | Geforce (fixed) | Geforce2/MX to 4 | 2D (1) | 2D,3D (96.xx) | AIGLX | Yes | 
NVIDIA | Geforce (GLSL) | Geforce FX to 8 | 2D (2) | 2D,3D (current) | AIGLX | Yes | 
ATI | Mach | Mach32/64, early Rage | 2D (3) | None | No | No | 
ATI | Rage (r128) | Rage M2 to Fury | 2D,3D | None | AIGLX | No (4) | 
ATI (Xorg) | r100 to r4xx | Radeon 7000 to X850 | 2D,3D (5) | Irrelevant | AIGLX | Yes | 
ATI (closed) | r300 to r6xx | Radeon 9500 to X1950 | Irrelevant | 2D,3D | XGL | Yes | 
Sis | 730 | 300,540,630,730 | 2D,3D | Outdated | AIGLX | Yes | 
Sis | Others | 740,750 etc. | 2D | None | No | No | 
Matrox | G200 to G550 | G200 to G550 | 2D,3D | Provides sources | AIGLX | Yes (6) | 
Matrox | G100 | G100 | 2D | None | No | No | 
Matrox | Parhelia | Parhelia | None | 2D,3D, closed | ? | ? | 

=TABLE_CAPTION=Graphic chips families comparison=

_(1) Nouveau needs to implement software context switching to support textures._

_(2) Nouveau has working context switching on Geforce 6; Geforce 7 hangs often, Geforce 8 is a radically different hardware design._

_(3) Xorg 6.9 has a working 3D driver, the kernel DRM module is experimental—as such it hasn’t been ported to Xorg 7.1 yet, but one can supposedly run XGL and Compiz on Xorg 6.9 with these chips (I’ll see if I can test that on my laptop)._

_(4) AIGLX loads, but the driver is missing some critical functions for Compiz to work._

_(5) Early Radeon cards (7x00 to 9200) are fully supported by Xorg’s “radeon” driver (except 9100 due to radically different memory management caused by cached/shared video memory). More recent versions are experimental and slowly get more support and speed._

_(6) Glitches were found, such as texture cutoff. If the Xorg driver doesn’t work for you, get Matrox’s or download the most recent package from Xorg’s website._

Generally speaking, if you’re having trouble with a driver release, update to the latest version either from Mesa/Xorg or from the manufacturer. Using a recent kernel revision may help greatly too.


# Conclusion

We’re seeing a lot of things coming together and some innovations are on the way. The GNU/Linux desktop won’t ever be the same again. Groovy!


# Previous versions of the matrix and further reading

Old versions of the matrix can be found in these articles:


* [Graphics drivers: where they are, where they come from, where they are going](http://www.freesoftwaremagazine.com/blogs/graphics_drivers_where_they_are_where_they_come_from_where_they_are_going)
* [Getting bored with 3D desktops?](http://www.freesoftwaremagazine.com/blogs/bored_with_3d_desktops)
* [A glimpse into 3D desktops...](http://www.freesoftwaremagazine.com/blogs/a_glimpse_into_3d_desktops)

And, for my guide to understanding 3D desktops, you can read [A “what is” guide to 3D desktops](http://www.freesoftwaremagazine.com/blogs/a_what_is_guide_to_3d_desktops).


# Bibliography

[97.55 Supported NVIDIA GPUs](http://us.download.nvidia.com/XFree86/Linux-x86/1.0-9755/README/appendix-a.html)

[NVIDIA Free nv version 1.99.1 release](http://lists.freedesktop.org/archives/xorg/2007-March/022449.html)

[AMD/ATI driver 8.35.5 release notes](https://a248.e.akamai.net/f/674/9206/0/www2.ati.com/drivers/linux/linux_8.35.5.html)

[A Gentoo howto](http://gentoo-wiki.com/HOWTO_AIGLX).

[Release Notes for Xorg 7.1](http://ftp.x.org/pub/X11R7.1/doc/RELNOTES4.html).

[ATI driver status](http://dri.freedesktop.org/wiki/ATIRadeon).

[Fedora notes on AIGLX](http://fedoraproject.org/wiki/RenderingProject/aiglx).

[The NouVeau project](http://nouveau.freedesktop.org/wiki).

[The DRI Matrox support page.](http://dri.freedesktop.org/wiki/Matrox?action=highlight&value=CategoryHardware)


