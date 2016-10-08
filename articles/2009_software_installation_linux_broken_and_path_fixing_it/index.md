---
nid: '3162'
title: '2009: software installation in GNU/Linux is still broken -- and a path to fixing it'
authors: 'Tony Mobily'
published: '2009-06-23 8:02:09'
tags: 'linux,software,installing'
license: verbatim_only
section: opinions
listed: 'true'

---
GNU/Linux is slowly invading everybody's everyday life. I won't say "The year of the GNU/Linux desktop is here". Been there, done that. But, GNU/Linux is definitely imposing its presence -- think about Android, or the number of people who are currently using GNU/Linux as their main desktop.

And yet, software installation in GNU/Linux is broken. No, not broken... it's _terribly_ broken. Why is that, and what can be done to fix it?

<!--break-->

=TEXTBOX_START=Free Software Magazine is now on Twitter!=
Free Software Magazine has joined the Twitter crowd! You can see [Free Software Magazine's twitter posts](http://twitter.com/fsmag). You can also see our [Twitter RSS feed](http://twitter.com/statuses/user_timeline/48408821.rss).
So, once again:

http://twitter.com/fsmag -- FSM's twitter account

http://twitter.com/statuses/user_timeline/48408821.rss -- FSM's twitter RSS feed
=TEXTBOX_END=

# The current story

Most distributions today (including the great Ubuntu) are based on _package managers_. If you want to install a piece of software, you grab it from one of the official repositories, and your package manager will "explode it" onto your computer's file system. A program will place bits and pieces in `/usr/bin`, `/usr/lib`, `/etc`, and so on. This is normally done through a package manager. In Ubuntu, for example, you would probably use Synaptic. A package manager will normally solve all the "dependency problems" for you. Ah, dependencies... basically, an image viewing program might need, for example, `libjpeg` to function (`libjpeg` being a library of functions to open, save, and generally deal with JPEG files).
This is a very Unix-ish approach. It works perfectly well for servers, but fails on several levels for clients. Why?

=TEXTBOX_START=Advertisement: ZenOSS Enterprise Monitoring=

ZenOSS is a powerful, enterprise level monitoring system -- and yes, it is fully free software. Sounds convincing? [Download Zen OSS now](http://www.zenoss.com/in/mi/fsm)!

http://www.zenoss.com/in/mi/fsm
=TEXTBOX_END=

There are several _drastic_ problems with this approach. Here is a comprehensive but by no means exhaustive list (which will probably grow as pepople e-mail me):

* Users need to have root access in order to install a piece of software; no per-user installation is allowed
* It's very tricky to install several versions of the same piece of software. Just think of the poor graphic designer who needs to install several versions of Opera and Firefox;
* Users are stuck with the piece of software installed system-wide;
* The software needs to be downloaded from the official repositories. Well, it doesn't _need_ to, but an average user wants to stay well away from unofficial repositories for technical reasons;
* In some cases (especially when the user adds repositories or installs packages directly), the dependency-checking mechanism often _fails_ and users end up with _circular dependencies_. They are nasty;
* A piece of software is bound to a specific distribution, and -- what's worse -- to a specific version of that distribution too. It's not trivial to install Openoffice 3.1 on Ubuntu 8.10. You can argue that you can install the bunch of .deb packages from OpenOffice's web site. Tell that to your grandmother or your average inexperienced computer user.
* It's not trivial to "give" a program to a friend. To the end user, giving a program to a friend should be as simple as dragging an icon onto a memory stick; instead, files are scattered all over the system.

It's 2009, and GNU/Linux is still plagued by all of these problems. Even Ubuntu, a distribution I love, is plagued by all of these issues -- and we are talking about a distribution aimed at end users!

# What the story should be

The story should be very simple: 

* Users should be able to install software even without being root
* Users should be able to install different versions of the same software immensely easily
* Users should be able to run either their own version of the software, or the one installed on the system (if any)
* It should be possible to download and install software even though it doesn't come from an official repository
* Software just needs to work -- unchanged -- even if it's a bit old and it's run on a newer distribution
* It should be possible to "give" a piece of software to a friend by simply dragging an icon onto a memory stick

All this is true with Apple's OS X. They got software installation just right -- although a few programs, lately, seem to come with an ugly installation process.

# Where does the problem come from?

Don't get me wrong: I think Ubuntu is a fantastic system, and gets a lot of things right. It think the problem stems from an issue that is more philosophical than anything else.

The issue is at the heart of this article, and deserves to be put in bold.

> **Every GNU/Linux distribution at the moment (including Ubuntu) confuses system software with end user software, whereas they are two very different beasts which should be treated very, very differently.**

I think using dpkg/apt-get or rpm/yum for system-wide software, libraries and so on is _the_ way to go. GNU/Linux's success in the server arena is not a coincidence: a distribution is made up of several independent "bricks" which create a majestic building.

However, using the same philosophy -- and therefore architecture -- for end-user software is just too limiting. My point list above is not "a list of unfortunate drawbacks". It's one of the major reasons why GNU/Linux hasn't achieved mass penetration in the desktop arena.

What bothers me is that while all of the other problems are being solved (vendor support amongst the others), this one is a persistent thorn in every GNU/Linux user's side. A painful one.

# Existing material about this problem

A lot of debate-- as well as software -- exist about this issue. In terms of software, you can get a whole distribution -- GoboLinux -- which follows exactly this priority: one directory per program. There is a problem with GoboLinux's approach: it applies the "one directory per thing" approach to _everything_ -- including system libraries and server-side programs. GoboLinux also goes one step further by changing completely the file system -- an idea I am strongly against.

In terms of what's been said, there are several discussions about this in Ubuntu and Debian. A good start is the [Rename Top Directory Names][http://brainstorm.ubuntu.com/idea/6243/) in Ubuntu. This link has a _long_ list of duplicates.
There are also many, many "blueprint" drafts in Ubuntu's launchpad. There are so many in fact that you will get lost reading them. A lot of them talk about a simplified directory structure for the system, which as a _consequence_ would imply simplified software installation.

=TEXTBOX_START=What's wrong with GoboLinux?=
I don't think GoboLinux's approach is a winner for two reasons:

* The Unix file system has been around for a long time -- for good reason. It does work _extremely_ well to keep a system sane and working.

* It would meet too much resistance in the GNU/Linux community -- for good reason.

However, GoboLinux gave us a practical example that this change _can_ be made. It's actually _possible_.
=TEXTBOX_END=

# Four steps to fix the problem

I can't really fix this problem. It will take a lot of effort, and a lot of courage from major players to even start heading in the right direction.

The first step, is to face the truth and admit that there is a problem. This is the aim of this article, which -- I hope -- will resonate within the GNU/Linux community.

The second step is to set out a path which might eventually lead to a solution. This is what I will attempt to do in this article. The solution will be generic and I will try to borrow from as much existing software as possible.

The third step is to improve on the proposed solution; this is tricky, because there needs to be the right balance between too little and too much planning. It also requires somebody to coordinate the discussion, able to lead everybody towards a _full_ solution. My secret dream is that somebody from Canonical, or from Red Hat, would do this.

The fourth step is implementation. This is the hard part. I am sure that implementing it will reveal problems, limitations --and more.

# My own semi-technical take

Here is my idea. I haven't programmed in C in _years_; this means that I might make some silly mistakes. However, I am confident I can provide a good starting point.

Here we go.

* There should be a comprehensive list of libraries, and versions, expected to be available with the operating system. Today, GNU/Linux has quite a number of desktop installations and we have a pretty strong idea of what a desktop system seems to expect. This list should include both Gnome and KDE. This should be a cross-distribution list. To do this, maybe a distribution (Ubuntu?) might write a list, and then others might follow. Every two years or so a new "version" of the super-system might come out with an updated list of libraries and versions. Note that applications should do their best to work on current systems, _and_ on the previous one. This would mean that newer applications would have the potential to work on four year-old systems.

* There should be a well defined directory tree that contains a whole application. It should include 1) the executable 2) the icon 3) the "lib" directory with extra libraries not listed in the point above and 4) anything else. This directory should be expected to be read-only. The directory could have the extension `.apx` and have a file called `application.xml` in it.

