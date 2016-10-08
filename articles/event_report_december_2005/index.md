---
nid: '1313'
title: 'Free software events for December 2005'
authors: 'Edward Macnaghten'
published: '2006-01-09 11:16:55'
issue: ''
license: gfdl
section: announcements
listed: 'true'

---
2005 was a busy year for free software. The early days of 2006 provide a good opportunity to look ahead at the wonders that the new year will bring, but it’s also good to spend a small amount of time reflecting upon what 2005 delivered. Free software technology has made even more inroads into the corporate server space. Desktop and office applications have steadily improved as well, with implementations of them on the sharp increase. Awareness of free software, the business models, philosophy and its advantages are spreading well too. All in all a lot of positive things happened during the year, and that includes the last month, December.

As always, far more free software activity occurred than I can report, so I have confined myself to the points I consider important. These include the following software releases:


1. [Apache 2.2](http://httpd.apache.org/docs/2.2/new_features_2_2.html)
1. [Fedora Directory Server 1.0](http://www.redhat.com/en_us/USA/home/company/news/prarchive/2005/press_fedora_dir.html)
1. [Ruby on Rails 1.0](http://www.rubyonrails.org/)
1. [Berkeley DB version 4.4](http://www.sleepycat.com/news/releases/051129.html)
1. [Xen 3.0](http://www.cl.cam.ac.uk/Research/SRG/netos/xen/)
1. [QEMU 0.8](http://fabrice.bellard.free.fr/qemu/index.html)
1. [X-Windows System X11R7](http://wiki.x.org/wiki/X11R70Release) (from X.Org)
1. [NetBSD 3.0](http://netbsd.org/Releases/formal-3/NetBSD-3.0.html)

There have also been some interesting developments on the corporate investment front.


=IMAGE=pic1.jpg=Software releases in December have occurred in a variety of products=


# Serving the web pages

If there ever was an epitome of success in the free software world, it would be the story of [Apache](http://www.apache.org). It serves well over [two thirds of web servers](http://news.netcraft.com/archives/2005/12/02/december_2005_web_server_survey.html) worldwide and is maintaining its lead well in the face of aggressive marketing from Microsoft. Its stability, slick design, rich feature set and good performance guarantee that the technology to host web sites is available to all at a very low cost, and has benefited humankind accordingly.

The release of [Apache 2.2](http://httpd.apache.org/docs/2.2/new_features_2_2.html) on the first day of the month is the continuation of this success story. This release includes improvements of a number of functions such as authorisation, caching, load balancing, some simplification of configuring and other enhancements. It is part of a continuing enhancement of Apache, so that it makes the most of  recent improvements in computer technology and uses available resources in the most optimised manner. I’m expecting to see Apache keep its lead in the web-server arena for a long time to come.


=ZOOM=I’m expecting to see Apache keep its lead in the web-server arena for a long time to come=


# Freeing of the directory server software

It always gives me a warm feeling when proprietary software is freed. This happened when Red Hat bought Netscape’s Directory Server. They promptly released it as free software. On the second of this month Red Hat released the next incarnation of the [Fedora Directory Server 1.0](http://www.redhat.com/en_us/USA/home/company/news/prarchive/2005/press_fedora_dir.html). This includes many enterprise level features of LDAP, such as version 3 of the protocol, multi-master replication and Windows synchronisation. Along with the engine, it includes console and administration utilities; all of which can be ported from GNU/Linux to other platforms.

The strategy that Red Hat uses in its Open Directory product is typical. It first releases the latest and new “bleeding edge” software as free software to the community through the Fedora project, giving the community what they want. After it has become more mature, and the stability is guaranteed, they use it to release their enterprise stable and static version of the product—still free software—to corporations, governments and other enterprise customers giving them what they want. It’s a good example of how to make money using free software and the community business model.


# A jewel on the right side of the tracks

[Ruby](http://www.ruby-lang.org/en/) is a scripting language, similar to [Perl](http://www.perl.org/) and [Python](http://www.python.org), which is gaining in popularity. One of the reasons for this is the [Ruby on Rails project](http://www.rubyonrails.org/). Ruby On Rails facilitates the rapid development of complex web pages that are generated in Ruby that can then be tailored to suit specific needs. Its aim is to provide a free way for people with limited technical expertise to easily produce complex, good looking and feature rich web pages.


# An old feline going strong

[Sleepycat](http://www.sleepycat.com) have [released version 4.4](http://www.sleepycat.com/news/releases/051129.html) of their [Berkeley DB](http://en.wikipedia.org/wiki/Berkeley_db) product. This lightweight embedded database crunches numbers behind the scenes in many products (including OpenLDAP), and boasts over two hundred million installations. The product is released under a dual license model; it is free for inclusion in free software, but you need to purchase licenses from them Sleepycat to incorporate it into proprietary products.

Free software, being what it is, provides many solutions for the same problem. A more favoured free software embedded solution appears to be [Sqlite](http://www.sqlite.org). However, Berkeley DB is the more mature product and can boast better commercial exposure and it is good to see that it is still being developed.


<!--pagebreak-->



# Virtual improvements

One of the more impressive free software innovations to recently appear is [Xen](http://www.cl.cam.ac.uk/Research/SRG/netos/xen/). It introduced a concept of para-virtualisation. This is described in some detail in [an article](http://www.freesoftwaremagazine.com/free_issues/issue_05/focus-xen/) in issue five of FSM. The technology is such that the cost of virtualisation, in performance terms, is practically zero. In other words, software runs just as fast in a virtual machine as it does in the real one.

One of the problems that Xen has had is that the guest hardware it produces as the result of virtualisation is not identical to the x86 host machine; therefore, kernels need to be ported to it in order to take advantage of it. This has not been a problem for free systems such as Linux or the BSD family. However, while some Microsoft Windows systems had been ported, the closed nature of Windows and licensing restrictions prevented Windows-under-Xen being shipped. Xen 3.0, on the other hand, takes advantage of VT enhancements to Intel’s chips and AMD’s equivalent, in order to produce virtual systems that can run Windows “natively”, thus eliminating a handicap it had.

The market leader in virtualisation is the proprietary VMware. Xen’s para-virtualisation technology beats VMware easily. Xen’s newfound support of Microsoft’s operating systems (albeit only on the newer chips) might put VMware’s lead in danger. In fact, VMware are currently developing their own para-virtualisation layer. Only time will tell whether Xen will unseat VMware or not.


=IMAGE=pic2.jpg=Making computers think they are more than they are=


# More virtual improvements

On the subject of virtual machines it is worth noting that [QEMU](http://fabrice.bellard.free.fr/qemu/index.html) have released version 0.8 of their product. This, in conceptual terms, is far closer to VMware than Xen in that it (sort of) emulates the x86 hardware and allows any compatible OS (GNU/Linux, MS-Windows etc.) to run on it. Although this is nowhere near the maturity of VMware, it is making good progress and is useful in virtualising individual desktop machines for development purposes and where work is required in more than one type of system.


# Give us an X

The [X.org project](http://x.org) has released a new major release of the X-server, the main GNU/Linux and other POSIX systems’ infrastructure for the graphical user interfaces (GUIs). The X Windows system is a network-aware, feature-rich basis for a GUI that can natively handle distributed client/server systems and multi-user, multi-log-on environments. Although it’s not as popular as the Microsoft counterpart it’s far superior in terms of capacities and versatility.

One of the problems the X.org’s X Windows system has suffered from is that it has been distributed as a single product. It is, in fact, the sum of a number of smaller products. This single “product” was a bit large and unwieldy, and it was becoming cumbersome, especially when downloading several megabytes of data after a two-line security enhancement had been added. Also, due to its size, there could be a long time between a video card driver being developed and its release to the populace.

=TEXTBOX_START=Book Competition!=
This week we are giving away a copy of [Perl Best Practices by Damian Conway](http://www.freesoftwaremagazine.com/reviews/book_review_perl_best_prac).

All you need to do to enter is check out the [latest book competition announcement](http://blog.freesoftwaremagazine.com/users/announcements) on our blogs page.

GOOD LUCK!

_Thanks go to _[O'Reilly](http://www.oreilly.com/)_ for providing this fantastic prize._


=TEXTBOX_END=
The new release [X11R7](http://wiki.x.org/wiki/X11R70Release) has split the main product into its logical modular parts. This means one aspect can be developed independently from the release cycle of another. Minor patches will be faster to distribute, and new technology can be taken advantage of faster.


=IMAGE=pic3.jpg=More gifts to the free world (and Red Hat) from Santa’s sack=


# A new non-Linux kernel

GNU/Linux dominates the news so much nowadays that it’s sometimes easy to forget there are other free POSIX kernels and systems out there; this month saw the release of [NetBSD 3.0](http://netbsd.org/Releases/formal-3/NetBSD-3.0.html). This is the “portable” incarnation of the BSD family (OpenBSD being the “secure” member, and FreeBSD owning the title of “feature rich”). Support for more platforms (including Xen) is included along with improvement of device support. I find it comforting that there is an alternative to GNU/Linux. It’s nice that it can be said that no-one is reliant on a single product at the operating system layer—regardless of how open/free that one product is.


=ZOOM=The existance of the BSD family means that it can be said that no-one is reliant on a single product at the operating system layer—regardless of how open/free that one product is=


# Real investment in free software

Red Hat has now [joined the NASDAQ 100](http://news.com.com/Google,+Red+Hat,+10+others+join+NASDAQ-100/2100-1014_3-5989821.html) along with Google and ten others. This is proof indeed, if any was needed, that free software along with its development model works well for the corporate world and enterprise. The NASDAQ is hardly an organisation based on fuzzy idealistic dogma, but on hard business and financial realities. The fact that a company based almost entirely on free software has become a member of this club should sound alarm bells on IT companies basing their future on proprietary secretive solutions and technologies that exclude and lock out potential users.

IBM is now a well established and supporter of free software. They have recently committed to it further by [elevating Red Hat and Novell to their highest partner status](http://searchopensource.techtarget.com/originalContent/0,289142,sid39_gci1152262,00.html), furthering their commitment to this technology and model. It is a wonder to me that so many still assert the free software model to be unfeasible and unprofitable. Should they even take five minutes to look at IBM and Red Hat’s actions and profit-and-loss sheets, it would be obvious that the free software model is not only feasible but highly profitable.


# Conclusion

2005 was a hectic year for free software, and December was no exception. Its growth in all aspects was exponential. The GNU/Linux desktop is slowly becoming accepted and the outlook is very [optimistic](http://www.theregister.co.uk/2005/12/15/osdl_fsg_desktop_linux/). The new release of X.org can only help its acceptance. This trend is almost certainly going to continue. Free software is entering people’s lives gradually rather than suddenly, rather like the awakening of springtime. I think 2006 will see further awakenings of free software and more exponential growth. All in all, I think and wish it will be a happy new year as far as free software deployment is concerned, and I’d like to wish you all a happy new year too.


=ZOOM=All in all, I think and wish it will be a happy new year as far as free software deployment is concerned, and I’d like to wish you all a happy new year too=

