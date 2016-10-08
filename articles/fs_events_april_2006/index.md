---
nid: '1516'
title: 'Free software events review April 2006'
authors: 'Edward Macnaghten'
published: '2006-05-17 4:52:25'
issue: ''
license: gfdl
section: announcements
listed: 'true'

---
The showers of April have died away. As spring matures, the song birds greet the mornings of May with their music and I find that it is once again time to hand in my report on events regarding free software. This consists of the usual conglomeration of occurrences that I have noticed, think important, or which simply take my fancy.

For this last month, these consist of:


* [Red Hat’s purchase of JBoss](http://today.reuters.com/investing/financeArticle.aspx?type=mergersNews&storyID=2006-04-10T120825Z_01_BNG305781_RTRIDST_0_TECH-REDHAT-UPDATE-1.XML)
* [Portland project’s attempt to unify Linux Desktop](http://www.cio.com/blog_view.html?CID=19925)
* [Open-Xchange upgrades its features](http://mirror.open-xchange.org/ox/EN/news/news_detail3676.htm)
* [ISO members vote to approve OpenDocument Format](http://www.consortiuminfo.org/standardsblog/article.php?story=20060503080915835)
* [KDE’s KOffice 1.5 arrival](http://www.koffice.org/announcements/announce-1.5.php)
* [FreeBSD 6.1 released](http://www.freebsd.org/releases/6.1R/announce.html)
* [Linux Terminal Server Project version 4.2 released](http://hardware.newsforge.com/hardware/06/04/07/1548232.shtml)
* [Vim 7 is ready](http://groups.yahoo.com/group/vimannounce/message/161)
* [Apache overtake IIS in the SSL marketplace](http://news.netcraft.com/archives/2006/04/26/apache_now_the_leader_in_ssl_servers.html)


# A new player in the middleware scene

[Red Hat](http://www.redhat.com) is largely known as a GNU/Linux distributer both to business and commerce in their enterprise editions and to the community through Fedora. However, over the last few years they have been diversifying further into the GNU/Linux stack through acquisitions of products such as Netscape’s LDAP, and more recently the Java EE environment JBoss. What makes this incident more significant is that Oracle were looking at purchasing it too, but RedHat managed to “snap it up” from under their noses.

=TEXTBOX_START=Book Competition!=
This week we are giving away a copy of [Write Great Code](http://www.freesoftwaremagazine.com/articles/book_review_write_great_code) by Randall Hyde.

All you need to do to enter is check out the [latest book competition announcement](http://www.freesoftwaremagazine.com/blog/1) on our blogs page.

GOOD LUCK!

_Thanks go to _[No Starch Press](http://www.nostarch.com/)_ for providing this fantastic prize._


=TEXTBOX_END=
What interests me is the fact that JBoss is free software, and Red Hat spent approximately 350 million dollars for it. Oracle were probably willing to put up a similar offer, perhaps more. This to me proves the commercial model of free software. Cynics who claim that free software is worthless in the market place should answer me this: Why would Red Hat spend that amount of money? Why not simply download the source code?


=ZOOM=Anti-free software cynics need to ask why spend 350 Million on JBoss when the source can be downloaded for free=


# Singing from the same song book

The GNU/Linux desktop suffers a handicap, which ironically is also one of its assets: diversification. For instance, on one hand you have [GNOME](http://www.gnome.org), and on the other [KDE](http://www.kde.org) and on a third [XFCE](http://www.xfce.org/), plus many others. Although all environments can run programs from any other, each uses its own unique form of technology to inter-operate between applications and devices, and each have their own way of configuring the interface. Although this means that the desktop can be tuned to handle almost any specific task efficiently, it makes it awkward for those who want to produce a generic commercial-based free desktop solution.

The two more fully featured generic desktops are GNOME and KDE, and these are considered the main candidates for a generic desktop and it is one of these two (or both) that distributions focus on. However, a clear winner is not coming to the fore. Both have their advantages and disadvantages, and each have a large amount of applications and resource available for use. However, the fact there is not just one is causing some problems in acceptance of the desktop in some quarters.

There have been many bold attempts to solve this problems, not least from the members of the GNOME and KDE developer communities themselves. The latest heroic attempt comes from Portland, from the hallowed halls of OSDL itself. The concept they have come up with is interesting. Previously, attempts at integration largely consisted of “theming” each environment to look the same, then putting in a few back-end hacks to blur the distinction between them. This tends to end up with a mish-mash that locks out the finer points of each, and does not integrate together well.

Portland’s attempt is different. They are saying that a user can run either desktop, GNOME or KDE. The Portland project itself then produces a set of APIs that sit between the application and desktop. The developer then creates applications to interface with the API, rather than the desktop itself, and when the application is installed the user can choose if they want it to use the KDE or GNOME environment, which it will do so on a native basis.

This solution can scale to other desktops as well. As long as an environment has the necessary functionality, and as long as a “Portland API” set can be written for it, all applications written using the Portland interface will run natively on that too. The Portland Project looks very promising, and there is a lot of enthusiasm about it. I believe it’s worth keeping an eye on.


=IMAGE=fig1.jpg=Improvements in strategies keep springing up=


<!--pagebreak-->



# Free groupies

I have found that more and more business environments are becoming aware of advantages of their workforce sharing electronic calendars and other pieces of information. Hence, the growth of Groupware, and web-based personal/group information management systems in the marketplace, and free software solutions are in there with the best of them. One star of this is the [Open Xchange](http://mirror.open-xchange.org/) project sponsored by Novell. This has the advantage of not only being a complete free Groupware solution in its own right, but also has the capacity for commercial add-ons that interface with Microsoft’s Outlook program for companies who are stuck with that strategy.

The latest offering of this is [Open-Xchange Version 0.8.2](http://mirror.open-xchange.org/ox/EN/news/news_detail3676.htm). This has many feature upgrades from the previous release, and is helping to ensure it stays at or near the top of the Collaboration Suite pile.


# Flying the flag for open documents

A significant event in April was the [vote of approval given to OpenDocument](http://www.iso.org/iso/en/commcentre/pressreleases/2006/Ref1004.html) by the ISO team. This is a major boost to office interoperability and freedom of choice for office applications. What is more significant is that the OpenDocument Foundation have announced the existence of a plug-in for Microsoft Office programs that save and load files in this format, and is currently in the testing phase.

I cannot emphasize enough how much this pleases me. I have, in my time, been caught in the bespoke format trap of Microsoft Office not being able to use the product of my choice to do my work. This, I hope, will finally isolate those woes into the depth of history books—which we can all read using a program of our choice!


# Yet another KO for OpenDocument

The KDE team have released [KOffice 1.5](http://www.koffice.org/announcements/announce-1.5.php), the next installment of their productivity suite. This contains a list of improvements of the type we have come to expect from such developers, and a major one that is connected with the previous section. This being that the default format for KOffice is now OpenDocument.

It takes a large amount of nerve for the developers to drop their own format in favour of another, and they are to be complimented on doing so. This can only help to endorse the process of opening up document formats generally. Let’s hope others follow suit.


=ZOOM=The KOffice developers are to be complimented for dropping their own format in favour of OpenDocument=


# The devil in the detail

Yet another BSD kernel has been released. This time it is [FreeBSD 6.1](http://www.freebsd.org/releases/6.1R/announce.html). This is the “User Oriented” manifestation of the BSD family, as opposed to the “secure” and “server” categories for the “OpenBSD” and “NetBSD” offerings respectively.

As I am a GNU/Linux user rather than a BSD one I cannot give a first-hand detailed review of this, but judging from the release notes it appears to be marching on alongside everyone else and feasible as a workable solution. To me personally, it is reassuring to see that alternatives to GNU/Linux as a free IT solution are still there.


# Mean lean and thin

I find that one of the major technical advantages to a GNU/Linux desktop over a Microsoft Windows one is the ease and low-cost way in which you can implement a thin client solution. Under such a scheme, implementing a solution for a small office consists of installing a reasonably sized application server that is headless, that is having no keyboard, screen or mouse, then connecting to it using thin clients and the X protocol from thin-client workstations.

Usually, the only real investment in achieving this is the hardware costs and installation of the application server itself. The thin clients can be almost anything, such as old hardware with a minimal Linux distribution installed, or even Microsoft Windows machines themselves running [Cygwin X-Server](http://sourceware.org/cygwin/). These low-cost (and low-noise) diskless thin clients can also be run with the aid of the[Linux Terminal Server project](http://www.ltsp.org).

[Version 4.2](http://wiki.ltsp.org/twiki/bin/view/Ltsp/LTSP-42) is the latest submission of this. It brings it up to date with the latest kernels, and includes new performance boosts and features. I expect that, as Linux advances further into the business desktop scene, we will see more and more examples of these thin client implementations.


# More visual editing

I am a programmer, and I primarily use a text editor to code. There are two major ones I could use, Vi and Emacs. I am a Vi person. I have never managed to get my brain around Emacs. There—it’s out. I have admitted it. Flame me if you must.

I have, therefore, become rather excited about the new release of [VIM 7.0](http://groups.yahoo.com/group/vimannounce/message/161). This includes, amongst other things: tabbed pages, spell-checking and multiple undo pages. I am well aware that other editors, especially Emacs, may well have had these features for a long time, but I don’t care. I have been a “Vi” person for about twenty years and am unlikely to change now.


=IMAGE=fig2.jpg=April saw the usual shower of improvements=


# Apache’s revenge on IIS

There was a big Hoo-Hah the month before last about Apache losing a five percent share of the domains market to IIS due to the fact GoDaddy moved their parked domains from the free environment to Microsoft’s. However, there has been a little noticed event this month that I think is more significant.

For the first time ever, there are [more Apache SSL servers than IIS ones](http://news.netcraft.com/archives/2006/04/26/apache_now_the_leader_in_ssl_servers.html) out there. The reason why they were not before is that Apache was slow off the mark with SSL. Version one didn’t have it. And, due to the peculiar export laws of encrypted software the US had and the open nature of Apache, the SSL aspects of it had to be developed independently of the main branch. This gave Microsoft the lead here.

The fact that Apache has now overtaken IIS proves to me the effectiveness of the popularity of free software in professional scenarios. If I were Microsoft I would be far more worried about the superior market share achieved by mission-critical Apache SSL servers than I would be joyous about acquiring a few million non-functional domain names.


=ZOOM=Microsoft should be far more worried about the superior market share achieved by mission-critical Apache SSL servers than joyous about acquiring a few million non-functional domain names=


# Conclusion

Once again the exponential growth of free software in all its aspects means that I have had to leave out far more than I could include here, and even so I have once again well overrun my allotted size for this newsletter (sorry Dave). If anything stands out from April and the beginning of May it is the momentum and enthusiasm that exists in expanding the role of the GNU/Linux desktop. We have had grandiose announcements of the arrival of the GNU/Linux desktop to the masses before, and most to no avail, but this is the first time in my recollection that so many corporations and professional individuals are placing their weight behind such a goal. GNU/Linux may well, like Spring just has, be busting out all over.

