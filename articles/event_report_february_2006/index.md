---
nid: '1314'
title: 'Free software events for February 2006'
authors: 'Edward Macnaghten'
published: '2006-03-13 11:16:57'
issue: ''
license: gfdl
section: announcements
listed: 'true'

---
February saw many free software events come to pass. These included: two major conferences, one on each side of the Atlantic; the surfacing of a couple of solutions for permitting composite window effects to use video acceleration; the adoption of free software in a number of scenarios; a new release of an old secure friend; the incremental launch of a distribution; and more. The main events are summarized as:


1. [OpenSSH 4.3 Released](http://marc.theaimsgroup.com/?l=openssh-unix-dev&m=113879773216803&w=2)
1. [HP opens new Linux testing center](http://news.zdnet.co.uk/software/0,39020381,39252976,00.htm)
1. [SCALE 2006—South California Linux Expo](http://socallinuxexpo.org/)
1. [Novell release of XGL](http://www.novell.com/linux/xglrelease/)
1. [RedHat’s announcement of AIGLX](http://fedoraproject.org/wiki/RenderingProject/aiglx)
1. [FOSDEM 2006—Free and Open Source Developers’ European Meeting](http://www.fosdem.org/2006)
1. [Gentoo 2006.0 GNU/Linux distribution Release](http://www.gentoo.org/)

=TEXTBOX_START=Book Competition!=
This week we are giving away a copy of[The Definitive Guide to ImageMagick](http://www.freesoftwaremagazine.com/free_issues/reviews/book_review_imagemagick) by Michael Still.

All you need to do to enter is check out the [latest book competition announcement](http://blog.freesoftwaremagazine.com/users/announcements) on our blogs page.

GOOD LUCK!

_Thanks go to _[Apress](http://www.apress.com/)_ for providing this fantastic prize._


=TEXTBOX_END=
The events reported here are, of course, far outnumbered by those that aren’t. I have limited myself to those events and issues that I notice, which I personally find important or interesting.


# A secure shell

[OpenSSH](http://www.openssh.org) is one of the torches of free software. It is also one of the most useful and versatile utilities I use on a regular basis. It has been ported to almost every type of machine I use, even the Microsoft ones using the [Cygwin](http://www.cygwin.com) environment. Not only do I find this utility essential when I’m maintaining GNU/Linux and other POSIX servers remotely, but I also find it invaluable when I’m maintaining Microsoft ones.


=ZOOM=Not only do I find OpenSSH essential when I’m maintaining GNU/Linux servers but I also find it invaluable when I’m maintaining Microsoft ones=

The SSH protocol has the ability to forward ports; not only local ports, but remote ones too. Local port forwarding means you can do things like access a database server on a remote SSH machine using local clients, even if the database is behind a firewall. Remote forwarding, however, goes one step further by letting you maintain services on machines that don’t have an SSH server installed, by running an SSH client there.

[OpenSSH Version 4.3](http://marc.theaimsgroup.com/?l=openssh-unix-dev&m=113879773216803&w=2) is an incremental release of this already fantastic product. It contains many fixes, and an enhancement that enables connections through the kernel tunnel interface of some POSIX systems (including BSD and GNU/Linux), thus greatly improving OpenSSH’s VPN functionality. The continuing improvement of this tool is wonderful to see.


=IMAGE=oggp.jpg=A flock of new releases=


# A new look

The GNU/Linux free desktop has always had the reputation of being outdated, awkward and clunky, and not really justifiably so. The X Window System is in fact a highly comprehensive infrastructure that enables graphical user interfaces (GUIs) such as [GNOME](http://www.gnome.org) and [KDE](http://www.kde.org) to provide highly polished user experiences in a very versatile way. This, though, is about to get a major boost.

Novell have released an alpha version of the [XGL](http://www.novell.com/linux/xglrelease/) project. This enables snazzy effects such as windows with transparent backgrounds, shadows, rotating and zoomable windows and such. It makes use of hardware 3D graphics acceleration using composite functionality in the window manager.

Hot on the heels of this, RedHat announced their work on the [AIGLX](http://fedoraproject.org/wiki/RenderingProject/aiglx) project. This will achieve the same thing in a different way. Although, at first sight, these projects look as though they are in conflict, they can (and do) borrow code from each other. A perfect example of the free software model in action.

For more information on this, may I shamelessly plug an article I wrote on the subject [here](http://www.freesoftwaremagazine.com/free_issues/newsletters/accelerated_x/).


<!--pagebreak-->



# Buying and selling database engines

A somewhat unusual series of events for this newsletter is unfolding, but I believe it qualifies for a mention. [Oracle has bought SleepyCat](http://www.computerworld.com.au/index.php/id;873584535;fp;2;fpid;1), the makers of the Berkeley DB product. This, in itself, may not seem like much of a big deal. But, put it with the fact that [Oracle bought InnoDB](http://www.theregister.co.uk/2005/10/10/oracle_buys_another/) in October last year, and it starts to become more significant.

The low down here is that these are back-end engines used in the MySQL database, which is the most popular free database deployed. This, together with rumors that [Oracle attempted to purchase MySQL](http://news.com.com/Oracle+tried+to+buy+open-source+MySQL/2100-7344_3-6040197.html?tag=nefd.lede) itself, makes some wonder. Is Oracle simply diversifying into a free software model, or are they trying to kill off a competitor?

So far, the answer isn’t clear to me. However, if they are trying to kill off MySQL as a feasible free software database engine for business, I believe they are doomed to failure. [MySQL has recently employed Jim Starkeyi](http://www.firebirdnews.org/?p=128), the creator of the Firebird database engine; and I don’t believe it’s beyond the capacity of Starkeyi and the existing MySQL developers to create a suitable transaction-based back-end that MySQL will own outright.

As well as the above, it’s worth mentioning [PostgreSQL](http://www.postgresql.org), which uses its own back-end. Not only can Oracle never purchase PostgreSQL (due to the fact it isn’t owned by any single entity), but it’s closer to Oracle’s database in features and emphasis than MySQL is.

I actually believe that Oracle are in it for the free-software diversification. Databases are fast becoming a commodity, as Oracle will know too well. Improving their service and support priority, which free software lends itself well to, would be a logical move for them.


# A meeting and an expo

Two events in two continents drew my attention. One was the [South Californian Linux Expo (SCALE)](http://socallinuxexpo.org/), the other was the [Free and Open Source Developers’ European Meeting (FOSDEM)](http://www.fosdem.org/2006). I unfortunately could not attend either of them. However, according to reports they both seemed a success. For further information regarding these two, I recommend their respective web sites.


=IMAGE=eves.jpg=Two events in two continents=

In addition to the above, I also recommend going to these shows if one crops up near you. They are good fun and very educational.


# Sightings of new deployments

The deployment of free software is ever on the increase, and February was no exception to this. Some interesting development in this sphere includes [the tender](http://www.mg.co.za/articlePage.aspx?articleid=265047&area=/breaking_news/breaking_news__business/) by the South African tax office for a GNU/Linux desktop. At the same time, in that part of the world, HP’s made an [announcement](http://www.tectonic.co.za/view.php?src=rss&id=861) to launch GNU/Linux notebooks there.

HP has also announced their launch of a new [GNU/Linux test center in the UK](http://news.zdnet.co.uk/software/0,39020381,39252976,00.htm).

Also in the UK, [the City of Bristol is switching to StarOffice](http://www.linuxdevcenter.com/pub/a/linux/2006/02/23/bristol_migration.html?page=1). Although this is not, strictly speaking, free software, it isn’t irrelevant to it because the adoption of truly open standards is always progressive.

A surprising statistic I came across was that [some 40 percent of IBM mainframe customers now use Linux within their infrastructure](http://news.zdnet.co.uk/0,39020330,39252523,00.htm). This is more than I expected (and more than IBM expected too, according to the article). It goes to show just how popular GNU/Linux is becoming.


=ZOOM=Some 40 percent of IBM mainframe customers now use Linux within their infrastructure=

The trend I am witnessing is the exponential increase in free software adoption. It’s not just marching onto the servers, but also creeping onto the desktop.


# A distribution update

Releases of new versions of GNU/Linux distributions are now so frequent I do not know if they actually warrant to be even defined as an “event”. But, assuming they do, I can report that [Gentoo](http://www.gentoo.org/) version 2006.0 is now out of the bag. The Gentoo distribution is peculiar in that it is primarily a source-code one and that you compile the packages once downloaded. This will lead to a highly optimised, though lengthy, installation. It is worth mentioning that Gentoo also offer a pre-compiled distribution for those that prefer it.


# Free compilation of software

When I talk about free software, the thing that usually springs to people’s mind is the Linux kernel, Firefox, or OpenOffice.org. However, one of the key kingpins of free software is the GNU C compiler, or the [GNU Combined Compiler](http://gcc.gnu.org/), as it is now more correctly known. First developed by Richard Stallman himself, this unsung hero is responsible for running the vast majority of free software (including the aforementioned), and yet it is one of the most taken for granted.

The last day of the month saw the release of [version 4.1 of GCC](http://gcc.gnu.org/gcc-4.1/). It contained a number of enhancements of the sort and quality I have come to expect from the GCC development team. Its high quality guarantees its place in the years to come.


=ZOOM=GCC’s high quality guarantees its place in the years to come=


# Conclusion

February is supposedly the month Cupid shoots her arrows, and I there are plenty of signs that the love of free software is on the rise, despite continuing efforts by the likes of Microsoft. I am also witnessing free software’s attraction being based less on its cost, and more on its guarantee of open standards; in it not trapping users into a single vendor’s upgrade path; in the knowledge the technology being used won’t die if a software company goes under; and all in all, in the freedom that it gives the community who use it.

