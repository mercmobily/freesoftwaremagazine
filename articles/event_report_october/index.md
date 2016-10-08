---
nid: '1317'
title: 'A free software news summary: October'
authors: 'Edward Macnaghten'
published: '2005-11-07 11:17:02'
issue: ''
license: gfdl
section: announcements
listed: 'true'

---
It has been quite a hectic month as far as major free software releases are concerned. Three major announcements that have occurred are:


1. Production release of [OpenOffice.org 2.0](http://www.openoffice.org)
1. Production release of [MySQL 5.0](http://www.mysql.com)
1. Beta release of [Wine 0.9](http://www.winehq.org)

Typical advocacy and discussions have also continued as normal.


# A major production—OpenOffice.org 2.0

The biggest thing, in my opinion, to have happened in the free software world recently is the production release of [OpenOffice.org 2.0](http://www.openoffice.org). This, I think, is a great improvement on the user experience from version 1.1. A large number of people, including me, have already been using the beta releases of this in the form of the 1.9 versions. However, the fact it has gone production means that company, corporate and government organizations that were holding back on deployment waiting for the beta phase to end can now go ahead. I think we can expect OpenOffice.org’s market share to rise significantly now.


=IMAGE=fsnloo.jpg=OpenOffice.org 2.0 Writer—set to replace MS-Word as the leader?=

The importance of OpenOffice.org cannot be understated as far as free software advocacy is concerned. It is by no means the only free office suite in existence, nor is it necessarily the best, and certainly it is not without its problems. However, its market penetration and general acceptance, and the fact it functions well on all the more popular platforms means that it is in a prime position to steal the office crown from Microsoft. If not that, then certainly to take a significant market share. Their commitment to open formats in the form of OpenDocument rather than encumbered proprietary (although published) formats has earned them some significant brownie points in organizational deployment.


=ZOOM=The market penetration and acceptance of OpenOffice.org mean it is in a prime position to steal the office crown from Microsoft=

The report on OpenOffice.org would not be complete without the story on acceptance of the Open Document Format (ODF) by the Commonwealth of Massachusetts. In September the information and Technology Division there [decided to standardize on ODF for all archived government documents](http://www.mass.gov/portal/site/massgovportal/menuitem.769ad13bebd831c14db4a11030468a0c/?pageID=itdsubtopic&L=4&L0=Home&L1=Policies%2c+Standards+%26+Legal&L2=Enterprise+Architecture&L3=Enterprise+Technical+Reference+Model+-+Version+3.5&sid=Aitd). This is the format Sun’s OpenOffice.org 2.0 uses by default, and it is one of the few office suites that supports it. A number of others though are in the process of implementing it, such as [Corel, Novell](http://blogs.zdnet.com/BTL/?p=2064) and [IBM](http://www.pcworld.com/news/article/0,aid,123384,00.asp). Microsoft Office, however, does not support ODF. Nor do Microsoft show any intention of doing so. This has resulted in some people in Massachusetts [attempting to reverse the decision](http://blogs.zdnet.com/BTL/?p=2110&tag=nl.e539). The argument appears to be that preventing people from using Microsoft Office would be costly, and that some accessibility features are missing from OpenOffice.org. I don’t know if either of those two statements are correct, however the directive did not dictate what office suite could or couldn’t be used, just that the format used to store documents should have an unencumbered license that citizens are guaranteed to be able to use in the future. It would probably be trivial for Microsoft to support the format, it is suspected that they are not doing so because a level playing field is not in their interest. It is also suspected that they are quietly heavily sponsoring the effort to get the decision reversed. It also appears that [politics may have got involved](http://consortiuminfo.org/newsblog/blog.php?ID=1699).


<!--pagebreak-->


On a more positive note, Google have decided to get further into the office suite business and [throw developers at improving it](http://news.com.com/Google+throws+bodies+at+OpenOffice/2100-7344_3-5920762.html). This is the epitome of the mechanics of free software in my opinion. An organization donating a relatively small amount of work into the community to potentially receive an enormous return. Everyone is out to benefit here.


# MySQL advances by releasing 5.0 for production

In database land there’s competition between [MySQL](http://www.mysql.com) and [PostgreSQL](http://www.postgresql.org). This has been exceedingly healthy as it encourages both projects to come out with faster and better solutions. A recent development in this is the production release of MySQL 5.0.  Traditionally PostgreSQL has had the lead in terms of procedures, triggers, views and ANSI compliant functionality; it also scales better than MySQL. However, MySQL has had the edge as far as speed and performance goes for small to medium sized installations. This release of 5.0 means that MySQL has now more or less caught up with PostgreSQL in the realm of procedures, triggers and views. They still appear to have the lead as far as performance of small implementations, but only time will tell if they have the scalability. To add to this, PostgreSQL is catching up on MySQL as far as its leads in speed and performance, and PostgreSQL’s 8.1 Release Candidate 1 has just been released. Watch this space!

All in all this rivalry is helping the free software portfolio to have database software that stands up with the best.


=IMAGE=fsnlmysql.jpg=MySQL advance their position in the database world=


# Celebrate cross platform functionality with Wine 0.9 Beta

A landmark has occurred in the development of cross platform interoperability between operating systems. The free software utility, [Wine](http://www.winehq.org), which enables some Microsoft Windows software to run on POSIX systems and GNU/Linux in particular, has finally gone out of its alpha stage and is now officially beta. The project has spent a long time in alpha, well in excess of ten years, and it is in common use already. Also, [CodeWeavers](http://www.codeweavers.com/) use it as a basis to their commercial “Cross-Over Office” product. Not bad for a product that was still supposed to be in alpha. The fact it has gone into beta now can only be beneficial as it will encourage further deployment and participation.


=ZOOM=The fact Wine has gone into beta now can only be beneficial as it will encourage further deployment and participation=

Wine is very important to the deployment of the desktop on GNU/Linux and other POSIX variances. In order for a user or company to implement GNU/Linux on the desktop they’d need to migrate the functionality of programs they currently use. A large amount of this can be done in replacement applications, such as [OpenOffice.org](http://www.openoffice.org) for Microsoft Office, [Firefox](http://www.mozilla.org/products/firefox/) and [Thunderbird](http://www.mozilla.org/products/thunderbird) for Internet Explorer and Outlook Express, [Evolution](http://www.gnome.org/projects/evolution/) for Outlook and so on. However, there will always be some legacy applications where a free software version is either unsuitable or unavailable making the entire migration unfeasible. The better Wine becomes the more likely it is that legacy software can run on GNU/Linux, and once the free software desktop is implemented it is only a matter of time before these legacy applications are replaced.


=IMAGE=fsnlwine.jpg=Adobe Photoshop under GNU/Linux using Wine=


# New Zealand considers spending tax money on Novell SuSE

Speaking of the advocacy front and GNU/Linux on the desktop: something interesting caught my eye in [the press](http://www.smh.com.au/articles/2005/10/24/1130006030355.html). New Zealand’s Inland Revenue is testing GNU/Linux [Novell SuSE](http://www.novell.com/linux/suse/) with a thought for deployment on its 7000 desktop machines. Although this is far from signed and sealed, and it may simply just be a ploy to reduce license fees it needs to pay for an upgrade, the news is encouraging nonetheless. I have a theory that popular GNU/Linux on the desktop will be initialized by government and business organizations rather than home users, and then once established in the office it will find its way into the living room. At this point software writers will be creating programs for GNU/Linux by default rather than porting them as an afterthought.

Whatever the motive or outcome the fact that the New Zealand Inland Revenue is performing this exercise is significant. It will draw attention to GNU/Linux in government and business. Even if this doesn’t actually lead to a large deployment it’s still another step towards creating one.


=ZOOM=Even if this government evaluation doesn’t actually lead to a large deployment of a GNU/Linux desktop it’s still another step towards creating one=

A piece of news that may assist this is [Red Hat’s clinching of a 10,000 desktop implementation in India](http://www.smh.com.au/news/breaking/red-hat-clinches-big-indian-bank-deal/2005/10/25/1130006095059.html). Although this deployment will probably contain specific solutions rather than a more generic office solution, it is not to be scoffed at. The more deployment of this nature of the free software desktop, the easier it will be for it to become accepted elsewhere.


# Other news

In, as they say, other news, the world of free software is progressing. Some lesser events that have occured recently are:


* [Google supporting free software efforts in Portland and Oregan State Universities](http://googleblog.blogspot.com/2005/10/supporting-open-source.html)
* [IBM, Cisco form open-source storage group](http://news.com.com/IBM,+Cisco+form+open-source+storage+group/2100-1015_3-5912912.html)
* [Nokia restate their intentions to support free software development](http://opensource.nokia.com/)
* [New Linux Kernel 2.6.14 is released](http://www.osnews.com/story.php?news_id=12432)


# Patently Stupid Events

Patent legislation effects all software development, including, and some would say especially, free software development. There are two events this last week that I feel are worth mentioning, and neither of them good. The first is that the USPTO feels that it can remove the “Technological Arts” criteria for “Business Method Patents” as reported by [Patently-O](http://patentlaw.typepad.com/patent/2005/10/patent_board_el.html). This seems to mean that you can patent something without really inventing anything, then go after almost anybody with a demand of license payments with the flimsiest of excuses. This has repercussions in the software world, free and otherwise. In the US, software patents and patent lawsuits have long ago crossed the border of being ludicrous, this only makes things worse.

The other event is the announcement by Scientigo claiming that they have a patent for XML as told by [ZDNet](http://news.zdnet.com/2100-3513_22-5905949.html?tag=nl.e589). All in all, what with where technology is going, this is more or less synonymous with patenting the internet itself. No doubt this will be fought by all the major players. However, will be a major nuisance.

As a European I can’t help noticing that these are US patents. They can’t be helping US technological firms at all and could well be handicapping them. I’m thinking that if the Europeans can succeed in keeping these idiotic legal shenanigans out of the continent then technological companies here can operate without the handicap that the US ones suffer. It’s possible that this could contribute to the Europeans gaining the edge over the US in this field. Unrealistic? Maybe... maybe not.

