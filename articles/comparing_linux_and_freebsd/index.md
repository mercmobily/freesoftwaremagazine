---
nid: '1379'
title: 'Comparing GNU/Linux and FreeBSD'
authors: 'Arturo Fernández Montoro'
published: '2007-05-30 6:30:00'
tags: 'gnu/linux,freebsd'
issue: issue_17
license: gfdl
section: hacking
listed: 'true'

---
GNU/Linux is the most popular operating system built with free/open source software. However, it is not the only one: FreeBSD is also becoming popular for its stability, robustness and security. In this article, I’ll take a look at their similarities and differences.


# Introduction

FreeBSD is an operating system based on the _Berkeley Software Distribution (BSD)_, which itself is a modification of _AT&T’s UNIX_, and was created by the University of California. During the development of FreeBSD, to avoid any legal problems with the owners of the source code, the developers decided to re-engineer the original BSD, rather than copy the source code.

In contrast with GNU/Linux, where all the pieces are developed separately and brought together in distributions, FreeBSD has been developed as a complete operating system: the kernel, device drivers, sysadmin’s tools and all the other pieces of software are held in the same revision control system.

Initial development of Linux was started in 1991 by Linus Torvalds who used _Minix_—an operating system developed by Andrew Tanenbaum for teaching purposes—as the basis for his system. By 1990 the GNU project, which had been started in 1983 by Richard Stallman, had produced and collected all the libraries, compilers, text editors, shells and other software necessary to make a free operating system—except a kernel. The Linux kernel developers decided to adapt their kernel to work with the GNU software to make a complete operating system: GNU/Linux was born.

The kernel and the majority of the code in FreeBSD has been released and distributed under the _BSD_ license although some components use other open licenses like the GPL, the LGPL or the ISC. The Linux kernel, and most of the software in the GNU project, has been licensed under the GNU GPL which was created by the Free Software Foundation.


=IMAGE=Tux.jpg=Linux logo by Larry Ewing=


=IMAGE=wall3.jpg=FreeBSD logo from FreeBSD site.=


# Technical differences

FreeBSD and Linux both follow the UNIX philosophy but some differences do exist between the operating systems—let’s have a look at some of these differences on a technical level.


## Devices

Hardware related dispositives like disks, network cards, printers, graphics cards, mice and keyboards are referred to using the term _device_ in the context of operating systems; Linux and FreeBSD use different nomenclature for this hardware.

Linux uses predefined names for each device type, so _eth0_ is the first Ethernet network card for any chip-set. FreeBSD, on the other hand, uses a different name for each device and their chip-set: for example, a single network card with the common _RealTek 8129_ chip-set is called _rl0_ in FreeBSD.

On Linux hardware information can be obtained by examining the content of the `/proc` directory; a command like `lspci` or `lsusb` can also be used—these commands simply reformat the information contained in `/proc`. FreeBSD does not use the `/proc` directory, rather the `sysctl` command shows all the information about the hardware devices attached to the system and can also be used for configuring and tuning them.


## Runlevels and startup scripts

_Runlevel_ is the term used to describe a mode of operation for a system such as reboot, halt, single-user mode or multi-user mode. On GNU/Linux the `/etc/inittab` file describes these different runlevels and the `init` process allows the system to change its current runlevel. FreeBSD uses commands like `reboot` or `shutdown -h` to change the current runlevel instead of the `telinit` command used in GNU/Linux.

On GNU/Linux each runlevel has a subdirectory under `/etc/` or `/etc/rc.d/`, depending on the distribution: Debian, for example, uses `/etc/`. These subdirectories are `rc0.d`, `rc1.d` and so on until the last runlevel (there are usually seven runlevels). Each rc_x_.d subdirectory contains symbolic links to the startup scripts residing in the `/etc/init.d/` directory.

On FreeBSD the startup scripts exist in the `/etc/rc.d/` directory (for the system) and in the `/usr/local/etc/rc.d/` directory (for third-party applications). These scripts use parameters such as `start` or `stop` to control which scripts run at startup (start and reboot) and shutdown.


## Kernel

Obviously there exist design differences between the Linux kernel and the FreeBSD kernel but there are also similarities:


* Modules: support for loading and unloading modules without recompiling the kernel or rebooting the system.
* Versions: each official kernel uses a numbered version.
* Build a custom kernel: some benefits of building a custom kernel are that it can result in a faster boot time, lower memory usage and additional hardware support.

Commands for loading and unloading kernel modules, as well as listing the loaded modules, are different in each system. Linux uses the `modprobe` command for loading a module and for seeing a list of the loaded modules, `lsmod` just shows a list of the loaded modules and `rmmod` unloads any unwanted modules. FreeBSD uses `kldstat` to list the currently loaded modules, `kldload` for loading a module and `kldunload` for removing a module.


