---
nid: '1129'
title: 'When free meets proprietary'
authors: 'Daniel Escasa'
published: '2005-04-09 11:00:10'
tags: 'free-software,proprietary'
issue: issue_03
license: cc-by-nc-sa
section: opinions
listed: 'true'

---
In a dream world, all software would be free. However, we spend enough time with our eyes open to realize that some situations call for proprietary software, either as a desktop or as a server application, on a free system. On the other hand, those stuck with a proprietary operating system can still enjoy free software applications. This article will list a few situations where free software and proprietary software can mix, and give three examples of each.


# Why free and proprietary can mix

Examine this scenario: your company is moving your servers over to a free system. The trouble is, you have an Oracle database that’s been running for x years and it’s tweaked so perfectly you can’t afford the time and effort to scrub it and migrate to a free relational database management system (RDBMS). Rest easy: Oracle is available on free systems, albeit certified only on certain distributions.

Another scenario: your company policy is free systems on desktops, with a few selected exceptions. You’re one of the poor sods who pass the Free-OS exemption test because of some esoteric application not available on free systems. However, your company can’t afford a license for MS Office, and you do need a Microsoft file-compatible word processor, presentation-authoring tool, or spreadsheet. OpenOffice.org to the rescue.

Situations such as those above are not limited to corporate desktops. Your home PC might have an important proprietary application that doesn’t have any free counterpart. You can’t resort to dual-boot because that just takes too much time. So, you can run an emulator on a free system to run that proprietary application. In an extreme case—e.g., your software won’t run in an emulator—you might be forced into Windows but choose to run mostly free applications.


=ZOOM=You’re one of the poor sods who pass the Free-OS exemption test because of some esoteric application not available on free systems. OpenOffice.org to the rescue=

For this article’s purposes, treatment of proprietary systems will be limited to Windows 9x/ME/NT/2K because they’re the dominant platforms. Other proprietary systems are OS/2, BeOS, and MacOS X, and most free software applications for Windows are available for them as well. I will define free systems as GNU/Linux and the BSDs and I will refer to them as “Freenix” for convenience.


# Free software on proprietary systems

The OpenOffice.org suite and the Firefox Web browser are the most prominent free software applications on proprietary systems. In addition, server applications such as Apache, MySQL, and PostgreSQL are also available for Windows.

