---
nid: '2589'
title: 'Review of FreeBSD 7 '
authors: 'Yousef Ourabi'
published: '2008-03-05 4:40:57'
tags: 'book-review,freebsd'
issue: issue_21
license: gpl
section: hacking
listed: 'true'

---
The next major update of FreeBSD 7, due this December, is in the running to be one of the most impressive FreeBSD releases to date. The ULE scheduler has now reached maturity, leading to significant gains across the board (particularly in server workloads). This new scheduler brings notably impressive performance improvements to both MySQL and PostgreSQL. 

In the first section of this article, I'm going to take a look at what's new. In the second section, I will discuss what the future holds for FreeBSD beyond the upcoming FreeBSD 7.0 release, including screen shots of the revamped FreeBSD installer "finstall".

<!--break-->

# Beastie, here and now

FreeBSD 7 sports several new improvements in its file-systems and storage subsystems, including experimental support for ZFS and gvirstor, which can be used to create a large virtual disk image by simply adding physical disks as data on disk requires. This gives system administrators the ability to create volumes that far exceed the physical disk capacity and only add hardware as usage increases. Gvirstor is authored by Ivan Voras, who is also responsible for the FreeBSD installer project "finstall".  I'll take a quick look at finstall, including screenshots, in the section "Going Forward with FreeBSD".

The kernel scales admirably to eight processors, an essential step as multi core chips have become ubiquitous, reaping the benefits of the "SMPng" project (Symmetric Multi-Processor, next generation) and migrating away from the legacy BSD architecture. The ULE scheduler is now considered the preferred scheduler for FreeBSD systems; however, it will not be enabled by default until the 7.1 release, so a kernel recompile is still required at this time. Kris Kennaway has a fantastic write up (available in the resources section) that graphs the performance improvements and shows the eye-popping increase in server work-load scalability. 

=ZOOM=The ULE scheduler is now preferred, but won't be enabled by default until 7.1 =

The networking subsystem has had its fair share of changes; it is "Giant Lock" free, WPA support is now stable and, more importantly, it is easier to configure  (though I did not verify the wireless improvements for this review). 

This release will include X.org 7.3, KDE 3.5.7,  Gnome 2.18.3 and GCC 4.2.1–but of course you can always stay on the bleeding edge via FreeBSD ports. There are currently around 18000 ports and, as always, the number of ports is steadily increasing.

The over-arching theme of this release is "spit-and-polish" and the final stabilization of long term efforts such as SMPng to increase system performance. All the things you've come to love about FreeBSD are still there and there have not been any radical changes that will affect the way you use your system. It should just work faster and have an updated set of tools. This evolutionary approach is similar to Apples MAC OS X release cycle.

As I write this, FreeBSD 7.0 beta 3 has just been released and I encourage everyone to start using it. It is already quite stable, and many (if not all) of the bugs in the earlier betas have been fixed. If you do encounter any bugs, make sure to report them!

# Going forward with FreeBSD

The future is even more exciting because there are some new technologies lurking on the horizon that will make FreeBSD. The three I find the most interesting are: 

1. The Finstall Project, which I'll examine in a bit; 
2. ZFS (ported from Sun Microsystem)
3) DTrace (also ported from Sun Microsystems).

There is a long shared history between BSD and Sun. The original Sun OS was based on BSD, mostly due to Bill Joy's involvement at UC Berkeley.

ZFS will be available in the 7.0 release as an experimental kernel module with some limitations. FreeBSD cannot boot off ZFS file systems, nor can it use ACLs; other more advanced features of ZFS (such as exporting volumes over iSCSI) will also be delayed until future releases. However, the ZFS port is mostly integrated into the standard FreeBSD stack including GEOM and UFS. This level of integration allows, for example, a UFS file-system to be created on top of a ZFS volume. 

The state of DTrace is a little more precarious. The initial development of the port began in mid-2006 and was met with a warm welcome. However, there is currently a licensing dispute that prevents the DTrace headers from being merged into the main source tree for this release.

And, last but not least, the new graphical FreeBSD installer "finstall". Developed by Ivan Voras as a Google Summer of Code project, it is planned to be offered as a separate installer CD for the 7.0 release and in future releases will be merged into the main install CD. The current implementation is a Python-GTK front-end that talks to a Python back-end via XML-RPC. The long term plan is to rewrite the back-end in the C programming language for better integration with the core FreeBSD system. 

Using finstall is pleasant. It comes as part of a Live-CD and goes through a familiar boot process. After the system is initialized, you are prompted with a message instructing you to either login with the "install" user to launch the graphical installer or the "root" user to use the CD as a recovery or exploration cd. Another very nice and practical feature of the new graphical installer is the availability of help sections for various installation tasks. Although the text in the alpha/preview release is just place-holder, this will eventually get fixed and become a useful resource for users uncertain of the implications of the various options. This is an area somewhat lacking in the current installer. 

=IMAGE=finstall-boot.jpg=The finstall live cd booting up=

After logging in as the "install" user the system will automatically start the XFCE window manager and you'll be presented with a graphical installer icon "FreeBSD Installer". Double click it and you will be presented with the installer splash screen below. It is important to note that while the installer is under active development (in beta state), some options will be disabled. 

=IMAGE=finstall-installer-splash.jpg=The finstall installer splash screen=

The installer will then present you with your file-system options, as seen in the figure below. It is important to note that ZFS cannot be used as the root, or boot file-system, the traditional FreeBSD UFS file-system is required. 

=IMAGE=finstall-file-selection.jpg=The finstall file-system selection=

After you have made all the selections you want for your system, you will be presented with a fairly standard progress bar as the installer configures FreeBSD on your system 

=IMAGE=finstall-progress-installing-basesystem.jpg=Installing the base system, progress bar=

The finstall project is also a platform for users to create their own live CDs and customized installers. The Python implementation of the front-end makes it very easy to jump in and hack around. In the resources section, I have included a link to my blog where I document my own attempts at generating my own install live CD (for the brave only, it is a work in progress). Keep in mind that official documentation will appear on the finstall sourceforge project (also in the resource section) and those will be the definitive, up-to-date instructions on how to hack the installer. 

# Conclusion

FreeBSD has come a long way and has created great technical solutions to tough problems. The new scheduler will offer performance gains for years to come. New architectures are being added frequently, including Sun Microsystems Niagra processors, Apple Mac Books (and Mac-mini), and even an initial port to the Xbox platform.

The future is bright for FreeBSD and I'm certainly looking forward to the pending 7.0 release and beyond. The 7.1 release will see the ULE scheduler enabled by default and should also see the inclusion of the new installer into the mainstream releases. The multi-processor scalability will continue with the next goal of linear scalability on sixteen cores. There are now more than seventeen thousand ports and, with the new and improved performance, FreeBSD makes a formidable desktop and server operating system.

#  Resources 

*  [FreeBSD on Apple MacBook Project Page](http://wiki.freebsd.org/AppleMacbook) 
*  [FreeBSD 7 Open Bugs](http://www.freebsd.org/releases/7.0R/todo.html) 
*  [Finstall FreeBSD Wiki (FreeBSD.org) ](http://wiki.freebsd.org/finstall) 
*  [Finstall Project Page (Sourceforge) ](http://sourceforge.net/projects/finstall/) 
*  [ My initial experiments with the FreeBSD Installer (Finstall) on my blog ](http://yousefourabi.com/bsd/freebsd-7-and-the-freebsd-installer) 
*  [ 7.0 Preview (PDF) By: Kris Kennaway ](http://people.freebsd.org/~kris/scaling/7.0%20Preview.pdf) 

