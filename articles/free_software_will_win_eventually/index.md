---
nid: '2659'
title: 'Free software will win. Eventually.'
authors: 'Tony Mobily'
published: '2008-01-15 22:44:28'
tags: free-software
license: verbatim_only
section: opinions
listed: 'true'

---
Free software (eventually) works better than proprietary software; why?

Making dramatic statements always implies a need to "back" them (or "prove" them) with facts, data, statistics. However, a statement like "Free software works better than proprietary software" is so broad, anybody can prove it and disprove it at will. It depends on which angle you take, which area, and what your comparison terms are. However, I would like to add an important keyword to that sentence: "Free software works better than proprietary software". That easily-missed word shyly hiding in brackets makes all the difference. 

<!--break-->

That extra word --_eventually_--implies that really, it's only a matter of time before it _becomes_ better. 

# Some background information

In 1995, when I introduced GNU/Linux to the company I was working for (which was also my first employer), the company's senior system administrator (called "Peppe", believe it or not) looked at it and laughed at me. "It's got some basic stuff, but you do realise it's a toy?". Peppe was right. He was used to AIX and SCO Unix, and back then GNU/Linux really was indeed a bit of a toy. The networking stack was there, but it was rather basic. The LibC (a basic library that allows you to actually use your system) had major limitations. The Linux kernel only ran on i386 processors. It was a toy--a fabulous one, but still a toy.

Fast-forward 12 years: Linux--the kernel--is an astonishing piece of software. Its firewalling stack is "stolen" (sometimes legally, some other times maliciously) by several major hardware makers (especially routers and modems). GLibC is a state-of-the-art library which supports multithreading. The kernel runs on... well, pretty much anything--in fact, it might soon power your toaster.

While Peppe was "right" at the time, he definitely failed to consider two very important parameters: "potential" and "growth rate". Or, more simply, he missed out on that crucial word: _eventually_.

# How did GNU/Linux "get there"? An example: Linux firewalls

I mentioned that the firewalling stack improved so drastically in Linux - how did it get there? Well, it was definitely a bit of a bumpy road.

Firewalling became possible in Linux 2.0 thanks to `ipfwadm`. It was a bit of a revolution: for the first time, it was actually possible to run a firewall that was based solely on Linux. However, it was evident that `ipfwadm` was very limited and people were getting more and more excited about creating firewalls with Linux. When I heard that they were going to rewrite everything in order to overcome `ipfwadm`'s limitations, I thought: they are crazy, they must have lost it. But, they hadn't: when Linux 2.2 came out, `ipchains` greeted everybody, a new revolution started in the Linux kernel. `ipchains` solved a lot of problems in terms of flexibility. However, that wasn't quite enough: there was yet another rewrite, called `netfilter/iptables`, which turned the "toy" into a fully-featured firewalling system. 

Eventually.

# My own experience: Drigg

When Digg came out, I absolutely loved it. I loved Slashdot and the fact that they would be just so picky about what went on their home page. However, Sladhdot didn't seem to have enough subcategories--it was a site for geeks after all. When I saw Digg, I realised how good their idea was, and how far that could go. I was also amazed that for quite a while there was no easy way to create a Digg-like site. The first attempt to create a Digg clone was the Spanish site Mename, which was in Spanish only. Pligg sprouted from Mename (whose author was kind enough to release the source code under the GPL); phpdugg joined the army. We ran [FSDaily](http://www.fsdaily.com) using Pligg to start with, but while we were immensely grateful to the Pligg developers for their work, we wanted something different--something based on Drupal. So, I sat down and I developed it. I would have never been able to develop Drigg without the experience I gained using Pligg and without the solid base of Drupal (which I now more or less inside-out programming-wise).
Drigg took a lot of development hours. I based it on a karma module I had written for Free Software Magazine. FSDaily ran on the first beta of Drigg--beautifully. Since then, I have more or less rewritten it (splitting it into separate modules) and release it to the broad Drupal community. The first version of Drigg I wrote at the very beginning was a bit of a disaster: it was the original Karma module on steroids and a fattening diet. I changed it, improved it, fixed the countless bugs reported through the fantastic Drupal system. The current version of Drigg probably won't win any "efficiency awards", but the code is solid--right now, there are no open bugs in Drigg.

Drigg got there.

Eventually.

# Free software: the unstoppable revolution

People who work and live in specific markets always have a terrific insight on how big a market is going to be. In 1999, my neighbour told me that Western Australia was about to start booming like anywhere else in the world, thanks to the mining sector. He suggested I buy as many houses as I could regardless of the debts and the mortgage. I bought my house, and then witnessed the craziest boom in Australia's history. My neighbour knew what was coming because he worked in the industry. He told me that all of his mates knew it, and that to them it was so obvious, it was odd that nobody else knew. I got confirmation that if you eat and breathe mining every day, and you have intuition, you will be able to predict what the next step will be. He did, and got it right.

So many people who eat, breath, live free software today know that it's unstoppable. Microsoft's executives, locked in their corporate rooms, didn't have the means to realise free software's momentum. When they suffered from the effects (Linux was being installed where Windows NT should have been), they started fighting back--clumsily, noisily, ineffectively. They didn't have the insight to figure out what was coming from the free software world.

They were growers who were meant to predict the mining boom, but--unaware of what was coming--found themselves more or less suddenly with no workforce available (the mining sector took the lot).

Ubuntu's (and GNU Linux's) [bug #1 -- Microsoft has a majority market share](https://bugs.launchpad.net/ubuntu/+bug/1) will get fixed. 

Eventually.