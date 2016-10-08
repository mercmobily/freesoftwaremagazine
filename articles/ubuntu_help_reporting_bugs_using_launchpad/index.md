---
nid: '2675'
title: 'Ubuntu Help: Reporting bugs using Launchpad'
authors: 'Andrew Min'
published: '2008-01-28 21:12:42'
tags: 'ubuntu,launchpad,bug'
license: verbatim_only
section: opinions
listed: 'true'

---
One of the reasons free operating systems are so great is because of their bug reporting features. Ubuntu is no exception. Like most other GNU/Linux operating systems, Ubuntu allows users to file bug reports using its bug reporting site, [Launchpad](https://launchpad.net/). In the free software world, each user becomes a potential beta tester and gets the chance to contribute to the community without ever coding or writing documentation.  Unfortunately, Launchpad's bug reporting tool often scares away users who have no idea what a ticket, project, or distribution is.

# First off... is it really a bug?

The first keyword for each bug is "replication": the first step is to make sure you can actually get the software to behave oddly "at will". Sometimes, applications might behave oddly and it seems impossible to find out what the steps are to reproduce the problem. For example the application might have several files in your home folder (`/home/user/.vlc` for example) and one of them might be causing the crash. This is why it's always a good idea to try and replicate the bug with a fresh user, or after wiping out the application's private data (if you can locate it, _and_ if you know that the application doesn't store anything important to _you_ there...).

Another important issue is that you need to make absolute sure you're using the latest version of the software. Bugs are constantly reported and fixed; reporting an old bug will simply waste the developers' time (and yours!). To find out if you're using the latest version of a piece of software, find out where the software's home page is, and check what the latest version is.  Sometimes, your Ubuntu repository won't have the latest version of the software (if that's the case, use my [article on finding Ubuntu software](http://www.freesoftwaremagazine.com/blogs/weekly_tip_finding_installing_deb_files) ).

Finally, make sure you are actually dealing with a bug. You can find this out by reading the software manual (you can find it under Help → Support in Ubuntu and K Menu → Help in Kubuntu).

# Reporting bugs in Ubuntu

To start, I'll explain how to report a bug in the main Ubuntu software.  We'll pretend there is a bug that makes Ubuntu crash when it turns on.  First, go to the [bugs.launchpad.net](https://bugs.launchpad.net/) site and click [Report a Bug](https://bugs.launchpad.net/bugs/+filebug). This will ask you to log in with your Launchpad account. If you don't have one, use your email address to register and follow the instructions that you will receive via email. Then, back at the bug reporting page, select your distribution (Ubuntu, Kubuntu, Xubuntu, and Edubuntu users should use the default "Ubuntu"), type in a summary of your problem, and hit Continue. For this example, the summary for my example will be "Ubuntu crashes when it turns on" (figure 1).

=IMAGE=figure_1.jpg=Figure 1: Adding a short summary=

The next page will show you a list of bugs that sound similar to yours. Make sure that your bug isn't one of these, as developers are famous for blowing up at users who submit duplicate bugs. If none of them are yours, hit "No, I'd like to report a new bug". Type in exactly what you were doing when the crash happened, along with your machine information (e.g. Ubuntu 7.10 on a Dell Dimension 4700 with 1GB of RAM and an ATI Radeon x300 video card, don't worry if you can't get all the information). Also, include the text in any dialog or error message that might pop up. In other words: *put in as much information as possible*. A bad example of a bug report is: 

> > Ubuntu crashes, help!

A better one is

> > When Ubuntu turns on, it pops up a "124t6136 truncated, need to reboot" message and reboots. I'm running Ubuntu 7.10 on a Dell Dimension 4700 with 1GB of RAM and an ATI Radeon x300 video card.

If you have any logs, _do not paste them_. Instead, use a [pastebin](http://en.wikipedia.org/wiki/Pastebin) like [Ubuntu Pastebin](http://paste.ubuntu.com/) or [Pastebin.com](http://pastebin.com/). The rule of thumb: if it's more than ten lines long, use a pastebin. An example of a good bug report is shown in figure 2.

=IMAGE=figure_2.jpg=Figure 2: A good bug report=

Now, hit Submit Bug Report. A new window with your bug report will appear.  You can close it, as any time a person responds you will be notified by email. You may also be asked for more information ("Can you give us your /etc/log.txt" or "What processor are you running?"). If so, add a comment with the appropriate information.

# Reporting application bugs

Now, as you may have guessed, most of the bugs in Ubuntu aren't Ubuntu's fault. Rather, they are different applications' fault. For example, when you log in and the weather applet in Ubuntu disappears, it's not Ubuntu's fault: it's the weather applet's fault. Or when VLC crashes, it's not Ubuntu's problem: it's VLC's. Luckily, many of these projects have their own bug reporting tool hosted on Launchpad.

*Note: You should always first file a bug against Ubuntu, as it may have been an Ubuntu problem (a faulty package for example).*

Suppose that every time VLC opens a WMA file, it inexplicably crashes.  Here's how to file the bug report. First, open up the Launchpad site and Report a Bug. But don't choose "distribution". Instead, choose a project (clicking the "Choose" button will help you find your project, see figure 3). From here on, it's the same as before: add a summary, as much information as possible, and put all logs in pastebins.

=IMAGE=figure_3.jpg=Figure 3: Reporting application-specific bugs=

# Conclusion

Congratulations! Now, the next time Sound Juicer crashes or netcfg stops working, rather than letting it continue to wreck your life and the lives of countless other users, you can actually get it fixed. Now what are you waiting for? Go out there and start reporting!  

Links:

* [Reporting Bugs at the Ubuntu Wiki](https://help.ubuntu.com/community/ReportingBugs)