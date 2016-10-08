---
nid: '2039'
title: 'Why Johnny can code'
authors: 'Anthony Taylor'
published: '2007-01-30 22:11:59'
tags: 'programming,basic'
license: verbatim_only
section: opinions
listed: 'true'

---
I recently re-read David Brin’s essay, “Why Johnny Can’t Code”. He posits an interesting idea, one I’ve had for a while—we are raising a generation of techno-illiterates through our focus on high-level languages, rather than on the simple languages like BASIC, on which many of us cut our geekteeth.

What I observed had nothing to do with programming, and everything to do with Mr. Brin’s approach to computers. His point may be valid, but his sight is limited by his own understandable ignorance.

He forgot there are other options.


<!--break-->


Simply put, Mr. Brin wanted to teach his 14-year-old son about programming. A few of the textbooks still had examples in BASIC, that wonderful, terrible language that came with many of the first personal computers: the Altair, the Apple ][, the Commodore PET and 64, the CompuColor, and even the first IBM PCs. In those days, Microsoft was merely a supplier of BASIC for some of those machines, and so BASIC was fairly consistent across systems.

I learned BASIC on the Apple ][. Eventually, I moved on to 6502 assembly language, and Pascal, and then on to C and LISP and Objective C and FORTRAN and COBOL, and so on. But we all remember our first, and mine was BASIC.

For all its faults, BASIC was simple to learn, simple to write, and the interpretive nature of most implementations meant it gave immediate feedback. I realize many people have been ruined as programmers by BASIC. But, for people who are just starting out, it is not as bad as, say, C++, or Perl, or Python.

And so Mr. Brin looked for a BASIC interpreter for his MS-Windows machine, or for his Mac. Never once did he consider his alternatives.


# The education of Ben Brin

Mr. Brin’s entire goal was to educate his son Ben about the true workings of computers. He looked at doing it the old-fashioned way: guns-a-blazin’, with BASIC. This isn’t a bad start, but he didn’t consider that those of us who cut our teeth on BASIC learned about computers by tearing them apart, by making them work, by _fiddling_ with them. It wasn’t just BASIC. It was the entire environment, where the system source code was printed in the books distributed with the machine.

There was a voice recognition system for the Apple ][ that used the cassette tape for voice input. It came with a tic-tac-toe game. I spent _hours_ getting that to work properly, fiddling with the tape drive to get the input to work, meticulously training the system for the six word vocabulary, and such. In the end, the voice recognition didn’t do a whole lot of recognizing. But it was _fun_, and it was _hard_, and I learned a lot.

Decent programmers have a good rudimentary knowledge of how computers work. Skillful programming is aided by knowledge of memory allocation, whether the fundamental malloc-and-free management of C, or the garbage-collected object lifecycle in Java. Like a carpenter who knows which tools to use depending on the type of wood on which he works, the more programmers know about the hardware and operating system, the better they are at their craft.

That knowledge doesn’t come from BASIC. It comes from fiddling with the system, from the hardware on up.

If Mr. Brin is serious about teaching his son how to be a good programmer, he’ll give him a computer with GNU/Linux.


# Protecting us from ourselves.

The current computer philosophy is simply this: the computer should be unobtrusive. The user should not have to worry about the details, nor be concerned about the inner workings. This is a reasonable philosophy, and an admirable goal.

Like many good ideas, it is being taken too far. Not only do most modern commercial consumer operating systems present a friendly, easy-to-use face; they essentially firewall the user from the hardware, and from the operating system. Apple OS X isn’t too bad in that respect, as they do ship many of the standard tools one would expect with a modern Unix-like OS. But even there, users are discouraged from tinkering.

The MS-Windows approach is even more draconian. There is no easy way to gain access to the lowest levels of the operating system. Not unless you are a programmer, anyway, which kind of defeats the purpose.

The coming DRM dark ages will only exacerbate the problem, locking would-be geeks away from the heart of their systems, relegating them to the Visual Studio wastelands. If Mr. Brin thinks the current situation is bad for future programmers, he should be looking at the future, as well. (That’s an inside joke. David Brin is a first-rate science fiction author, so I assume he thinks about the future all the time.)

Although many of the newer GNU/Linux distributions provide a sleek, fancy, modern desktop with little-to-no user configuration required, the ease-of-use is not a strict policy. A user can simply browse the web and check their email, or they can open a shell, load and unload modules, run a variety of programs, and _look at and modify the source of those programs_. The can tinker with the source of the operating system itself, if they so desire.

GNU/Linux encourages tinkering by its very nature, but does not require it. (Okay, I admit sometimes it takes a little tinkering, depending on specific hardware support. But that is true of MS-Windows, as well, just to a different degree.) This is a good thing, I think. If this line of reasoning is true, the best geeks of the future will have grown up on GNU/Linux.


# The resolution of a dilemma.

Mr. Brin’s son Ben found the sword to cut their particular gordian knot. The purchased a classic Commodore 64 off the internet, and had it running BASIC in a matter of minutes. That is the beauty of the Freedom to Tinker.

And finally, should Mr. Brin install GNU/Linux, here’s a gift for him and his son. [Blassic](http://blassic.org/) is a fairly simple and very nice implementation of old-school BASIC. Those textbook code samples should run just fine.


# Resources


* [Why Johnny Can’t Code](http://www.salon.com/tech/feature/2006/09/14/basic/index_np.html).

