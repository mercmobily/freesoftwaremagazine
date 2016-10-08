---
nid: '2393'
title: 'How to find .debs (even if you think they don''t exist)'
authors: 'Andrew Min'
published: '2007-07-01 6:30:00'
tags: 'ubuntu,debian,deb,apt,aptitude'
license: verbatim_only
section: hacking
listed: 'true'

---
One of the biggest strengths of Debian (and derivatives like Ubuntu) is support for the `.deb` package. After all, it provides a one-click method of easily installing programs. Best of all, these programs are automatically updated via the official Debian repositories. Unfortunately, the official repositories aren’t always the best. Some programs aren’t always up to date (the latest version of [Thunderbird](http://www.mozilla.com/en-US/thunderbird/) is 2.0. However, the latest version in the repositories is 1.5). Worse, some packages aren’t in the repositories at all ([Glest](http://www.glest.org/) is a good example). True, you could build the program from source, but there are a number of reasons why that is undesirable (finding the dependencies, having to download the program again to uninstall it, not automatically adding itself to the menu, etc.). How do you find good Debian software?


# GetDeb

I first stumbled across [GetDeb](http://www.getdeb.net/) when looking for a Kompozer `.deb`. A kind Ubuntu Forums member pointed me towards the site, calling it the go-to place when the official repositories don’t have the program. Boy was he right. Not only have I used it for Kompozer, but I have used it for Glest, Pidgin, [ActionCube](http://assault.cubers.net/), and many more programs. All of them are in tidy .deb packages for easy (un)installation.


=IMAGE=figure_1.jpg=Figure 1: GetDeb=


# Automatix

There’s another option available. It’s called [Automatix](http://getautomatix.com/). It offers pre-compiled binaries of many popular programs and drivers, including [Swiftfox](http://getswiftfox.com/), [xdvdshrink](http://dvdshrink.sourceforge.net/), Nvidia drivers, and many more. However, there are two problems with it. First, it doesn’t distinguish between free (as in beer) and free (as in speech). Even worse, many users have reported problems with Automatix, occasionally creating problems only remedied by a live CD rescue. I personally have used it without trouble, but many people recommend NOT using it. If you’re still feeling adventurous, follow the [instructions](http://www.getautomatix.com/wiki/index.php?title=Installation) on the Automatix site on how to install it.


=IMAGE=figure_2.jpg=Figure 2: Automatix=


# Google

Many people have created third-party `.deb`s and just haven’t submitted them to GetDeb or the official repositories. So it makes sense to search for the packages online. But why Google (besides the fact that it is the king of search engines)? The main reason is that they have a special search site called [Google Linux](http://www.google.com/linux) which only searches GNU/Linux-related sites. Go there, then do a search for `[INSERTPROGRAMNAMEHERE] debian package OR .deb OR binary`, replacing `[INSERTPROGRAMNAMEHERE]` with the name of the program, e.g. `kompozer` or `"thunderbird 2"`.


=IMAGE=figure_3.jpg=Figure 3: Searching for .debs on Google Linux=


# Converting RPMs to DEBs

One of the biggest competitors to the `.deb` format is the `.rpm` package (used by Red Hat, Fedora, Mandriva, SuSE, ArkLinux, and many more). Luckily, there is a tool that will convert many (but not all) RPMs to DEBs. It is called [Alien](http://kitenet.net/~joey/code/alien/). Just install the `alien` package with `apt`, `aptitude`, or a package management tool like Synaptic. Then, open a terminal window, `cd` to the source package you wish to install and type `alien [INSERTFILEHERE] --scripts -i`, replacing `[INSERTFILEHERE]` with your RPM (e.g. `amarok.rpm`). The package will be converted and installed. If you use KDE, use Chad M’s [RPM Installer for Konqueror or Dolphin](http://linuxappfinder.com/blog/rpm_installer_for_konqueror_or_dolphin_in_kubuntu), which lets users just right-click on an RPM and install it without having to remember Alien’s syntax.


=IMAGE=figure_4.jpg=Figure 4: An example Alien conversion=


# Last resort: making your own

Sometimes, none of the above will work. Luckily, if the program is open source and uses `make` to compile and install, it might not be as bad as you think. All you need is two utilities called [AutoApt](https://help.ubuntu.com/community/AutoApt) and [CheckInstall](http://asic-linux.com.mx/~izto/checkinstall/). What you do is download and install the `auto-apt` and `checkinstall` packages using `apt`, `aptitude`, or a package management tool like Synaptic. Then, open a terminal and `cd` to the location of the program you want to build from source. Type `auto-apt run ./configure`. This will (hopefully) download all the requirements for the program. To finish, type `make` and then `sudo checkinstall` to create and install a `.deb`. Obviously, Checkinstall won’t work with every single program, and AutoApt won’t find every single dependency. Still, they’re viable alternatives to using `apt-cache search` to search for every dependency, then compiling the program itself.

Feeling experimental? Then you should try [AutoDeb](https://wiki.ubuntu.com/AutoDeb). It’s an experimental bash script that combines a modified version of AutoApt and CheckInstall. Installation is a breeze: just download the binary file [here](http://ljl.150m.com/autodeb), and make it executable (`chmod +x ./autodeb`). Then, you’re set! You don’t even need to unzip (or untar) the source archive, just type `autodeb archive.tar.gz`.


=IMAGE=figure_5.jpg=Figure 5: Using AutoDeb=

