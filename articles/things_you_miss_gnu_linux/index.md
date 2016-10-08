---
nid: '2854'
title: 'Things you miss with GNU/Linux'
authors: 'Ryan Cartwright'
published: '2008-05-01 14:44:36'
tags: 'gnu/linux,windows,migration'
license: verbatim_only
section: opinions
listed: 'true'

---
Recently I've noticed an increases in the number of people I know who are migrating from Windows to GNU/Linux. Either my tireless advocacy is grinding them down, word is starting to spread. Perhaps they've actually seen Vista in action and decided to jump ship now. Either way there are some things they are going to miss when they make the leap.

<!--break-->

# Service packs, upgrades and updates

I had one of the regular weekly IT newspapers drop on my desk today and the headline was screaming about how the release of SP3 for Windows XP might hit sales of Vista. Service packs don't really happen with GNU/Linux distros. Oh sure you can download a new CD for Hardy Heron and upgrade your Gutsy install, but that's not really a service pack, it's a whole OS. To expand on that, you cannot install SP3 onto a clean hard disk and use it, you can with a new Ubuntu/Fedora/Debian/OpenSuSE release. Good distributions have facilities for updating the entire system. So when Debian Etch was released, all I did to upgrade was type `apt-get update` and then `apt-get dist-upgrade` on my Debian Sarge system. You can upgrade Ubuntu Gutsy Gibbon to Hardy Heron using the update manager (_System→Administration→Update Manager`) Most modern distros, particularly the *buntu ones, will tell you when updates are available in a similar way to Windows update.

Updates are a different case because most decent distros will allow you to update packages very easily. This is not like Windows or Microsoft update though. Package updates on GNU/Linux include any application you've installed from your distros repositories. For most of us this will be any application on our system--not just the ones made by our distro supplier. Also package updates will give you pretty good information about what the update does and why. No more "a security vulnerability has been found, installing this update will fix it" type messages. I'll grant you that a lot of them could do with lessons in being a little more verbose though.

# Trial versions

Many of the home Windows users I know tend to just buy a new PC whenever they "need" to upgrade their OS.  I have tried to get them to chuck some of their clearly disposable income in my direction but so far it hasn't worked. So when they get their new PC home they start on the wonderful process of turning it back into something they want to use--you know like their old PC. This will involve removing the many trial versions of various packages they don't want that were installed by the OEM in the factory. I once saw a script written by someone to do this on new Dell machines--it was called the de-crapify script but it was short-lived because Dell kept changing the "crap" that came with their PCs.

With GNU/Linux you rarely get this kind of issue. A new install will invariably install its own preferences for standard applications but, believe me, getting rid of them is far easier than un-installing an OEM trial version of Norton Anti-virus! In addition it's rare for a free software application to be a trial-version: the nature of the licencing means you get to try the full version. The only real parallel I could think of was live CDs where you get to try the whole OS before you install it.

# The UAC

If you've used Vista at all you'll definitely miss the User Account Control feature. This is the security "enhancement" which asks you to confirm that you just asked the computer to do something. For example you may want to change your Internet settings by running the Control Panel applet and the UAC will ask you if it was you who just double-clicked the icon before it runs it. With GNU/Linux you do occasionally run across this kind of thing--where you are asked for the root password. Generally it asks you once at the start of the operation (so, you'll miss out on that) and it's only for the stuff you really need it for--that is stuff that could screw up your system. This includes things like running a package manager or configuring hardware. 

# Proper boundaries

If you are used to the limitations of Windows XP, with its three choices of window widgets--well one choice really but in three very "exciting" colours--you're in for a surprise. Similarly if you are used to your OS finding every printer shared on your network and installing it--without asking, then you are going to be in for another surprise. With GNU/Linux you will find the playpen much larger. You are able to fiddle and tweak to your heart's content, no longer are you stuck to just changing your wallpaper. Also you will find the system does far less automatically without prompting you or asking you first. Plug in a USB printer and it will still be detected and you'll be prompted through a driver wizard (unless of course the driver is already loaded then you just be shown the new printer ready to go). But plug your laptop into somebody else's network temporarily and you won't suddenly have half a dozen "AUTO" printers installed which you are unlikely to use. GNU/Linux systems tend to recognise a proper boundary between you and them.

# What do you miss?

Okay so I've not gotten into things like your existing hardware not working (although not much does work under Vista, does it?) or that obscure DTP package you got from a cover CD six years ago; however, there are a number of things which are refreshingly absent when you move to GNU/Linux. There are also some things which are more pressing and people tend to have different experiences and ways to overcome those obstacles. If you've made the leap to this side of the freedom fence: 

* what did you miss at first?
* how did you overcome it?
* do you still miss it?

If it's a short answer, feel free to comment below. For longer answers--for example--if you have  some tips and advice to give--could be given in a response post to this one. Click the "Write a full post in response to this!" link below.

## References

* [DistroWatch -- choose your GNU/Linux distro](http://www.distrowatch.com)
* [Update Gutsy Gibbon to Hardy Heron Howto](http://www.ubuntugeek.com/upgrade-ubuntu-710-gutsy-gibbon-to-ubuntu-804-lts-hardy-heron.html)