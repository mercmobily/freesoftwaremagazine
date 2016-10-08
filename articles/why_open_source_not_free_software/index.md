---
nid: '2950'
title: 'Why "open source" is  not "free software"'
authors: 'Dario Borghino'
published: '2009-02-11 10:47:33'
tags: 'free-software,gpl,open-source,licenses'
issue: issue_23
license: verbatim_only
section: opinions
listed: 'true'

---
Choosing to release a piece of software under the terms of a free software license is an important step through which many programmers and writers first approach the free software community. However, the myriad of licenses available can sometimes confuse and disorient the user, sometimes making this first step much harder than it should be. Let's try and make things clearer.

<!--break-->

# Free software vs. standard copyright license

Suppose just for a single moment that you're a student reading a Physics book which explains the Theory of Relativity. You are able to read the book, use the notorious formula E=mc^2 to solve all of your exercises and, if you're a particularly brilliant student, perhaps even start from there to come up with a new formula leading to a new scientific discovery. In other words, the scientific knowledge is in the public domain, free for everybody to use, modify and redistribute -- you don't have to pay a royalty to Einstein's nephew every time you solve a difficult physics exercise or you daydream about time-space travel.

=ZOOM= Free software licenses are an attempt at making the world of technology closer to the world of science. =

The world of technology, on the other hand, is largely dominated by patents, which makes it a "closed" and competitive model, in which knowledge is rarely shared without money being involved. Companies strive to patent their latest technological innovation and maximize their capitalization, as one might expect. Sadly this has a number of important consequences: the license with which a patented item is distributed to the public often prohibits reverse-engineering and, in general, any attempt at understanding the mechanism through which that piece of technology works.

In this sense, free software licenses may be regarded as an attempt at making the world of technology much more similar to that of science, particularly in the field of computer software. Every piece of software distributed with under a free license grants to everybody the rights to disassemble, rebuild, manipulate and personalize the product, making it possible to understand its inner mechanisms and adapt the product to the user's needs.

There might be many reasons why you'd want to release your work with a free software license. First of all, as you may already know, the "free" in "free software" doesn't stand for "free of charge", but rather for granting others the freedom to modify and redistribute your work.

There is generally nothing preventing you from charging a fee for your product if you adopt a free license, apart from the cases where the license itself explicitly forbids you to do so. Since it is you, the original author, who can decide exactly which license to adopt, all you have to do is choose the license that best fits you and your specific needs, instead of just sticking with one -- the standard copyright license -- over which you have no control whatsoever.

