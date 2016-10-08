---
nid: '1639'
title: 'Free software events review June 2006'
authors: 'Edward Macnaghten'
published: '2006-07-19 15:24:55'
issue: ''
license: gfdl
section: announcements
listed: 'true'

---
Summer has come. The crops in the fields are beginning to fill, the barbecues on the park are smoking away and, this being the UK, either the clouds in the sky are starting to thunder or the utility companies are announcing water shortages or both. Despite all this though, the free software flowers in the virtual garden are blooming like never before. Once again, I have limited my writings on the free software oriented events that have attracted my personal attention and fired my personal interests. During the past month, these consist of...


* The release of [Wyse GNU/Linux Version 6.3](http://home.nestor.minsk.by/computers/news/2006/06/1005.html).
* [Some](http://news.com.com/German+tax+office+moves+to+Linux/2110-7344_3-6082181.html) [GNU/Linux](http://www.linuxinsider.com/story/K4u9pXdByhJICs/IBM-Invests-22-Million-in-Brazilian-Linux-Technology-Center.xhtml) [migrations](http://www.itjungle.com/tlb/tlb061306-story08.html) and [investments](http://www.itwire.com.au/content/view/4910/53/).
* [OpenDocument](http://www.computerweekly.com/Articles/2006/06/27/216634/Belgium+government+drives+adoption+of+open+source+Open+Document.htm) [news](http://news.zdnet.com/2100-3513_22-6093583.html) and [developments](http://news.com.com/Microsoft+bends+on+OpenDocument/2100-7344_3-6090912.html).
* [A whole](http://www.gtk.org/gtk-2.10-announcement.html) [lot](http://lists.ibiblio.org/pipermail/freetds/2006q3/020254.html) of [new](http://www.eclipse.org/projects/callisto.php) [software](http://lkml.org/lkml/2006/6/17/125) [releases](http://winehq.org/?announce=1.120).


# A wyse old dog with new tricks

I remember the olden days, several decades ago, working with UNIX machines that were not networked but could host a large number of concurrent users through terminals, or TTYs as they were known. This acronym was short for “Teletype”, though they were in fact non-GUI workstations, and even on small x386 machines the UNIX of the day could handle up to twenty users working on it simultaneously. The work stations themselves often consisted of terminals, (or “glass TTYs") made by WYSE. Nowadays, with the influx of Microsoft GUIs into the workspace long since established decades ago, these terminals have been consigned to the scrap heap, or to that cupboard at the warehouse.

Now, as GNU/Linux and other POSIX desktops slowly raise their heads over the wall, the concept is returning. The X-Windows system, the infrastructure of the GNU/Linux desktop, lends itself well to “thin client” architecture, and WYSE has seen potential for a market there. To this end they have released [Wyse GNU/Linux Version 6.3](http://home.nestor.minsk.by/computers/news/2006/06/1005.html). This enables Wyse’s thin clients, like the [Wyse S50](http://www.wyse.com/products/winterm/S50/index.asp), to produce a highly adaptable thin client. It comes with a 2.6.x kernel, X11R6, a window manager, Firefox web browser and loads of other goodies. It can connect to a GNU/Linux or other UNIX type application server as a GUI client using the X protocol enabling more than one user to use the same machine at the same time. It also comes with an RDP client and the non free-as-in-speech Citrix ICA client to connect to Microsoft machines using their “Terminal Services” or Citrix’s “WinFrame” or “MetaFrame” infrastructures.

At a push, it can also act as the old traditional “glass TTY” if required too.

Wyse do other operating systems for their thin clients as well of course, but none are as adaptive as their Linux ones. This is the epitome of free software in a commercial environment. For what was probably minimal R&D investment, Wyse have a remarkable product that is not only relevant in a GNU/Linux and POSIX world but also in a Microsoft Windows one too.


=ZOOM=For what was probably minimal R&D investment, Wyse have a remarkable product that is not only relevant in a GNU/Linux and POSIX world but also in a Microsoft Windows one too=

=TEXTBOX_START=Book Competition!=
This week we are giving away a copy of[Python How to Program](http://www.freesoftwaremagazine.com/articles/book_review_python_how_to_program) and a copy of [Nagios: System and Network Monitoring](http://www.freesoftwaremagazine.com/articles/book_review_nagios_system_network_monitoring).

All you need to do to enter is check out the [latest book competition announcement](http://www.freesoftwaremagazine.com/blog/1) on our blogs page.

GOOD LUCK!

_Thanks go to _[No Starch](http://www.nostarch.com/)_ and _ [Prentice Hall](http://www.phptr.com/) _for providing these fantastic prizes._


=TEXTBOX_END=

# Changing to the free way

June and July saw a plethora of migrations towards free software. The [Lower Saxony Tax Authority in Germany](http://news.com.com/German+tax+office+moves+to+Linux/2110-7344_3-6082181.html) is migrating some 12,000 desktops to KDE on SUSE Linux. [IBM Invests $2.2 Million in Brazilian Linux Technology Center](http://www.linuxinsider.com/story/K4u9pXdByhJICs/IBM-Invests-22-Million-in-Brazilian-Linux-Technology-Center.xhtml). Also, [Unisys Tools Migrate WebLogic/Unix Stack to Jboss/Linux](http://www.itjungle.com/tlb/tlb061306-story08.html) as well as [IBM’s Lotus notes released on GNU/LINUX](http://www.itwire.com.au/content/view/4910/53/). There where also many more stories of this nature. This type of migration seems to be accelerating exponentially as time goes on, an indication if nothing else that not just geeks are noticing the advantages of free software.

There is now an interesting correction in the article regarding the Unisys WebLogic porting mentioned above. I quote...


>This story has been corrected since it originally ran. We had said that the migration for the larger migration would cost in the low millions of dollars, when in fact it costs in the low hundreds of thousands of dollars. IT Jungle regrets the error.. 

That, I think, cannot do the anti-free-software advocates much good regarding their “Get-The-So-Called-Facts” campaign.


=IMAGE=fig1.jpg=Going open—though some under duress=


# Documents opening and blooming

If I should create a document with a word processor of my choice, would it not be nice for you to be able to open and manipulate that document in a word processor of your choice. That simple premise is the basis of the [Open Document Format](http://www.odfalliance.org/), and happily the concept is gaining more and more support. Last month saw the announcement that [The Belgium Government would adopt ODF as a standard](http://www.computerweekly.com/Articles/2006/06/27/216634/Belgium+government+drives+adoption+of+open+source+Open+Document.htm), also one saying that [Google was to join the ODF Alliance](http://news.zdnet.com/2100-3513_22-6093583.html), but there was a big surprise as well.

Microsoft’s opposition to ODF adoption is well known, and understandable from a monopolistic point of view. They currently have a stranglehold on the office suite market and if they can control the office file formats they can maintain it. However, what seems to be due to constant pressure of government agencies and other organizations that will benefit from an open file standard, they have finally decided to [provide ODF import/export functionality to MS-Office](http://news.com.com/Microsoft+bends+on+OpenDocument/2100-7344_3-6090912.html). This is, initially at least, as a third party add-on, and in my opinion it’s an attempt to disuade the above mentioned organizations from switching to [OpenOffice.org](http://www.openoffice.org) or its commercial sibling StarOffice in the name of open document standards. I have no doubt that MS will attempt to persuade the same organizations to store documents in their own format in the future instead. Only time will tell how this will pan out.


=ZOOM=Due to constant pressure of government agencies and others, Microsoft have finally decided to provide ODF import/export functionality to MS-Office=


# New widgets for the gnomes

The GIMP Toolkit developers have announced availability of [GTK Version 2.10](http://www.gtk.org/gtk-2.10-announcement.html). This is the widgets that make up, amongst other things, the eye candy of the [GNOME desktop](http://www.gnome.org), and the [XFCE](http://www.xfce.org/) desktop for that matter. The new release represents a further maturing of an already highly functional toolkit, and will result in a better experience for applications and desktops that use it.

However, it would be a mistake for those developers to rest on their laurels. Trolltech, the makers of the toolkit of the [KDE](http://www.kde.org) desktop, have announced a [Prerelease of QT Version 4.2](http://www.trolltech.com/company/newsroom/announcements/press.2006-06-26.0683224314/), promising new wonders of eye catching functionality from that quarter. Long may freedom, competition and variety continue.


# Free access to proprietary SQL engines

A little known project, [FreeTDS](http://www.freetds.org), announced the release of [Version 0.64](http://lists.ibiblio.org/pipermail/freetds/2006q3/020254.html) of their product. FreeTDS provides an API and implements the protocol that Sybase and Microsoft’s SQL servers use. This enables free clients to access these SQL engines. This project, and similar ones too, help prevent closed proprietary SQL vendors forcing client developers down a specific platform stratergy. For example, FreeTDS itself gives free clients written for a GNU/Linux environment the capacity to natively access Microsoft SQL Servers.


=IMAGE=fig2.jpg=Newer variety of old blooms=


# A nymph, a penguin and a drink

June saw the release of [Callisto](http://www.eclipse.org/projects/callisto.php), which was a simultaneous release of 10 projects for the Eclipse IDE project. This is a major boost to an already popular product as well as helping to debunk the myth that free software organizations cannot work together towards a common goal.

I am coming to the conclusion that I can rely on a free kernel every month, and last month it is the turn of [Linux 2.6.17](http://lkml.org/lkml/2006/6/17/125). It claims the usual collection of enhancements, advancements and fixes. Although not really major news, I find that its entrance is a nice reassurance in a relatively chaotic world.

It is sometimes necessary to run applications for Microsoft Windows in a GNU/Linux environment, and [WINE](http://www.winehq.org) tries to address that issue without the need of keeping a machine running Microsoft Windows operating system somewhere. To further this end they have announced [WINE version 0.9.16](http://winehq.org/?announce=1.120). Although this project still has some way to go the list of supported applications is becoming more and more impressive.


# Conclusion

While I am writing this the [Google Summer of Code](http://code.google.com/soc/) is under way together with the increasing efforts of other developers promising a harvest of free software functionality later this year. Even now, limiting myself to what I feel are the more important or interesting free software announcements I have once again overshot my word allocation for this newsletter, therefore it only makes sense to alter this from a monthly to a fortnightly entry.

All in all, the free software flowerbed is looking and smelling colorful and good.

