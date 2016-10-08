---
nid: '1241'
title: 'Getting started with Knoppix Linux'
authors: 'Robin Monks'
published: '2006-05-10 0:00:00'
issue: issue_11
license: gfdl
section: end_users
listed: 'true'

---
Getting started with Knoppix Linux doesn’t have to be costly. Chances are you already have everything you need. The requirements are simple. Any computer newer than 5 years old with a working bootable CD or DVD drive should be able to run Knoppix.

Many consider Knoppix to be the most popular live CD. Knoppix has at least one of everything, configures automatically, and is a great way to get your feet wet in Linux.

What makes Knoppix so good for trying out Linux is that it’s all contained on a single disk, called a “live CD”. Nothing needs to be installed to your PC. Just place it into your CD drive and reboot, the entire OS then boots and runs entirely from the CD.

Knoppix also includes at least one of every kind of software, which makes it great for seeing the whole spectrum of free software Linux software available.


=ZOOM=What makes Knoppix so good for trying out Linux is that it’s all contained on a single disk, called a “live CD”=

The only major live CD drawback is that since it is run entirely from the CD, and all possible configurations are supported by the kernel, load times are drastically longer than for programs loaded from a hard disk. Keep this in mind when using Knoppix and remember that any Linux distribution will be faster on a hard drive.


# Getting your Live CD

