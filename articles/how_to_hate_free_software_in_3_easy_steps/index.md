---
nid: '2028'
title: 'How to hate free software in 3 easy steps'
authors: 'Steven Goodwin'
published: '2007-01-25 12:53:13'
tags: packaging
license: verbatim_only
section: opinions
listed: 'true'

---
It’s this:


1. Download some software that isn’t pre-packaged with your distribution, and try to build it.
1. Er.
1. That’s it!


<!--break-->


Software development is hard. I don’t think that any of us that have written more than 20 lines of Perl will disagree with that. So why is it impossible for the same, obviously smart, programmers to provide tar balls, zips, archives or code _that will actually compile_? At all. On any system. Ever.

When developing software you start with a blank canvas, old libraries, and new code. That’s it! New code should compile anywhere since cross-platform development is a well understood field, and we’re mostly using gcc, anyway. So that’s a moot point. Libraries are simply enough, surely? Just make a note of which ones you’ve used, their versions and download URLs and everything should be easy. Hell—there are tools, like the automake suite, that provide all this functionality for free. So why aren’t people using it?

So, I after trying to compile _[insert embarrassment of a package here]_ I give up and choose another. After all, free software has so many different implementations of _[insert obscure niche market sub-genre here]_ there’s usually always an alternative. I try that too. Same issues, different problems. That is, it won’t compile without hours of faffing. Time to try another package?


=ZOOM=The reason we have so many different packages for the same thing is probably because the author couldn’t get any other similar code to compile!=

At the end of the day (because it takes at least a day to work all through the various packages) I’m left with 20 half-built projects, a problem that still needs solving, and a 16 hour hole in my life. It’s not too much to ask for code to compile is it? Have I become so impatient in my old age that anything that takes more than 2 hours to do, isn’t worth doing?

Binaries, for all their non-accessible, non-editable, non-free faults, generally work much simpler. Especially under non-free operating systems such as Windows. Ironic? Stupid? Or good design?

Does it matter if I can’t change binary code? Not initially! I either just want to evaluate it, or I can write a plug-in. And most larger packages provide plug-in support since “extensibility” became the winning buzz-word bingo phrase of 2004.

Scripting languages often come with their own in-built package management tools to download and install their own libraries. The CPAN module from Perl is a very good working example of this. Okay—it breaks and messes up occasionally, but probably less than C code of similar complexity. The future’s probably in scripting languages and Java byte code as they have a working packaging system for their respective source code.

Unless the entire OS, and all its associated libraries and tools, have been built from source, it’s unlikely that user applications can be distributed effectively from source code. Gentoo was right, after all!

Alas, Gentoo is not as friendly as, say, Ubuntu.

Alas, Ubuntu is not as friendly to the compilation process as, say, Gentoo.

So unless (until?) a common packaging format is created, and every distribution _and_ developer adopts it (and I do mean _every_ one) we’re never gone win this battle. Makes you wonder if it’s worth winning...

