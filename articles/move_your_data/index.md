---
nid: '2225'
title: 'Move your data!'
authors: 'Mitch Meyran'
published: '2007-04-24 9:15:10'
tags: 'linux,windows,ntfs-3g,unix'
license: verbatim_only
section: opinions
listed: 'true'

---
It is an old question, and one worth investigating regularly.

What do you do when you want to move a disk back and forth between a GNU/Linux system and Windows? **_Updated: how to update FUSE and some precisions_**.


<!--break-->



# A physical problem

While nowadays sharing data between a Windows and a Unix machine is almost trivial (thanks to Samba, or for the hardcore, FTP), when you want to take your data with you and use it whether you're on a Windows or a Unix machine, well, you're in trouble. What can you do?


## A brief recap of Windows file systems

Historically, Windows has used File Allocation Table-based file systems: FAT12 for floppies, FAT16 for early hard disks, and FAT32 for larger one (starting with Windows 95 OSR2). This kind of file system isn't robust, not very flexible, has not really high performance, but on the other hand it's very simple to implement - and most Unixes (Linux, xBSD, Solaris etc.) had a compatible read/write capable driver built-in in a flash once a new version was released.

Meaning that, until now, you were usually content to format your 'translation' disk into FAT32 and be done with it. Right, but there were limitations:


* FAT32 won't support files larger than 4 Gb (file size is stored as a 32-bit unsigned integer)
* Windows won't deal well with partitions larger than 32 Gb (Windows 9x will actually trash partitions larger than 8 Gb upon install)
* FAT32 is inefficient with large amounts of files, doesn't deal well with complex script, doesn't implement security schemes of any kind...
* FAT32 doesn't support Unicode; you need to specify code pages and encoding at mount time.
* Right now, Microsoft is trying to ban FAT32 - both from their own systems and from others.

Meaning that Windows is left with two file systems it can gladly support: NTFS and ISO9660 - yes, the CD/DVD-ROM file system, with its (mostly of being read only) problems.

NTFS has its roots in IBM's HPFS file system, but as always with Microsoft, it has been modified enough to be incompatible, and after that NTFS evolved without documentation and with reckless abandon.

So what to do?


## Linux's NTFS support

Starting in 1995, the Linux kernel had an NTFS file system; soon mostly compatible with Windows NT4's driver version (1997), it was however marked as experimental at the time. However, Windows 2000's version of NTFS broke backward compatibility (it was a major revision of the Microsoft  driver) and since the Linux kernel didn't check what version of NTFS the file system used, enabling write support for this first generation NTFS Linux driver usually resulted in a sound thrashing of the partition.

As such, more often than not write support in kernel was disabled.

More recently, a rewrite effort was undertaken to implement a much safer driver in kernel:

_The project was saved by Anton Altaparmakov who, in 2000, took over the maintenance, and decided to rewrite the driver and the user space utilities from scratch to also include support for the new NTFS versions. He was helped by Richard Russon in the early years._ [(source)](http://www.ntfs-3g.org/about.html)

The resulting driver soon had complete read support for Windows 2000 and XP's NTFS drives, but writing was implemented much more slowly: the NTFS format is very complex, including basic journaling, different ways to store files depending on their size, dynamic sizing of file tables, encryption and compression, NT-style access rights...

As such, write support was added very cautiously: in 2005, you could modify the contents of an existing file without changing its size; then you could modify its size; in 2006, you could add and remove files and directories in a little fragmented volume.

This second generation driver, although much more limited than its ancestor, is still much safer and more elegant in its design: tools that came with it soon allowed one to create and resize 'live' NTFS partitions, on top of almost (neither encrypted nor compressed files are supported) complete read support and increasingly useful write support.

Other solutions were often proprietary, the most successful of which uses the Windows NTFS driver (ntfs.sys) inside a wrapper now mounted using FUSE; reliability is supposedly good, however ntfs-3g developers used tests on it showing it isn't really the case, and due to its emulation layer it is quite slow. It is however feature complete: [CaptiveNTFS](http://www.jankratochvil.net/project/captive).


## Windows Ext2/3 support

On the other hand, you could also make Windows ext2/3 aware: the Ext2IFS driver, for example, allows you to access any ext2 file system you want (and ext3 filesystems too, due to its backward compatibility with ext2). However, it doesn't retain access rights and it doesn't support journaling.

However, the most used version of this driver is merely closed source freeware; while quite reliable, some may prefer to use another software named Ext2IFS by John Newbiggin. It is not updated anymore and not recommended by the author, who instead provides VirtualVolumes - which works a bit like Explore2FS, but supports writes and also provides read support for Reiser3 and linear stripes LVM - among others.

If you need to access an ext2 partition here and there both are okay, as they install easily and are a snap to configure, yet they use only ext2 - not ext3. Safety takes a hit here without journaling.


## UNIX user space NTFS support, third generation: ntfs-3g

More recently (2004), a third generation driver was started based on FUSE (File system in User SpacE) which essentially made the kernel aware of user-level drive access for any file system FUSE could load. The project evolved steadily yet cautiously, resulting in a driver version 1.0 in February 21st, 2007, able to read/write safely on any existing NTFS drive.

This driver version has still some teething problems:


* it's not very fast - yet.
* in the rare case where you screw up your drive and `ntfsfix` can't fix it, ntfs-3g won't mount in read/write and you need to do a `chkdsk /f` under Windows on the drive to restore it (or copy its contents, erase then recreate the partition, at which point ntfs-3g will gladly resume normal operation).
* it can't read compressed or encrypted files. You need to uncompress/decrypt those in Windows first.

However:


* it relies on FUSE; if a system supports FUSE, it essentially supports NTFS: MacOS X, NetBSD, FreeBSD, BeOS, Haiku, Linux 2.6 (all platforms). It makes little doubt that support for other systems such as OpenSolaris or Minix 3 is but a little port away.
* it works in user space: the only need for root access is at mount time, and it is merely precautionary as of now, not necessary. It essentially means that ntfs-3g cannot be used to gain escalation of privileges.
* it is Free.
* on recent kernel versions (2.6.20.2 or better), you can use it as a root partition and you can host a swap file on it too.
* performance increases steadily: version 1.417 (stable) is now ten times faster in extreme cases than version 1.0.
* safety first: ntfs-3g automatically detects as many problems as it can before performing any write operation it can. Essentially, it checks that FUSE is good, that known kernel bugs won't affect it, and that the NTFS drive is clean before mounting. If there is any trouble, it stays read only.

Having used it in some heavy scenarios, I can attest that it is, indeed, stable and safe.

I first tried version 1.0, but I hit one of those performance problems: copying very large files on somewhat fragmented, filled up volumes, got slower and slower and resulted in unnecessary fragmentation. Thus I looked at updating it.


## Updating FUSE and ntfs-3g

While any version of FUSE past 2.6 will get you the most necessary functions, using the latest version (2.6.5 at the time of this update) can't hurt.

So as to do a proper job, uninstall any and all existing packages and files you may have concerning ntfs-3g and FUSE.

Then, download the latest tarballs for both softwares. Unpack them where you want (I use /usr/src, you may want to use /usr/local/src, or whichever you prefer). Ensure that you have gcc-c++ installed, preferably the version used to compile your kernel.

unpack the tarballs: `tar xzf fuse-2.6.5.tar.gz` and `tar xjf ntfs-3g-1.417.tgz`

FUSE first: `cd fuse-2.6.5`

On a Mandriva 64-bit system, run `configure` like this:`./configure --enable-kernel-module --enable-lib --enable-util --libdir=/usr/lib64 --bindir=/usr/bin` - of course, you can use default settings (`/usr/local/bin` and `/usr/local/lib`) if it matches your own machine better.

Now, as root, `make && make install`. This will install a new version of the FUSE kernel module and the FUSE library and utility.

Finally, check that your kernel module is, indeed, updated: go to `/lib/modules/2.6.xx.xxxx/kernel/fs/fuse` and rename `fuse.ko.gz`; compress `fuse.ko` with `gzip fuse.ko` if needed.

Now then, deal with ntfs-3g: `cd ../ntfs-3g-1.417`

Configure it: `./configure` (with `--prefix=/usr` if your distribution doesn't use default prefix of `/usr/local`), `make`, `make install` as root. Done.

Performance got very good with version 1.417, and provided you have installed a recent FUSE kernel module (2.6.3 or later), mounting and unmounting the drive is very easy. Transfer speed is now much more consistent, copied files are much less fragmented, and CPU use has decreased tremendously (from 80% on a 2 GHz processor to 5-10% on the exact same large file copy).

**What you get from upgrading FUSE:**


* you needn't sync your drives before unmounting anymore; otherwise, especially at shutdown, you may have gotten write errors if you performed large writes on a not so fast drive (and the ntfs-3g process got killed before flushing) - this was troublesome on OpenSUSE and Mandriva 2007.1 among others,
* you can use an NTFS partition as boot partition,
* you can put a swap file on an NTFS partition,
* you don't get warnings about the above anymore.


# Conclusion

I'm now in the process of doing away with FAT32 drives; recent distributions have built-in support for ntfs-3g, and the advantages (no more file size limitations, ext3 partitions left alone) heavily outweigh the inconvenients (still not optimal performance, careful handling required with older kernels).


## Bibliography

The [ntfs-3g website](http://www.ntfs-3g.org)

The Linux kernel sources [(host site)](www.kernel.org)

John Newbiggin's [Virtual Volumes](http://www.chrysocome.net/virtualvolumes) website

Stephan Shreiber's [Ext2IFS](http://www.fs-driver.org/author.html) website

