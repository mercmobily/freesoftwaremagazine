---
nid: '1877'
title: 'Of movie making and control'
authors: 'Mitch Meyran'
published: '2006-11-15 22:52:03'
tags: 'video,xvid,ogg-vorbis'
license: verbatim_only
section: opinions
listed: 'true'

---
I discovered Virtualdub back in the days when DivX was a ripped-off Microsoft experimental beta codec. Since then, I have used it to do some small captures, but also to recover some bad quality films that could gain major improvement through a carefully weighted application of filters.


# Free software isn’t found on *NIX systems alone


## The useful free software you can’t do without

Developed pretty much single-handedly by Avery Lee, Virtualdub is a linear video capture and editing tool which is aimed at one thing: getting one video stream, selecting the images you want to keep in it, and applying filters to the rest of it.

It is not a Premiere killer. Rather, it is a video repair kit: some filters like the blur, resize, rotation or deinterlace ones allow such a fine tuning of a video that I can personally attest to having been able to recycle a badly captured cartoon from a low quality VHS tape to an almost DVD quality—and almost real time.

Now, Virtualdub runs on Windows only—for one simple reason: it has tight ties with Windows’ audio capture and codec system—and, as such, all those wonderful filters are pretty much lost to us when we boot under our system of choice, whether it be GNU/Linux, FreeBSD or OpenSolaris...

I should mention, though, that I managed to actually run Virtualdub under Wine at one time, and even to make it use some codecs compiled for win32 that I had installed. However, due to it falling back to GDI rendering (overlays led to black screens and DirectDraw crashed), I had to be extremely patient to accomplish anything at all with it—and the source had to use installable codecs (those had to run under Wine too) or be MPEG1 (since Vdub has an integrated MPEG1 decoder built-in due to Microsoft’s not being accessible through the ACM architecture).


## Of a strange state of things

Virtualdub is covered under the GPL; as a matter of fact, several forks have appeared, to enable people to do things with Virtualdub that Avery didn’t intend to integrate, or were a bit too close to ripping for comfort. One such port has become Virtualdubmod, which allows several sound streams and subtitles to be integrated into a project, and which provides Ogg and Matroska export (on top of Audio Video Interleave—AVI).

I may not have looked right, but I have been unable to find a *NIX port or at least a compressor able to make use of all those filters with all their settings in the *NIX world.

I do XVID backups of my DVDs. Not only because I feel safer watching copies and keeping the original protected, but also because I have a DVD-less laptop and I sometimes like to watch a movie when I’m on the move.

And here Virtualdub is sweet: coupled with Avisynth, it allows me to get the video and compress it at very high frame rates, with its colours recalibrated, the image resized and deinterlaced when needed, all that with a single-pass quality-based compression.

GNU/Linux tools I’ve found may have required a bit less hassle to set up (there are nice GUIs to hide mencoder settings for example), but as far as I could find none allowed me to stream the video, deinterlace, crop and resize it on the fly before sending it to the compressor while setting it up to use quality based, quarter pixel, Trellis sampled etc. encoding.

Of course, I could learn all the commands that Mencoder provides; I could play with pipes too so as to do resize and cropping; I could hand-edit Xvid’s default settings.

You know what? If I could do it through ’Virtualdub for Linux’ GUI, I’d enjoy it a lot more. However Avery doesn’t have the time, the POSIX experience nor the motivation to do the port himself—he’s encouraging any coder willing to do the port to ask him questions, though.


# Conclusion

Sometimes I wonder if FOSS developers don’t live a bit in a bubble; I mean, we have here a piece of software that has seen long years in development; which is, accidentally, coded in a FOSS developer’s favourite language (assembly and C); its source is free (it’s covered by the GPL), and its developer actually answers most emails you send his way (comments posted on his blog usually get answered, too).

How come no project has ever tried to port Virtualdub, its filters and lean code to POSIX systems? While I acknowledge Mplayer’s developers’ hard work, suffice it to say that they happen to be very GUI unfriendly... And while I’m not against the use of the command line interface, video treatment works better with a frame buffer, a timeline and a live output.

And those just happen to have been in existence for almost ten years.

See: [Virtualdub website](http://www.virtualdub.org)

