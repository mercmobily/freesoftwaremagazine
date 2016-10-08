---
nid: '1929'
title: 'From XMMS to Audacious: the history of a Winamp clone'
authors: 'Patrick McFarland'
published: '2006-12-05 9:52:20'
tags: 'xmms,bmp,winamp,media-players,audacious'
license: verbatim_only
section: opinions
listed: 'true'

---
One of the most used functions on any modern computer is the ability to play back music. From the first beeps and bloops in arcade machines, to the AdLib and the first Sound Blasters in home PCs, to the monstrosity of the 51 million transistor Sound Blaster X-Fi, people have listened and continue to listen to music on computers.

Back in 1997, someone finally decided to write a usable music player for GNU/Linux: X11Amp, now known as XMMS.


<!--break-->



# Winamp, X11Amp, and XMMS

Way back in May of 1997, a little known software company named Nullsoft released a piece of software that instantly became a hit, and is now, today, one of the best known examples of a music player: Winamp.

Justin Frankel’s work, this music player is the de facto player on Windows. Also, similarly, Winamp suffers from a severe bug: it works on Windows only. So, Peter and Mikael Alm, a few months later in November, released a clone of Winamp and named it X11Amp. X11Amp was released as free software.

Peter and Mikael wrote this software because there was a [“lack of good MP3 players for Linux”](http://www.slashnet.org/forums/xmms-19990613.html). Cloning the look and the features of Winamp, and allowing people to use the popular Winamp skin format, X11Amp quickly became just as popular on non-Windows platforms as Winamp had on Windows.

By 1999, our intrepid X11Amp developers had picked up a sponsor, 4Front Technologies, which are known for their work on the Open Sound System (OSS) (which has since been replaced with the Advanced Linux Sound Architecture (ALSA)). Through this sponsorship, the X11Amp soon became XMMS. This is around the time I started using XMMS, and started paying attention to XMMS development; thanks to a lot of internal politics issues, it was very... interesting to watch.


# The end of XMMSangelion

Continuing on for 5 more years, XMMS gained plugins for almost every sound format on the planet, and spat out dozens of stable releases. Development has ceased as of early 2004. In those 5 years, people learned several things:


1. The first version of the GTK+ UI toolkit, although the first of its kind, and pretty much the only UI toolkit when XMMS was started, was buggy, missing features, ugly both inside and out, and a pain to develop for. GTK2, GTK+’s successor, was vastly improved.
1. GTK+ and GTK2 library symbols conflict, so even if the XMMS developers wanted to change to GTK2, all the old plugins for XMMS that still used GKT+ would crash XMMS if you tried to use them; this crash does happen in forks of XMMS that use GTK2 and remain compatible with XMMS’s plugin API (such as BMP).
1. XMMS passes the original memory references of XMMS structures to the plugins, which allows badly written plugins to crash XMMS in new and interesting ways.
1. There was no clear way to proceed without a lot of code rewriting, and XMMS was due for a rewrite anyways. That, and the code confused people similar to how a certain Hideaki Anno film did.

By 2002, Peter Alm started a fork of XMMS, named [XMMS2](http://wiki.xmms2.xmms.se/), to continue on rewriting, adding new features, adding GTK2 support, and breaking the plugin API to both fix various small issues and to prevent people from using original XMMS plugins without proper porting first.

Peter also wanted to split plugins into “input” and “transport” categories (since a lot of input plugins had redundant code for internet streaming and other similar things), add media library functionality, and split the player engine away from the display (making them communicate through sockets). XMMS2 development seems to be active, yet they aren't making releases often. Unfortunately, I think the project will die out due to lack of frequent releases and publicity.


# BMP and BMPx

Starting at around the same time as XMMS2, Beep Media Player (BMP) (lead by Milosz “deadchip” Derezynski) forked XMMS but (unlike XMMS2) intentionally kept the XMMS plugin API. In fact, as long as you don’t pop up “configure” or “about” dialogs for plugins, you can use already compiled plugins from XMMS with BMP with no other problems.

BMP development continued on until Milosz decided that XMMS/BMP really did need a major rewrite; although, from what I’ve seen, he hasn’t agreed with Peter on what XMMS’s replacement needed. In October of 2005, Milosz forked BMP (which was essentially XMMS with GTK2 and a ton of code refactoring, but not much in the way of new features) and called it BMPx; although I use the term 'fork' loosely, as he decided to start the rewrite from scratch. In addition, BMPx is designed around using Xine (and later GStreamer) as the plugin system.

Milosz did alienate several developers during BMPx development when he decided to scrap BMP's original code. Some left in anger, others left because they were board with the project, and some decided to work on some of the other media players.

However, in my opinion, BMPx seems to be a dead end.


# Audacious

Leaving off where the BMP development team stopped,  William “nenolod” Pitcock decided to fork BMP a few days after Milosz started BMPx, and called it [Audacious](http://audacious-media-player.org). Starting as just a large bug hunt, Audacious seems to have inherited XMMS’s title as de facto music player for GNU/Linux.

William has so far fixed dozens of annoying bugs, added the ability for outside clients to connect to the music engine, has partially rewritten the MP3 decoder (which, in my opinion, now sounds better than libMAD, the previous best MP3 decoder I’ve heard), and he is now in the process of adding an API to allow Audacious to be used similar to how GStreamer is used.

Between Audacious and BMPx, Audacious seems to be the only project that is actually continuing where XMMS left off. BMP essentially was a huge maintenance and code refactoring effort, although useful, it did not add any really new features, XMMS2 died off, and BMPx is going nowhere.

So, if you’re still using XMMS or BMP, try Audacious. The worst thing that will happen is you’ll rediscover how easy it is to listen to music on GNU/Linux.

