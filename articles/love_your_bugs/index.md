---
nid: '2663'
title: 'Love your bugs: a zen guide to keeping your sanity while managing a free software project'
authors: 'Tony Mobily'
published: '2008-01-17 9:41:50'
tags: 'community,bugs,drigg'
license: verbatim_only
section: opinions
listed: 'true'

---
Over the last few years, I've come to accept the fact that regardless of my attempts to quit this job, I am fundamentally a programmer. I wrote a book about security, I am the Editor In Chief of [Free Software Magazine](http://www.freesoftwaremagazine.com), but in the end I am still just a programmer. A lucky one, I must admit. Until last month, I had been blessed by the fact that either the software I wrote was owned by somebody else after a short contract (and therefore it didn't matter to me once I had completed it: somebody else eventually took it over), or that what I programmed had been created just for myself (I was the only user of the software... bliss!).

This changed when I became a free software programmer.

I have recently released what I consider an important project: [Drigg](http://www.drigg.org). Drigg is what [FSDaily](http://www.fsdaily.com) is based on, and allows people to create sites like Digg (with voting etc.) in no time. I wrote it both because I felt that the world needed it, and because... well, we felt we needed it ourselves with FSDaily. So, it came out.

Little did I know, that that would be just the beginning. I had been working day and night for weeks, to get Drigg completed. While programming I had this vision that once I finished, that would be "it": I could go back to what I considered my "normal life", happily managing Free Software Magazine and doing things like going to the beach in the heat of January (no sarcasm: I live in Australia...). Oh yes, little did I know.

What I didn't know, was that releasing the software (after painfully winning a battle with CVS) was only the very first step. After that, bug reports and feature requests started coming in. Tons of them. Unstoppable. It felt like a truckload per day.

I learned a lot from this experience. You see, I like being tidy. I look with horror at other Drupal modules with bugs opened 4, 8, 12 weeks ago and never really dealt with, with one shy message by the maintainer asking for more information, and apparently nothing really done about the problems. To me, it was like seeing a shop with half-open boxes all over the floor, and merchandise everywhere. My shop was to be tidy: I was going to be the Tesco of the Drupal modules.

I managed to do that, but my goodness, what a struggle. People reported obscure bugs. I asked follow-up questions, only to see some of the reporters disappear for four days. Other people reported bugs very accurately, with a twist: it was absolutely impossible to reproduce them. Or, others reported bugs that made me realise that maybe I should have spent a little bit more time testing the module, and I wondered how on earth I could have allowed my own site to run with that kind of problem... Or, again, others reported the "usual suspects", the bugs for which you could just get a little robot to type for you "You are using an old version of JQuery. Please update". And then again "You are using an old version of JQuery. Please update". And then again...

I started getting a little restless about bugs. I would go to bed thinking: my goodness, I really hope there won't be any nasties tomorrow morning. Sure enough though, I logged in to my Drupal dashboard the following morning, and there they were, the happy bunch waiting for me: one nasty bug, a couple of vague reports, and a feature request. I caught myself thinking, in the middle of the afternoon: "Gosh, what if somebody is filing a bug report on my modules right now?". I guess some would say that I was going a little delirious. I guess this is what you get when you are slightly obsessive compulsive and enjoy the thought that your module is bug-free (or should I say "bug report free"?). So yes, bug reports were seriously bugging me. I wanted to work harder, and harder, and harder, so that Drigg was bug-free. I did just that.

Eventually, I realised that bug reports are there _just_ to bug you--but in a good way. That's their job. What else could a bug do, after all, if not bugging you? I realised that if bugs weren't reported, they wouldn't get fixed either. And I realised that they, in the end, only matter a little bit: at the end of the day, it's better to have a program with a couple of bugs than not having a program at all... I also learned that very, very often behind vague, apparently worthless reports there are real bugs waiting to be found.

A program is like a plant. To stay alive, it needs considerable amounts of work, wisdom, and love. A watchful eye needs to make absolutely sure that bugs don't end up ruining this plant, and that any problem is dealt with timely. You have to eliminate the bugs, squash them mercilessly, and yet love the bug reports which are so important to find out where those bugs are in your plant.

I managed to grow a plant that the whole community enjoys. Several web sites out there are benefiting from my work already. I will look after it, let it grow slowly, and look at every bug report that comes with gratitude. That's what being a community is about, isn't it?
