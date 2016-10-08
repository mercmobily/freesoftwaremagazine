---
nid: '3069'
title: 'Return of the Xvid: check your outputs!'
authors: 'Mitch Meyran'
published: '2008-12-19 17:43:07'
tags: 'linux,xvid,nasm'
license: verbatim_only
section: hacking
listed: 'true'

---
A long time ago, on a blog post not that far away...

I once wrote an article on Xvid 1.1.3, and the speed boost one could get by enabling assembly-optimized code. Well, this is a case of my being hoisted by my own petard -- however, I must admit that several things were against me.

In short, Murphy's Law struck again. But first, for those of you who don't want to click through old blog posts, a (fair) bit of history.

# Back to the Mayo

A few years back, the Motion Picture Expert Group decided to create a new standard for video compression to replace the much abused and too limited ISO/IEC 13818 standard, also known as h.262, and amorously published under the name MPEG-2. In a fit of imagination, they called it h.263 - dubbed MPEG-4 (because, due to some systems' limitations with file suffixes, MPEG-1 layer 3 audio files were now dubbed 'mp3', or MPEG3).

Creating h.263 wasn't instantaneous: several companies started creating their own implementations and adding their grain of salt. Among them, was Microsoft, who published some codecs that became Windows Media Video 7 and 8. These early codecs were hacked and improved by the now famous hacker Gej, and released as DivX 3.11 ;-) (yes, the trailing smiley is part of the name).

But, Gej being a responsible kid, and not liking Microsoft's hounds on his heels, decided to scrap his codecs and, making use of more recent h.263 drafts, started implementing his own codec, with a few DivX 3 ;-) compatible fixes thrown in, as Project Mayo (and yes, Mayo stands for mayonnaise - Gej IS French).

That project succeeded in creating an MPEG-4 codec, but then some developers decided to keep further modifications for themselves (ProjectMayo's code was _not_ released under the GPL, you see) and created the DivX company, seller of the DivX codec, and several tools. They are quite rooted into Free software though, providing some Linux binaries of the codec (but not very often, due to a lack of demand), used to promote Virtualdub as an encoding tool, and released their main tool Doctor DivX under the GPL a while back. Dr. DivX can work with codes OTHER than DivX, amongst which is Xvid.

ProjectMayo pretty much disappeared when DivX 4 came out. Some die-hard developers decided to take the existing code, created a project with a reverse spelling anagram of DivX: Xvid.

Don't think for a second they weren't successful: while initially Xvid didn't enjoy as much development as DivX with its paid staff, the developers were far from being bad, and several of them were actually amongst the most brilliant codec developers available: soon, Xvid reached a quality level that rivalled, and sometimes exceeded, DivX's -- while still remaining very compatible (h.263 being very complex, there were cases of compliant implementations being unable to playback a stream coming from a different encoder), while DivX itself was miles above the rest of the market quality and speed-wise.

A consensus has been reached that, while DivX for Windows (and Mac) is a very powerful yet easy to use set of tools for MPEG-4 encoding, Xvid is the codec of choice for crisp, extreme encoding jobs under the h.263 format.

However, Xvid fell prey to its own success: many of its core developers were hired by companies that produce MPEG-4 encoders, barring them from the project - and Xvid seemingly stalled in mid-2007; after its 1.1.3 revision, which was a bug-fix release, the core code remained basically the same since as it was in 2006, when 1.1.0 came out.

By then, dual core systems had started becoming common, and 64-bit systems were slowly appearing. This gave some developers new opportunities:

 * use multiple parallel threads to encode frames faster,

 * use 64-bit extensions and rely upon a larger set of floating point functions on mainstream processors.

Up till then, most encoders had relied upon the Pentium Pro instruction set, and some had started adding support for MMX and SSE (mainly FPSSE), and were single-threaded; optimizing a codec for 64-bit, SSE2 and SMP actually meant rewriting it almost from scratch. At DivX's, they did that all over the DivX 6 releases (DivX 5 mainly added better motion detection and macroblock compression); at Xvid's, that was a plan for release 1.2... which came out in December of 2008.

# Competition, and the power of FOSS

One of the last steady Xvid developers is Koepi, very well known on the Internet for maintaining the Windows binary (Xvid, due to patent concerns, distributed only source code for a long time). Others, like Plugh, Isibaar and skal actually do most of the coding, but are much less public about it. They didn't sit idle for two years: one provided bugfixes (that Koepi included in 'unofficial' tarball and binaries), another made steady improvements towards Xvid 1.2, yet another looked at sharing code between x264 and Xvid... I should mention too that due to its compliance and quality, Xvid has gotten some fame in the industry, and a small company has been built around the project, providing specifications, profiles definition and professional support.

As I wrote earlier, yes, Xvid 1.2 is out (1.2.1 is the latest release); it comes with:

* SSE2 and SSE3 optimizations: they're here, might as well use them. Support isn't required and fall-backs exist, but Xvid goes faster with such support.

* 64-bit assembly optimizations: Xvid 1.1.3 could work on 64-bit platforms, but wasn't particularly optimized for it; now it is.

* partial parallel multiple threading support, with optimized threads detection: in earlier snapshots you had to specify the number of threads you wanted, now Xvid does that for you.

* revamped motion detection; while it's not yet like x264's, it's better than before, and some fast tests have been made to port x264's into Xvid. Maybe in release 1.3...

MPEG-4 is a specification that divides an image into squares, and analyzes how these squares mutate from one frame to the next (or the previous in some advanced profiles), while at the same time compressing those squares' content: as such, on top of a macroblock compressor, most of the compression comes from how precisely a codec can detect how macroblocks move, rotate and change. Thus, the most expensive part of compression is movement detection, and this is where optimizations come into play:

* assembly helps save on CPU cycles: motion detection requiring the repeat of the very same procedure over and over, gaining a single cycle in a single operation can result in huge time savings; for example, comparing the C implementation of Xvid with its assembly-optimized version shows a time reduction of 1/3: an hour long compression would be shortened to 20 minutes.

* images represent a lot of data, and 64-bit operations can help cut on encoding times: where 32-bit processors may require three cycles to accomplish an operation, a 64-bit may do the same in one (in some cases).

* SSE2 and SSE3 provide extensions that can allow a CPU to do in a few cycles what previously required several hundreds in SSE1 or thousands in the FPU.

Xvid is free software, and as such it can run on many platforms: x86-32, x86-64, Power, ARM... And since assembly is platform-specific, the Xvid developers decided to share as much work as they could across those platforms: so, they used an intermediary platform and language that could be matched to assembly with minimal loss. This platform is NASM. In short, whatever platform NASM supports, Xvid can run faster on. For all the others, there is the plain C reference implementation.

At the time of Xvid 1.1, NASM didn't support SSE2, much less 3, and didn't support x86-64; so, for a while, Xvid on 64-bit AMD and Intel systems made use of YASM, a mostly compatible implementation of NASM that supported 64-bit. Since then though, NASM caught up and Xvid dropped YASM support. Still, NASM's 64-bit support is very young.

Do you see where I'm going?

# NASM strikes

When Xvid 1.2.1 came out (yes, I sometimes hit Koepi's website for his bug-fixed Xvid 1.1.3 tarballs), I immediately tried to compile it; during configure time, I glimpsed the 'no assembly' line, so I removed YASM, and installed NASM instead: visibly, YASM support was gone and NASM was back full force. Then I ran `configure` again, and then `make`. It chugged along happily, so I got the new library, linked against it and then I started a video compression. On a whim, I encoded only a small part and checked the results.

Big magenta splotches all over the image.

I started disabling encoding options here and there, tested different applications, checked the links with libxvidcore, tried other videos, and even a no-option, plain dumb single thread encoding produced those artefacts. On a hunch, and knowing where most of the rewrites in Xvid were, I recompiled with plain C support.

Gone were the artefacts (and the speed).

I dutifully made a bug report; I got an answer from someone at XvidSolutions, who was also quite alarmed (this is, after all, a critical bug). After many tries, debug runs, and tests, I decided to try something else: I updated NASM to use the latest released version (2.05.1 at the time of writing), recompiled Xvid and eventually determined the source of the problem.

NASM 2.04, as provided with my distribution (Suse provides 2.02, for example), has a regression in ELF64 compliance which couldn't be caught by automated tests; thus, the bug didn't show on 32-bit platforms, didn't show with Xvid 1.1.3, and didn't show on developers' machines.

Next Xvid release's configure script should have a small check added that verifies that NASM 2.04 isn't installed. And yes, I notified my distribution developers; you can thus expect NASM 2.05.1 in Mandriva 2009.0 Real Soon Now (tm).

# Conclusion

The new Xvid version encodes faster; much faster. I haven't noticed a real size or quality gain over 1.1.3, but it's certainly faster if you have a dual core. It doesn't scale well though so don't expect 100% CPU use and 4X encoding speed gain over 1.1.3 on your big bad quad core; it's more like a 40% speed gain on a dual core; just be careful how you compile it.

Which, at the end of the day, provides nice time gains. Now, to see if there's interest in h.264 and x264...

Most data was assembled from discussions and blog posts at [Doom9](http://Doom9.org)'s and on [Koepi's website](http://koepi.info).