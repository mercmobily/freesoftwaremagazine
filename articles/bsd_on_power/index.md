---
nid: '1125'
title: 'Running BSD on PowerPC/PPC'
authors: 'Martin Brown'
published: '2005-04-15 11:00:02'
tags: 'netbsd,freebsd,bsd,powerpc,ppc,openbsd'
issue: issue_03
license: cc-by
section: hacking
listed: 'true'

---
When you think of the PowerPC processor, chances are you’ll think of just two platforms and, by association, two operating systems. Apple’s Mac OS X, which runs on Apple’s own hardware, and the AIX Unix operating system from IBM, which runs on their own PowerPC platform systems. In reality, there is a wide choice of potential operating systems that work on a wide range of PowerPC platforms. If you want a Unix-like alternative to AIX, particularly a free software one, then Linux seems the obvious choice, but there are others. BSD provides a Unix operating system, but with a heritage that goes back a lot further than Linux. If you chose to go down the BSD route, what solutions are available for the PowerPC platform? And, are they as good as Linux and proprietary alternatives?


# The BSD operating system

All Unix flavors are typically based on the original version of Unix developed by AT&T. The BSD variant of Unix available now is a free software version of the AT&T Unix developed at the University of California, Berkeley. Proprietary and free software flavors of Unix available today, can all trace their heritage back to one of these two basic versions of the Unix operating system. Over the years different companies have based their Unix offering on either the AT&T (commonly referred to as AT&T System V Release 4 (SVR4)) or the BSD version.

There have also been a few changes over the years. For example, versions of Sun’s SunOS operating system, up until SunOS 4.1.x, were based on the BSD code base, but then switched to an SVR4 base with SunOS 5.x, better known as Solaris. These changes are akin to a car manufacturer choosing a different engine manufacturer for the car—there are changes to certain parts of the internal workings, but the basics of internal combustion stay the same, and the outer shell to remains relatively unchanged.

Today, the most popular implementations of BSD are the free software ones, much the same as Linux. But BSD has that much older heritage and over the years certain aspects of the inner workings of BSD have been improved and expanded upon, particularly with respect to networking and security, generally making BSD more stable and giving it a higher performance for certain operations. BSD has for many years had one of the best network stacks available often exceeding the nearest competitor on network throughput, utilization and connection initiations. Hackers and crackers are frequently challenged to break into BSD based systems and have no success.

This heritage in networking has meant that BSD is regularly used in routers and network servers and as a platform for web services. Unfortunately, it has failed to capture the same hype and following as Linux. Though, it does have its dedicated followers, including myself, for use as a general purpose Unix platform.


=IMAGE=bsdfig1.jpg=The FreeBSD website=


# BSD variants

There are quite a few variants of the BSD operating system, all of which share a common foundation within the original Berkeley Systems Distribution edition of the operating system. The differences that exist are in the focus of the development, including performance, target platforms, flexibility and security.

There are four mainstream versions of BSD that most people are familiar with:


