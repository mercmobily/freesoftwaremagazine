---
nid: '2196'
title: 'A week with Windows'
authors: 'Steven Goodwin'
published: '2007-04-12 14:56:28'
tags: 'case-study,ms-windows'
license: verbatim_only
section: opinions
listed: 'true'

---
As a GNU/Linux user and developer I rarely get to see how the other half lives. That is, Windows users. So, during my week off work, I had two goals: complete the recording of a music project I’d been working on, and finish as many outstanding (non-Linux-centric) projects as possible... using only Windows. I managed the first without too many problems (now to find a record deal ;) but had some issues on the second. This entry documents those problems, and the lessons to be learnt from it. I’m writing this part as therapy, and part talking point, in the hope someone will comment and explain why these things are the way they are. There is a companion piece, [A Week With Technology](http://www.bluedust.com/blog/?view=plink&id=306), covering the other problems I had that week.

Disclaimer: what follows are the trials and tribulations of _two_ Windows machines. One is an IBM Thinkpad laptop, the other a self-build desktop. So there are twice as many problems as normal.

My first task was getting Windows installed on the desktop. I’d got a disc (legitimate, too!) of Windows 2000 and thought that it’d be up-to-date enough for my needs. Alas no. The on-board network card is not recognized by W2K. No problem, I’ll just logon to the Microsoft site and download... Oh... Wait... Perhaps I’ll use the Windows laptop to grab _some_random_driver.zip_ from their server. I tried and failed. As did the installation CD I’d been given with the motherboard. Various random, seemingly unrelated, error boxes appeared with cryptic messages so I gave up, found a PCI network card, and installed that instead. Perfect! (I later used it to find updated drivers for the on-board network card, but still no joy.) _Rhetorical note to self: never install or configure a machine without a second machine with Internet access. Borrow a laptop if necessary._

The next task was to format a partition. That should be easy! Since I wanted to re-use it in my NSLU2, I selected FAT32 and walked away. Only to find an error popping up almost instantly saying Windows couldn’t format it. Thinking I’d got a broken drive, I started worrying. But it didn’t work on another disc I tried. It turns out that Windows is intentionally crippled to stop you formatting “large” discs with FAT32, because Microsoft want to promote NTFS, and would rather you didn’t use FAT32. I half agree with them—I don’t want to use FAT32 on the drive either, I want to use ext3. But there’s no facility for that. So FAT32 it is. But since Windows won’t format the drive for, er, Windows usage, it’s over to Partition Magic to do the dirty. _Rhetorical note to self: if you need anything that isn’t an OS-default, find a specialist package to do the job._

While formatting, I thought I’d backup a few files onto DVD-R on the laptop. I have an external Lacie DVD-RW that hadn’t caused me any problems. Until now. For some reason the program refused to work, and the only suggestion was “reinstall the software”. Which I did. This time the DVD burner wasn’t even in the device list. And neither was the internal DVD drive from which I’d just installed the software. So I re-installed the drivers from the laptop’s rescue partition. But to no avail. I searched for, and downloaded, patches from the IBM website, but still nothing. After much time wasted, I copied cdrom.sys and some related files (as listed in the “Device Manager” within the control panel) from the Windows desktop machine and it started working. Alas, the DVD re-writer still doesn’t work, two weeks hence, despite repeated reinstalls.

Oh, and I’d accidentally installed the Nero index server. It doesn’t have anything to do with the burning process, but it does contain NMIndexStoreSvr, which crashes periodically for no good reason. So I removed that.

Another annoying productivity delay occurred when the laptop told me to change my password upon logon. I have no problem with this; every user should change their password regularly, and I don’t mind the OS reminding me. When I did, however, the boot process stopped, and the machine refused to log me on with the new password. I had to hard reset (suffering the patronizing “If you’d shutdown properly you wouldn’t see this” message) and logon again. _Rhetorical note to self: only change the password once Windows has fully booted._

I can’t remember the day I had graphics card problems, but I’ll assume it was a Sunday, to space the problems out a bit. Basically, I couldn’t install a second graphics card into my PC despite managing it with the same card about ten years ago. Yes, really! It was used for the second monitor of my old music PC. I fear the “new and improved” drivers don’t work properly under W2K, so I’m working at half capacity. Plus, the existing driver for the working graphics card is so slow/buggy/broken that every time there’s a large screen update, noise is produced on the sound card. Since this is my music PC, and I’m trying to produce a demo of my new album on it, this was causing me a problem. The solution was to minimize all the windows and then start recording, which avoided any screen updates. _Rhetorical note to self: latest doesn’t necessarily mean best._

One of the simpler problems to overcome was with the Windows command shell not having a backtick facility, or any sensible way of providing the date in a custom format. It would have been simple enough to install bash and solve my “backup to a newly created directory with today’s date” problem in that manner, but in attempt to mimic what a traditional Windows user would do I searched for suitable software and solutions on the Internet. I found no decent solutions, so I wrote [Backtick for Windows](http://bluedust.com/blog/?view=plink&id=303) and a neat little [replacement date utility for Windows](http://www.bluedust.com/blog/?view=plink&id=304) to accomplish the task. Typing


=CODE_START=
backtick md `ndate`
=CODE_END=

Feels icky, but it rocks! Although I’ve since discovered


=CODE_START=
md %DATE:~-4,4%%DATE:~-10,2%%DATE:~-7,2%
=CODE_END=

does the same job, I like the brevity of my solution better. _Rhetorical note to self: the simplest solutions are often the hardest to find. If you’re not a developer, some solutions are just impenetrable._

Monday was my “get the NetGear SC101 NAS working”, day. NAS stands for Network Address Storage. Or, if you’re like me, _Not_ work. The NetGear fell over after just 30 seconds of use. In this case I determined “use” as copying one 5 meg file to it. This happened from both Windows clients. Hardly a heavy load, though. Both NetGear and the company from which I bought it refuse to accept the problem existed. Pah!

Tuesday was pain free, I’d written a short piece for string quartet, and a demo for the first part of my avant-garde symphony was complete. I thought I was cooking! _Rhetorical note to self: savor these moments, they don’t last._

My Wednesday was mostly occupied with web design for a friend of mine. Both Windows machines handled the task admirably. Alas, my Linksys WRK54G router did not. Instead of requiring a reboot every 3-4 days (which is pretty pants, to be honest, but better than nothing), we were lucky to get 20 minutes of net access before the frustrations began. The only change to the network configuration was the addition of a third Windows machine; my mates Windows XP laptop. Once he’d left, all the problems went away. Sorry, David!

On Thursday my new mobile phone arrived! Hooray. Their next day delivery service had only taken 6 days. Plus a phone call. But this seemed like a minor problem. I duly plugged in the USB cable to download some music (it appears as a standard memory device, so no drivers are necessary) only to find I couldn’t un-mount it! It looks like W2K lets you plug in and access the device as a normal user, but not _un_ plug it without shutting down the computer. It claims admin rights are to blame, but logging in as Administrator didn’t help. And the Windows equivalent of `su`, _Run As_, is only available as an explicit invocation on executable files. _Run As_ will additionally work on `.cpl` (control panel) files, but not (alas) `.msi` files. MSI files are the installation bundles used with some Windows applications, and if there’s one time you need to run as Administrator, it’s when installing software. Ho hum. I’d better reboot then. _Rhetorical note to self: use Bluetooth if available. I did try it in this case, but the Bluetooth driver wouldn’t work. I’m glad I only borrowed the device to experiment._

It was Saturday, and I’d very little holiday time left with which to capture some material from my (fast degrading) video cassettes. My TV card supplies a simple, but useable, video capture tool so I started it up. Fully aware of the 4 gig limit under FAT32 I moved all the temporary, working, and resultant files onto the NTFS partition. I also invoked the DivX codec to ensure the video got nowhere near that size, and started recording. It stopped, unceremoniously, after 20 minutes. Checking the settings, I could find nothing wrong, so I tried again. Again nothing. It appeared that the tool has a hard-wired 4 gig limit, completely ignoring the underlying file-system, and disregarded the compressions settings by saving all the temporary data as a raw stream in its own file, thereby ignoring the configuration until you saved the data from within this file. It took 8 hours to capture 3 hours of material.

Finally, on Sunday evening, I wanted to relax with my working media server, a can of beer, and take-out pizza. I actually ended up fixing PCs, as the Windows MediaMVP server refused to deliver my recently-captured video clips. The problem was a bad FAT table on one of the drives attached to the NSLU2. This introduced timeouts on the Windows machine. Bad timeouts. Freezing the machine for 10 minutes at a time. So I connected the machine locally, and started to fix the disk. While doing so I did something I wouldn’t normally consider a problem—copying a file from one disc to another. Neither was the disc being checked, but one did have an undiagnosed FAT problem. The price I paid for copying from a broken FAT disc was high—it rebooted my Windows machine, corrupted the boot block, and destroyed the data on my boot partition. And all because I copied a file! I can not believe how stupid this is. I have yet to run low-level recovery tools on the disc, but I’m quietly hopeful I’ll get the data from it. The biggest time sink was in the Windows settings, which I’ll have to redo. Or learn Ghost. _Rhetorical note to self: fix any and all problems as soon as they arise. Not everything will self-test effectively._

I can not believe I had so many problems in one week. Have my Windows skills been reduced to that of a stillborn newbie? Is the quality of hardware and software now so low as to be useless? Where are the Windows forums that don’t popup advertising windows, and require site registration and login? How do normal people cope?

I’ve never had these problems with my Debian box, so free software is doing something right. Be proud of it!

Rant over.

