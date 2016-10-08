---
nid: '2777'
title: 'Asus Eee PC (Part Two): Setting up the full KDE GNU/Linux Experience'
authors: 'Gary Richmond'
published: '2008-03-21 16:38:43'
tags: 'hacks,eee-pc,kde-repositories,pinning'
license: verbatim_only
section: end_users
listed: 'true'

---
In [Part One of my Eee PC series](http://www.freesoftwaremagazine.com/columns/asus_eee_pc_ultra_portable_laptop_gnu_linux_pre-installed)  I looked at the hardware specifications of this miniature marvel. In such a small space Asus have managed to cram in a lot and at a price that is so low that it ought be illegal. However, it is a cliche to recall that hardware without software is junk--unless you have a fetish for silicon. In this post I will look at the software on the Eee PC. It will not be an explicit HOWTO, but it will include lots of links to enable you to get the best out of this two-pound wonder.

<!--break-->

By default, the Eee PC ships out with a heavily customised version of Xandros. Leaving aside warranty, GPL violations and patent issues (which I covered in part one) this allows the user to experience  wireless web browsing, e-mailing and office tasks from the off. Boot time (and shut down) in default mode is sinfully fast and there is a reason for this: Easy Mode, a tabbed interface where activities are grouped by categories/types. It may make the Eee PC look a bit Fisher Price but by God it doesn't hang about. However, no self-respecting hacker is going to stand for that. Underneath all that deceptive eye candy lies a full GNU/Linux distro.

# Hacking Easy Mode

As soon as you have unpacked the little beast, charged it up and switched it on you will want to get the full-on GNU/Linux experience. The first thing to know is that the initial tabbed interface which acts as the gateway to all the usual functions you would expect is in fact based on a "dormant" ICEWM. If you want to retain Easy Mode because you like it and the fast boot times it gives you but you also want to access the traditional start menu and associated programmes there is a simple hack to do it.

You can find some [super hacks for Easy Mode](http://wiki.eeeuser.com/howto:beginners_guide). The one we are interested in involves adding a start menu for Easy Mode. I will not reproduce it here as I do not wish to steal the thunder of those wonderful guys at [eeeuser](http://www.eeeuser.com/) who were knee-deep in hacking the Eee PC before I had ever got my sweaty hands on one. It is easy and involves creating a directory, copying some files and using a text editor to add a line to the X11 configuration files and you can get it [here](http://wiki.eeeuser.com/howto:icewmstartmenu#enabling_the_icewm_start_menu_in_easy_mode). Just open up a terminal (`Ctrl+Alt+T` in Easy Mode) and follow the instructions. 

# Easy Mode + ICEWM + advanced mode =happiness!

Easy Mode plus the ICEWM start menu lifts the Eee PC factory default up but you will need one more step to reach the Elysian Fields of Unix land. Enter stage left (KDE-based) Advanced Mode. Once you have implemented this hack you will be in the familiar territory of a full-blown GNU/Linux distro.

The difference will be immediately obvious. It is the difference,as has been observed elsewhere, between the Eee PC as an appliance and as a computer. At 4GBs, the solid state drive is hardly capacious but even so the extra memory, RAM and marginally slower boot times caused by enabling an advanced desktop is more than worth the trade off. The real added bonus of this hack is that it is not irreversible. You can switch between the two modes as easily as you log in an out to change windows manager on any other distro. 

However, one word of warning for the security conscious: When you first switch on the Eee PC it will take you through a familiar set up routine, including choosing a username and password. When you boot into Easy Mode you will be prompted for them both but once you have enabled Advanced Mode you will be logged in automatically. This is a known problem, and as at time of writing there is no solution. (If you went to Kcontrol Centre to try and fix it, you'd discover that you're out of luck.) In the meantime, the best thing you can do is to [add a Bios passsword](http://www.lockdown.co.uk/?pg=biospsw&s=articles). Of course, these passwords could be hacked, but, as an interim measure, it is better than nothing (and presumably it adds an extra layer of protection to an already password-protected Easy Mode). 

Since I purchased my Eee PC a number of methods to install an advanced desktop have emerged. Which one you choose will depend on your nerve, Unix skills and personal preferences. Whatever method you choose (Manual, Wizard or Easy) you can get full details on [how to enable the advanced desktop in the Eee PC](http://wiki.eeeuser.com/howto:getkde). As all methods require an internet connection, make sure you are online. Primarily, this all depends on two files in order to work: ksmserver and kicker. All methods use them and install advanced-desktop-eeepc (on the command line or via Synaptic).

# Tip

There is a known problem with occasional error messages when using Synaptic which look like this: `E: Unable to parse package file /var/lib/dpkg/status (2)` and `E: Unable to lock the download directory`.

If this happens, either close Synaptic and install from the command line (see below) instead or, as root, execute `dpkg --configure -a`. That usually does the trick. Additionally, due to the small screen size it is difficult to resize the internal Synaptic screen to see a  larger list of available packages. Using `Apt-cache search` with the name of the packages(s) you want to download and install on the command line may help here if you know exactly what you looking for rather than idle window shopping in Synaptic. Once you have located the package(s) you want `apt-get install` <your package> will. If you prefer to do it all from the comfort of the GUI, just close Synaptic and try again. 

#Eee PC wizard: another way to get KDE and other stuff

An alternative way to get to a full KDE desktop with added goodies is to download the [Eee PC Wizard](http://code.google.com/p/pimpmyeee/). It will add a lot of other stuff including codec support, extra repositories (overwriting the custom ones), webcam scripts and themes, to mention a few. It is a Bash script  installed to your user directory. If you want to know more about it and the details of what it does the [eeeuser wiki has a good explanation](http://wiki.eeeuser.com/howto:getkde#enable_advanced_desktop_-_the_wizard_way) (You can of course add these separately later by other means. The wizard is the work of one Eee PC hacker, derred. It is in its second version so there seems to be an element of maintenance. There is also an (incomplete) uninstall script. Use the wizards at your own risk.)


# Adding repositories to the EeePC

The default repositories that come with this customised Xandros (a Debian fork) will not give you access to the twenty-thousand plus packages in the Debian archive; however, it is easy to add repositories--but you do need to be careful about what you add because Xandros is not deemed to be strictly compatible with Debian. The danger of bricking the Eee PC is always lurking. (If you want to know exactly what comes bundled with this minature laptop check out [the list of packages installed in the Eee PC](http://www.linuxlinks.com/article/2007111710124771/Asus-701-Appendix.html). It's not half bad.

In the true spirit of the GNU/Linux community however, the paucity of compatible repositories has been addressed with the creation of bespoke ones especially for the EeePc. The eeeuser wiki has a [list of extra Eee PC repositories](http://wiki.eeeuser.com/addingxandrosrepos?s=adding%20repositories) that you can copy and paste into your /etc/apt/sources.list configuration or open Synaptic, select Settings > Repositories and click on the New button (bottom left) and copy and past the extra repositories into the relevant fields. If you're not sure what goes where, just click on any of the existing ones to view the layout. Even then you may find applications will either not install, or offer to install but will also inform you that certain packages, like `glibc` and `kde desktop`. In this case you can always try to install a free-standing pre-compiled binary. For me, this was the case with the Opera browser. A static Debian package did the trick and installed without complaint. 

To get the latest version, [download Opera from the official site](http://www.opera.com/download/) and select "Other/Static DEB", your preferred mirror and download the browser. Click on the Home icon on the Desktop to open the xandros file manager and locate the Opera package. Right click it, select `install Deb` and follow the prompts. Note: if you try this in Konqueror that option will not exist (unless you install a package manager like Kpackage -and I could not locate in in Synaptic). If you prefer the command line the following in a terminal (as root) will suffice: `dpkg -i <packagename+version>`.

So far I have added, by stand alone and repository methods, Opera, Flock, Dillo, Miro, Netscape Navigator, VLC, amongst others. If you want to play it uber safe, head over to [the Debian packages site](http://packages.debian.org/stable/) and download the separate packages with the `dpkg -i` command, dependencies notwithstanding (as root of course). [Getdeb](http://www.getdeb.net/) is always a useful punt for favourite and popular software too if you are nervous of cooking with the repositories.


# Pinning for the fjords

Ok, it's an execrable pun but [pinning](http://wiki.debian.org/AptPinning) is always useful if, like your drinks, you insist on mixing your repositories. In the case of the Eee PC it is vital, if you are determined to use pure Debian repositories (rather than Xandros) and you don't want to brick your pride and joy. Whilst adding repositories is done through `/etc/apt/sources.list` (or by Synaptic's interface, Settings → Repositories), pinning is done through editing `/etc/apt/preferences` in your chosen text editor (Nano, Vi or Kate, etc). A quick visit to `man apt_preferences` will give you some idea of what is is and does. (It's quite verbose, so type `man:apt_preferences` in the Konqueror location bar for a better HTML-formatted experience.) What you set in this overrides what is contained in `/etc/apt/sources.list`. 

Pinning is a big and complex subject but there is a very good [guide on pinning for beginners] (http://jaqque.sbih.org/kplug/apt-pinning.html). If you are wary of doing this for yourself, the good people at the eeeuser wiki have provided a copy and paste [pinning list for the Eee PC](http://wiki.eeeuser.com/addingxandrosrepos?s=adding%20repositories) for you. Even so, it is at times like these that you will be glad you invested time in learning the (apt-get) command line and, despite all precautions, use the `-s` flag in an `apt-get install` command to simulate what exactly installing a particular package will do. (Apart from anything else, installing and removing software on the command line gets round the problem of limited screen space in the Eee PC when using Synaptic--for which at some point you will need to to invoke `Alt+D` and your mouse to move Synaptic around the screen to click on options.) 

Once you have done all this you will have a full KDE desktop and the Debian repositories at your fingertips. You won't know the difference between running this and doing a full Debian or Ubuntu install on a conventional laptop. For the most part this is true but there are differences. 

# How the Eee PC file system deprives you of the full GNU/Linux experience

The only thing now standing between you and the full-on Linux experience is that when you type, say, `apt-get remove gwenview` you will think, as you would be reasonably entitled to think, that you have deleted it. A fair assumption, but you'd be wrong. Dead wrong. Why? Because the Eee PC uses [Unionfs](http://en.wikipedia.org/wiki/UnionFS). The primary reason is to do with Asus's hand-holding attitude to system recovery. There are four partitions on the Solid State Drive (SSD). The first one holds the operating system and the second sits on top of it. Any changes you make are to this second partition (userspace) and you cannot recover space from the first partition by simply uninstalling software. Upgrading packages only means that there are two versions installed - the original default install on the first partition and the "update" on the second partition. This might not matter much on a large drive, but on a 4GB drive it does. 

What would therefore really be useful for Eee PC users given this restriction would be GNU/Linux development of portable applications of popular software that can be run directly from removable media like USB memory sticks or even SD and SDHC. There is a site which does this, but [only for Windows](http://portableapps.com/apps/internet/firefox_portable). The nearest I have seen to this is a [small, currently inactive site](http://pafl.portools.com/) for Linux but there are few applications and most of them require Gnome. I haven't tried enabling [Klik](http://klik.atekon.de/) on Konqueror yet to get similar functionality for GNU/Linux apps but I understand that Klik does not play well with Xandros on the Eee PC because there is apparently no support on the Kernel for [cramfs](http://en.wikipedia.org/wiki/Cramfs) yet. Xandros can create a cramfs, but it has been reported that it won't mount it. Klik has an [excellent Klik troubleshooter](http://klik.atekon.de/wiki/index.php/Troubleshooting#I_get_.22Please_install_ar_in_order_to_use_klik.22) for common problems. However, there are [interesting developments](http://forum.eeeuser.com/viewtopic.php?id=15043) afoot.

There are a number of options to remove this problem: retain the factory install but remove unionfs, install a customised version of GNU/Linux over the default, run a customised version from an external USB drive or run a customised version from a memory stick or a SD or SDHC card. These will be the subject of Part Three.


# Conclusion and acknowledgments

Out of the box the Asus Eee PC works well and it is not very difficult to hack it in order to get it up to speed as a near fully-fledged GNU/Linus distro, as we will see in Part Three. In the meantime, I must acknowledge the marvelous work done by the founders, members and contributors of the eeeusers community without whom I would not be using my Eee PC as I do. 

# Postscript

In Part One I remarked that every piece of peripheral hardware I threw at the Eee PC worked seamlessly. Yesterday I added a 3G USM modem for mobile internet browsing. This facility has been factored into the Kernel since 2.6.20 and the internet connection wizard on the Eee PC was simplicity itself. In two minutes I was on the web. The modem is a [Huawei E220](http://en.wikipedia.org/wiki/Huawei_E220) and it is [easy to set up](http://www.greenhughes.com/content/using-your-asus-eee-pc-3-mobile-network). Have fun!