* [FreeBSD](http://www.freebsd.org)—Focused on performance, FreeBSD is the most popular of the BSD solutions after being released by Walnut Creek CD-ROM, an early pioneer of freeware and shareware distributions before the internet became mainstream. FreeBSD has the largest user base, probably because of the size of the development team and the number of applications that have also been ported to the operating system. FreeBSD is not, at the time of writing, fully available on the PowerPC platform, although there is an active porting project in progress.
* [NetBSD](http://www.netbsd.org)—Focused on portability, NetBSD is best known for it’s wide-ranging hardware support. You can run NetBSD on everything from an embedded solution to proprietary hardware from IBM, Sun and others. If you need to support a Unix platform on different PowerPC based platforms including VME, evaluation boards, IBM pSeries and RS/6000 hardware, PowerPC based Macs and even old BeBoxes, then NetBSD is the solution for you. Beyond the hardware environment, NetBSD also has the same strong networking foundation of other BSD variants along with similar security and stability.
* [OpenBSD](http://www.openbsd.org)—Focused on security, OpenBSD is technically a fork of the NetBSD code. Contrary to the name, OpenBSD is, upon initial installation, closed. All of the main network services are disabled until you enable them and much of the operating system is in a “switched off” state until the administrator says otherwise. This means that OpenBSD is, out of the box, incredibly secure; to use a network service, for example SSH, you’ll need to specifically set up SSH, open the ports and configure the keys and background daemon, before using it to administer your system. Although this seems long-winded, it really does mean that as an administrator, you must explicitly allow potential security problems, rather than the implicit approach used on other operating systems. OpenBSD also includes extensive encryption and security options making it incredibly popular with network administrators for use in routers and web servers. OpenBSD is available for Apple’s Mac-based PowerPC hardware, but not any other PowerPC platforms.


=IMAGE=bsdfig2.jpg=The OpenBSD website=


* [Darwin](http://developer.apple.com/darwin/)—Darwin is produced by Apple and is available for free, although it’s not heavily publicized. Darwin is based on FreeBSD (changes in Darwin are actually added back into the FreeBSD code base), but with additions and added functionality for use _on_, and more importantly _with_, Apple systems. For example, Darwin incorporates functionality for integration with the Apple LDAP-based authentication system, and the necessary base libraries and components to enable you to use Darwin for QuickTime streaming. The server software is available on the Darwin homepage. The Darwin OS also forms the basis of Apple’s proprietary Mac OS X operating system, when combined with the Cocoa user interface and other components, such as QuickTime. The benefit, from a user (and administrators) point of view, is that you get a rich GUI environment for applications like Microsoft Word and Adobe Photoshop, but with the underpinnings of a Mach kernel and BSD operating system that provide stability and security and make it easy to support applications like Apache and MySQL.

Aside from Darwin, the other three are licensed using Berkeley’s free BSD License that allows complete access to, and use of, the code for any purpose. Darwin is licensed under the Apple Public Source License, which is a little more restrictive to help protect the work carried out by Apple on what is the underpinning of a proprietary product.


<!--pagebreak-->



# Comparing BSD to Linux

The key difference of BSD compared to Linux is the way the operating system is provided. Linux is technically nothing more than an operating system kernel. Without the other free utilities provided with it in a distribution (RedHat, SuSE etc), Linux would not be a usable operating system. This is the reason for the “distribution” in the first place; a distribution includes the Linux kernel and the other utilities packaged up into a unique bundle, often with an installer to make the process of getting the operating system working on your machine much easier.

Linux distributions are not a bad way of providing and supporting an operating system. They do mean, however, that you are relying on more than one source for much of the functionality of the core operating system and this can cause problems from simple compatibility right up to security holes and others. The sheer inter-related nature of Linux has also led to a number of different “package manager” solutions designed to simplify, or at least get you out of, some of the complexities associated with such a wide range of different software.

On the other hand, BSD is a complete operating system with both the kernel and a whole range of utilities and components that make up the operating system. This makes BSD a more coherent operating system. BSD releases are made when all of the utilities and other components have been updated and patched. This fact also helps to explain why many of the BSD operating systems are more stable and secure than Linux. The coherence also means that BSD offerings are easier to use, manage and migrate between. Finally, because a BSD release is managed and controlled by a single group, rather than made up of numerous components from many contributors there’s a lot of consistency between the operating system and it’s documentation.


=IMAGE=bsdfig3.jpg=The NetBSD website=

The BSD groups, although fanatical, also approach the problem of other operating systems by working with, rather than competing against them. With such a long history, BSD is generally more stable (many BSD administrations will quote uptimes in months, or even years, rather than days or weeks), and with better performance than Linux.

In terms of compatibility, most BSD distributions come with the facility to run Linux applications, which means that in many cases you can simply install and execute a Linux binary (providing it’s for your target platform) without any further modification or configuration. Applications that are available in source form should configure and build fine. However, where Linux does have an advantage is that because it is the current favourite, many companies are providing native versions of proprietary applications for Linux. Compatibility mode in these situations is not always perfect. Having native BSD versions of these applications would be preferred.


# Comparing BSD to proprietary offerings

The proprietary Unix sphere is much larger than most people think, but most will identify with the big names such as Solaris and AIX. Many would be hard pressed to actually name another proprietary Unix offering beyond these two. Most proprietary Unix variants are focused on a fixed platform; Solaris is primarily produced for Sun’s own SPARC based hardware (although an Intel version is available), while AIX is specific to IBM’s PowerPC platform.

Actually comparing proprietary Unix variants is very difficult because many have used and exploited different components from both BSD and System V Release 4 (SVR4). Others have changed their spots half way through production (SunOS and Solaris, for example). The proprietary Unix variants also frequently provide either an SVR4 or BSD compatibility layer to help migration from one to the other, or to help users of other variants to migrate to the new platform.

Ultimately making comparisons boils down to examining the heritage and support of the operating systems and the platforms supported. There are two mainstream, proprietary Unix variants, which run on the PowerPC CPU, Mac OS X and AIX. As you know, Mac OS X is essentially Darwin, which is in turn based on the FreeBSD and only works on the apple PowerPC platform.

AIX is the Unix operating system produced by IBM and which runs only on IBM’s own PowerPC based hardware. AIX is based on SVR4 and has some obvious advantages compared to both BSD and Mac OS X. The first is the availability of different software. As a proprietary Unix, it also has the best options available for proprietary support; IBM themselves provide many of their applications in an AIX version. Interestingly though, even IBM provide more of their software in Linux versions than AIX.

The other big advantage is the level of support offered by IBM for their AIX customers. You can get full, 24-hour support with an AIX expert if you are willing to pay for it. Support for most BSD offerings is provided on an informal email basis, which isn’t suitable for customers using BSD in a proprietary environment. Choosing to use BSD, in a proprietary environment, will therefore depend on the experience of the people managing the system.


=IMAGE=bsdfig4.jpg=The Darwin project=


# Installing and running BSD

Darwin is probably the easiest of the BSD options to install; neither of the OpenBSD and NetBSD offerings are difficult, but neither are straightforward for the average user. FreeBSD, when fully available on the PowerPC platform, should also be easy to use and install if the Intel experience is anything to go by.

Once installed, BSD operates much like any Unix variant; the familiar shells, command line utilities and other components are available to us. The big differences within the BSD system are the way in which you interact with and configure various components of the system. Everything—from the boot process through to the configuration of various components—differs from that in Linux and most proprietary distributions. There are also other differences in some of the command line options for different utilities; for example, the ps command (for listing processes) uses slightly different options to show all the running processes. Even so, the differences are minimal and while it takes some adjusting, if you are familiar with another Unix, the basic mechanics of interacting with the system are identical.

Even more significant though is the fact that the wide range of third-party applications and utilities that you are familiar with, Apache, the GNU tools, Emacs, Gimp and many others are all also compatible with the BSD environments.


# Choosing a BSD OS

If you were in the Intel space, choosing a BSD solution would be more straightforward. All of the BSD versions are available for the Intel space and choosing the solution that’s right for you comes down to the type of installation and functionality that you require.


=IMAGE=bsdfig1.jpg=The FreeBSD website=

Instead, when limited to the PowerPC platform you need to base your decision on the hardware available to you. NetBSD has the major advantage, in that, it runs on just about everything, from embedded PowerPC platforms to the more mainstream solutions such as Apple Macs and IBM’s PowerPC hardware platform such as the RS6000 desktops and servers.

OpenBSD is the best for security, but you are limited to Apple hardware. While this is not a real problem, since both new and old Apple PowerPC based kits are readily available, it is still fairly limiting. If Apple is your platform of choice though, Darwin offers a more rounded environment. Darwin also has the benefit of proprietary backing—which I think in the long term will aid its longevity and should also help publicize BSD at a time when Linux gets the column inches.


# Conclusion


=IMAGE=bsdfig5.jpg=An OS X Session, with Word and X Windows=

Despite what you might have been led to believe, Linux isn’t the only alternative for a stable and secure Unix like operating system. BSD is just as accessible, easy to install and even compared to proprietary offerings has a much older heritage, and it’s generally better because of it. The only limitation of BSD is the supported platforms. NetBSD is the best if you want the ultimate in compatibility across a range of platforms—including Intel and embedded solutions—but if your hardware is Apple based then OpenBSD is a security focused solution that is at home on the server or the desktop.