<!--pagebreak-->


The Linux kernel uses tree numbers for each version: the first number represents the major version number—at the moment this is ‘2’; the second number indicates if it is a stable (even number) or development version (odd number) and the last number is the patch version. You can see this demonstrated in the most recent version, 2.6.17. In FreeBSD the kernel has two numbers, first for the major version and second for the minor new releases: for example the most recent release is 6.1.

Building a custom kernel on either system requires you to compile it from source. However, the steps for achieving this are different on each system. The first step is downloading the sources or obtaining it from a physical medium like a DVD or CD—this step is required in both systems. Linux offers both GUI and CLI tools for creating your own custom kernel; FreeBSD uses a text editor to comment or uncomment the options which control the process. Finally, you use the `make` command to compile and install the kernel.


## Software installation

Third party software can be distributed in binary or source format. Usually this software is packaged using compression tools such as _tar_ and _gzip_; however, many GNU/Linux distributions use their own format for software packaging and provide tools for installing, un-installing and configuring it. Debian, for example, uses the _.deb_ package format and tools like _apt_ or _dpkg_ to manage these. Using these tools the process to install a software application from the command line is easy; the following example demonstrates how to install The GIMP image editing program:


=CODE_START=

# apt-get install gimp

=CODE_END=

FreeBSD provides two interesting technologies for software installation:

_Packages_

A package is a single compressed file that contains pre-compiled binaries, documentation and configuration files, including information which allows the system to install the software under the correct directories on the filesystem. Tools like `pkg_add`, `pkg_delete`, `pkg_info`, etc., are used for package management. To automatically download and install a package is easy using the `pkg_add` command:


=CODE_START=

# pkg_add -r gimp

=CODE_END=

_Ports_

In FreeBSD terminology a _port_ is a collection of files designed to automate the process of compiling a software application from source code.

The ability of the software management application to understand software dependencies is a common feature of both packages and ports. Ports are very useful when we need to have total control over the compilation parameters to achieve the best performance for our machine; whereas, packages have the advantage of being smaller than ports because they do not include source code. Furthermore, installing a package does not require the user to have any understanding of the compilation process. By having both technologies present the user can choose which ever system is better for them. 

You can always install software from source in both operating systems by using the traditional method of compiling and installing with the _make_ command.


## Shells

The Bash (_Bourne-Again SHell_) is the default shell in most GNU/Linux distributions. In a default FreeBSD installation, however, you won’t find bash. Don’t worry though, you can install it:


=CODE_START=

# pkg_add -r bash

=CODE_END=

GNU/Linux distributions choose the bash shell by default because this was written for the GNU project; FreeBSD uses _csh_, in line with traditional UNIX systems.

If you prefer other shells, like _tcsh_ or _csh_, you can install them in both operating systems using the previously described software management systems. Choosing an appropriate shell is a personal decision and depends on what you have experience with and what your day-to-day work involves.


# Installation

As I said before, Linux and FreeBSD can be installed on a number of different platforms. We can even install both operating systems on the same machine. Firstly, I will show you the main steps involved when installing each operating system and then later I will show you how to install them both on the same machine.


## Installing GNU/Linux

The procedure to install the operating system is slightly different for each distribution, but the basic steps are similar:


* Choose the installation media i.e. DVDs, CDs or network installation.
* Get complete information about the target machine.
* Start installation.
* Select your language, country and keyboard layout.
* Partition the hard drive and choose the filesystem types.
* Automatic installation of base software.
* Configure hardware devices and install third party software.

Distributions each have their own tools to carry out these installation steps and some of them are easier than others: _YaST_ is a complete administration and installation tool with a graphical user interface (GUI) which is used by SUSE and other GNU/Linux distributions and is quite simple to use; Debian, on the other hand, uses another interface which is less intuitive for novice users.


## Installing FreeBSD

FreeBSD provides a tool called `sysinstall` for a wizard-like installation process: it is a console based application divided into a number of menus and simple screens to control and configure the system during installation.

After booting your PC, `sysinstall` starts and FreeBSD is ready to install. `sysinstall` has different options but we want to start with the installation option. It’s recommended to use the “standard” installation option for most users which you can choose from the `sysinstall` menu as shown in figure 1.


=IMAGE=main1.jpg=Figure 1: Begin standard installation for sysinstall menu=


<!--pagebreak-->


The main steps for a FreeBSD installation are:


* Allocate disk space and install a boot manager: FreeBSD uses _slices_ to divide a hard drive.
* Choose what to install: software is organized into sets, for example, the _User_ set will install all the software for an average user including binaries and documentation. If in doubt, the _All_ set is a better option because it includes all the system sources, binaries, documentation and the X-Window system.
* Choose installation media: `sysinstall` offers different installation media like CD/DVD, FTP, HTTP or NFS.
* Commit installation: this is your last chance to abort the installation without making changes to the machine.
* Post-installation: the configuration process starts when the software is installed. Here you can configure network cards, services, FTP servers, time zone and keyboard layout as well as other hardware devices.


## Installing both GNU/Linux and FreeBSD on the same PC

Both operating systems can live on the same PC, and users are able to choose one or the other during the boot process. In order to install them we must consider these issues:


* Boot manager: it’s mandatory to choose one system to run.
* Disk space: GNU/Linux and FreeBSD use different types of file system and organize the hard drives in different ways.

Linux uses the letters `hd` for IDE hard drives and FreeBSD uses the letter `s` for slices, which are portions of the hard drive, so the organization method on the hard drive is different in each case. In Linux `hda1` is the first partition on the first IDE hard drive; whereas, in FreeBSD, a _slice_ is divided into several partitions: so the first IDE drive is `ad0` and `ad0s1a` is partition `a` in the first slice of the first IDE hard disk.

The first step to installing both operating systems on the same machine is to install one—for example GNU/Linux. When you arrive at the partitioning step, you should create two primary partitions: one for GNU/Linux and the other for FreeBSD. Remember that a PC can only have four primary partitions, or three primary partitions and only one extended partition (divided in several logical partitions, one for each filesystem type).

A simple partition scheme which is ready for both systems is:


* One primary partition for boot.
* One primary partition for _root_ filesystem.
* One primary partition for _swap_ area.
* One primary partition for FreeBSD.

Once GNU/Linux is installed we are ready to install FreeBSD in the spare primary partition. In this partition, which we made with GNU/Linux, you must create a slice for FreeBSD. This slice will have four partitions:


1. Partition `a` for root filesystem.
1. Partition `b` for swap area.
1. Partition `e` for `/var` filesystem.
1. Partition `f` for `/usr` filesystem.

The size of each partition depends on the size of your hard drive: you can assign space for each partition at your convenience (space is not much of a problem in modern PCs that usually have hard drives with 80GB or more).

(Optionally it’s possible to share swap partition between FreeBSD and GNU/Linux, for more information see the [Linux+FreeBSD miniHOWTO.](http://www.tldp.org/HOWTO/Linux+FreeBSD.html))

To boot the operating systems a boot manager is needed. When we install GNU/Linux we can choose a boot manager like _GRUB_ or _LiLo_. If we install and configure _GRUB_ during the GNU/Linux installation process, we don’t need to install any boot manager during the FreeBSD installation process: we can configure GRUB in our GNU/Linux distribution to boot FreeBSD as well. This is an example of the file `/boot/grub/menu.lst` (the GRUB configuration file) which will boot FreeBSD or Debian:


=CODE_START=

default    0
timeout    5

title       Debian GNU/Linux
root        (hd0,0)
kernel      /boot/vmlinuz-2.6.8-2-386 root=/dev/hda1 ro
initrd      /boot/initrd.img-2.6.8-2-386
savedefault
boot

title    FreeBSD
root     (hd0,2,a)
kernel   /boot/loader

=CODE_END=


=IMAGE=linux_kde.jpg=KDE running under Debian GNU/Linux=


=IMAGE=freebsd_kde.jpg=KDE running under FreeBSD=


# Conclusion

FreeBSD and GNU/Linux are two great options: choosing one or the other depends on many factors. Usually FreeBSD is used as a web server: companies like _Yahoo!_ or _Sony Japan_ trust FreeBSD to run their internet portals; on the desktop GNU/Linux wins this battle, but GNU/Linux is used on many web servers as well. Users will find if they are familiar with traditional UNIX systems they can use either without many problems. FreeBSD and Linux: a gift of quality, robustness, security and stability from the free software community to the world of operating systems.


# Bibliography

[FreeBSD site](http://www.freebsd.org/)

[TheFreeBSD Handbook](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/)

[The Linux Kernel Archive](http://www.kernel.org/)

[Debian GNU/Linux distro](http://www.debian.org/)

[SUSE](http://www.suse.com/) Linux distribution from Novell.

[Fedora distribution](http://fedora.redhat.com/)

[Ubuntu distribution](http://www.ubuntu.com/)

[Linux+FreeBSDmini HOWTO](http://www.tldp.org/HOWTO/Linux+FreeBSD.html)

[Wikipedia](http://en.wikipedia.org)

[GPL license](http://www.gnu.org/licenses/licenses.html#GPL)

[BSDlicense](http://www.opensource.org/licenses/bsd-license.php)


