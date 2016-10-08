---
nid: '3738'
title: 'Lib-Ray Video Standard: Moving to SDHC Flash Media'
authors: 'Terry Hancock'
published: '2012-03-27 8:07:05'
tags: 'video,lib-ray,sdhc,hardware,movies'
license: cc-by-sa
section: hacking
main_image: libray_sdhc_sita.png
listed: 'true'

---
In Spring 2011, I started a project to attempt to create a free-culture compatible / non-DRM alternative to Blu-Ray for high-definition video releases on fixed-media, and after about a year hiatus, I'm getting back to it with some new ideas. The first is that I've concluded that optical discs are a bust for this kind of application, and that the time has come to move on to Flash media, specifically SDHC/SDXC as the hardware medium. This is a more expensive choice of medium, and still not perfect, but it has enough advantages to make it a clear choice now.

<!--break-->

=TEXTBOX_START=Lib-Ray Video Format=
This is the first in a short series of articles I'm writing about the updated proposal
we are working on for [Lib-Ray](http://lib-ray.org) -- which is to be a free-software, open-standard based no-DRM solution for distributing high-definition video in fixed media (i.e. not downloads, but a copy you can put on your bookshelf).
=TEXTBOX_END=

# Optical Media versus Flash Media

Understandably, since I was focused on an [alternative to Blu-Ray](http://www.freesoftwaremagazine.com/articles/five_ideas_escaping_blu_ray_blues) optical discs (which are unacceptable mainly because of the "Digital Rights Management" restrictions and fees that they impose on producers), I first considered optical disc hardware for media, but I found a great deal of frustration trying to find a good solution -- all of the obvious choices had serious drawbacks:

* Pressed DVD media are too small for all but very short videos in high-definition high-quality formats (I used Sintel as an example partly because it's only 15 minutes long)
* Pressed BD-ROM disks (mass-produced "Blu-Ray" data disks) do not escape the Blu-Ray DRM problem
* BD-R disks have limited shelf-life problems, as with CD-R and DVD-R media
* Milleniata's M-Disk technology is attractive, but i s only in the single-layer DVD size (i.e. 4.7 GB)
* Pressed HD-DVD disks would have been a good choice technically and I can still get them made -- except no one sells drives to read them any more!

# First, the bad news

I did mention the possibility of using flash media in that article, though I didn't take it too seriously, mainly because of flash media's principle disadvantage: _cost_. It's about _ten times_ more expensive than optical disk media at present. So that's the bad news (comparison of blank media[1]):

Medium           |  Size    |  Unit Cost       |  $/GB
-----------------|----------|------------------|--------------
BD-R SL          |  25 GB   |   $0.95          |  $0.04
BD-R DL          |  50 GB   |   $4.25          |  $0.09
SDHC-16          |  16 GB   |  $16.00          |  $1.00
SDHC-32          |  32 GB   |  $29.00          |  $0.90

An ameliorating factor is that most of the other costs of replicating disks -- printing labels, buying case packaging, and writing the data -- are roughly equivalent and fixed for both kinds of media. So while blank BD-R media may cost ten cents, actually getting your data packaged and labeled may cost ten dollars. This does not eliminate the price disadvantage versus BD-R media, but it does make it a little less serious (about 3:1 instead of 10:1). (Pressed optical media would be cheaper for longer runs, but is not really an option for the reasons mentioned above).

Also, while costs for optical media tend to move in rather coarse steps, the cost of Flash memory has been dropping steadily. Prices are projected to drop roughly 2X for each 2 years (a little faster than "[Moore's Law](http://en.wikipedia.org/wiki/Moore%27s_law)" growth), while optical media have probably bottomed-out until [Holographic disks](http://en.wikipedia.org/wiki/Holographic_Discs) finally hit the market (probably still several years away).

One other disadvantage, not of flash media in general, but of SD cards, is that, technically, they are a proprietary standard and they do implement a kind of DRM system (that's why they're called "Secure Digital" cards). In practice, this system is almost completely unused. However, I did seriously consider adopting CompactFlash (a more truly "open standard" device) for this reason. However, the economics are very much against it: CF is much more expensive and unlikely to drop -- the package is more complex (e.g. more pins). Also, it's very clear that the market has decided on SDHC as the most popular flash media card format. Free software support for SDHC cards is widely available and stable.

# And now the good news

Offsetting the disadvantages, though, are a number of fantastic features, some especially suited to the unique problems of the niche market of free culture and independent film.

### Capacity

Today, both 16GB and 32GB flash cards are readily available -- in fact these are the cheapest per-GB cards. Above and below this "sweet spot" range, the prices are higher, but these are useful sizes for high-definition video releases. 

For comparison here's a table of sizes with typical compressed video times (Format is _hh:mm_) that can be stored in standard definition MPEG2 (i.e. DVD format with a bit-rate around 1.0 mbps) and 1080P VP8 or H264 format (typical for high-definition content, with a bit-rate around 20 mbps[2]):

Medium           |    Size     |  SD/MPEG2 (1MB/s) | 1080P (VP8/H264) (2.5MB/s)
-----------------|-------------|-------------------|----------------------------
DVD SL (DVD5)    |    4.7 GB   |  01:18            |  00:31
DVD DL (DVD9)    |    8.5 GB   | **02:21**           |  00:56
HD-DVD SL        |   15.  GB   |  04:10            |  01:40 
SDHC-16          |   16.  GB   | **04:26**           | **01:46** 
BD-ROM/BD-R SL   |   25.  GB   |  06:56            | **02:46**
HD-DVD DL        |   30.  GB   |  08:20            |  03:20
SDHC-32          |   32.  GB   | **08:53**           | **03:33**
BD-ROM/BD-R DL   |   50.  GB   |  13:53            |  05:33
SDXC-64          |   64.  GB   |  17:46            |  07:06
SDXC-128         |  128.  GB   |  35:33            |  14:13

=TABLE_CAPTION=Media Sizes in GB and Hours/Minutes for SD and HD Video=

The entries in **bold** are of particular interest for releasing movies and/or video series. Although this chart suggests that we'd need SDHC-32 for most feature-length films, it's also possible to increase the compression slightly if cost is a major factor (to 18mbps (1:58) or 16mbps (2:13)) without having a serious effect on quality. Also, as it happens, none of the immediately forseeable Lib-Ray titles are over 1:46 (the longest would be [Sita Sings the Blues](http://sitasingstheblues.com) at 1:21, [Lunatics](http://lunatics.tv) will probably be in two- or three-episode volumes below 1:30) -- and by the time the format catches on with a more mainstream market demanding longer formats (assuming it does), SDHC-32 may be as cheap as SDHC-16 is today.

### Physical Size

Another advantage of SDHC media, of course, is size. At about 3cmx3.5cm, the SDHC card is much smaller than a 12cm-diameter DVD or BD disk (Figure 1).

=IMG=sd_vs_bluray.jpg=Figure 1: Perhaps the most obvious advantage of SD media over optical disks is the size (although this can also be a disadvantage, since very small media are easier to lose)=

Of course, SDHC cards are so small, they present a greater risk of getting misplaced or lost. Some users will prefer the small format and provide appropriate storage. Others (including me) would be happier storing their "Lib-Ray Flash" movies in a larger, harder-to-lose case.

The playback hardware itself (the card reader) is much smaller and usually cheaper than a Blu-Ray disk drive. SDHC-compatible flash module readers are also nearly ubiquitous in the mobile device marketplace, and readily available on desktop PCs. They are _de rigueur_ on laptop, notebook, netbook, and nettop computers, and are expected in most available Home Theater PCs (HTPCs). So, essentially every device we'd like to play Lib-Ray media on, is already expected to have an SDHC card reader.

The only real competition here is with the _Micro SD_ media, which is more common on smart phones and some tablets. I considered this format, but it's just too small, in my opinion -- there's no room for a label and they'd be awfully easy to lose!

### Less Confusing

Another advantage to going with SDHC media instead of optical disks, is that it will be obvious that it won't play in a commercial Blu-Ray player. This may seem silly, but there continues to be confusion surrounding video tutorials on computer DVDs -- many people apparently expect these disks to play in their DVD players.

Similarly, when I described Lib-Ray as an alternative to Blu-Ray, and when it was going to be on a Blu-Ray BD-R disk, I often had difficulty keeping it clear that it was _not_ a drop-in replacement for Blu-Ray. So, if I went with disk media, I'm absolutely sure that somewhere along the way, someone would put the disk into a Blu-Ray player and be disappointed that it didn't work, generating bad-press for Lib-Ray. Deserved or not, this confusion would not be good.

But if Lib-Ray comes in a tiny SDHC case, it's going to pretty obvious that you need a different kind of player to play it, and it's much less likely to have this problem.

### Silence is golden

Flash media are solid-state devices. This means that the player can be _absolutely silent_, there is no disk noise, because there is no disk. Since noise is a constant problem for HTPCs and video players alike, and many of the available cheaper optical drives are extremely loud, this removes a major headache for the end user.

=ZOOM=This means that the player can be absolutely silent, there is no disk noise, because there is no disk=

### Field Patchable

Of course, unlike most optical disk media, flash modules are re-writable on the same hardware that reads them. At first this may seem like a negative -- it woud be possible to accidentally overwrite your movie.

However, this risk is manageable with the write-protect tab which SDHC modules have (and we survived software released on floppy-disk, so it's not all that much of a risk).

More importantly, it raises the possibility of _updating_ your copy of a film to include post-release fixes. Obviously this would help for things like bugs in the menu system (more probable with short-run self-made releases), but the killer app for patching movies is being able to update the _subtitles_. For example, the [Sita Sings the Blues](http://questioncopyright.com/sstb-dvd-std01-ntsc.html) DVD has only four subtitle tracks, but at my last count, the wiki contained 18 different subtitle files. With a re-writable format, these subtitle files could be patched into your copy of the movie without having to go through a new printing run.

=ZOOM=The killer app for patching movies is being able to update the subtitles=

In both cases (menus and subtitles), the patches would be very small files (usually just a few kilobytes), and easy to download. It would be quite rare to need to replace the actual video file on the card which takes up most of the space. On the other, short videos or programs -- "extras" or "featurettes" could be added in the same way.

### Low Fixed Costs

Of course, in addition to patching already distributed media, the master currently in production could be patched to remain up to date. This is because, unlike pressed optical media, flash media are simply copied on a duplicator. Thus, there is no appreciable fixed setup cost to a printing run, and therefore no reason to make overly-long production runs (except for your own time in designing the release, of course).

=ZOOM=Low fixed costs are particularly useful for high-risk low-volume markets like free-culture and independent film=

This means not only can you make updates during the printing run, but you don't have to guarantee a large market in order to sell. Low fixed costs are particularly useful for high-risk low-volume markets like free-culture and independent film, where it may be desirable to print as few as 100 copies for sale at a time (or even to go with "print-on-demand"/"quantity one" production).

# Notes

[1] The prices I quote on this table are the lower quartile of the first 2 or 3 pages of qualified products on Amazon.com. The BD-R media were based on "cakebox" bulk packs (individual disks with cases would be higher, of course). The SDHC media are sold individually, and I restricted the result to "Class 10" (i.e. 10 MB/s) speed class. This isn't a strict requirement for Lib-Ray, but allows a better margin for direct playback.

[2] These bitrates are intended to be typical, but aren't absolute limits. I've quoted "MB/s" ("megabytes per second"), used in SDHC documentation, although "mbps" ("megabits per second") is more common in literature about video codecs. A bitrate of 20 mbps is typical for broadcast HDTV and translates to 2.5 MB/s. Blu-Ray specifies "up to" 50 mbps, but the sources I've read on the subject suggest this is overkill with modern codecs. SD video is usually encoded in an older MPEG2 video standard which uses a less efficient compression algorithm -- this is why the HDTV video isn't proportional to the number of pixels.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=
