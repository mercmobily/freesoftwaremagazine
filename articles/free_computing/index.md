---
nid: '2069'
title: 'Free computing!'
authors: 'Howard Fosdick'
published: '2007-04-25 6:30:00'
tags: 'desktop,hardware,recycling'
issue: issue_17
license: verbatim_only
section: opinions
listed: 'true'

---
Free software is great, so why not run it on a free PC? Here’s how to get a free PC and configure it with free software to perform many tasks as well as a newly-purchased computer.


# Sniffing out a PC

I’ve always had a fondness for used computers. I work on the latest and greatest hardware and software in my professional life, but in my spare time I occasionally gather and configure PCs donated to charity. The fact is, you can do a lot with a mature Pentium. Most businesses and individuals will give them to you free for the asking. You’ll find they’re grateful about it, happy that someone will haul their “obsolete” hardware away. If they only knew...

This is the story of a discarded PC I found while walking my dog, Phoebe Jane. Phoebe likes to sniff garbage (what dog doesn’t on a fine winter’s day!), and so we typically take our walks through the alleys behind houses and condos.

A few weeks ago Phoebe seemed particularly interested in some food scattered behind a garbage bin. I glanced over to see what she was after. And what did I see? A tossed PC. (No, Phoebe, don’t go _there!_)

I just couldn’t resist. I came back after the walk to pick up the box and take it home. I suppose it’s an odd kind of curiosity—I just had to know what this was and why someone discarded it. I figured it offered some spare parts, if nothing else, always useful when configuring used PCs for charity.


=IMAGE=phoebe_sniffing_out_a_pc.jpg=Figure 1: Phoebe sniffing out valuable PCs!=

When I got it home, I looked over the outside of the machine and determined it was a Dell Pentium III 550MHz. Opening it up showed that all parts were present and appeared intact—except for a missing hard disk. This is common with discarded consumer PCs, and a good omen. Someone likely upgraded to a new machine and took their hard disk with them when they did. This means that all the remaining parts in this machine probably work.

The bad news, lack of a hard disk, is not as serious as it may appear. You can obtain a disk drive in your next pick-up PC. Cannibalize two junked PCs to create one really nice one.


=ZOOM=With any used computer, you’ve got to be sure to test all the parts=