You can get a feel for how software houses in recent decades have chosen to take full control over their distribution license by looking at this [partial list of free software licenses](http://en.wikipedia.org/wiki/List_of_software_licences) on Wikipedia.

# When small particulars can make huge differences: choosing the license that best suits your needs

A common point of confusion is the difference between the terms "Open source" and "Free software" license: although very similar in many respects, they are formally two separate movements. This is mainly because of historical reasons that resulted in characterizing the term "Open source" in a way that was somewhat different from its original meaning. You can read more about that in an interesting [Richard Stallman article](http://www.gnu.org/philosophy/free-software-for-freedom.html).

The beauty of free licenses lays in their extreme and unprecedented flexibility. A well-known example are the [Creative Commons](http://creativecommons.org/), which you can see adopted on an increasing number of popular websites. Creative Commons is not a single license, but rather a license suite that is designed to allow its users to pick and choose exactly which rights to grant and which ones to deny, therefore allowing a complete control over the legal terms associated with the work you'll distribute.

=ZOOM=Although very similar, the terms "Free Software" and "Open Source Software" are two separate movements, mainly for historical reasons=

<!--pagebreak-->

Of course, this also means that there has to be a little bit more of research on your side in order to choose the license that works best for you. Yes, Creative Commons are very flexible, but some argue that while they are an excellent option for your articles and written content together with the GFDL, they are [not the best](http://jay.tuley.name/archives/2006/03/27/5-reasons-not-to-choose-a-Creative-Commons-license-for-code) to stick with if what you do is writing and redistributing software. Let's then go over the features of the most common free licenses for source code.

**GNU General Public license (GPL)**: by far the most common license in use for free software, mainly for historical reasons. A complete copy of the terms and conditions has to be included in every project that is being release with this license. In short, you can use the software for any purpose, change it to suit your needs, share it and any modified version you might produce. For a better explanation, see [this guide](http://www.gnu.org/licenses/quick-guide-gplv3.html).

**BSD Licenses**: considered more permissive than the standard GPL, BSD (Berkeley Software Distribution) licenses are the terms through which the common FreeBSD OS is being distributed. A software licensed under these terms allows developers of proprietary commercial tool to include it in their projects. What is maybe the most cited example of such behaviour was the inclusion of the FreeBSD kernel into Apple's Mac OS X operating system.

=ZOOM=If you want to grant anyone the right to use your work in whichever way they wish, release it into the public domain=

**Public Domain**: if you want is to grant anyone the right to use your work in whichever way they wish, releasing it into the public domain is the way to go. By releasing your work into the public domain, you are effectively renouncing to your rights on it. Government agencies such as NASA and countless others will release pictures and other content in this manner. In most countries, the copyrights on someone's work expire after a certain number of years -- typically 70 to 100 -- from the death of its author. These works then traditionally enter the public domain.

When looking at the myriad of licenses, all promoting the exact same philosophy in just a slightly different manner, one does however wonder whether it would be best to have a single "unified" license for free software, or at least a bit more of flexibility from project managers in choosing a license that would be compatible with the vast majority of the ones that share the same basic principles.

Needless to say, this is far from happening any time soon. You really don't have to search far to hear about disputes, incompatibilities and legal controversies that originated from the misuse or misinterpretation of the license terms even within the free software community. 

# A case study: Logo issues between Mozilla Firefox and Debian Linux

The controversy between Mozilla Firefox and Debian Linux is certainly a textbook example of an outstanding issue that originated from small particulars to evolve into somewhat drastic decisions.

Mozilla Firefox, quite possibly the best-known free software application in existance, isn't released under either of the two most common free software licenses such as the GNU General Public License (GPL) or the more permissive BSD license, but rather an hybrid of the two.

In short, the resulting Mozilla Public License (MPL) allows modifications of the software, as long as the resulting software is being distributed under a different name and featuring a different logo.

The reason behind the adoption of the MPL was the need for Mozilla Corporation to protect the very solid reputation of the software. Imagine what would happen if a popular, but unofficial fork of "Mozilla Firefox" was extremely buggy: what the common user would perceive is that the entire project was unstable and of poor quality.

=ZOOM=The reason behind the adoption of the MPL was the need for Mozilla Corporation to protect the reputation of its products=

Debian Linux -- the popular GNU/Linux distribution which is known to put great attention to the [licensing terms of its packages](http://packages.debian.org/sid/vrms) as well as their stability -- was initially given permission to use the Mozilla trademark and to adopt the "Firefox" name even with customized, non-proprietary artwork specific for the distribution.

In February 2006, however, the Mozilla Corporation decided to revoke the trademark agreement due to what the corporation interpreted as misuse of the "Firefox" name. 

As a result of a long dispute, Debian Linux eventually decided to abandon the former Firefox branding, opting for the name "Iceweasel" instead, as a reference to an earlier GNU project. 

# Ending on a positive note: GNU's GFDL and CC

On December 1, 2007, Jimmy Wales, the co-founder of the Wikipedia project, announced that, after a period of negotiation among the [Free Software Foundation](http://www.fsf.org/), Creative Commons and the Wikimedia Foundation have produced the proposal to modify the Free Documentation License -- maybe the best known license for free documentation -- in such a way that it would be compatible to the CC-BY-SA (Creative Commons with Attribution and Share-Alike rights).

This is certainly a positive note, as GFDL and Creative Commons are undoubtedly two of the most widespread documentation licenses in use today, and knowing that the two are on the road to resolve their differences to embrace the spirit of free software will certainly leave the free software community stronger.

The large number of free software licenses available clearly reflects the different needs of users and certainly each license has its own raison d'être. However it is possible that the free software community will see more similar attempts at working together towards cross-compatibility. In this way they'll put the legal nitty-gritty aside and make the software reuse, modification and redistribution process much easier to implement.`