The most common way to get a live CD is to download an .iso (a standard format CD image file) and burn it to a blank CD-R. It’s advisable to have access to a high speed internet connection to download Knoppix, as the .iso files are just under 700MB. You can also buy these live Linux CDs cheaply from such places as [CheapBytes](http://www.cheapbytes.com/) and [BudgetLinuxCDs](http://www.budgetlinuxcds.com/).

First, you’ll need to download Knoppix. CD or DVD edition is fine (I’ll deal with the CD edition, so I won't discuss the extra programs that are on the DVD edition). Head over to [knoppix.org](http://knoppix.org) and pick up the latest edition.

Once you have the .iso you can use most any CD burning application to burn it (check your application’s help) no matter what operating system you use. If your CD Burner didn’t have burning software included (some inexpensive and second hand ones don’t), you can use [CDBurnerXP Pro](http://www.cdburnerxp.se/) (note that although it is freeware, it does not fall under this magazine’s definition of “free software”) or, if you are using Linux already, the free software cdrecord or [K3B](http://k3b.org).


# Booting up Knoppix

Now that you have Knoppix downloaded and burned on your CD, it’s time to boot. Insert your freshly minted CD into your CD drive, restart, and cross your fingers. Most new BIOSs will automatically detect and boot from the CD, but if you have an older BIOS (or an incorrectly configured one) you might not be able to boot.

If the CD fails to boot, check your BIOS configuration (normally this requires pressing delete or a function key while booting) to ensure that the boot order is something like Floppy-CD-HD and try again. If the CD still fails to boot, get the [Smart Boot Manager floppy](http://btmgr.sourceforge.net/about.html) and try booting from that.

Once Knoppix starts booting it will detect your hardware and load all the kernel modules it needs to use for the hardware it found. Because it has to do this each run, and can’t save any settings, it will take a few minutes to finish. After booting, you should be greeted with a Knoppix customized KDE desktop. Now on to the fun stuff...


=IMAGE=Knoppix_Desktop.jpg=The Knoppix desktop=


# Meet your desktop

One of the primary parts of your Linux computer, like most systems, is the desktop. Linux is unique in that there are many desktop environments to choose from, including KDE(K Desktop Environment) and Gnome. Knoppix uses [KDE](http://kde.org), hence the K in the name. You can also get Gnoppix, which uses, you guessed it, Gnome.


=ZOOM=One of the primary parts of your Linux computer, like most systems, is the desktop=

The Desktop is your GUI “portal” to what you can do with Linux. It may extend beyond the edges of the screen if the desktop size requested is larger than your hardware supports. When the Desktop is larger than the screen, moving your mouse pointer to an edge of the screen will scroll the Desktop to expose any portion of it hidden in that direction, hiding the opposite portion.

KDE’s “taskbar”, called the panel, resides at the bottom of the Desktop. The panel includes shortcuts to most used applications, a clock, shortcuts to various applets, plus shortcuts to each of a configurable number of additional desktops.

The leftmost button on the panel, with the K symbol, is the application menu, which lists all the programs available while running KDE. Knoppix offers immense choice, so these menus are bulging, from games to development environments to office software and much, much more!

Once KDE has started you’ll be greeted with an introduction to Knoppix displayed in [Konqueror](http://www.konqueror.org/), the default KDE web browser. Glance over this, and then close or minimize the window. You’ll now be presented with various desktop icons, which are access shortcuts to available disk drives, memory sticks, CD/DVD drives, etc.

Since the system is booted from a CD/DVD, that drive becomes the primary filesystem, also referred to as "/", called “root”. Folders open in Konqueror and can be navigated in a manner similar to Windows Explorer.

Knoppix also has various desktop environments other than KDE on the CD, such as Fluxbox and Windowmaker (look under the “Knoppix Cheatcodes” section in the documentation on the CD).


<!--pagebreak-->



=IMAGE=Knoppix_Application_Menu.jpg=The (bulging) Knoppix application menu=


# Choices, choices, choices and more choices


=ZOOM=Knoppix, like Linux, offers immense choice=

As I said above, Knoppix, like Linux, offers immense choice. Nowhere is this more evident than in the bulging application menu. Packed with most common Linux programs, it can give a great feel for the selection and quality of programs available with Linux.


=IMAGE=Frozen_Bubble.jpg=Frozen Bubble=

Feeling overwhelmed? A few good places to start with include [Frozen Bubble](http://glenn.sanson.free.fr/fb/play.html), under games. It’s been an instant free software classic and should quickly relieve any apprehension you might have about using Linux on your Desktop.

Next stop, [OpenOffice](http://openoffice.org). It can open most proprietary file formats, including MS Office’s DOC and PPT extensions, and has a lot of power to handle your office needs. I wrote most of this article in it! For the graphics folks, look toward [GIMP](http://gimp.org/), and for desktop publishing, [Scribus](http://www.scribus.org.uk/). Also take a look in the internet menu at [Firefox](http://getfirefox.com) and [Thunderbird](http://getthunderbird.com), just like you remember them. Also, if you choose to keep a home portion on a USB key or other removable media, you can install themes and extensions, and have Thunderbird read your email from a POP server (just make sure to check the option to leave the mail on the server when you setup your mail account if you want to read your email on another system as well).


=IMAGE=Scribus.jpg=Scribus=

Knoppix also includes many powerful Linux/KDE tools and utilities, and has a fully functioning shell for the really techy folks. Knoppix also has a wide range of development tools, including compilers.


# Make the switch

How can you make it your main OS you ask? Thankfully, it’s easy! Just click on the shell in the panel to open the KDE shell and type `sudo knoppix-installer`. The step by step wizard will then guide you through the rest of the process. But please note **this will erase all data currently on the hard drive, including your old OS** so only do this when you are very sure you want to make Linux your main desktop. There are less documented ways to dual boot Knoppix with another OS available at [Knoppix.net](http://www.knoppix.net/wiki/Hard_Drive_Install_FAQ).

Once you install Knoppix it acts just like a normal Debian system. Because of the relatively small download size and the wide range of available software, Knoppix is usually the easiest way to get a Debian system.


=ZOOM=Knoppix is usually the easiest way to get a Debian system=

It is also possible to create a permanent home folder on a hard drive partition or USB drive. Although you won’t see the dramatic speed improvement of a hard drive install, it will let you keep the data you create between sessions.


# Going further

Knoppix is probably the quickest and easiest way to try out Linux, and I hope you will. Linux is a vast world of almost infinite possibilities that Knoppix makes easy to explore.

For more experienced Linux users, Knoppix makes a great way to try out different configurations. If something goes wrong, a simple reboot will bring it all back to normal.

From a simple system on-the-go, to a full-fledged OS, to a recovery system, to a quick test drive, it’s all only a boot away with Knoppix.


# Thanks

The author would like to thank Felix Miata for his kind assistance and suggestions

