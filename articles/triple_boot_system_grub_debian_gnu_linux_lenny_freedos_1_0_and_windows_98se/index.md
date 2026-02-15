---
nid: '3078'
title: 'A triple-boot system with GRUB: Debian GNU/Linux "Lenny", FreeDOS 1.0, and Windows 98SE'
authors: 'Terry Hancock'
published: '2009-01-12 9:15:04'
tags: 'linux,windows,dual-boot,multiboot,freedos'
license: verbatim_only
section: hacking
listed: 'true'

---
This last Christmas, I refurbished and installed computers for two of my children. As we still have a pile of old games in a drawer, I wanted to provide multi-boot systems. This was much easier and more satisfying than the last time I set up a Linux/Windows dual boot system (with LOADLIN.EXE, which I can't really recommend today). I also wanted to test out the current state of FreeDOS (a GNU GPL-licensed operating system that emulates parts of MS-DOS 3.3 and MS-DOS 6.0). I did try installing ReactOS 0.3.7 instead of Windows on one of the systems, but I ran into installation problems I couldn't work around (a topic for a later column, perhaps), owing no doubt to the immaturity of the ("alpha") software.

<!--break-->

=TEXTBOX_START=Homebuilt computers for Christmas=
This article follows up my previous article on [refurbishing computers for kids](/articles/homebuilt_computers_christmas/), with technical details about the triple-boot systems I set up. Read that if you are wondering about my goals or other aspects of this project. Here I'm just talking about the technology.
=TEXTBOX_END=

Many years ago, before there was GRUB, Linux was usually loaded by LILO. Although LILO worked just fine as a "LInux LOader", it wasn't much of a "GRand Unified Bootloader", and so creating a dual-boot Linux/Windows system was not so easy. I did it at the time using a DOS/Windows program called LOADLIN.EXE that started the boot-loading process for Linux from the DOS/Windows environment on the computer. That was using Windows 3.1, in about 2000, more or less at the same time I started using Linux myself. I set up a shared computer for my children then, and although they were still essentially using Windows games and applications, I wanted to introduce them to the GNU/Linux programs that I was learning as well.

=TEXTBOX_START=Dual-boot is not for newbies!=
Even with GRUB, I _do not_ recommend "dual-boot" or "multi-boot" as a way of installing GNU/Linux as a secondary operating system on a Windows system in order to "try it out". At least not unless you have a local expert who's willing to set up such a system and maintain it for you.

I say this, because multi-boot systems are intrinsically more brittle, and getting them to work reliably requires a fairly high level of skill, experience, and patience. None of which is consistent with someone who's just trying to learn GNU/Linux.

In such situations, I recommend you just acquire an inexpensive new computer to install GNU/Linux on (often, an old one, like the 10-year-old models I used for my children, will work just fine -- GNU/Linux has a remarkably efficient design which performs much better on older hardware than any proprietary system you will find on the market). In most cases, this will be worth it to you, and much easier than trying to install a dual-boot system.

=ZOOM=Who multi-boot is good for, in my opinion, are people like my family who use GNU/Linux more-or-less exclusively, but have occasional need for a Windows system to run old software=

If you really can't afford another computer, then I recommend trying GNU/Linux out on a "Live CD" distribution, and if that works for you, then just back up your hard drive and install GNU/Linux on your main system.

Who multi-boot is good for, in my opinion, are people like my family who use GNU/Linux more-or-less exclusively, but have occasional need for a Windows system to run old software that simply isn't worth trying to replace with GNU/Linux alternatives. Since we don't have _any_ dedicated Windows machines, and are not willing to waste the hardware on them, having at least one multi-boot installation makes sense.
=TEXTBOX_END=

That system was basically a DOS/Windows 3.1 system, with a Linux operating system tacked on. The boot records were all controlled by DOS, and the only way to start Linux was by booting into DOS and then running LOADLIN.EXE. It was awkward, to say the least, and there were a number of things that could go wrong with it.

_Fast forward to three months ago_.

Now, GRUB not only exists, but is quite mature (there is even a new "GRUB 2" for the adventurous, although I am using the original GRUB, now called "GRUB Legacy" for this article). Instead of having to turn over the keys to Windows (hardly a trustworthy tenant, as it tends to try to take over all that it surveys), I can now set up a GRUB boot menu that puts all of my installed operating systems on an even keel: Debian GNU/Linux "Lenny" (the latest testing version), FreeDOS 1.0 (the latest release, and now no longer "beta"), and Windows 98SE (one given to my kids by my mother, also dating to about 2000, another that came with one of the vintage 1998 HP Pavilions that I refurbished).

=ZOOM=I can now set up a GRUB boot menu that puts all of my installed operating systems on an even keel=

Furthermore, the GRUB menu provides the flexibility to set up a default boot choice, so that the computer will come up naturally into GNU/Linux if you don't type anything (which is what my kids will usually want to do). Going into Windows or FreeDOS, however, will be as simple as shutting down the system (either from the KDM menu, or using _Ctrl-Alt-F1_, _Ctrl-Alt-Del_), restarting the system, and choosing the appropriate option during the boot process.

=TEXTBOX_START=Apologies for Windows?=
Some apology is perhaps due for explaining how to install Windows 98SE on a computer in a magazine called "Free Software Magazine". There are a number of practical reasons for installing Windows as a secondary operating system:

* Testing for compatibility with other people's systems
* Using old proprietary software such as games (which are as much content as software)
* Compatibility with ubiquitous cheap proprietary hardware, such as I described in ["A world of beautiful broken toys"](/articles/free_software_and_gadgets_world_beautiful_broken_toys/)
* Exposing children to a variety of different systems, to avoid being "locked-in" to one
* Showing them exactly why I stopped using it (in a fair comparison, no child is going to prefer Windows over GNU/Linux in my opinion, certainly not when the GNU/Linux system was what they learned first)

I will add that we did not purchase new licenses for Windows, but used old ones. So, for those who worry about such things, we really are not materially contributing to the "great evil corporation".

Most of these reasons are also good reasons to use FreeDOS, for those applications that will run on it, with the addition that with FreeDOS, we'll still be using a free software operating system.
=TEXTBOX_END=

# My procedure

The following is adapted from the notes I took for myself during the installation process. I will try to expand on my choices where possible, but of course, I can only vouch for the exact installation that I did. This is a complex installation, and there are many different choices you might make in the process of creating your own system.

### 0 Getting the software

I did most of this installation process without connecting the computers to my LAN or to the internet, so the installation was based on CD-ROMs.

Debian GNU/Linux is _huge_. To download the entire "Lenny" distribution for just the one "i386" architecture would require 31 disks. However, I only downloaded the first 5 disks, as the packages are archived in order of popularity (so you can get the most commonly used packages by just downloading a few disk images -- leaving the others to be ignored, installed later, or installed over the internet). As an additional convenience, Debian now provides two different first disks: one for Gnome users and one for KDE users. Since I primarily use KDE, I chose the latter of course. This should make very little difference for the purposes of this installation (it will matter more when I start trying to personalize the systems, but that's for a later column).

=ZOOM=To download the entire "Lenny" distribution for just the one "i386" architecture would require 31 disks=

ISO-9660 CD-ROM images for the disks can be downloaded from a number of [sources](http://www.debian.org/CD/), documented on the [Debian](http://www.debian.org) website. I used ktorrent to download mine from one of the Bit Torrent mirrors.

To get FreeDOS, unsurprisingly, you go to the [FreeDOS](http://www.freedos.org/) website. The actual ISO disk images are hosted by [iBiblio](http://www.ibiblio.org) and are [available](http://www.freedos.org/freedos/files/) in several different distributions and download methods. The smallest distribution contains only the core operating system and no source code, and takes up only 8 MB. Even the full "kitchen-sink" installation, however, with all applications and full source code is only 242 MB (a little more than a third of a standard CD-ROM).

All of these CD-ROM images can be burned to CD-R disks with what is now a very cheap "CD writer" or "CD burner" drive and a variety of different software packages. I chose [K3B](http://k3b.plainblack.com/) for this task.

Windows 98SE you will have to dig out of an old drawer or otherwise acquire. Theoretically, you should be legally entitled to one CPU license for every computer you ever bought with it pre-installed, although actually getting a pre-installed version to vomit up an installable CD-ROM is practically impossible in my experience.

=ZOOM=More frustratingly, Windows 98SE uses a boot floppy=

More frustratingly, Windows 98SE uses a _boot floppy_. Yes, this was an archaic technology that preceded the bootable CD-ROM! You might remember them. I lost mine a long time ago, and re-creating one from the CD-ROM and the pre-installed Windows on one of the HP Pavilions was a probably unrepeatable nightmare I won't relate (by itself, DOS, even DOS "7" as it exists underneath Windows 98, does not contain ATAPI CD-ROM drivers, so a simple `FORMAT /S` does not work). My recommendation is to not lose the boot floppy in the first place. Fortunately, at least, these computers did _have_ 3.5" floppy drives, although that is by no means a given with modern computers.

### 1 Installing Debian GNU/Linux "Lenny"

It might be possible to use the "easy" installation process, even in this case, but I didn't want to risk it, especially since it was absolutely essential to _manually_ partition the hard drive in order to leave space for Windows. So I will be using the "Expert Install" option, which hits you with a lot more questions, but gives you more control.


#### 1.1 Initial configuration and installation

First of all, shut down the system, and reboot with the Debian GNU/Linux "Lenny" CD number 1 (for KDE, in my case). Yes, you can reboot with "ctrl-alt-del" _after_ inserting the CD-ROM if you weren't fast enough to insert the CD-ROM while the self-test is running!

If the system does not boot from the CD-ROM, you may have to go into the system BIOS to change the "boot sequence". How exactly you do this depends on the BIOS. On an HP Pavilion, you do it by holding down the F1 function key while the computer boots. A message pops up saying "Entering setup" to acknowledge this (at which point you can let go of the key). BIOS menus are completely specific to models of computers, although there are some patterns. Usually there is a basic set of controls which comes up by default, and then some method of going into various sub-menus. The Pavilion BIOS has tabs along the top, one of which is "Boot". There are options on this tab which allow you to change the boot order to any sequence of CD-ROM, Hard Drive, Removable Drives, and Network. Naturally, you want the CD-ROM to come first (until you install Windows, when you'll want "Removable Drives" to be checked first -- you can do this now and just leave the floppy drive empty, if you want, though rebooting will take a bit more time and make more noise this way).

The Debian installer will boot (the first message on the screen says something about "ISOLINUX" which is a useful clue that it's working). Quickly, a splash screen will come up along with a menu. We want "Advanced Options", and then "Expert Install" on that menu.

The first few questions are about language and region code settings. I chose the appropriate settings for US and English, which are the defaults anyway.

It will then want to "Detect and mount a CD-ROM". This may sound strange, since you're running the installer from the CD-ROM already, but don't fret. The Debian installer will ask a lot of seemingly redundant questions during this process, but it's not hard to humor it. You should not assume that something failed just because Debian asks you to explicitly identify it. What's going on here is that an expert might want to do some fancy trick at this point, and they're giving you a chance to do it. Another explanation is simply that the messages are really coming from different pieces of software that the installer is calling, and they don't always share all of the needed information.

=ZOOM=The Debian installer will ask a lot of seemingly redundant questions during this process, but it's not hard to humor it=

In the same vein, it will ask whether you are using USB storage and whether you want "PC card services" (i.e. laptop expansion cards). Even after you say "no", it still gives you an option to provide "PCMCIA options", and you just leave that blank. For some reason this menu will come back again two more times in the installation process, so you've been warned.

The message, "CD ROM auto-detection successful" tells you that the software is not having any trouble with reading the CD-ROM, which is a good thing. You will get an option to load "installer components" from the CD. Choose "cfdisk-udeb". I'm not positive you need this, but it is a Debian installer extension to work with the disk partitioning software, which we will be using. After this step, when you return to the installation menu, there will be a lot more options.

Next comes "Detect network hardware". Select this, and you'll see the "PC Card" options for the second time. Answer as before. Then you'll configure the network. If you're installing offline as I was, you obviously won't want to "auto-configure" with DHCP ("Dynamic Host Configuration Protocol"). You can opt to configure a static IP address (which is what I do), or you can leave the network unconfigured until you connect the computer to your LAN (or your broadband router, or however you connect to the internet, assuming that you do).

Similarly, when you "Configure the clock", you won't be able to use NTP ("Network Time Protocol"), but you can set the time and time-zone manually.

Next you'll "Detect disks", and see the PC card questions for the third time. Finally, this will get you to "Partition disks".

#### 1.2 Partitioning the hard drive

I have some old-guard Unix ideas about how Unix or GNU/Linux system disks should be partitioned. I like to maintain a fairly complete "separation of concerns", which is what the original concept was behind the standard file structure used on Unix/Linux filesystems. This has to do with how data changes and who does the changing:

* The "root" or "/" filesystem is meant to be very static, changing only during major installations, with almost all content in subdirectories, which may actually be mounted on separate partitions. Usually changes here are made by system administrators (in our family LAN context, this usually means me)
* The "/usr" partition is meant to contain static information changed only during software installations, which normal users never need to write to (in fact, on some systems, the entire drive is mounted "read only" and only unlocked during installation procedures)
* The "/var" partition contains dynamic information maintained under the control of software services on the computer. Generally speaking, users never directly write to this partition
* The "/tmp" partition is used as a cache for information that never needs to be kept past a system boot and can be thrown away to make more room whenever necessary
* The "/home" partition has the users' precious data on it and should be handled with care, as well as be maintained by users themselves

If each of these is on a separate partition, then an over-filled partition will not impact the others (so, for example a system log will never fail because one of my kids has saved one too many Poke-Mon sprites in his home directory). Of course, there is a penalty: if you don't have a good idea of how much space the various tasks require, you may wind up with scarcity problems in one category, despite having plenty of space elsewhere. If you want to follow this method, I recommend taking a look at my example partition tables (below) to get an idea of reasonable sizes. Otherwise, you _can_ use just two partitions for GNU/Linux: one for all of the filesystems and one for "swap" (this is used by the kernel as a cache to extend the system RAM, and is highly recommended, especially on older systems withe less available RAM).

=ZOOM=I have some old-guard Unix ideas about how Unix or GNU/Linux system disks should be partitioned=

The Debian installer provides its own interface to the partitioning process, which is a tad more user-friendly than the `cfdisk` curses-based utility or the old `fdisk` utility. If you are familiar with those methods, however, you could use them, of course.

With the Debian installer module, however, the process goes something like this:

* Select "Manual" (none of the auto-partitioning choices will do for this installation)
* Select the device
* Set the partition table type to "msdos"

Then, for each partition you create:

* Select the "FREE SPACE"
* Create new partition (decide on "PRIMARY" or "LOGICAL")
* Set the size, using GB, MB, or KB units as appropriate
* Beginning (of the free space)
* Set options for making and mounting the filesystem

The partition table will support a maximum of _four_ "primary" partitions, one of which must be used if you want to create "extended" (or "logical") partitions (in other words, partitions which are represented inside of a single primary partition). This was a work-around for the original limited partition table design in MS-DOS, and it is the reason you very rarely see a device named `/dev/hda4` in your mount tables. Instead the tables skip from `/dev/hda3` (the last primary partition) to `/dev/hda5` (the first extended partition).

=ZOOM=For the FreeDOS and Windows partitions, we will have to follow some strict rules, due to limitations in their disk access drivers=

For the FreeDOS and Windows partitions, we will have to follow some strict rules, due to limitations in their disk access drivers. Similarly, we are constrained by GRUB, which limits where the `/boot/grub` directory can be physically stored on the hard drive. Linux itself is extremely flexible and can run entirely from extended partitions, even for swap space.

Here is the partition table that I chose for a 20 GB hard drive:

Partition      |  Size     | Filesystem  | Mount Point
---------------|-----------|-------------|------------
	   PRIMARY |           |             |
	   	hda1   | 1 GB      | FAT32       | /windows
		hda2   | 512 MB    | FAT16       | /dos
        hda3   | 256 MB    | ext2        | /
	   LOGICAL |           |             |
	   	hda5   | 4 GB      | FAT32       | /winapps
		hda6   | 256 MB    | swap        | swap
		hda7   | 512 MB    | ext2        | /tmp
		hda8   | 1.5 GB    | ext2        | /var
		hda9   | 8 GB      | ext2        | /usr
		hda10  | rest      | ext3        | /home

=TABLE_CAPTION=Partitions for a 20 GB hard drive with space for a triple-boot installation=

Since DOS can only address the first 8 GB of hard drive, we've limited the `/winapps` partition so that it falls before this limit. Similarly, we've placed the Linux root partition on an early partition so that the `/boot/grub` directory will be accessible to GRUB. If you don't do this, you will see an error message when GRUB tries to boot, and the boot will fail (and by the way, do _not_ use symbolic links in the `/boot/grub` directory, GRUB may not be able to follow them).

=ZOOM=One thing that may surprise you is that the partition software will change your sizes slightly to accommodate the disk geometry=

One thing that may surprise you is that the partition software will change your sizes slightly to accommodate the disk geometry. Thus, for example, "1 GB" usually winds up being about "998 MB" instead. It's possible to insist on more precise sizing, but probably not worth the bother, as the size requirements are only estimations, anyway.

You'll note that the Windows and DOS partitions are given mount points under GNU/Linux. The GNU/Linux installation will be able to access these partitions, although you should exercise some care in writing to them. Since they are MS-DOS or Windows filesystems, they will have limitations on file names and permissions which might surprise you.

#### 1.3 Finish the Debian installation

After this, installation is straightforward, and follows the pattern of any Debian installation, although having chosen the "Expert Install" option, you will still have to answer a lot of questions. Most of the defaults are good, so you should stick with them.

Summarizing briefly, I selected:

* Kernel image "linux-image-2.6-686" (these are Pentium III computers, which qualify as "686")
* "Yes" to shadow passwords (I use NFS, but NIS on my LAN, preferring to synchronize user IDs manually, since they rarely change)
* Create one normal user (you will have to wait to create other users after installation is complete)
* Configure the package manager
* Don't select the options requiring a network connection: "network mirror", "security updates", "popularity contest"
* Select "Desktop" and "Standard" for the system profiles (the HP Pavilion is not a "mail server" nor a "laptop")>
* Install the GRUB loader to the MBR ("Master Boot Record")
* Don't set a GRUB password
* Finish the installation
* Say that the hardware clock is on UTC time, you can actually set it later

Note that this installation of the GRUB bootloader to the MBR is temporary. We will use it for the next few reboots, but when we install Windows 98SE, it will get clobbered by Windows' own bootloader. Then, we'll have to use the Debian disk as a "rescue disk" and reinstall GRUB. This is all part of the plan.

Finally, you should see a message that starts with "Installation is complete...". At that point, we'll remove the CD and reboot.

#### 1.4 First boot

The first time you boot up your Debian system, you'll have to do some additional configuration steps.

Assuming that GRUB is working properly, you'll see two tell-tale messages during the boot that will let you know that GRUB is working: "GRUB Loading stage1.5" and, a brief moment later and two lines lower, "GRUB Loading, please wait....". If you get that far, GRUB should be good. Error messages at this point will require a re-installation.

=ZOOM=If everything is working normally, you will see a rather plain-looking KDM login screen=

After that, there will be a GRUB menu, including standard and "Single-user mode" boot options. We will simply boot using the standard option. If you are offline, as I was, you will see a long delay on the message "Starting MTA:". It's trying to do a DNS look-up, and will take an annoyingly long time to timeout.

If everything is working normally, you will see a rather plain-looking KDM login screen with "Welcome to Foo" where "Foo" is the hostname you selected for the computer. You could use the KDE interface, but it's probably faster to just use _Ctrl-Alt-F1_ to switch to a virtual terminal and login there as root to make your final configuration fixes.

To fix the MTA delay (because we're going to do a lot re-booting), use `dpkg-reconfigure exim4-config`. Set the mail system up for "local delivery only", specify the domain to answer for (mostly unimportant), and "Keep number of DNS-queries minimal (Dial-on-Demand)". Set this last one to "Yes" to eliminate the long start up delay. Finally you'll be asked if you want "split configuration". Frankly, it doesn't matter, just take the default, unless you have opinions of your own about this.

#### 1.5 Configuring GRUB

Navigate to `/boot/grub` (i.e. `# cd /boot/grub`), then use an editor to modify `menu.lst`, which is the control file for GRUB.

Here is my `/boot/grub/menu.lst` file, stripped down to the essentials:

=CODE_START=
default		0
timeout		5

title		Debian GNU/Linux
unhide		(hd0,0)
unhide		(hd0,1)
root		(hd0,2)
kernel		/boot/vmlinuz-2.6.24-1-686 root=/dev/hda3 ro
initrd		/boot/initrd.img-2.6.24-1-686

title		Windows 98SE
unhide		(hd0,0)
hide		(hd0,1)
rootnoverify	(hd0,0)
chainloader	+1
makeactive

title		FreeDOS 1.0
unhide		(hd0,0)
unhide		(hd0,1)
rootnoverify	(hd0,1)
chainloader	+1
makeactive

title		Debian (single-user)
unhide		(hd0,0)
unhide		(hd0,1)
root		(hd0,2)
kernel		/boot/vmlinuz-2.6.24-1-686 root=/dev/hda3 ro single
initrd		/boot/initrd.img-2.6.24-1-686
=CODE_END=

The kernel boot options were set during the Debian installation process, so I merely had to retain those (you'll note though, that the location of the root partition is consistent with the partition table included earlier).

=ZOOM=Probably the most "magical" things here are the "hide" and "unhide" commands, which tell GRUB to make certain partitions visible or invisible to the BIOS=

Probably the most "magical" things here are the "`hide`" and "`unhide`" commands, which tell GRUB to make certain partitions visible or invisible to the BIOS. For programs that use the BIOS to access the disk, these make disk partitions appear or disappear as needed. We need this for Windows and DOS, because they do not know how to deal with not owning the first partition on the hard drive. Thus, the `hide` commands make each seem to be in the first partition when it boots.

Naturally, we have to `unhide` the same partitions when we want to boot into GNU/Linux, so as to have normal access to all of the partitions. After some experimentation, I found that FreeDOS also has no problem with the partitions remaining unhidden.

Otherwise, the `chainloader` command passes control to the partitions own boot record so as to start the operating system in question. I believe that the `rootnoverify` command is needed to avoid testing the record for a valid Linux executable (which of course, Windows and DOS bootloaders won't be). And `makeactive` is just following the cookbook, so I'm not sure what that accomplishes.

### 2 Installing FreeDOS 1.0

Next we'll install the FreeDOS operating system. To do this, we simply reboot with the (bootable) FreeDOS 1.0 disk in the CD-ROM drive, just as we did with the Debian installation disk.

The FreeDOS installation program is, if anything, even more redundant than the Debian installer, and you will need to do a lot of seemingly pointless button pushing:

* Select "1" to "continue" to boot from CD
* Select "1" again to install FreeDOS to the hard disk
* Select "English" (unless you want a different language)
* Select "E:" drive as the target (this should be /dev/hda2)
* Select "1" again to "continue" with FreeDOS installation
* Select "1" to "start" installation of "FreeDOS 1.0 final"

At this point, the GNU GPL is display with a pause.

After this you'll need to accept the default installation directories: from `X:\FREEDOS\PACKAGES` to `E:\FDOS`. You will now be presented with a list of package groups to install. If you don't want the source code to be installed, then uncheck all the packages beginning with "src_".

=ZOOM=The FreeDOS installation program is, if anything, even more redundant than the Debian installer=

After this, you'll have to check or uncheck individual packages as you want, then move the cursor down to "DONE" to go to the next. The exact questions depend on the packages you select, but as I installed essentially everything, here are some of my choices:

* Packet driver? Yes.
* Configure via DHCP or manual? Select "2" for manual. (Quickly, as this has a short timeout)
* Mail server? Just press return for none.
* Email user-id? Again just press return.

Don't try to install the "splashscreen" option, by the way, as there is a bug in the configuration script that causes it to lock up. Apparently, you can do this manually later on if you want with C:\FDOS\bsplash.bat (though that may be the script with the bug, so it might need editing).

After a few questions and some informational messages, you should get to a regular DOS prompt, that looks like this:

=CODE_START=
E:>
=CODE_END=

FreeDOS does _not_ corrupt your GRUB installation, so you will be able to reboot with it.


### 3 Installing Windows 98SE

Hardly any end users actually install Windows these days. You may be interested to know that it really isn't all that different from installing GNU/Linux or FreeDOS. There are fewer options, but by the same token, less you can do if it doesn't work. Plus, you have to tolerate on-screen propaganda telling you what a wonderful buying decision you've made, and how much you're going to love the "new" Windows. Plus what I suppose is meant to be a cute little "drum roll" icon, but actually beats a dirge most of the way through, at least on this 500 MHz system.

=ZOOM=Hardly any end users actually install Windows these days=

As the first step, reboot the computer and select "Windows 98SE". There is no Windows installed yet, but this will fire the `hide` commands, preparing the system for the Windows install. After the system returns to the GRUB menu (which is what it does if there's no operating system found), insert the Windows 98SE _boot floppy_ into the _3.5" floppy disk drive_, and restart. 

As the BIOS tests are running, insert the Windows 98SE CD-ROM. The system will come up into a DOS command line shell. CD-ROM drivers should be installed, and you should see a message indicating to which drive letter the CD-ROM drive has been assigned (if not, you can find it by trial-and-error).

It may not be necessary, but should not be harmful, to do a (high-level) format of the new Windows partition. This is `/dev/hda1` in Linux terminology or what Windows calls `C:`. To do this, type `FORMAT C: /S` from the startup disk. I found this helped avoid problems when I had an existing FreeDOS installation on the `/dev/hda1` partition.

Type "`F:`" (for example) to navigate to the Windows installation CD-ROM. Then type "`dir`" to list the CD's root directory. You will see, among other things, an executable, called "`SETUP.EXE`". Type "`setup`" to run this.

The first thing it will do is to run "scandisk" (a disk defragmenter) on the drives it can find. Then it will start the actual install with a click-through for the Microsoft EULA (there's all kinds of good there, as any FSM reader will know). Next, you will need to type in the "product key" which is printed on the package. This is, of course, copy protection, because of this unnatural idea of selling individual copies of software as if they were chunks of matter.

Then you will need to confirm the target directory of "`C:\WINDOWS`". Selecting "custom installation", I added "Desktop Themes". There's really no reason not to include everything on a disk this size.

=ZOOM=After going through some automated testing and possibly rebooting the computer again, Windows will be installed=

At this point, the installer will make another startup disk (_now_ it makes it easy).

The installer will reboot the computer. You'll note that it comes up directly into Windows now. This is because Windows has overwritten the MBR, clobbering GRUB. This is expected.

After going through some automated testing and possibly rebooting the computer again, Windows will be installed. When you reset the time in Windows, remember to use UTC (or GMT) time, as specified in the Debian installation.

### 4 Restoring GRUB

To get GRUB back into the MBR, you will need to re-use the first Debian installation disk as a "rescue disk". From the startup menu, you will need to select "Advanced Options" and then "Rescue Mode". This will look disturbingly similar to the regular installation menu, and will ask many of the same configuration questions up front, but you'll note a message saying "Rescue" in the upper left corner of the screen. Eventually it will drop into a rescue menu, which will include the option to "Reinstall GRUB". You can do this, or you can execute a shell and run "`grub-install`" yourself. Either method should work.

# Voila! Triple Boot

At this point, you should be able to reboot the system and see the GRUB menu. You should verify that each of the boot options works, by alternately booting into each system a couple of times. I recommend doing this in a couple of different sequences so as to exercise all of the "`hide`" and "`unhide`" commands, because an error in these can result in some apparently "intermittent" behavior (actually behavior dependent on what operating system was picked on the previous boot).

This completes the technical part of the installation. You'll note that it's still a little bit bland, and in my next column, I will describe how I went about customizing these systems with catchy graphics, text, and sounds.