You can even operate without a hard drive. The [SLAX](http://www.slax.org) version of the GNU/Linux operating system is a great example of what you can do with a disk-less PC. It’s specifically designed to run from CD disk or USB device only, no hard disk needed. (More on SLAX later.)

In my case, luck smiled on me again the next week. Phoebe Jane just had to chase a squirrel (stupid squirrels, why do they exist!) and as I lunged after her I ran right past... another discarded PC. It turned out to be just what I needed. This one was dis-assembled and partially stripped, but it had the parts I needed—a hard disk and another PC-100 memory stick. Putting this together with my other find, I built one very capable machine, entirely from discards:


* Pentium III @ 550mhz
* 448MB memory and 8GB hard disk
* DVD, writable CD, floppy, and a couple USB ports
* Keyboard and mouse

Just like you’d buy at the store—monitor sold separately!

Building the parts into a single computer was easy. I use but a single tool, my trusty 2” [Swiss Army Knife Classic SD](http://www.amazon.com/Swiss-Army-Classic-Pocket-Knife/dp/B00004YVB2). This US$10 miracle tool has a flat-head screwdriver with a tapered point that fits any screw you’ll encounter in any PC. If you can screw in a lightbulb—and you have patience to tangle with the awkward ways in which parts fit in some PCs—you can build your own PC.

With any used computer, you’ve got to be sure to test all the parts. Go into the boot-up configuration panel and run all the diagnostic tests available. You can access this panel by pressing the _Delete_ key or a PF key when the machine starts. (Most computers show you what key to press during the boot process.)

Boot a LiveCD like [Knoppix](http://www.knoppix.org) and run its diagnostics for memory, the disk, and everything else. A _LiveCD_ is an operating system designed to run from CD or DVD disk when you boot the computer from that device. Knoppix is useful for testing machines because it includes many diagnostic tools (even for fixing Windows).

[The Ultimate Boot CD](http://www.ultimatebootcd.com/) takes this concept even further. The sole purpose of this GNU/Linux distribution is to identify and fix PC hardware and software problems. Between UBCD’s tools and its [forums](http://www.ultimatebootcd.com/forums/), you’ll be able to fix anything that can be fixed. There’s also an [Ultimate Boot CD for Windows.](http://www.ubcd4win.com/)

Some machines will boot off the CD drive anytime a CD disk is inserted when the machine starts. Others require you to access the boot configuration panel and set an option to boot off the CD. If the PC is so old it will not boot from the CD, a free product called [Smart Boot Manager](http://linux.simple.be/tools/sbm) will give you the flexibility you need to boot from various devices. (Smart Boot Manager is included in the UBCD download.)

Running diagnostic tests is important. You never know what you have in a used PC until you test it. Finding a problem now could you save you _hours_ of frustration later.


# Should you keep Windows?

Since most people don’t wipe their hard disks when they discard their PCs(!), most used PCs come with Windows installed. You’ll face that classic, timeless question: should you keep Windows? If you do you’ll have an installed operating system with a full set of working drivers for the machine, plus whatever software is already on the hard disk. The software will be age-appropriate. This is critical because Microsoft’s strategy of planned obsolescence means that their newer software doesn’t run on mature machines.


<!--pagebreak-->


On the downside, you need to run modern security software on any Windows PC you connect to the internet. Up-to-date virus and spyware scanners are an absolute must, as are a firewall and intrusion detector software. You’ll find that these consume processor cycles you just can’t afford to waste on many older machines. Even a _Pentium I_ runs Office 97 or [OpenOffice](http://www.openoffice.org) Version 1 just dandy, but add modern security software and you’ve got a snail on your hands.


=ZOOM=You need to run modern security software on any Windows PC you connect to the internet=

Run GNU/Linux and you circumvent the need for all that security software. Plus GNU/Linux gives you access to the world of free software [this magazine](http://www.freesoftwaremagazine.com) covers. Most importantly, the free software community does not subscribe to the notion of planned obsolescence. If you need more resources to run a program than your mature PC has, it will be because the software actually _needs_ current hardware, not because some corporation needs upgrade revenue.

The computer industry has undergone a sea change in the past few years. It’s not just that free software can do anything commercial software can. _It’s that most of this free software does not require the latest hardware to run._ We have truly entered the “era of free computing”.

As we enter 2007, the typical discarded PC is a Pentium II. You’ll encounter more Pentium I’s than you can possibly use, and snag Pentium III’s up to about a gigahertz. The power and capabilities of these “throw-away” computers continue to increase as newer machines come out. As Microsoft Vista’s hardware requirements swamp most PCs purchased before 2006, you’ll be shocked at what the “obsolete” PCs of the future can do.

Mature PCs support a full range of tasks. They can’t handle those that require state-of-the-art resources, such as running current games or Vista. Pentium I’s and some II’s won’t manage broadband web connections as quickly as you’d like. But all of them support a million other functions, from running office suites, email access, educational uses, reading PDF files and e-books, editing presentations, through to keeping your calendar, and playing music. A properly configured Pentium III can perform most tasks a new computer can, as I’ll demonstrate below.


=ZOOM=Hardware that is obsolete in Windows World is not obsolete in the real world!=

One of the great achievements of the free software movement is that it has disrupted Microsoft’s ability to enforce planned obsolescence. Hardware that is obsolete in Windows World is not obsolete in the real world! Free software and an abundance of mature computers free us all from the expensive, lock-step upgrade cycle of the past.


# What to run?

The operating system you choose to run on your new old PC is critical. Operating systems require resources, and you don’t want the OS to consume all the PC’s power. They also determine how easy (or hard) it is to find and install software.

Whether or not you decide to retain Windows, you’ll want to pick a GNU/Linux that is specifically designed to run on mature hardware with limited resources. These GNU/Linux “distros” can help you achieve things you never dreamed possible on the older PCs others discard. [DistroWatch](http://www.distrowatch.com) provides an extensive list of GNU/Linux distros, and tells where you can download them, and find reviews, and tools.

I recommend trying several LiveCDs to find the Linux that best meets you needs. These allow you to “try them for size” without installing anything on your hard disk. You can also ensure that the operating system recognizes all the computer’s hardware.

Of course, your intended use of your computer drives your decisions. For my Pentium III, I had in mind typical office tasks, such as word processing, spreadsheets, email, and some light web surfing. But the primary use of the machine is to support my professional development. I wanted to install some free software databases like MySQL and PostgreSQL. I also wanted to create a test bed to play around with a wide range of scripting languages ([Rexx](http://www.amazon.com/rexx), Perl, Korn, pdksh, Python, Tcl/Tk, and others).

Several GNU/Linux distros specifically designed for limited-resource computers immediately leapt to mind as ideal for these purposes.

[Puppy Linux](http://www.puppylinux.com) targets mature computers and crams an astounding amount of useful software into its 28MB to 95MB download. Puppy is perfect for older PCs because it runs everything from memory. Different versions require from 128MB to 320MB to run in RAM. After a slow load, Puppy runs like a scalded greyhound. Show it to your friends on an old Pentium II with 256M, for example, and they’ll be amazed at its performance and [range of bundled software](http://puppylinux.com/).


=IMAGE=puppy_screen.jpg=Figure 2: Puppy Linux Screen=

Puppy boots from almost any device (CD, hard disk, Zip, USB, floppy, network port). You can run it off CD quite effectively and simply use your hard disk to store your system settings and swap file. These fit either in Windows or GNU/Linux disk partitions. This is convenient if you don’t want to touch the disk partitioning.

Another bonus—Puppy life-support features [responsive forums](http://puppylinux.org/user/viewpage.php?page_id=51) where beginners can feel comfortable asking questions. I like this enthusiastic online community and have never felt stupid when asking one of my stupid questions.

No, I’m _not_ high on Puppy just because I walk one. It really is that good!


<!--pagebreak-->


[SLAX](http://www.slax.org) is another top candidate for older PCs. It’s a highly configurable GNU/Linux distro based on the venerable [Slackware](http://www.slackware.org) distribution. SLAX runs all the way down to 486s with 32MB of memory, so there aren’t many machines it won’t run on. It includes the comprehensive hardware detection software developed over many years for Slackware.

SLAX is unique in that it was specifically developed for booting from the CD disk or from a USB memory stick or flash drive. (You can install SLAX to disk but this probably isn’t the norm.) I found it trivial to add the software I needed to my SLAX boot CD from the [1,500+ ready-to-load “modules”](http://www.slax.org/modules.php) it offers.

SLAX performs well on older PCs because you can tailor it so easily. It’s especially useful when you have a decent machine but with a small hard disk. Consider it also when you have a large disk but limited free space.


=ZOOM=SLAX performs well on older PCs because you can tailor it so easily=

What if your goal is to configure that used computer for someone who doesn’t view computers as their hobby? (gasp!) Like parents or family? (oh, okay, I understand now.) Here I recommend one of the lesser-known Linux distributions. [BeatrIX](http://www.watsky.net) runs on just about any old Pentium you can dig up. It features a simple, uncluttered user interface, and includes all the software typical end users need. No tweaking or [downloading and installing additional software](http://www.watsky.net/programs.html). BeatrIX can also run from memory for top performance.

BeatrIX is named after its developer’s cat, but Phoebe and I recommend it regardless (well, I do, anyway). Consider BeatrIX if you’re setting up a mature PC for non-techies.


=IMAGE=beatrix_screen.jpg=Figure 3: BeatrIX Linux Screen=

I’ve saved one of the best for last—[Damn Small Linux](http://www.damnsmalllinux.org) is the most popular GNU/Linux for older PCs. DSL is a 50MB download that runs solely from memory with only 128MB. It’s aimed at those who are computer-savvy enough to make the trade-off in ease-of-use required to run [really cool tools](http://www.damnsmalllinux.org/applications.html) on limited-resource computers.

While the product is a bit geeky, DSL comes with great support. In addition to their web site, they offer an [online forum](http://www.damnsmalllinux.org/cgi-bin/forums/ikonboard.cgi), a [wiki](http://www.damnsmalllinux.org/wiki/index.php/Main_Page), and a [community blog](http://www.damnsmalllinux.org/talk/).

DSL is [easily extended](http://www.damnsmalllinux.org/wiki/index.php/Installing_MyDSL_Extensions) to include additional tools. You can even run it from within Windows. If you’re willing to invest a bit of time to learn some new things, DSL is a truly great operating system.


=IMAGE=dsl_screen.jpg=Figure 4: Here’s DSL... anything missing?=


# Want more know-how?

There’s much more to this subject than one brief article can cover. If you’d like to explore further, I wrote [a more detailed article](http://www.desktoplinux.com/news/NS3646121982.html) at _DesktopLinux_ describing how I revived a Pentium II-366 laptop. The article includes charts on small GNU/Linux distros and the system resources required for various Windows releases. It tells you where you can download free essential security software for Windows. It also leads you through the process of assessing and configuring old PCs in more detail.

Where do you find a free PC? Just ask friends, family, and co-workers. I guarantee you’ll have a Pentium II in your hands in no time. Max out its memory and install one of the GNU/Linux distros I’ve mentioned, and you’ve got a very useful machine.


# Biography

Howard Fosdick is an independent DBA consultant who occasionally rebuilds old PCs for relaxation. He recently wrote the first book on free and open source Rexx scripting, [The Rexx Programmer’s Reference](http://www.amazon.com/rexx), and he frequently writes technical papers. He’s especially interested in databases, operating systems, and scripting technologies.

Phoebe Jane is a full-time Wheaton terrier who enjoys sniffing, walking, and running in the snow. She believes squirrels have their place (for chasing!) but wonders why, why, would anyone ever own a cat?


=IMAGE=phoebe_final_picture.jpg=Phoebe relaxing after a tough day=