* In case libraries are provided, the system should add them to the library path _before_ the system ones. So, if a program needs a specific library that is not listed in the first point, or if for some reason needs a different version of the "stock" libraries then:

* GNU/Linux file managers should show those directories and their icons

* You should have different directories for the different versions of executables and libraries according to the processor.

* The operating system should keep track of the applications available (each folder with extension `.apx` and with a `application.xml` file in it could be expected to be an application) and their locations. This can be done *easily* with triggers in the kernel when a file is moved or copied etc. The system should allow two different copies of the same application in two different directories.

* The operating system should offer a way to upgrade all the existing applications (since it knows what's on the disk and what version it is).

* There should be a security system where whoever distributes the application is able to "sign it" -- users should be able to view the signature before running it. This can be extended as far as we want to take it.

* The distribution should have the option to hide completely, in its package manager, any end user applications. Yum/apt-get/synaptic and such like should still be used to keep the system up to date -- and not just for end-user programs.

* There should be a "recipe system" like the one available in GoboLinux, where a piece of software is compiled making sure that it works in its own directory. Here, looking at GoboLinux did would be immensely beneficial. Note that providing a working recipe for each piece of software would be a big task, but it would be limited to end-user software.

Whoever manages this system should look closely at what OS X does, because OS X's engineers had the exact same problems to solve -- and solved them successfully.

# Conclusions

This article might start a revolution -- or it might just be yet another article complaining about installing software in GNU/Linux.

I have a dream. A dream of a world where people distribute applications as bundled directories, and these bundles work in Ubuntu, Fedora, etc -- and they _keep on working_ when a new version of the operating system is installed. A world where software installation in GNU/Linux is _easy_ and applications can be swapped by simply copying them onto a memory stick.

I wonder if I will ever see this in GNU/Linux?.

_P.S._
_Some will say, "if you like the way OS X does things, use OS X". My answer to that is, "I like the way OS X does things, it works, it solves problems, but let's rather be inspired by it and improve it"_ 