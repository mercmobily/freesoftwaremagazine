---
nid: '1696'
title: 'Should we limit the terms of free software operating systems to GNU/Linux, GNU/Hurd, xBSD, OpenSolaris and the likes?'
authors: 'Mitch Meyran'
published: '2006-07-26 14:12:27'
tags: 'free-software,gnu/linux,reactos'
license: verbatim_only
section: opinions
listed: 'true'

---
These days, when one talks about free software, the first word that comes to mind is Linux—be it the kernel or a distribution based on it (which would then be a GNU/Linux operating system, and its flavour marked by a brand name: Red Hat, SuSE, Mandriva, Debian, Ubuntu, Slackware...)

At one time, there was another project worthy of note: BeOS. It wasn’t POSIX-compatible, but it was neat. But now, only free *NIX prevail... really?

Enter [ReactOS](http://www.reactos.org).


<!--break-->



# Another viable free software operating system—help wanted


## ReactOS overview

ReactOS is an old project. It actually started around 1996, but started producing code only recently. It aims at implementing all of win32 according to specs, be it hardware or software.

Yes folks, it means that ReactOS would basically run all of Microsoft Windows’ drivers and applications natively.

Right now, the project is about to get out of a long phase of code review—due to some alleged unclean code—and is pushing out the first release candidate for a version 0.3.0.

But what can you do with it right now?

OpenOffice.org runs on it—so does Firefox, Thunderbird, you can do IRC, anonymous FTP, USB Plug’n’Play works, DirectX is about to be implemented (direct port from Wine), OpenGL is being reworked... No sound yet.

I tried older versions of it, and only my lack of free time (overwork,ed buying an apartment, rebuilding my car’s engine from the ground up...) made me delay trying the latest version. But, from what I could see before, the screen caps, the release notes, the logs, the fora... It’s getting very impressive.


## Specifics

For a more complete history, have a look at ReactOS’s [history page](http://www.reactos.org/xhtml/en/about_history.html). Suffice to say, ReactOS started as FreeWin95, got lost in discussions, resurrected in 1997 thanks to Jason Filby, then targeted Windows NT4’s kernel, slowly developed a working kernel, then a GUI, then a few tools... And in the last year or so, imported 80% of Wine’s code, upgraded its kernel to target Windows 2003 SP1’s, underwent a full code audit—which led to major bugfixing, and now has a lot of stuff to show off as well as major additions about to be added—Trunk contains a lot of stuff not included in builds yet, but testers and programmers are required...

ReactOS has a direct relationship with Wine—in fact, both projects share a lot of programmers (we are, after all, talking about reimplementing the win32 API) and most of Wine’s user-space code and applications.


## Why reimplement win32? We can already do whatever we want under GNU/Linux, xBSD, etc!

GNU/Linux is a voluntary, free replacement of a complete proprietary system called UNIX, which was well known for its stability and versatility. On the other hand, win32 systems are known for their bad security, high prices and resources hogging...

What most people don’t know is that a win32 system isn’t inherently unstable or insecure: it has separated system and user spaces, strong memory management, access rights management, a complete hardware abstraction layer... More recent versions even have a modular design.

It’s just that the only implementations available now put most of that to waste, with users having unrestricted rights, no passwords set for active services—which are enabled by default, and a few critical mistakes made here and there, buried under a lot of sugary interfaces, and suspicious code for a bunch of “extras”—like an integrated web browser or media player.

Since this “good” system is being wasted, why not program a completely compatible one that anybody can set up and/or correct as wanted? After all, that’s what took place with BSD and GNU!

Remember what started Wine: the desire to run existing win32 applications under a free operating system. However, due to very different designs, complete compatibility between Wine and win32 will be almost impossible to reach, not at a useable level anyway. This is also a place where a complete (and free) reimplementation of win32 is interesting: run your legacy applications in a fully compatible, but also fully customisable operating system, freely.


# Conclusions

UNIX got its GNU, Windows can have its ReactOS. What do we get? Free operating systems to make our computer hardware run freely, and our applications too.


# Bibliography

The ReactOS website—browse it, it contains a lot of interesting stuff!


