---
nid: '2955'
title: 'SliTaz live CD: small but beautifully marked'
authors: 'Gary Richmond'
published: '2008-08-13 20:12:02'
tags: 'livecd,micro,fast'
license: verbatim_only
section: end_users
listed: 'true'

---
When I came across the oddly named [SliTaz](http://www.slitaz.org/en/) I really didn't know what to expect. Yet another predictable fork of some better known distro which would blaze briefly in the free software firmament, burn out and fall to Earth, spent? Boy, was I ever wrong. If you want to know why Switzerland may be about to become better known for more than chocolate and Cuckoo clocks, read on and be prepared to be impressed and delighted by a live distro of exceptional speed and size.

<!--break-->

=TEXTBOX_START=My addiction to live CDs=
I admit i:. I am a live CD junkie. I like to try out new features, sample the latest offering in the GNU/Linux world and experiment and learn on the command line and tinker with the innards of config. files without endangering the distro on my hard drive. Your reasons may be different--and equally valid. The reasons are as various as the prodigious number of live CDs available.
=TEXTBOX_END=

# Size isn't everything. Oh yes it is.

=ZOOM=If distros were bodies, SliTaz would have a Body Mass Index low enough to make nutritionists drool=

Every live CD tries to have its unique selling point: latest all singing, all-dancing Kernel, fancy grahics effects, snazzy Windows Manager etc. SliTaz comes to market with one selling point and one only: Size. It weights in at 24.8Mb. No, that's not a typo. I'll repeat that: 24.8Mb. If you thought Damn Small Linux (DSL) and Puppy Linux were small--and they are--think again. DSL is approximately 50MB and Puppy tips the scales at anywhere between 62 and 138MB depending on the version you choose. Either way, SliTaz is at least fifty per cent smaller. If distros were bodies, SliTaz would have a Body Mass Index low enough to make a nutritionist drool. If that ludicrous size doesn't suck you in, nothing will. In fact, were it not for the inclusion of Firefox as the main browser SliTaz would only be about 15MB. That's seriously ridiculous. The only bloat comes in the form of a "cooker" version which is a little more featureful than the stable version and ratchets up SilTaz to a bloated 28.6MB! More about that later.

When was the last time you downloaded an ISO on a modest broadband connection in less than three minutes? Even those users unfortunate enough to be stranded on dialup will not have a long wait either. 24.8MB ensures that fast download. Another reason is that it is compressed but when running it expands to just over 80MB.

My mother always told me that good things come in small packages (I am only five feet four inches) but just because you are small doesn't mean that you don't pack a punch. I may be small but I am beautifully marked--and so is SliTaz. It certainly has not had to compromise in terms of modernity: the Kernel is 2.6.24, glib is 2.3.6 and X.Org is 7.2. Did I mention that it manages to boot with a mere five scripts and one configuration file in under two minutes? It has enough tools to get most jobs done in an average session:

=IMAGE=An_application_for_most_ocassions.jpg=Figure 1: An application for most ocassions=

With the CD tray freed up ripping your favourite music with Asunder is a breeze:

=IMAGE=Asunder_in_action.jpg=Figure 2: Asunder in action=

# The who, the why and the how

The founder of the SliTaz project is Christian Lincoln and the distro is based in Switzerland and uses English and French on the website. When asked why they go down potholes or up mountains people invariably reply: because they are there. A similar reasoning seems to motivate the developers of live CDs. Why? Because they can. In the case of SliTaz (which, incidentally, stands for Simple Light Incredible Temporary Autonomous Zone) the developer was motivated by "desire and need".

SliTaz boot options are flexible: it can be run entirely from memory (fast) with as little as 128MB of memory, with as little as 64MB of memory (by using `slitaz-loram` boot cheat code) and even with 16MB when using the `slitaz-loram-cdrom` cheat code at boot time. Such parsimonious requirements make SilTaz very attractive for anyone with an older desktop or laptop. Programs load and run fast. Really fast. 

Needless to say, you are not restricted to old machines, although SliTaz ran reasonably fast on my old thirteen year desktop with a 400MHZ Celeron processor and 192MB of memory. An added, fast CD burner ensured that the boot process was actually faster than my most recent laptop. However, if it runs fast on old machines it runs at warp speed on current ones.

It will run on [VirtualBox](http://www.virtualbox.org/) too, dispensing with the CD or the USB stick. If you prefer you can boot from a USB stick too which will give you a portable persistent home for all your files and settings. However, it is not necessary to use a USB stick to have persistent settings. A partition on your hard drive will do just as well, though this restricts you to settings from one machine. The stable version will require you to mount the chosen drive. This is done with the Mountbox GUI. Due to the presence of [HAL](http://en.wikipedia.org/wiki/Hardware_abstraction_layer), the Cooker version will automount removable media.

The worst thing you can say about SliTaz is that (in common with DSL and Puppy Linux) it does require some configuration as you proceed through the boot process, but following the defaults will bring you to a full graphical desktop. If you suspect that the desktop will not be KDE or Gnome, or even XFCE, given an ISO of less than 25MB you'd be right. Instead, you get JWM--[Joe's Window Manager.](http://joewing.net/programs/jwm/) It's pretty minimal but it is functional as this screenshot shows:

=IMAGE=SliTaz_default_desktop.jpg=Figure 3: SliTaz default desktop=

However, if JWM is just too frugal for you, you can run [E17](http://enlightenment.org/p.php?p=about/e17&l=en) or [Openbox](http://icculus.org/openbox/index.php/Main_Page) window managers either by direct download on a running system (more of that later) or download and burn the Cooker version of SliTaz instead.  

=ZOOM=lovers of Unix purity will applaud the inclusion of BusyBox which has not been slow to litigation in pursuit of prosecuting GPL violations=

SliTaz does comes with four virtual desktops and the small,lightweight [LXPanel,](http://www.gnomefiles.org/app.php/LXPanel) the default desktop panel of the [LXDE project](http://lxde.sourceforge.net/about.html). So far so minimal but what about SliTaz's applications? It has something for most purposes. Firstly, it uses [BusyBox](http://www.busybox.net/), which has been described as the Swiss Army Knife of embedded Linux, in place of the larger GNU Core Utlilties. When you are trying to shoehorn a distro into less than 25MB that makes sense--and besides, lovers of Unix purity will applaud the inclusion of BusyBox which has not been slow to litigation in pursuit of prosecuting GPL violations. It was designed by no less a Linux luminary than Bruce Perens. That's good enough for me. 

SliTaz Stable offers no less than 448 binary packages (the online repository is hosted by [Tuxfamily](ftp://download.tuxfamily.org/slitaz/packages/1.0/).). The Cooker version has more than 670 packages available. The default stable ISO will cover all the major areas of activity: the internet music, editing and development. You can view the complete list of available packages for stable [here]( http://www.slitaz.org/packages/stable/) and for Cooker [here.](http://www.slitaz.org/packages/cooking/) You can also view the complete list of packages within a running system. Just navigate to `/var/lib/tazpkg/packages.txt`. There is one potential fly in the ointment here. I referred to the availability of a substantial number of _binary_ packages. The only sources packages are those specific to SliTaz tools. Yet the GPL is explicit that the source code for all distributed binaries should be available for three years. This looks like a clearcut case of non-compliance with the GPL. Why? SliTaz's developer seems to imply that this is a bandwidth/storage problem at the server end.

# Package management

SliTaz comes in at less than 25Mb for a reason. It was designed as a base system. If you want to expand it you can and if you are familiar with installing software on the command line, especially Apt, then you will be right at home. It may sound like something out of a Buggs Bunny cartoon but [Tazpkg](http://www.slitaz.org/en/doc/manuals/tazpkg.en.html) (a Bash-compatible shell script which invokes [Ash](http://en.wikipedia.org/wiki/Almquist_shell)) is SliTaz's Apt. A simple tazpkg recharge updates the package list prior to installing a piece of software with tazpkg get-install followed by the package name. (The SliTaz repositoires include relatively big hitters like The Gimp, Abiword and Kino.) If you prefer, you can install software from Xterm (just as you would in any distro). The only difference is that once you you have gone root you need to include Tazpkg on the command line as well as issuing get-install. In the dedicated Tazpkg tool, this is already part of the prompt.

The text-based package management tools in the Stable version of SliTaz are fine and the following screenshots will be familiar to anyone who has used Apt-get on the command line:

=IMAGE=adding_and_removing_software_in_Tazpkg.jpg=Figure 4: Adding and removing software in Tazpkg=

Dependencies are handled easily and automatically:

=IMAGE=downloading_Pcmanfm_file_manager_with_Tazpkg_in_Xterm.jpg=Figure 5: installing the Pcmanfm file manager=

Upgrading is simplicity itself:

=IMAGE=upgrading_packages_in_Tazpkg.jpg=Figure 6: Tazpkg offers to upgrade four packages=

Updating mirrors from Tuxmachines is a no brainer:

=IMAGE=Tazpkg_updating _mirror_list_in_Xterm.jpg=Figure 7: Updating mirror list in Xterm=

The Cooker version has a very neat GUI, akin to Synaptic:

=IMAGE=Cooker's_Tazpkg_GUI_for_installing_software.jpg=Figure 8: Cooker's Tazpkg GUI for installing software=

=IMAGE=Simply_double_clicking_a_package_will_cause_Tazpkg_to_offer_to_install_it.jpg=Figure 9: Simply double clicking a package will cause Tazpkg to offer to install it=

However, whichever version I used was intermittent. The problem seemed to be in the consistency of the connection to the online repository. The Tazpkg text tool, Xterm, and the Tazpkg GUI all worked fine when the connection was working. This meant that installing software often took more than one attempt. When it worked, it worked damn fast and handled dependencies well. If this live CD is to progress, connection consistency and stability are a priority.

# Remastering SliTaz

As if this micro distro wasn't small enough it offers the user the opportunity to remaster the CD image with software called Tazlito (licenced under GPL V3). It can be found in the System Tools menu under Tazlito LiveCD Tool and it launches a nice interactive GUI which allows you to navigate through a number of options to build your own distro--"flavor" in SliTaz parlance:

=IMAGE=Tazlito's_friendly_GUI_in_action.jpg=Figure 10: Tazlito's friendly GUI in action=

=IMAGE=Tazlito_flavors.jpg=Figure 11: Tazlito flavors=

This can also be accomplished on the command line. Whichever method you choose you can opt for a copy of the current live CD running, several alternative preconfigured images from an online server or build your own flavour (connection consistency notwithstanding). This can also be done on the command line.

# Final thoughts

=ZOOM=If Firefox had been left out Slitaz's footprint would be smaller than my size-six shoes=

Every distro, live or otherwise, usually tries to pitch itself by selling a unique feature or set of features. Slitaz is no exception. That selling point is the sheer kudos of running an uber-fast micro distro that comes in under twenty five megabytes. If Firefox had been left out Slitaz's footprint would be smaller than my size six shoes. The inclusion of Dillo in such a tiny distro would have been an obvious choice but it was not included in either the Stable or Cooker version nor to be seen anywhere in the repository. Dillo deserves inclusion in any user's comfort zone. Besides, Firefox should have loaded much faster in a distro running from RAM--although, once cached, it  speeds up. I have used much larger live CDs--Slax, for example--from both compressed files on the CD or in RAM where Firefox launched much, much faster.

The default software included as default for both versions is sufficient to cover most people's needs. The Cooker version is probably the one to download as it has a better and a more easily configurable desktop (OpenBox), includes a better file manager (Pcmanfm) and MoviePlayer to handle video (though it would not play my DVD--sound only!). The difference between the two versions is only about 4MB. Hardly a deal breaker. Apart from these features I commend Cooker if only because the Mountbox feature works properly. It allowed me to mount and browse and play/transfer files between my hard drive and the live CD running in RAM, including Ogg and MP3 files. A neat little no-brainer of a GUI. Unlike DSL or Puppy Linux the internet connection was configured automatically during the incredibly fast boot process (which would be even faster if it just auto-detected hardware and went with the defaults without user interaction, although you can shave some time off by pre-selecting your options for language, keyboard and screen resolution).

Many of these complaints are not insurmountable but they did rather tend to sour the overall experience of using SliTaz. It is, unquestionably, a minimalist miracle by a wide margin and you can get a lot done with it. I'm just not sure that the diminutive size will be sufficient to retain a place in my laptop bag. For anyone with a very old, "slow" machine this just might be the kiss of life. Nevertheless, it has definite potential. If nothing else, SliTaz reminds us all of the inexhaustible versatility of GNU/Linux and why it has such a place of affection in our hearts. It reminds me why I filed divorce papers with Windows. The _decree nisi_ is now absolute.