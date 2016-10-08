---
nid: '1958'
title: 'Backing up your system with free software'
authors: 'Jon Peck'
published: '2006-12-21 5:00:01'
tags: 'partitioning,imaging,toolkit,live-cd'
license: verbatim_only
section: hacking
listed: 'true'

---
You've spent hours installing,configuring, and tweaking your system into perfection. Everydevice isworking properly, every patch applied, every last last application isup to date, and your system is contently purring like a lion with abelly full of wildebeest.  This is a prime time to savean image of your system in case anything screws it up. Thereare manycommercial solutions available, but what free utilities will properlyback up your system?


## Wait, what's an image?

Before we go anyfurther, let's define exactly what a hard drive disk imageis. In itssimplest form, it's a file that contains the complete contents andstructure of a drive, partition, or logical disk. The filecan beextracted to restore the contents of a hard drive back to the exactstate it was in when the image was created. Images can becreated ofother forms of media, such as a CD using formats like ISO.


## How can I create an image?

An excellent cross-platform free software package for harddisk imaging is [Partimage](http://www.partimage.org/). This utility includes the ability to compress the image on the flyusing GZIP, BZIP2 or LZOto savespace, and to split the image into multiple files to spandisks. Whileit runs on Linux/UNIX, it supports many types of file systems,including ext2fs/ext3fs, Reiser3, Fat16/32, HFS (beta), and NTFS(experimental and functional; hasn't failed me yet). You cantransfer the images over the network with or without SSLencryption.  You have two options for interacting with Partimage; through a GUI or by command line. 


## Why can't I just use dd?

The 'dd' command copies all blocks, including the empty ones,where Partimage only copies data from the used portions of thepartition. Even without compression, Partimage will savepotentially massive amounts of overhead when compared to 'dd'.


## Other than backing up a workstation, what else can I use animage for?

Sayyou have a computer lab with 30 machines, all with the exact kind ofhardware. Which would make more sense; configuring each ofthe thirtyindividual computers the same way one at a time, or just send an imageover the network to multiple computers simultaneously, guaranteeingperfect replication of applications and settings. Partimagecan support this client / server scenario as well. 


## What if I want to manipulate partitions?

While Partimage is limited to creating and replicating images,it's actually part of a larger suite of applications named [SystemRescueCd](http://www.sysresccd.org/). Based on Gentoo, SystemRescueCd is a bootableLinux distribution that you can use for low level system administrationtasks, such as repairing your system or altering partitions. Itincludes GNU Parted (disk partition editor), QtParted (a Partition Magicclone), Partimage, partition table backup, and many file system toolsto allow you to format, resize, and debug your hard disk. There are also instructions onhow to copyit to a flash drive, in caseyou don't have an optical drive ready or if you just want theconvenience and portability.


## Are there other tool collections out there?

Of course. [Knoppix](http://www.knoppix.org/)is the veritable grandaddy of Linux Live CDs. It's a full-fledged distribution that gives you an entire desktopsystem built to run from a CD. It has hundreds of applicationsand tools;everything except the kitchen sink. Heck, it probably hasthat too. Astripped down, much smaller version of Knoppix called [Feather Linux](http://featherlinux.berlios.de/)weighs in under 128MB, and also includes Partimage. 

A different, smaller Live CD distribution is [DSL(Damn Small Linux)](http://www.damnsmalllinux.org/) which is primarily aversatile backup and restore system, with the added advantage ofproviding a feature complete desktop that you can bringanywhere. It'sbuilt specifically to fit on a business card CD (less than 50 MB),which gives you lots of space for expansion if you copy it to a flashdrive. Unfortunately, it doesn't support Partimage out of thebox. 

Finally, there's [CDlinux](http://cdlinux.berlios.de/),which is an extremely small collection oftools (less than 17MB) that provides network support and supports awide range of older hardware. You also can use it as a baseto rollyour own set of tools. However, as it hasn't been updatedsince early2005, I wouldn't recommend it anymore.


## Conclusion

I've found Partimage and the SystemRescueCdto be invaluable headache-saving additions to my collection of tools,further freeing myself of the reliance on expensive commercialapplications. You should probably think of making an imagebefore youhave one of the moments where you say, "Hey, let's try this new systemadministration tool I read about on the forums... it's working great...wait, what's this d

