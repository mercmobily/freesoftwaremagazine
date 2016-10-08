---
nid: '2448'
title: 'An open proposal for Microsoft open source certification'
authors: 'Steven Goodwin'
published: '2007-08-03 9:12:57'
tags: 'microsoft,licensing'
license: verbatim_only
section: opinions
listed: 'true'

---
Microsoft. Open-Source Certification. This is not an April Fools, apparently. According to various news feeds (this was brought to my attention from [PCWorld](http://www.pcworld.com/article/id,135192-c,opensource/article.html), but YMMV as these stories are periodic) they will be submitting some of their "shared source" licenses to the OSI. This is genuinely fantastic news, as after years of FUDing us around, they finally admit that Open Source exists, is a good thing, non-cancerous, and something with which they want to get involved. It's also very flattering, because since they're submitting to the OSI it tells us that they acknowledge the term "Open Source" (and by its implication "Free Software") and that its definition is vested and controlled. By someone else.

But now they've built the bridge, they need to know how to cross it. There's a cultural divide that has been fostered through the years. So listen up Microsoft, this is your next step in allowing shared source to become compatible with FOSS licenses and - more importantly - its inherent ideals!


<!--break-->


Firstly, get rid of the hyphen in the license name. It looks silly! Names like Ms-PL and Ms-CL sound like an African horticultural disease, and is going to break some badly written PHP code.

Next, get rid of the clause in your limited licenses that require you to run the software on Microsoft Windows. There are many different people on this planet, and if you want everyone to play nicely together you can't prohibit one race from playing with your toys just because you don't like the colour of their OS. Read section F, the platform Limitation clause, for historical reasons and then drop it like a bad habit.

Now, here's a lesson in software development: software is intended to be useful. The more people that use it, the more useful it is. Simple, eh? Now that you've understood that, please understand that including the phrase "For reference use only" does not allow people to use it, only look at it. The only possible legitimate use for this clause is to allow the FOSS community to build Windows-compatible services, since we now finally have a fully detailed specification and reference implementation for the protocols and systems in use. But, if you (Microsoft!) want true interoperability you should allow the software to be used in situ; so amend that clause, please.

One thing that most people spot in the shared license definitions are the continual references to patents. The community has generally sidestepped this problem by highlighting the very real difference between the code, and the algorithm it implements. After all, it is possible to have access to FOSS that implements patented methods, but not have the rights to use those patents. Granting rights solely for a predefined piece of code is problematic because it could be combined with another (much larger) project that doesn't have this clause. (This is particularly true as some of the shared licenses which operate a show-only approach. See "reference implementation" above.) It'd be much better if you dropped the clauses from the license itself, but added an additional statement of intent that says "this software uses patents X, Y & Z - we grant you free use of them, wherever they're used." Don't worry - your business will safe! Several companies have contributed some of their patents to the open pool, and they haven't collapsed!

Oh, and while I think of it, would you also change the "Ms-" part? It reminds me of a spinster teacher from school who insisted we call her "Ms" instead of "Miss" or "Mrs." Thanks! (I also expect someone to mispronounce it as "misogynist", and that's not an image you want. How about a "G", meaning "Great" or "Good" or even "Gates"? I'd support it more if you did!)

Finally, a word of warning. Don't use this as a first baby step with FOSS licensing if you ever intend (or _claim_ to intend) that this software will become Free (or Open) in the future. It doesn't work! You need to get full permission from all contributors in order to change the license of the existing code. This will either mean you are planning on a lot of communication headaches later (a bad thing), you're not planning on accepting code patches from the rest of the community (a very bad thing), or you're requiring everyone to assign their copyrights to you as part of the license (a very very bad thing.)

So now we've removed the clauses that are incompatible with the Open Source definition, amended those that are close (but no cigar), re-written the text so that it scans closer to that of a typical FOSS license, handled the patent issues, changed the prefix from "Ms-" to "G" and we have... the GPL. Or BSD. Or MPL. Or one of the other myriad of licenses that already do the job perfectly well, thank you.

Lots of love,

Steev

p.s. there's a new invention called GPLv3 that solves your angst-ridden patent problems

