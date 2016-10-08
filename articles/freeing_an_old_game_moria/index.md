---
nid: '1988'
title: 'Freeing an old game'
authors: 'Ben Asselstine'
published: '2007-03-12 6:30:00'
tags: 'games,umoria,moria,relicensing,roguelike,copyright'
issue: issue_16
license: cc-by
section: games
listed: 'true'

---
Do you remember that old game that you used to play all the time? Do you still play it? It probably isn’t free software. Do you wish it was? Sometimes writing a clone of a game is a lot of work compared to the amount of work it takes to _relicense_ one. Here is a story about how one group of people are going about freeing the game known as “Moria”.


# Introduction

People are often attracted to games before they are attracted to the free software movement. This means that many free software enthusiasts are addicted to non-free games. This is what turns some people to free software—the inability to see how a game works, or the inability to legally share it with friends.

In the 1980s, a game called [Moria](http://en.wikipedia.org/wiki/Umoria) was created at the University of Oklahoma by Robert Alan Koeneke. It was an improved version of “[Rogue](http://en.wikipedia.org/wiki/Rogue_%28computer_game%29)”, a very popular ascii-text dungeon crawling game. James E. Wilson eventually came along and ported it to C on UNIX (from Pascal on VMS), and created UNIX Moria, or just “[UMoria](http://en.wikipedia.org/wiki/Umoria)”.

The unfortunate thing about UMoria is that it was released under a [non-free software license](http://free-moria.sourceforge.net/moria-non-free-license.txt), and the software continues to be non-free today. Although the license allows anyone to see the code, it is not free software due to restrictions in the license. This is considered an unfortunate situation by many who remain in the Moria community, and over a year ago we set out to relicense Moria with a free software license. For this to happen, each of the copyright holders must relicense their contribution. A private mailing list and a public [website](http://free-moria.sf.net) as well as an IRC channel (#moria on freenode.net) were established to assist in the effort.


=IMAGE=moria-screenshot.jpg=Figure 1: Moria running on GNU/Linux in gnome-terminal=


# Why give Moria a free software license?

Why? Because...


* Freeing Moria will give it a wider audience because it can be distributed with GNU/Linux distributions. This encourages new bug submissions and patches. As a result of new collaboration the software improves and lives longer.
* It will help the free software enthusiast feel better about playing the game.
* Freeing Moria also stems the flow of non-free software downstream in games like [Angband](http://angband.oook.cz/) and its [many variants](http://en.wikipedia.org/wiki/List_of_Angband_variants).


=IMAGE=roguetree2.jpg=Figure 2: Where Moria fits into the family tree of Rogue-like games=


# Identifying and locating contributors

Identifying copyright holders is much different from locating them.

A copyright holder is anyone who contributed to the codebase. Because Moria is such an old project, the vast majority of recorded email addresses no longer work. And, because it has not been kept in a public version control system like CVS, it is even less clear who the contributors were. It is critically important to define your list of copyright holders accurately and completely, along with descriptions of their contributions. This took many hours of researching the codebase and [USENET](http://groups.google.com) [posts](http://groups.google.com/group/rec.games.roguelike.moria).

Once you’ve determined that a contributor is a copyright holder, it’s time to locate them. This can also require endless hours of researching email addresses, and sending emails.

UMoria has 26 copyright holders. Of the 25 people we have contacted so far, every one of them has agreed to relicense their contribution.

We searched the web and searched through many old USENET posts to identify and locate contributors. A contributor was even contacted on the telephone (imagine their surprise—“Hello, you’re not going to believe this but I’m calling about a computer game called Moria that you contributed to 10 years ago...”). One contributor had even changed his name making him especially hard to find. Another person contributed to Moria prior to a crucial year in US Copyright Law that required all copyright holders to state their name with a year and a copyright symbol.

A large amount of time was spent sending emails asking if this was so-and-so who contributed to Moria. There were many bounced emails because the addresses were invalid or inboxes were long full. Once in a while, we would find the person we were seeking and we would celebrate. Usually the person was very pleased to hear from another Moria fan. Many contributors expressed fond memories of the game and were thankful that someone still cared about their contribution. Some others could barely remember contributing.


# Getting contributors to relicense

After being contacted, each contributor was given the choice of the putting their contribution under the auspices of the [GNU](http://www.gnu.org)[General Public License](http://www.fsf.org/licensing/licenses/gpl.html) or putting their contribution into the [Public Domain](http://en.wikipedia.org/wiki/Public_domain). Unfortunately the GPL was an unacceptable choice to some of the contributors. A boilerplate license declaration was sent to every contributor, and was augmented with the date, and a description of their contribution to UMoria. The contributors verified the statements, typed out their names in the space provided and sent them back via email.

Here is what our GPL boiler declaration looked like:


>I <your name here> hereby release my contributions to UMoria (which includes <contribution here>) under the terms of the GNU General Public License (“GPL”) (version 2). It may be redistributed under the terms of the GPL (version 2 or any later version). I do so on <today’s date>.

In hindsight, a version of the software should appear in the boilerplate declaration.

We still lack one final contributor who is especially hard to find because he has a common name. If anyone reading this article knows a “Brian Johnson” who likes to do computer programming and was old enough to add “GNU/Linux support” to Moria in 1992, please have him contact [me](mailto:benasselstine@gmail.com).


# **Update**

In October of 2007 the final contributor, Brian W. Johnson was contacted and he agreed to put his contributions under the GPLv2+.  He was located by telephoning the Talented Youth Math Programme at the University of Minnesota, and asking for some basic personal information.  They broke the rules for the right reasons and divulged that he went on to get a PhD at the University of Chicago.  From there it was a simple matter of contacting his thesis advisor, who provided an email address where Brian could be contacted.  Brian responded right away, and confirmed that he played Moria in the early 90s on an early version of Debian GNU/Linux.  It was disturbing when Brian said he did not remember contributing source code to Umoria!  However after Brian examined the source code, some old memories were refreshed and he remembered making a contribution after all.  He has since [blogged](http://175560.livejournal.com/52286.html) about the experience. 

All of the license declarations have been given to the maintainer of UMoria ([David Grabiner](http://remarque.org/~grabiner/moria.html)) and it has been confirmed that the next version of UMoria will be released under the GPLv2+!

It is very satisfying to see how other games on the Roguelike tree are trying to change their licenses to be Free Software licenses.  Perhaps inspired by the relicensing of UMoria, the Angband project has made great strides in it's own relicensing effort.  At last count they only need to find two more contributors!  To follow their progress visit go to [rephial.org](http://rephial.org/wiki/OpenSource).  Keep up the great work!


# Conclusions

Although freeing Moria has been a more difficult task than originally expected, it has also been a rewarding experience. When we started we were a team of 2, and now we’re a team of 7! I would encourage anyone to try and relicense their favourite old game. It consists mostly of emailing someone and asking them if they’re the person in question, and then emailing them back the boilerplate. If you colloborate with a bunch of friends, it can be a lot of fun. You’ll also meet the people who made your favourite game, which can also be a nice experience. I look forward to the near future when Moria is finally free software.


# Thanks

There are a lot of people who need to be thanked. I want to thank all of the Moria contributors who helped in this effort so far. And I’d especially like to thank the people who did the researching, emailing, telephoning or who just helped to keep spirits high: Lars, Ben H, Barry, Antoine, Ben S, and Eli the Bearded. Thanks to [SourceForge](http://www.sourceforge.net) for hosting our [free-moria project](http://free-moria.sf.net).  Also a very special thanks go to the staff at the University of Minnesota Talented Youth Math Programme for breaking the rules for the right reasons.