[OpenOffice.org](http://www.openoffice.org/) began life as StarOffice, an office suite by a German company named Star Division. StarOffice was available for Windows, OS/2 (up to version 5.2), and Unix. Sun Microsystems bought StarOffice in August 1999 and subsequently opened up the source code to the community. The result was OpenOffice.org, now at version 1.1.4 for all available platforms—which include Windows, OS/2 (for a fee), and Freenix. OpenOffice.org includes a full-featured word processor, presentation-authoring tool, spreadsheet, and drawing tool. It is nearly 100% file-compatible with MS Office.


=IMAGE=OOoWriter.jpg=OpenOffice.org Writer=

As an aside, StarOffice, now at version 7, is still available for Windows, GNU/Linux, and Solaris, for a suggested retail price of US$79.95. However, academic use is free except for shipping and handling.  In addition, Sun also offers site licenses. Lastly, there’s an electronic download available for US$59.95. StarOffice has all the components of OpenOffice.org, and adds a simple database manager. The Sun FAQ claims that SO and OpenOffice.org share the same code.


=ZOOM=The Mozilla suite includes a Web browser, chat client, newsgroup reader, POP/IMAP client, HTML composer, and the Jabberzilla multi-protocol IM client=

Firefox is a child of the [Mozilla]( http://www.mozilla.org/) project which also produced its bigger brother the Mozilla suite. The latter includes a Web browser, chat client, newsgroup reader, POP/IMAP client, HTML composer, and the Jabberzilla multi-protocol instant messaging (IM) client. Firefox is a stand-alone browser, now at version 1.0, available for the same platforms as Mozilla and OpenOffice.org. Like the advertising-sponsored Opera and the Mozilla browser, Firefox employs tabbed browsing. This means that you can browse several pages in different panes within the same window, and switch from one pane to another by clicking on the tabs at the top of the panes.




=IMAGE=Firefox.jpg=Firefox in full-screen mode. Note the tabs at the top of the viewing area=

The most exciting feature for me is the use of the XML User-interface Language (XUL, pronounced zool to rhyme with ‘ cool’) to create extensions, which as the name implies, extend the features of Firefox. The one I find most useful is WebmailCompose, which converts a mailto: link to a link to my selected Webmail account’s compose window. In other words, when I click on a mailto: link, a new tab opens up where I can compose a mail message from gmail. Also, here’s an [interesting sample XUL application]( http://www.faser.net/mab/chrome/content/mab.xul) that should give you some idea of XUL’s capabilities. A real-world application is the Wizz RSS News Reader, which uses the sidebar as the control panel. I personally find XUL interesting because it looks to be one of the building blocks in creating a class of applications known as Rich Internet Applications (RIAs), which use the browser as a universal front end.

The Web server we know as Apache, officially the Apache HTTP server, is the most famous output of the [Apache Software Foundation]( http://www.apache.org/). Apache serves approximately 67% of the world’s websites. It is now at version 2, available both for Windows and free systems. A 2.1 version is, as of this writing, in beta.


<!--pagebreak-->


Free desktop software on Windows can make sense, depending on the situation. However, I personally question the usefulness of running free server software on Windows. They run more efficiently on free systems, which in turn can run on older—and therefore, cheaper—hardware. I would only run a free server on Windows for experimention and education not for production.


# Proprietary software on free systems

Vendors of proprietary software have made their products available on free systems for one reason or another. [Oracle](http://www.oracle.com/), for instance, saw GNU/Linux as an opportunity to expand their market. Some applications—[Opera](http://www.opera.com/) and [VMWare](http://www.vmware.com/), to name two—were available on free systems from the start, and it was natural for the latter.

Oracle created a stir in the industry when they announced the availability, sometime in 1998, of their database products on GNU/Linux. According to the Oracle-on-Linux FAQ, the following are the certified and supported distributions:


* Red Hat Enterprise Linux AS and ES
* SUSE LINUX Enterprise Server
* Asianux 1.0, which includes Red Flag DC 4.1 Asianux Inside and Miracle Linux 3.0 Asianux Inside
* UnitedLinux 1.0

This is not to say that Oracle won’t run on other GNU/Linux distributions, or on the BSDs, just that Oracle can’t certify and support all of those systems.

The FAQ adds that “All key Oracle products including Oracle Database 10g with Real Application Clusters, Oracle Application Server 10g, Oracle Collaboration Suite, Oracle Developer Suite 10g, and Oracle E-Business Suite are available for Linux.” Those of you who run Oracle know the details of those products better than I do. Oracle distributes these in no-fee 650MByte .gz (gzip’ed) files. Those of you without the bandwidth can order a CD from Oracle for a minimal handling fee. Pricing takes effect only when you deploy a database, and starts at about US$49 per user, and moves into per-CPU rates depending on the application.

Oracle has the reputation for being the choice for enterprise-class databases. However, free RDBMSes are encroaching on this space. The two most popular ones are MySQL and PostgreSQL, both of which were mentioned earlier. As an aside, MySQL also has a paid-support license option which—need I remind you?—does not detract from its being free software.

VMWare is a software implementation of a virtual machine—i.e., it enables applications from other operating systems to run on the target machine. Thus, in MS Windows, VMWare will open up GNU/Linux as a task on your Windows desktop; on the other hand, VMWare will open up Windows as a task on your Freenix X desktop. And, once you have Windows-on-X, you can run most Windows applications. However, graphic-intensive games, such as Duke Nukem or Far Cry, will run far too slowly—if at all—to be playable. Feedback from users indicates that Microsoft Office will run under VMWare, albeit at a slight speed penalty.


=ZOOM=Once you have Windows-on-X, you can run most Windows applications. However, graphic-intensive games will run far too slowly—if at all—to be playable=

VMWare is available as a no-fee download in .tar.gz (tar’ed, then gzip’ed) format. You are free to try it out for 30 days, after which the program dies unless you purchase a license: the workstation edition is US$189 for electronic delivery, US$199 for packaged. Network licenses are also available, starting at US$1,694 for two CPUs.


=IMAGE=VMWare.jpg=VMWare’s web site=

If the licensing fees are too steep for you, there are several free software options—[wine](http://www.winehq.com/) (Wine is Not an Emulator) and [bochs](http://bochs.sourceforge.net/). The setup for these may not be as smooth as VMWare’s though. I, for one, never got my wine working on my FreeBSD box, although I admit that maybe I didn’t try hard enough, since it wasn’t a priority. On the other hand, it is free software.

Opera is a no-fee download, and you can continue using it for as long as you want, although you’ll have to put up with ads that take up the top portion of the task window. US$39 gets rid of those ads. Opera claims to be the “safest and fastest full-featured Web browser on the market.” People who have tried both Firefox and Opera confirm that Opera is faster. However, the consensus was that Firefox adhered more closely to W3C standards than Opera. Besides, Firefox is free software, whereas Opera’s source isn’t even available to begin with.

Other proprietary software available on Freenix are Sun’s StarOffice, Sun’s Java, and IBM’s Websphere. Take note that, while Sun does make the source to Java available, you aren’t free to modify it. As to IBM’s Websphere, it’s a no-fee download like Oracle, and then you pay for deployment.


=IMAGE=OperaWeb.jpg=Opera’s web site=


# Conclusion

So, if you’re stuck in a proprietary system, don’t despair: you’re still invited to the free software party because there are ports of free software. Conversely, if you’re already enjoying free software bliss at the operating system level, don’t knock proprietary software.





