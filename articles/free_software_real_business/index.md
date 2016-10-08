---
nid: '3246'
title: 'Free software in real business'
authors: stargrave
published: '2009-11-20 5:07:33'
tags: 'free-software,business,commercial,benefits,advantages,real-life,example'
license: verbatim_only
section: opinions
listed: 'true'

---
Preamble
========
There are many "theoretical" talks about how free software can be used
commercially, that it can greatly stimulate business activity and so
on. There are very few real life examples of that. And most of them, as I
can see, firstly had just common classical proprietary model of software
development and only later some of them either freed their products or
at least opened. As I can understand, only after fear of competition had
gone they tried to made timid steps to open-source (as nearly none of
them really understand difference between open-source and free software
(as most of users too)) just to seem good and king in society's eyes.

Now I want to tell you some kind of so-called success story of one
company (where I work nowadays): company that chose freedom path as a
base for software development. Actually it does not specialize itself on
software, but on high-performance server solutions and storage systems
manufacturing.

The first step that is troublesome
==================================
In all innocence first time we met need to develop own software -- it
was as common classical proprietary non-free closed-source product. It
was some kind of firmware for brandmauer/router based on free software
project -- [m0n0wall](http://m0n0.ch/wall/), licenced under 2-clause
BSD. This licence allows (being not copyleft) one to make proprietary
derivate works -- that was crucial for us.

There were many features added to it (good thing there weren't either
serious security issues or bugs), but because of our fear to "shine" with
it we decided not to communicate with foreign developers anyhow. Also
there were licence's ambiguities with remaining different included
software.

And what is the result? Of course we gained some money from selling
it, but not because of users willing to buy exactly it, rather because
there was not any acceptable choice for them: cheap server meant to be
brandmauer with plenty of useful abilities is sold only including our
proprietary software.

Freedom run
===========
During high quality granted server's manufacturing we have to test all
hardware components separately and all of them together in the whole
system. Besides there must be firmware upgrade process (motherboard
BIOS'es, BMC's, hardware RAID-controller's firmware, etc) and operating
system installation automatization. All of these is needed to remove
human factor as much as we can and to complete orders in time.

So we needed very complicated all-time progressing hardware testing
system. There appeared [Inquisitor](http://www.inqusitor.ru/) software
project, actually with roots going much deeper in time. Decision about
it's freeness was taken without a peep.

What benefits we got? Let's look:

* There was no need to pass over copylefted software used in it, to
  think much about "defending" from ones eyes it's source code and so
  on. Only about licence compatibility, but that is another question.
* We actively collaborated with different foreign free software
  projects related to our system. All community benefits. Willing or
  not we were software testers also, as many software provided needed
  features only in non-stable versions.
* Our subproject -- [Einarc](http://www.inquisitor.ru/doc/einarc/index.html)
  was helped much by totally independent from us people. You know,
  no one can have great quantity of different RAID-controllers and
  enough time to "play" with them.
* We avoided possible unethical situations when someone will steal
  source code to use in own creations. Copyleft protects our
  freedom and possible losing courts.
* Money? We did not loose anything even if the project will be closed.
  In most cases one will hire our team to configure and install this
  complex system to fit employer's requirements. Someone can say, that
  raw source code is useless without corresponding team.

What disadvantages has Inquisitor being free software? None!

Crisis-driven development
=========================
But as we all know there appeared world economic crisis. There, in
Russia, it should be destructive for high technology fields, as as a
rule they cost too much to afford. Actually it was so of course.

That time we thought about how can we lower our expenses. As software
developers, we decided to throw out proprietary very expensive network
attached storage's (NAS) software and to replace it with cheaper or
priceless (freeware) one.

Moreover, there were other disadvantages in those proprietary NAS
products:

* We had our hands tired to be able to modify these software to better
  fit with our servers. To make it's performance higher at least.
* User can only use those features that already were built-in -- there
  were no way to advance them, remove or add another ones.

We can not sell NAS-related storage server without that software
and no user will buy it, but both of us have to pay for it very high
price. We tried to find replacement for it: there were enough very
different free and open-source software solutions, but none of them
satisfied us (only technical reasons). We decided to write [own one](http://astor.sourceforge.net/) and of course release it as free
software.

We have got what we wanted and even more:

* We do not pay for each copy of NAS software.
* We achieved wider range of hardware RAID-controllers support using
  already known Einarc utility.
* We can lower expenses more by replacing these proprietary
  incompatible hardware RAID-controller by well-known proven and
  mature software RAID solutions.
* We greatly helped (actually driven by ourselves too) Einarc project
  and as a result Inquisitor platform too.

User has got also several benefits from all of this:

* Lowered cost on storage servers.
* User is independent from RAID-controller vendor by using software
  based arrays.
* We can modify NAS software as user wants.
* Possible beginning of this shared software usage by other companies
  will lead to increasing competition on this field for cheaper and
  higher quality solutions.

We are satisfied, consumers satisfied -- can it be true that
everything is fine? Of course no: those proprietary software producing
company, that do not care about user's freedom, concealing everything
it can, forcing everyone do what it orders without sidesteps, willing
only to retrieve everything from others pockets, is not satisfied at
all. It is unethical and immoral to be like these companies and one
can not consider them as an alternative.

Conclusion
==========
As I tried to show you, free software really and successfully can be used
in commercial. Of course it is not so easy, but whole humanity benefits
from it except money-willing individuals. And even during economic crisis
it can help to survive on the market.

----

Sergey Matveev (software developer at [ETegro Technologies](http://www.etegro.com/))