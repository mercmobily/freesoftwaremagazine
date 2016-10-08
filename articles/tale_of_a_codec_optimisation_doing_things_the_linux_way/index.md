---
nid: '2885'
title: 'Tale of a codec optimisation: doing things the GNU/Linux way'
authors: 'Mitch Meyran'
published: '2008-06-06 15:58:36'
tags: 'gcc,xvid,yasm'
license: verbatim_only
section: end_users
listed: 'true'

---
Encoding is a CPU-intensive operation. Whilst encoding, using optimised code is crucial. In this short article I will explain how I gained a 300% speed boost when encoding DVDs and will show how having the program's sources and being able to talk to the maintainers sometimes really, really helps. Welcome to doing things "the GNU/Linux way".

<!--break-->

# What's in a codec

Ever since Gej cracked Microsoft's almost-MPEG4 compliant codecs and named them DivX, people have tried their damnedest best to package video in the most efficient way: retaining quality and reducing size. This led to a rewrite of the DivX codec under the name ProjectMayo. It generated two forks: one called DivX, proprietary and closed, edited by DivX Networks, with Windows, MacOS and (obsolete) GNU/Linux versions available in binary form. The other, keeping up the work from ProjectMayo, called itself Xvid and was aimed at creating a GPL-licensed MPEG-7-compliant encoder, distributed in source form "for educational purposes". (It is forbidden to distribute the binary in those countries where MPEG-4 is patented, but patents don't apply to source files, as they describe mathematical formulas, and in most countries those aren't patentable.)

Under Windows, installing Xvid requires you to either compile it yourself (a rather daunting task if you're not a developer) or go the "gray market way" and develop a pre-built binary. Under GNU/Linux, if you install GCC, you can easily download the latest official tarball and build it -and get `libxvidcore4.so.1` on your system, ready for use, in five minutes. Or so you'd think.


# How do you get your software?

## Grab it!

Under Windows, you get whatever software you can get, and run it; if it doesn't fit, you either make do or look for something else. Under GNU/Linux you can do that too but there are often less radical alternatives, or you just forget one thing.

The piece of software can have several packagers--that is, people creating a binary version of it.

Those of you familiar with Gentoo probably know what I am talking about; others, who use Fedora, or Ubuntu, or Mandriva, or /insert-name-of-generic-distro-here/, are now staring at this post a bit dumbly, or thinking I'm crazy. Not quite.

## The matter of compile-time optimizations

Currently, most distributions compile their packages with the Intel i586 (original Pentium) instruction set; however the kernel is often compiled with Intel i686 (Pentium Pro) instructions, usually rendering a 10% performance improvement (a legacy kernel is available for users of older processors, like AMD K6 or Pentium MMX). Other packages don't load the processor hard enough to make further optimization really worthwhile. It remains perfectly possible to compile all packages with the i386 instruction set, but this would incur a 20% to 40% performance penalty and that would be unsustainable.

Still, if you use an application that loads your processor hard, for a long time, and which is unable to decide at run-time which optimizations it can use, considering a recompilation is plausible; it may instead mean an extra 20-40% performance boost (don't worry about mplayer: it is already able to load special MMX, SSE or 3DNow! code paths if it detects those processor extensions).

However, one reason I switched to 64-bit was that at least i686 instructions, SSE1 and MMX support would be built into all packages: indeed, the performance boost I got, compared with 32-bit packages, was in most cases self evident.

However, this was not the case with Xvid encoding, which remained just as slow as the Windows 32-bit version--while the use of Linux, 64-bit and full MMX and SSE support built into the binary should have provided me with a significant boost!

## The jaw-dropping experience

One day, after a long encoding failed due to an external event (power outage), I decided I'd look into the matter, and build the latest Xvid tarball.

Xvid hasn't been updated in a long while. I decided to get the latest official source package which was the same one my distribution had used some time ago. I did the usual `./configure && make && make install` and waited.

The resulting file was a very marginally faster than the previous one, but nothing really ground breaking: using a newer version of GCC could have explained the "boost". So, I looked at `./configure`'s output - and noticed the message "yasm not detected - using C implementation" (or something along those lines).

Xvid is an educational project. It runs on any platform. So it uses C for its reference implementation, which is supplemented with assembly code for those platforms that interest its programmers enough. To prevent code duplication, the Xvid authors used nasm's syntax to write assembly optimizations for x86, PowerPC, ARM... whatever nasm supported.

nasm added support for x86-64 very recently. Up to then, only the beta version of yasm supported it -and my distribution's package was old. I looked at the package's source RPM, and lo and behold, it required nasm 0.98, which doesn't work in 64-bit -not yasm.

My distribution's package had been compiled using the slow reference C code. So, I installed yasm (I actually compiled it from the very latest released version: 0.7.1, as my distribution was still at 0.6.8): it took five minutes to compile and install. I then recompiled Xvid--and replaced the current `libxvidcore4.so.1` file with the result.

I took a few five-second video samples in 640x480 resolution, with some high quality MPEG-4 ASP settings thrown in (GMC, 4 vectors, quarter pixels, Trellis, B-frames...), and timed their compression speed with the original codec and then with my replacement one. Only one core showed constant activity, so I wasn't accidentally using the SMP experimental code path.

It was three times faster. I am not kidding: I had a 300% speed gain. From 7 fps to 21 fps on an Athlon64 X2 3800+ at its factory speed of 2 GHz, with a reasonable DDR400 in dual channel. For a typical DVD backup (a 120 minute movie), this means five hours saved in terms of CPU time.

# Conclusion

I reported my results to my distribution, and to the packager. In the next 24 hours, a new package was issued, containing my proposed correction and a few other small changes.

If you also load up your processor with various applications, take a long hard look at its compilation options. I'm no fan of Gentoo, where everything is compiled from scratch, but I can certainly relate to its users and advocates in this instance.