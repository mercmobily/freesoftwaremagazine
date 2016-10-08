---
nid: '1999'
title: 'Graphics drivers: where they are, where they come from, where they are going'
authors: 'Mitch Meyran'
published: '2007-01-10 8:30:15'
tags: 'aiglx,xgl,nvidia,ati,nouveau,graphics,xorg'
license: verbatim_only
section: hacking
listed: 'true'

---
I appreciate NVIDIA’s existing support for free software operating systems: their drivers are various, quite full featured, and they do upgrade the source of their minimalist free “nv” driver for those platforms they don’t support fully.

But where do the others stand?

**_The matrix in this article has been superceded by the one in _**[this article](http://www.freesoftwaremagazine.com/blogs/more_3d_desktops).


<!--break-->



# The 3D desktop: a catalyst?

While there was always some controversy on proprietary drivers in a free software OS, the very fast progress and increased release rate of those has gotten a lot more focus these past few months.

Without further ado, let’s review the last update to the 3D desktop driver matrix I maintain:


 | | | | | | |
-|-|-|-|-|-|-|
Manu | model | Xorg 7.1 | Manufacturer’s | XGL | AIGLX | WM (Compiz/Beryl) | 
Intel | i810 to i965 | 2D,3D | See Xorg’s | Useless | Yes | Yes - AIGLX | 
NVIDIA | TnT 1/2, Vanta | 2D | 2D,3D, closed - outdated | Yes | No | Yes - XGL basic | 
NVIDIA | GeForce2 to 4 | 2D | 2D,3D, closed - legacy | Yes - medium (3D) | Yes | Yes - AIGLX | 
NVIDIA | GeforceFX to 7 | 2D, pre-alpha 3D | 2D,3D, closed | Yes | Yes | Yes - AIGLX | 
ATI | Mach64, early Rage | 2D | obsolete | No - missing functions | No - missing DRI | No | 
ATI | Rage M2 to Fury | 2D,3D | obsolete | No | Yes | No - missing functions | 
ATI | Radeon 7000 to 9200 | 2D,3D | obsolete | Useless | Yes (3) | Yes - AIGLX | 
ATI | Radeon 9500 to X1850 | Experimental | 2D,3D | Yes | Experimental | Yes - AIGLX or XGL (fglrx) | 
Sis | 300,540,630,730 | 2D,3D | outdated | Useless | Yes | Yes - AIGLX | 
Sis | others | 2D | none | No | No | No | 
Matrox | G200 to G550 | see vendor | provides sources | Useless | Yes | Yes - AIGLX | 
Matrox | others | 2D on G100 and older | 2D/3D on Parhelia | ? | ? | ? | 

=TABLE_CAPTION=Graphic chips families comparison=

Visibly, you get different behaviours depending on the hardware maker. Let’s look at them more closely.


## Intel

Their policy is simple: all their current graphics hardware has a free software driver, and they maintain it themselves. Considering all their chips are integrated graphics for the x86 platform though, the drivers themselves are not as complex as, say, ATI or NVIDIA drivers: they don’t run on PowerPC or Alpha, thus things like endianness or radically different system architecture doesn’t bother them.

Let’s add too that such graphics adapters are usually very puny performance-wise, and don’t compete with the big 3D boys: as such, the driver’s Intellectual Property is regarded as a low strategic value.


## ATI

Having reluctantly opened the API of their r100/r200 chip lines, and not reinventing the wheel for every new generation, ATI’s hardware is well supported through both free software and proprietary drivers; their interest in OpenGL and “alternative” platforms is pretty recent, and as such they are still quite reluctant to produce well-performing drivers for their recent hardware, or to fix bugs in already released drivers. Let’s not mention older (Mach64/Rage class) hardware, which is completely ignored by them.

These facts have prompted a very active community towards creating a free software driver for all ATI hardware; right now, you are actually better off with the free software driver in most cases: it’s a bit more stable, supports a broader range of features, and is already installed in recent Xorg releases. The proprietary blob, although better and more often updated than before, is still not really up to the task of running all recent ATI hardware with all X bells and whistles.


## NVIDIA

Historically, NVIDIA hardware support under Linux or BSD systems has always been a mixed bag: they provide some sources, but can be unresponsive in some cases, while offering drivers varying in quality. However, they have always updated their drivers to support the latest hardware or to answer pressing customer pressure on a missing feature.

Since they have expanded their hardware range, getting support from them has gotten a bit more rodeo-like; however, they have lately tightened their act:


* Their network and sound hardware have no more closed source blobs, but are maintained directly in the kernel
* Graphics drivers are now released almost monthly, and beta versions are readily available on many free software platforms. They also maintain the free software “nv” 2D driver, although they obfuscate the source and forbid further diffusion of previous unobfuscated sources.
* It’s not rare to get staff answers on their Linux forums.
* They don’t seem to give the Nouveau project importance: while they don’t support it, they don’t attack it either.

They bring support to existing free software reverse engineered drivers. And, now that it has reached a much more stable status, they have discontinued the distribution of binary blobs. For example, they brought Gigabit support to forcedeth, made it reinitialize the card more efficiently in cases of dual boot, and “@nvidia.com” addresses appear much more often in kernel and ALSA patches.


## Sis

Their support is VERY inconsistent: some hardware saw them disclosing the complete driver source, another only ever saw a simple, outdated binary blob, and most recent chips have only Windows, Direct3D support—no OpenGL, no free software driver.

Avoid their recent stuff on free software systems, it’s useless.


## Matrox

They have taken an approach which is quite close to ATI’s: their older hardware driver code is free (G200 to G550), antiques are reverse engineered but no longer maintained or improved (G100 and older), they have a proprietary blob for more recent hardware (Parhelia) but their most recent stuff just plain doesn’t work.

Matrox is a bit different from the other manufacturers though, in that they now concentrate on external, multi-screen, no 3D hardware. The Parhelia, being outperformed and overpriced when it came out, was their last attempt at re-entering the 3D graphics hardware race—with little to no success.


## XGI, VIA

These manufacturers provide low-cost, low-performance parts. They do provide some support for Linux, but it is more like NVIDIA’s: a free software 2D driver, a binary blob for 3D; they are less efficient at it though, as they only provide Linux/86-32 drivers when they do. Releases are also not frequent, they don’t comment on them and they are not updated often.

To avoid headaches, don’t use those for anything but server/point-of-sale use: media and desktop use for example, are not really recommended.


# Overall behaviours


## Set’em free

Right now, Intel is the only one to fall under this category, but NVIDIA is a close second: both manufacturers provide free drivers for their whole hardware ranges under all X versions (be it Xfree86, or X.org) and in the Linux kernel, but NVIDIA keeps their graphics hardware under tight wraps: 2D support if free software but obfuscated, 3D is proprietary only. It could be answered though, that Intel drivers for their Wi-fi chips is encumbered by a required proprietary firmware.


## They got it anyway, get this out of here!

This would be ATI and in a lesser measure, Matrox: ATI’s free software driver was already quite advanced in its reverse engineering process when ATI decided to release the specifications and existing driver sources for the r100/r200, and Matrox couldn’t argue that their driver development team was any good on their older hardware (even the proprietary ones, well, sucked) so they got rid of this black spot on their record and got some positive PR in return.

NVIDIA doesn’t really fall under this category, because they are actually quite active in the free software world: if the advantages of releasing their 3D driver source outweighted the HARDWARE reverse engineering risks, they would actually do that.

But, if you only take their certifications on Quadro drivers, you’d see that they would have to keep producing a closed blob anyway; as such, they wouldn’t gain much support and R&D from opening it, and would run all the risks doing so entails. I’m sure that there are other reasons, but while I don’t really appreciate their choice, I can understand it.


## Free software sort of exists, let’s sort of support it

This would be Sis, VIA and XGI; they don’t have resources to spare and can’t afford a bad relationship with other operating systems, so their hardware support is flimsy at best: in Sis case, even their most used driver on their most recent chip has only a token 3D driver...


# Conclusion

A free system nowadays requires you to run either underpowered or older hardware (Intel, ATI or Matrox); the current king of the hill, NVIDIA, is no closer to disclosing sources for its 3D hardware. However, like I mentioned in my previous post, the Nouveau project intends to have an almost feature complete, full range covering driver by fall 2007. Maybe by then we’ll see some progress in NVIDIA’s policies: the G80 seems to be a radically new design, and as such they may consider freeing the specifications for their older hardware ranges...


# Previous versions of the matrix and further reading

Old versions of the matrix can be found in these articles:


* [Getting bored with 3D desktops?](http://www.freesoftwaremagazine.com/blogs/bored_with_3d_desktops)
* [A glimpse into 3D desktops...](http://www.freesoftwaremagazine.com/blogs/a_glimpse_into_3d_desktops)

And, for my guide to understanding 3D desktops, you can read [A “what is” guide to 3D desktops](http://www.freesoftwaremagazine.com/blogs/a_what_is_guide_to_3d_desktops).

