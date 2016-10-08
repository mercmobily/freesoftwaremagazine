---
nid: '2872'
title: 'Reporting bugs the Debian way'
authors: 'Ryan Cartwright'
published: '2008-05-22 23:01:35'
tags: 'debian,bugs,reportbug'
license: verbatim_only
section: opinions
listed: 'true'

---
Following on from my recommendation for [apt-buglist][]--where you can see the reported bugs on a package before installing it--I thought it might be useful to look at the other side of the coin, reporting bugs in Debian. The best way to do this is with the dedicated tool: reportbug.

<!--break-->

# Bugs happen

Bugs are a fact of software life. Even the most established and mature project will inevitably have bugs--what distinguishes good software management is also how bugs are reported and handled. Debian has a long history of trying to do things "right" (although granted that is a very subjective term) and in "reportbug" I think it has a very simple and effective way of--er--reporting bugs.

One of the issues with bug reporting is getting the relevant information into the hands of the developers. The problem is that users are not always best placed to provide that relevant information. It's not just what happened that is important but background information like how your system is set-up, what other packages are installed that might create a conflict etc.. Of course trace and system logs can assist with some of this but reportbug is designed to make it easier--even transparent--for the newbie users to provide this information.

Before you start with reportbug--and if you are new to bug reporting--you should probably do a little background reading on what the Debian maintainers expect from bug reports and bug reporting in general. I suggest starting with a couple of articles here at FSM from [Woulter Verhelst][] and [Andrew Min][] and then have a look at the official [Debian bug reporting guide][].

# Installation and set-up

Installation is simply getting the right package, so following on from the apt article, `apt-get install reportbug` (not forgetting sudo if you are not root) will do the trick. The default package is text-based but there's also a menu/[urwid][] driven interface as well. If you want to use that you need to install the `python-urwid` package as well. If you really don't like the shell then you should look at the `gnome-reportbug` package (which does what it says on the tin) or the `reportbug-ng` package which provides a QT-based front end.

Once the packages are installed you need to set-up reportbug. Running reportbug as root is very ill-advised for security reasons, so make sure you do it as a normal user, e.g. `reportbug --configure`.

Actually this will happen the first time you run reportbug anyway but it saves time to do it before-hand. If you ever want to change your set-up this is the command to run. You will be taken through a few steps:

* Operating mode : think of this as user level, if you have not used reportbug before start with novice. Personally I use standard.
* Interface: here you can choose the text-based or urwid menu interface.
* Internet access: reportbug needs this so generally the answer will be yes.
* Real name & e-mail address: The e-mail address you give will listed on publicly accessible web pages and is thus susceptible to crawler-bots. The address you give will also be sent updates and feedback to your bug report so don't make it a non-existent or black-hole address either.
* MTA: reportbug will send e-mail so if you're not running an mail transport agent on the host PC, give it your ISP's SMTP server address and any associated username details.

Once that is done you are ready to use reportbug so put it away in a cupboard or something until you find a bug.

# Reporting a bug

Once you have found a bug--and you are sure it is one--you can fire up reportbug in a shell. If you know the name of the package you can supply it as an argument ( `reportbug <packagename>` ). This does bring up the only real hurdle in reportbug--you need to know the package name not the application name--but you can easily find this using apt, aptitude or synaptic etc.. If you start reportbug without a parameter, you will be asked for a package name as the first step. Whether you supply it as an argument or not the next step is reportbug retrieving current bug reports for that package. You can then peruse these and view these to see if your bug has already been reported. If it hasn't you can then move onto reporting it. Note that if you specified that the host machine was not connected to the Internet then it won't try to retrieve the current bugs.

After briefly describing the problem--which will become the title of the bug--you then pick the severity of the issue ranging from critical (data loss, system breaking etc.) to wishlist. You then get to specify if this bug is related to localisation (l10n) or if you are providing a patch for it.

Next you are given the bug report itself to edit. This is where the background information I was mentioning earlier is handled for you. Things like package version, system information, kernel, architecture and dependencies are all filled in for you. There is a very obvious space for you to enter your more detailed report. Once you have done editing you exit the editor. The final step is to confirm that you want to send the report: saying yes will normally do the trick.

# What happens next

What happens next will probably depend on the type of report you sent in and the package maintainer. You'll get a copy of the report automatically and you might well get a response from the maintainer requesting more info.

Reporting bugs is a very simple way to get involved with the free software community. Using a tool like reportbug makes it even easier for inexperienced users to get involved too. If you ask me it's an all-round better system than the standard bug-tracking tools where you have to register etc.

[urwid]: http://excess.org/urwid/
[Woulter Verhelst]: http://www.freesoftwaremagazine.com/columns/bug_hunting_making_sure_your_bug_gets_fixed
[Andrew Min]: http://www.freesoftwaremagazine.com/columns/ubuntu_help_reporting_bugs_using_launchpad
[Debian bug reporting guide]: http://www.debian.org/Bugs/Reporting
[apt-buglist]: http://www.freesoftwaremagazine.com/columns/beyond_synaptic_using_apt_better_package_management