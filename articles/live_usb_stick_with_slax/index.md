---
nid: '2496'
title: 'How to create a GNU/Linux live USB stick with SLAX'
authors: 'Andrew Min'
published: '2007-09-14 21:06:25'
tags: 'live-cd,slax,live-usb,usb,thumb-drive'
license: verbatim_only
section: hacking
listed: 'true'

---
One of the biggest things holding back GNU/Linux adoption is the fact that most people haven’t tried GNU/Linux. That’s where SLAX comes into play.


# Introduction

What is SLAX, you ask? SLAX is a KDE-based GNU/Linux distribution that’s meant to run as a live GNU/Linux operating system. In other words, it will automatically wipe all traces of itself from the computer it is running on once you turn the computer off. And best of all, it includes tons of useful software including KDE, NTFS-3G, tons of wireless tools, CUPS, games, graphics tools, multimedia apps, development tools, the KOffice suite, and much more. This makes it perfect for showing off the power of GNU/Linux to your friend without messing up their settings.


=ZOOM=SLAX is perfect for showing off the power of GNU/Linux to your friend without messing up their settings=


# Putting it on a USB drive

Although SLAX can not be used as a regular operating system, it is possible to put it on an external device such as a USB drive and carry around a live GNU/Linux system. There are three advantages to using a USB drive over a more traditional CD: it’s faster, it lets you add file and programs on the fly, and it (usually) has more storage. There are several ways to do this, but the easiest way is to use the make_disk script. First, format the drive using a program like QtParted or GParted (use FAT32 on Windows and ext2 on GNU/Linux). Then, [download the standard SLAX ISO](http://www.slax.org/download.php) and extract it with a program like ISO Master. If you are using a GNU/Linux system, `cd` to the directory that the ISO was extracted to, and run `./make_disk.sh /dev/sda1`, replacing `/dev/sda1` with your hard drive (you can find the hard drive by running `fdisk -l` as root). If you’re using Windows, run `make_disk.bat E:`, replacing `E:` with the drive name. Now, reboot the computer and change the boot order of your machine (see [this](http://tinyurl.com/b4tc7) for a howto or refer to your computer’s manual) to make USB or removable drive the top.

**Note: [dfego](http://www.freesoftwaremagazine.com/user/35324) notes that this [won't work with SLAX 6](http://slax.linux-live.org/forum/viewtopic.php?p=75431).  Use [this](http://slax.linux-live.org/forum/viewtopic.php?p=75287#75287) method instead.**


# Adding programs

Although the default version of SLAX comes with a ton of tools, it’s always nice to be able to add and remove programs. That’s why SLAX has support for modules, available at the [SLAX Modules page](http://www.slax.org/modules.php). There, you can download programs like OpenOffice.org, The Battle For Wesnoth computer game, the Firefox web browser, and even desktop environments like Xfce or Gnome. After downloading the program, put it in the `modules` folder on the USB stick. When you next boot into SLAX, look for the program under your K Menu. If you need to make your own program, use a tool like [rpm2mo](http://tinyurl.com/2q86fl) or [deb2mo](http://tinyurl.com/2utcjz) to convert an existing package to the SLAX format.


# Conclusion

SLAX is a great operating system. And we haven’t even scratched the surface of what it can do. You can [create your own SLAX](http://myslax.bonsonno.org/), [build your own modules](http://www.slax.org/doc_modules.php), and [even install SLAX to a hard drive](http://tinyurl.com/2weeks). And best of all, you now have a GNU/Linux system to show off to your friends.


* [Homepage](http://www.slax.org/)
* [Modules](http://www.slax.org/modules.php)
* [Forums](http://www.slax.org/forum/)
* [Alpha 6.0 Release](ftp://ftp.linux.cz/pub/linux/slax/SLAX-6.x/)

