---
nid: '1399'
title: 'Simplifying to Linux'
authors: 'Martin Brown'
published: '2005-10-23 19:57:18'
license: verbatim_only
section: opinions
listed: 'true'

---
As a specialist in multiple environments, I have spent many years putting together an environment that enables me to do all of the work I need to do.

This makes my network—for a relatively small two person operation—more complicated and substantial than some networks that support 10, possibly even 100 times that many users.

Why so complex?

Well, I’m a Subject Matter Expert for Microsoft, so I have a Windows Server 2003 box which supports a number of clients (primarily the laptop on my desk, and two other “test” machines), not to mention numerous virtual machines. Since I run a Windows Server domain, the Windows server also runs the DHCP and DNS services, and using Routing and Remote Access provides shared internet access. The DNS service is seconded by a number of other servers.

As a Mac OS X expert, I have a Mac OS X server which actually runs as my primary file server. This interfaces with the Windows domain and provides backup services for the entire network (using Retrospect), as well as acting as a backup server for DNS and MySQL.

I’m also a Linux specialist. Two of my servers run Linux, both Gentoo. One, an old SPARCstation 10 dual CPU unit just handles SPAM and virus scanning for email. The other machine is a dual PIII unit which runs MySQL, some of my websites (under development for clients) and a testbed MythTV environment.

Finally, I’m also a Solaris expert, so I have an Ultra 60 dual-CPU unit running OpenSolaris—it runs most of my websites that are live (internal only) or staging (in testing before release).

As you can see, it’s complicated. I use RDC, VNC and ssh to manage the machines remotely from my desktop (itself four different platforms) and on the whole I use NFS to share a number of directories from the main file server which I use to swap files between all servers and hosts. All this complexity isn’t really a problem—afterall I know all the platforms and environments—but keeping them all running, up to date and backed up can be a mammoth task, even though most of the machines are configured to be almost self-running.

Part of the reason for the complexity is that these environments needed different platforms. Up until a few years, if you wanted to run Solaris, you’d need a SPARC machine. Similarly, up until the beginning of this year, if you wanted to run OS X, you’d need a PowerPC machine.

Today, Solaris runs on x86, and shortly Mac OS X will to. Also, as Mac OS X Server has matured I find I’m now using the same server platform for web sites and email (Apache, and Cyrus, respectively) as I was using when I ran them on a Solaris x86 server. You see, Mac OS X Server is OpenBSD with the additional interface layer that makes OS X so unique.

The use of x86 as a common platform across all these different operating systems means that I no longer need different machines to run different operating systems. In fact, as an Apple Developer I was given the opportunity to purchase an Apple Transition Kit—one of the Intel-based Macs running OS X that enables us to migrate our applications to the Intel platform. Because it’s a straightforward Intel machine, it also runs Windows. And Linux. And Solaris.

I no longer need a wide range of separate machines to run the operating systems I need to support, I just need enough Intel machines available to enable me to run the operating system I need to do the testing, development or investigation I require.

If I eliminate the need for different hardware platforms—could I do the same for operating systems?

If I need to run a specifc OS the chances are that I can use a desktop machine. Since the majority now support x86 I can probably use a technology like VMware or VirtualPC. The exception will be Mac OS X, but I can easily have a desktop machine dedicated to that (since I do most of my writing on an OS X machine) and use one of my other x86-based desktops to run the other operating systems.

With all of these issues in mind, perhaps I could simplify my hardware and instead of using multiple, slightly older, machines to run only one or two services, I could use a smaller number of machines running multiple services. Consolidation.

If I go the consolidation route, which operating system do I choose?

The answer is simple. Linux. Gentoo Linux to be precise. Why?

Well, the two Gentoo Linux servers I already have, and a desktop unit I use for testing, have shown me how easy it is get to things working. Gentoo is an amazing distribution that makes it very easy to set up and install different servers and applications. Once I’d got the base operating system installed, setting up a machine that provided Postfix, Spamassassin, ClamAV and other components required for scanning was disturbingly easy. Aside from the Windows Domain server, all of my other servers are basically running and providing Unix services. My websites are Apache, my database is MySQL, my email is Cyrus IMAP/Postfix. I’ve had similar success with MythTV/MythWeb and Apache/MySQL/PHP/Perl.

So that’s what I’m going to do—I’m shuffling off my reliance on a variety of different hardware and dedicated server operating systems and moving to just two x86 based servers running Gentoo Linux. Administration will be easy, having two systems means that should anything fail, I can always move systems over to the other server—I could even run them in complete tandem if I wanted. And as they’ll be running on Gentoo Linux, keeping them up to date is a simple case of running emerge when I need to.

Meanwhile, my desktops can remain blissfully unaware of any changes. In fact, aside from the fact that I’ll be connecting to fewer machines, I doubt my desktops will even recognize the changes.

I’ve got some planning and preparation to do, and I don’t expect to actually make the migration until the Christmas hiatus when the risk of problems affecting email or active projects is going to be relatively small. Until then, I’ll try and keep you posted with the issues and problems that I foresee with my simplifying solution.

