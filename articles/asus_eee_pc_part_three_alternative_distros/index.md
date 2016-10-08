---
nid: '2793'
title: ' The Asus Eee PC (Part Three): The Alternative Distros'
authors: 'Gary Richmond'
published: '2008-04-01 12:28:21'
tags: 'distros,wifi,webcam,filesystems'
license: verbatim_only
section: opinions
listed: 'true'

---
In [Part One](http://www.freesoftwaremagazine.com/columns/asus_eee_pc_ultra_portable_laptop_gnu_linux_pre-installed) of this four parter on the Asus Eee PC I looked at the technical specifications and in [Part Two](http://www.freesoftwaremagazine.com/columns/asus_eeepc_part_two_setting_full_kde_gnu_linux_experience) I looked at how to get the default Xandros up to speed as a full KDE desktop. In this third instalment we come to what is perhaps the most fun  part of the experience.

As I explained in Part Two, even getting a full KDE desktop up and running will not give you the unexpurgated GNU/Linux experience because of space constraints and the nature of Unionfs. The solution to this is the one that has been around since Unix hackers were in short trousers. Install a different distro. As soon as the ultra portable, miniature laptop was out the open-source community was busy customising existing distros to suit the small format and to ensure that hardware like the Atheros wireless card and the Webcam worked properly.

# The runners and riders

The list of customised distros that has been made for the Eee PC is growing all the time. Here is a list to date of the ones that have been designed to work with it to a lesser or greater degree:

* [DebianEeePC](http://wiki.debian.org/DebianEeePC) (installs Debian Lenny)
* [eeeXubuntu](http://wiki.eeeuser.com/ubuntu:eeexubuntu:home#download_it)
* [EeePcLinuxOS](http://www.mypclinuxos.com/forum/index.php?PHPSESSID=426634c8bd12853b9b2d4dcb0acfd9d2&board=87.0)
[Eeedora](http://complexvalues.com/) (a customised version of Fedora)
* [Arch](http://wiki.archlinux.org/index.php/Installing_Arch_Linux_on_the_Asus_EEE_PC) 
* [Ubuntu 7.10](http://wiki.eeeuser.com/ubuntu#install_from_a_live_ubuntu_image_on_a_usb_stick) (Gusty Gibbon)
* [Gentoo](http://www.floccinaucinihilipilification.net/wiki/index.php/Gentoo_on_the_EEE_Pc)
* [OpenSuse](http://en.opensuse.org/OpenSUSE_on_the_EeePC)
* [Backtrack3](http://www.tmplab.org/wiki/index.php/Backtrack3_on_EEE)
* [gOS](http://clumpc.com/?p=60)
* [pupEEE](http://puppylinux.ca/members/Pupeee/)
* [Linpus](http://www.linpus.com/xampp/modules/cjaycontent/)
* [Mandriva 2008 Spring](http://wiki.mandriva.com/en/Docs/Installing_Mandriva_Linux#Booting_the_installer_direct_from_a_hard_disk_-_Linux_method) (scheduled for 9 April, official release)

The last one is particularly interesting as [Mandriva have announced](http://wiki.mandriva.com/en/2008.1_What's_New#Asus_Eee-friendly) that this release will be Asus Eee PC-friendly with all the hardware working out of the box without requiring any configuration whatsoever. So, I'm marking a date in my diary for that one. Linpus (a Fedora-based commercial distro) is very interesting too as it has also been specifically designed for small, low resolution laptops like the Eee PC. Its default screen (called Simple mode) bears an uncanny resemblance to Easy Mode on the Asus except that Linpus offers users a one click switch between Simple mode and full, conventional desktop. It is available in a non-installable Live CD and a full desktop version over 3GBs. gOS is the default install on the Everex CloudBook, a competitor to the Eee PC. It is heavily Google apps centric, essentially Ubuntu 7.10 with Enlightenment as both the X window manager and the desktop environment. Later versions will be rewritten for GNOME. 

The version for the CloudBook is called gOs Rocket and claims to work with specifications as low as 350 MHZ Pentium 2 with 196 of RAM so in theory at least it should run like a bat out of hell on the better-spec'ed Asus. As it is Ubuntu based, it is Debian with Apt-get goodness and although wifi is not enabled, the [patches that work for the customised Ubuntu for the Eee PC](http://code.google.com/p/eee-ubuntu-support/) will do for the gOs on it. The last one to single out for special mention is pupEEE, a really small distro which runs fast and weights in at under 140MBs. Whether you are running it from a USB stick or on the Eee PC's internal SSD it leaves a lot of storage space and both the webcam and the wireless card are reported as working. 

# The install options

Just as there are numerous, customised distros for the Eee PC, there are many install options too. Depending on what one you choose you can opt to install directly onto the 4GB SSD (Solid State Drive) thus deleting Xandros entirely, or install your chosen distro to an external hard drive, a memory stick or to an [SD cards](http://en.wikipedia.org/wiki/Secure_Digital_card) or [SDHC](http://en.wikipedia.org/wiki/Secure_Digital_card#SDHC). Which option you choose will depend on your personal preferences and needs. I'm keeping the default Xandros and opting for running other distros off external, removable media. 

Which is best? That comes down to factors like read/write speeds of memory sticks and cards, size of same and of course, cost. Balancing these factors out and matching them against the size and features of a distro is a juggling act for each user. One factor you need to consider is that running a distro from an external device powered from the Eee PC will drain the battery faster (even if you have disabled the built-in wireless card, muted the speakers and dimmed the screen). It is not necessary to do the install on or from the Eee PC. Make the most of your bigger digital hardware and manage it all from there, utilizing the larger storage space and built in CD/DVD burners. 

As it would not be practicable to list all the pros and cons of all the customised installs here, I have given links in the list of runners and riders above, where the reader can learn how to install and download the various distros. In the meantime here is a list, filtered by the main hardware features, of those distros:


#Wifi

An Asus Eee PC without working wifi is like a dog without the bark. Customised distros have all striven to ensure that this vital feature is either working out of the box or will do with a little post-install tweaking.

##works out of the box

* Mandriva 2008 Spring (releasing 9 April, 2008)
* eeeXubuntu 
* EeePcLinuxOS
* Eeedora (based on Fedora 8) -wifi brought up with [wif-radar](http://wifi-radar.systemimager.org/)
* pupEEE
* Backtrack3 (almost! enable in BIOS after boot or set in Xandros and reboot)
* OpenSuse (almost! requires enabling one extra repository)

## wifi requires patching

* gOS - requires a [Ubuntu/Gusty support package](http://code.google.com/p/eee-ubuntu-support/)
* Gentoo - requires a [madwifi patch](http://allenjb.me.uk/)
* Arch - requires a [patch](http://wiki.archlinux.org/index.php/Installing_Arch_Linux_on_the_Asus_EEE_PC#Atheros_wireless_ethernet_driver)
* Ubuntu 7.10 (Madwifi [patch](https://help.ubuntu.com/community/EeePC#head-bd037cc8ecf56215a6c6b4ea5de4ec32ef23fba1)
* DebianEeePC - requires a bit of [configuring/patching](http://wiki.debian.org/DebianEeePC/HowTo/Wifi)

## Wifi non functional

* Linpus (no drivers available. Yet!)


# Webcam

Note: This works with the Xandros default install but you will have to [upgrade the Debian binary]( http://skypejournal.com/blog/2007/12/skype_for_linux_video_on_eeepc.html) to get video Skype (not open source) working. Asus have also added it to their repositories, so use Synaptic or the command line to install it.

##Works out of the box

Note: If not working, [enable the webcam in the BIOS](http://wiki.eeeuser.com/howto:installskype20beta?s=webcam) 

* Mandriva 2008 Spring (releasing 9 April, '08) - not known yet if it includes video for webcam. Probably.
* EeePcLinuxOS
* eeeXubuntu (with Bios enable)
* pupEEE (webcam modules installed, reported as working)
* DebianEeePC

## Requires patching

* eeedora (works, but colour problems)
* Arch (significant tweaking required)
* Ubuntu 7.10 [needs a script to fix skype two-way video](http://ubuntu-eee.tuxfamily.org/index.php5?title=How_to_use_the_ubuntu-eee_script)
* Gentoo [requires a little tweaking](http://gentoo-wiki.com/Asus_Eee_PC_701#Webcam)


## Webcam status unknown/not working

* Linpus
* Backtrack3
* OpenSuse
* gOS


Apart from the webcam and the wireless card, probably the feature most users want working with customised distros is the `Fn` key in conjunction with `F2`, `F3`, etc for controlling battery-life saving features like disabling the wireless card, dimming the screen and muting the volume. This implementation varies considerably from distro to distro and checking the links above will detail what does and does not work.

# Which file system should you use?

Regardless of what distro(s) you eventually choose you're not going to get far without a file system!! Doh! Running Windows with XP or Vista pre-installed the end user is presented with the -fait accompli- but GNU/Linux users are spoiled for choice. [Ext2](http://en.wikipedia.org/wiki/Ext2) (non-journalled) and [Ext3](http://en.wikipedia.org/wiki/Ext3) ([journalled](http://en.wikipedia.org/wiki/Journaling_file_system)) FAT32, ReiserFS, Reiser4, XFS and others. Each file system has its fans and features and it is even possible to install different ones to different partitions for a single distro to exploit the best features relative to function, speed, security and stability. 

Regardless of which you use or are chosen for you by the customised distro you select from the list at the beginning of the article the key fact to remember is that the Eee PC sports a solid state drive (SSD) and they are generally held to have a shorter lifespan than conventional IDE hard drives. It is felt that conventional levels of read/writes to an SSD have a severe impact of the life of such devices, including SDs and SDHCs. Unless you are running your chosen distro from a USB-powered external disk drive, you will want to minimise read/writes.

Asus have dealt with this by factoring in [wear levelling](http://en.wikipedia.org/wiki/Wear_levelling) to prolong the life of the Eee PC's SSD. On another positive note, [seek times](http://en.wikipedia.org/wiki/Seek_time) are better thus reducing file fragmentation and therefore allowing users to use a non journalled file system like Ext2 - further reducing read/write cycles. However, many take the view that there is a good deal of FUD surrounding the life of an SSD in relation to the greater number of read/writes incurred by a journaling file system and [they happily endorse using Ext3](http://wiki.eeeuser.com/ssd_write_limit). If you prefer, you can convert a resident Ext3 file system to Ext2 (on an unmounted partition, or at least make it read only and change Ext3 to Ext2 in `/etc/fstab/`. You can also redirect the logging output to `/dev/null` to reduce writing to the SSD.

# More exotic file systems

One more file system you might want to consider is [JFFS2](http://en.wikipedia.org/wiki/JFFS2), a file system for flash memory devices which has been in the Linux Kernel since 2.4.10. It has been optimised for these devices and from the Eee PC users' perspective it seeks to make wear levelling more even. Journaling Flash File System is a misleading description as this file system actually uses a log-based structure. [LogFS](http://www.logfs.org/logfs/) is a relatively new kid on the block whose name more transparently reveals its true nature. LogFS is not yet ready for normal use but it may be ready for inclusion in the Linux Kernel in a matter of weeks. Both file systems are relatively bespoke compared to established ones like Ext2 and Ext3, so it is probably easier to find other ways to optimize disk performance 

# Swap, swappiness and noatime

The usual advice when installing a distro is to create a swap file twice the size of memory, but if you are installing onto a small 4GB SSD like the Eee PC, space is at a premium so you might baulk at setting up such a large swap partition. Even if you upgrade the Eee PC's memory to 1GB or 2GBs (see Part One) the system will require as much swap as RAM for hibernation to function. Swap allows hibernation to function and unless applications are using very large amounts of data the Kernel should not use swap excessively. You can experiment with various settings and options to see what works best for you. 

If you keep a swap partition small in order to save space and find that it is too small for your subsequent requirements then you can use a partition tool like [GParted](http://gparted.sourceforge.net/download.php) to resize the partition. The homepage includes download links for live CDs and live USB images. The latter is particularly useful as the Eee PC has no internal CD drive. If you set up the repositories mentioned in Part Two you will be able to install it to the internal SSD. Or, [create a swap file](http://www.redhat.com/docs/manuals/enterprise/RHEL-5-manual/Deployment_Guide-en-US/s2-swap-creating-file.html) instead. 

Since Kernel 2.6 swap files are just as fast as swap partitions and they can be created, deleted and managed dynamically with the command line in a terminal--especially if you are nervous of messing around with partitions. It is advisable to do all things immediately after a distro install. That way, if it all goes pear shaped, no significant user data will be lost. If all of this is too much, just buy more RAM.

Another way to reduce writes and prolong disk life is to use the `noatime` mount option by adding to the defaults section of `/etc/fstab/`. (This will prevent the writing of file metadata to disk). Open this file as root in a text editor and insert `defaults,noatime`. Save, exit and either reboot to enable it or open a terminal and, again as root, type: `sudo mount -o remount /`. 

Finally, you can supplement swap-related matters to get the most from the Eee PC by tweaking something called "swappiness". Via `proc` (essentially a pseudo file system reflecting Kernel activity in a convenient format in userspace) you can set it to increase or decrease. `cat /proc/sys/vm/swappiness` will tell you the current value (the default is 60). Depending on your requirements, set it between 0 and 100: `echo 30> /proc/sys/vm/swappiness` and if the value suits you can make it permanent by adding `vm.swappiness=30` to `/etc/sysctl.conf`. 

# Conclusion

I have looked at the customised distros available for the Eee PC, their ability to work with crucial hardware like wifi and webcam, file systems and various software tweaks to system parameters. With this combination you should be able to reproduce the default Xandros install experience but with all the added goodness of a full GNU/linux on the internal SSD or on removable media.

In Part Four (the last) I will put together a miscellany of tips and tricks for the Eee PC to get the best out of the Xandros installation. 