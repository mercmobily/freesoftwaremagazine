---
nid: '1841'
title: 'That darn startup sound (Knoppix vs Vista)'
authors: 'David Sugar'
published: '2006-10-31 11:18:22'
tags: 'vista,knoppix,startup-sound'
license: verbatim_only
section: end_users
listed: 'true'

---
Imagine you are in the boardroom, asked by the president of the company to fix his laptop during a critical presentation.  You reach for your handy knoppix on a flash, and set it off to boot, so ready to proudly display the power of freedom during this critical presentation, when, already too late, you remember; that darn startup sound!

While Microsoft claims a startup sound you cannot disable is a "feature" in its one day to be released Vista operating system, and perhaps even has a patent on the idea, we in the free software community have had to contend with this "feature" for a long time now. I can tell you, it is not pleasant.  What is even more amazing is that in Knoppix they came up with a whole new means of playing sounds just to get that annoying bugger in!

While most sounds are part of the desktop event/sound system, the Knoppix startup (and shutdown) audio is not.  In fact, someone wisely chose to disable event sounds by default in KDE on Knoppix so it would be silent by default.  Why then did anyone think it would be smart to have a special startup sound you cannot disable?

Digging through Knoppix a little, one finds the startup sound is actually played from the xinit scripts themselves directly!  It is played with a script that runs command line audio utilities.  No provision exists to disable Knoppix startup sound other than editing the script or removing the .ogg file itself, a neat trick on a read-only burned media.

One thing that can be said for Knoppix is that the startup sound is a file, and one can remaster an image without it.  There is still power of choice and control, even if there was such poor judgement exercised upstream.  The difference then is that with Microsoft Vista, the user is never trusted or enabled to do what is right.

