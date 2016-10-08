---
nid: '1932'
title: 'MINIX: what is it, and why is it still relevant?'
authors: 'Alan Berg'
published: '2007-03-19 6:30:00'
tags: 'interview,minix,minix-3,andy-tanenbaum'
issue: issue_16
license: verbatim_only
section: hacking
listed: 'true'

---
MINIX, as originated by Andy Tanenbaum, is an operating system that has its roots and heart in academia as a tool that teaches you how kernels really should work. Recently, however, with the advent of version three of this rock solid OS, the focus is on making a production ripe embedded distribution. Being POSIX compatible with a Kernel of 3800 lines of code and a unique approach to handling drivers, MINIX 3 is well worth the effort to review for readiness.


# A very brief history

Andy Tanenbaum first released MINIX 1 in 1987 as an appendix to the book, _Operating Systems: Design and Implementation_. MINIX rapidly became very popular, with a USENET newsgroup being formed with 40,000 readers within 3 months. One of these readers was Linus Torvalds, who went out and bought a PC just to run and study MINIX. He wanted some improvements, so he made them himself. Then he made some more, and eventually he realized that he had gradually converted MINIX into his own operating system, entirely free of the original code.

MINIX 2 was released in 1997 with the next edition of Andy Tanenbaum and Albert S Woodhull’s [book](http://vig.prenhall.com/catalog/academic/product/0,1144,0131429388,00.html).

MINIX 3 (current stable version 3.1.2) is now out and by no coincidence the book’s third edition. The OS has been released under a BSD license, which should, in theory, suit both commercial and educational markets. For the first time, there is a clearly stated emphasis on an industrial ripe Kernel for embedded applications. Hence, my motivation for writing this article.


=ZOOM=There is a clearly stated emphasis on an industrial ripe Kernel for embedded applications=

Trivia: the MINIX mascot is a Raccoon (figure 1), which, to me, seems to be a nice positive figure that can compete with Penguins in terms of cuddliness.

Currently the [MINIX website](http://www.minix3.org/) is quite active with 1400 visitors a day on weekdays. Better still: expect version 3.1.3 of MINIX released around the time you read this article. The new release will focus on greatly increasing the reliability (e.g., being able to survive and replace device driver crashes without the user even noticing).


=IMAGE=fig1.jpg=Figure 1: MINIX Raccoon logo=


# A little technology

For the most up to date technical information please visit the document section of the MINIX home.

MINIX 3 is POSIX compatible, which implies that the OS has a set of standard interfaces. Practically speaking, this implies that porting a large swathe of software from other POSIX compatible systems, such as Linux, is straightforward. MINIX has already had 400 packages ported including X windows.

MINIX 3 runs on 386, 486, or Pentiums or compatible CPUs, and can be installed on a system with as little as 50MB of disk space and 8MB of ram. Therefore, the distribution should run nicely on the laptop I first used ten years ago.

Architecturally, MINIX is based on the concept of a microkernel where the device drivers live in user land. This is advantageous, as processes in user land do not have direct access to resources without first going through the Kernel and should not be able to crash the Kernel through misbehavior. This very strong toughening catches many failure paths that are present in the much larger monolithic kernels such as Windows or Linux. Further, this allows the Kernel to remain small and understandable by any experienced kernel programmer, the fewer lines of code that exist in the Kernel the less likely that bugs, security, or maintainability issues occur.

Designed into the OS is a reincarnation server to restart device drivers if they have stalled or crashed. This feature is a rather nice self-healing process that you may want in your satellites and nuclear reactors.

The main performance trade off is extra effort required for context switching from the Kernel to user land for device drivers, which decreases the performance when compared to monolithic Kernels. The question to answer then is whether the performance overhead of 5-10% is made up for by the elegant design’s enhanced reliability, readability, and maintainability. I personally suspect it is.


=ZOOM=The performance overhead of 5-10% is made up for by the elegant design’s enhanced reliability, readability, and maintainability=


# Interview with Andy Tanenbaum

Andy Tanenbaum has many achievements (see his [Wikipedia entry](http://en.wikipedia.org/wiki/Andrew_S._Tanenbaum)) including writing some excellent textbooks, teaching, and being the design guru behind MINIX.


## Questions

**AB: Can you give a little background context of your role within the development process of MINIX3.**

AT: I am the guiding light and occasional disciplinarian. I try to keep our goal in focus—building a highly reliable system. My Ph.D students, Masters students, and professional programmers do the actual work.

**AB: MINIX has had a traditional role as a learning tool within University environments; do you have any idea about how widely MINIX is currently deployed?**

AT: I don’t think the book sales of the hardcover text version in English have ever dipped below 10,000 copies a year for 20 years, and it has been published in places like India in runs of 100,000. And the book has been translated into a dozen languages. The number of students who have studied MINIX in detail is surely north of half a million and still going strong. The [www.minix3.org Website](http://www.minix3.org) currently gets about 1100 to 1400 hits a day and there have been over 100,000 downloads of the CD-ROM image in the past year. Because it comes with the Berkeley license, industrial users who modify it for products don’t have to report back to us, so I don’t know much about use in embedded systems.

**AB: MINIX3 has been designed to be a production ripe OS for embedded and low resource computers. Is MINIX being taken up in industry at present?**

AT: MINIX 3 hasn’t been out there long enough to have acquired much of an industrial user base, and companies don’t have to tell us they are using it, so I don’t really know.

**AB: What do you see as the near future development goals of MINIX?**

AT: Making it self-healing, I think with version 3.1.3 it should be possible to start a long file transfer over the network, then repeatedly kill the disk driver and Ethernet driver to simulate driver crashes and have the transfer complete correctly with no errors, despite the drivers being automatically replaced on the fly during operation multiple times. Other systems don’t do quite as well when drivers crash (or are killed to simulate crashes). They go belly up instantly.

**AB: What do you see as the long-term goals of MINIX?**


<!--pagebreak-->


AT: Demonstrating that you can build small, acceptably fast, highly reliable systems out of small, modular components.

There you have it, an interview with Andy Tanenbaum and an OS built on the KISS principle. Now to install MINIX 3.


# Installation

MINIX 3 is downloadable as source and as a Live CD. After booting from the CD, the process of installing a disk is straightforward. However, the installation requires an extra partition. For demonstration purposes, I have, therefore, chosen to use a virtual machine QEMU and a pseudo partition contained within a specially formatted file. If you are as pleased as I am with the outcome, then you can always later repartition your real hard disk and perform the setup properly.

A second advantage of having a partition stored within a file is that you can copy the file to other machines and use the virtualization player to run; thus allowing different setups, browsers, and test configurations. Further, as we move from a single process paradigm to multiple cores—where the cores reside not only traditionally in the CPU, but also in the graphics card and perhaps even the sound card—we can expect that, for Service Providers, multiple virtualizations may be the most efficient approach to consuming the maximum amount of resources with useful work per customer.

The following instructions require 1GB of hard disk and 160MB of free memory. Note: I am spoiling myself here. It is viable to perform a setup with less resources; however, I am installing on a typical, if not slightly old PC, and am not trying to push forward a resource lean embedded environment. I have based the instructions on Ubuntu Linux 6.06; however, QEMU, being virtualization software, also runs stably on other OSes (MAC, Windows and, of course, other Linux and UNIX distributions). On the other OSes, after installing QEMU, the instructions shouldn’t change.

The two virtual machines I considered for use were QEMU and Bochs, both excellent free software tools of the trade. First, I tried QEMU out and the process worked first time without any errors or hassles; therefore, I never got around to trying out Bochs.


=ZOOM=I tried QEMU out and the process worked first time without any errors or hassles=

The QEMU emulator is GPLed under the circumstances that we are using it. However, there is a proprietary license associated with the accelerator pack. Without the accelerator pack the emulator runs between 5-10 times slower than the system that is being emulated. This slow down is not an issue for MINIX3 which is fast and has a small footprint.

The approach I am taking is to download the bootable disc image from the official MINIX 3 website, create an empty virtual partition, boot up the image within the emulator, and populate the virtual disc via a standard setup. Finally, I’ll boot off the virtual disc via QEMU and play "Dungeons" a rather nice text based adventure, which I had much fun with as a student (and yes I am that old!).

**Note:** At the time of writing the download links were working. If, in the meantime, the links fail, please visit [www.minix3.org](http://www.minix3.org) to get the CD image.

In Ubuntu, with system administrator rights, you can install QEMU via the command line with the following command:


=CODE_START=

sudo apt-get install qemu
Do you want to continue [Y/n]?

=CODE_END=

The result of your action should be similar to:


=CODE_START=

Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following extra packages will be installed:
  bochsbios vgabios
Recommended packages:
  debootstrap sharutils proll openhackware
The following NEW packages will be installed:
  bochsbios qemu vgabios
0 upgraded, 3 newly installed, 0 to remove and 0 not upgraded.
Need to get 3861kB of archives.
After unpacking 10.4MB of additional disk space will be used.
Do you want to continue [Y/n]?

=CODE_END=

If this approach fails then please visit the homepage of QEMU.

After checking that you have enough disk space for the 1GB pseudo file system and the 250MB CD image, create a directory in your home directory.


=CODE_START=

cd ~
mkdir minix3

=CODE_END=

Download the [CDROM image](http://www.minix3.org/download/), either via your web browser or via wget, from the MINIX 3 website and expand it into the `minix3` directory.


=CODE_START=

cd minix3
wget http://www.minix3.org/download/IDE-3.1.2a.iso.zip
unzip IDE-3.1.2a.iso.zip

=CODE_END=

Make an empty virtual image with 1GB free. I chose 1GB so that I’d have room to install lots of packages and their sources. However, you maybe able to get away with around 100MB if you restrict yourself to an elite set of packages and no sources.


=CODE_START=

qemu-img create minix3_1_2_a.img 1024M

=CODE_END=

The output should be similar to:


=CODE_START=

Formating 'minix3_1_2_a.img', fmt=raw, size=1048552 kB

=CODE_END=

In addition, the file `minix3_1_2_a.img` should now exist and it should be of the correct file size.

Bootup the CD image inside the emulator:


<!--pagebreak-->



=CODE_START=

qemu -cdrom  minix3_1_2a_ide_build2.iso -boot d -hda minix3_1_2_a.img -m 160

=CODE_END=


=IMAGE=fig2.jpg=Figure 2: MINIX 3 Live CD just after boot up=

Type setup and reproduce the answers to the following questions:


=CODE_START=

Keyboard type? [us-std]  - Press Return
Ethernet card? [0] - Press Return
Basic (M)inimal or (F)ull install? [F] - Press Return
Press ENTER for automatic mode, or type 'expert' - Press Return

=CODE_END=

At this point, you should see the message:


=CODE_START=

The following disk was found on your system:

    Disk [0]: /dev/c0d0, 1024 MB
        Free space (1023 MB)

Enter the disk number to use: [0] - Press Return
Enter the region number to use or type 'delete': [0] - Press Return
Are you sure you want to continues? Please enter 'yes' or 'no':  - Type yes
How big do you want your /home to be in MB (0-953) ? [190] - Press Return
190 MB Ok? [Y] - Press Return
Block size in kilobytes? [4] - Press Return

=CODE_END=

After formatting the pseudo partition and checking the partition’s new integrity, type:


=CODE_START=

Shutdown

=CODE_END=

Startup with:


=CODE_START=

qemu -cdrom  minix3_1_2a_ide_build2.iso -boot c -hda minix3_1_2_a.img -m 160

=CODE_END=

Login as root and create a root password from the command line via `passwd`. Type `less` from the command line. Oh no! the tool is not installed:


=CODE_START=

less: No such file or directory

=CODE_END=

Okay, now we need to install some applications. The CD image contains 40 such packages. Your next action should be to type `packman` to run the package manager, and then press ‘3’ to list the packages on the CD. A list should appear similar to that shown in figure 3.


=IMAGE=fig3.jpg=Figure 3: List of installable packages found on the CD Rom image=

Press ‘q’ to return to the original menu. Select ‘4’ to choose a package and ‘21’ for the `less` package.

For some homework, install `dungeons` (package 11) and run it from the command line, within the game type `info`. The game was fun when I was a student all those long and wasted years ago. Perhaps, you will find it as fun.


=IMAGE=fig3.jpg=Figure 4: Time to play in the dungeons=


# What to do next

MINIX is fast, reliable (well I have never seen it crash or freeze) and, with a small footprint, is ideal for your old Pentiums or even 386s and 486s that might still be hanging around in your loft somewhere.


=ZOOM=MINIX is fast, reliable and, with a small footprint, is ideal for your old Pentiums or even 386s and 486s=

I would respectfully suggest that you try to get yourself onto the network and start using it. If you find any issues, report them back to the hard working development community via `comp.os.minix`.

If you think that your favorite free software package or a device driver is missing, then why not join the development community and volunteer your time to build this lean-mean-operating-system-machine’s vocabulary of packages to a higher level? I suspect that you will learn some good practices on the way.

Finally, if you wish to brush up on the theoretical constructs behind OS design with a MINIX 3 practical bias, then you may be interested in reading the updated classic _Operating Systems Design and Implementation 3 edition_ by Andrew S. Tanenbaum and Albert S. Woodhull.


# Impressions

Personally, I found MINIX 3 fun to play with. Installing it on an old PC was quick and painless. Boot up time is dramatically less than for Windows or Linux, partially because the Kernel is so lean and only a few servers are running. Being POSIX compatible and being able to run X Windows makes porting of GNOME or KDE (or Window managers, in general), viable and potentially straightforward. Though intended for the embedded marketplace, I don’t see any reason to not position MINIX as a viable OS that will later stand alongside Linux, FreeBSD and OpenBSD, etc., in audience recognition. I even positively contemplate the possibility of an ergonomic fit with embedded Apache, Tomcat and Java as an efficient internet application host. However, no doubt, that would depend on the performance hit of context switches from kernel space to user land due to the deliberate reliability design feature of placing drivers in user land.


=ZOOM=I don’t see any reason to not position MINIX as a viable OS that will later stand alongside Linux, FreeBSD and OpenBSD, etc., in audience recognition=

Finally, it is clear that the design of MINIX 3 brings new competitive ideas for enhancing reliability and maintainability to the fore. I hope MINIX 3 will stimulate the next generation of OS designers in the same way it has the previous.


# Acknowledgments

I wish to acknowledge the input of Andy Tanenbaum and the historically-seen rippling effects of his innovative design concepts on others.


# Bibliography

Bochs—[http://bochs.sourceforge.net/](http://bochs.sourceforge.net/)

Document section of the MINIX website—[http://www.minix3.org/doc/](http://www.minix3.org/doc/)

QEMU—[http://fabrice.bellard.free.fr/qemu/index.html](http://fabrice.bellard.free.fr/qemu/index.html)

MINIX homepage—[http://www.minix3.org/](http://www.minix3.org/)

MINIX Live CD—[http://www.minix3.org/download/](http://www.minix3.org/download/)

Operating Systems Design and Implementation, 3/E—[http://vig.prenhall.com/catalog/academic/product/0,1144,0131429388,00.html](http://vig.prenhall.com/catalog/academic/product/0,1144,0131429388,00.html)

POSIX—[http://en.wikipedia.org/wiki/POSIX](http://en.wikipedia.org/wiki/POSIX)

Vrije Universiteit Amsterdam—[http://www.vu.nl/home/index.cfm](http://www.vu.nl/home/index.cfm)

Wget—[http://www.gnu.org/software/wget/](http://www.gnu.org/software/wget/)

Wikipedia entry for Andrew Tanenbaum—[http://en.wikipedia.org/wiki/Andrew_S._Tanenbaum](http://en.wikipedia.org/wiki/Andrew_S._Tanenbaum)


