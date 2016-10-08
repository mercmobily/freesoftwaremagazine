---
nid: '3381'
title: 'Some tips for troubleshooting packages on your system or Ouch! the Pain!'
authors: 'Rosalyn Hunter'
published: '2010-09-27 13:54:39'
tags: 'debian,apt,aptitude,dpkg,logs'
license: verbatim_only
section: hacking
listed: 'true'

---
When something is working, it seems to make sense to you. For example, we all know that a car burns gas, and uses the energy to run a motor that turns the wheels to make it go. Gas--> motor--> wheels--> Go! It seems simple. The same is true of an operating system. You turn it on, it boots up, some text goes across the screen, then the windows pop up and you're ready to go. Boot--> text--> windows--> Go! Its easy, until something breaks. You never really understand how complicated something is until it breaks.
<!--break-->

=ZOOM=I am currently troubleshooting, a horrible process that feels like swinging a hammer at your toenail and hoping each time that you will miss.=
My operating system broke just recently. (I wrote about it in a previous blog.) My window system failed to come up after an upgrade, and I was unable to successfully downgrade.  I am currently troubleshooting, a horrible process that feels like swinging a hammer at your toenail and hoping each time that you will miss.

So I am trying to understand my system. I have found, however, that what I thought was simple is not so simple. The deeper I look at it, the more complex it becomes like the fractal edges of a snowflake which continue to be complex when you magnify it. Lately, I've been working on my package system, and I figured that maybe some of you would benefit from some of the tricks that I had to learn in my quest to regain my windowality. 

=ZOOM=maybe some of you would benefit from some of the tricks that I had to learn in my quest to regain my windowality.=

I have a Debian GNU/Linux system, and the programs that run on it are installed as packages. Three package management programs that I've been using a lot lately are _apt_, _dpkg_, and _aptitude_. All of these programs can be used on the command-line. They add and remove packages from your computer, but they can do much more than that. Here are some useful options to use when you need to troubleshoot your system.

_Dpkg_ /de package/ is the package manager for Debian. It is the lowest level and most ancient of the three programs. Lower level programs are usually more dangerous, so I tend to use this one sparingly. I like to use the option _-l_ (list).

When I type `dpkg -l kde*` on my system, I get a list of packages containing the string _kde_ including their install status, and their version. 

This tells me, for example, that _kdewallpapers_ is installed, but _kdesktop_ has been removed.

_Aptitude_ is a very high level program. The most recent of the three, it can do many things at once, which can be good and can be bad. Some useful options are `aptitude why` and `aptitude why-not`

`Aptitude why` tells about dependencies, for example
When I ask 
=CODE_START=
aptitude why kdesktop
i   Konqueror Depends libkonq5 (>= 4:4.3.1)
i A libkonq5 Depends libkonq5-templates | kdesktop
=CODE_END=
It is telling me that I need _kdesktop_ because _libkonq5_ depends on it, and I need this for _Konqueror_ to work. So if I don't install _kdesktop_ then _konqueror_ won't work.

`Aptitude why-not` tells about conflicts. When I type
=CODE_START=
Aptitude why-not kdesktop
i   konqueror Depends kdebase-bin (=4:4.3.1-1)
i A kdebase-bin Conflicts kdesktop
=CODE_END=

This tells me that _kdesktop_ conflicts with _kdebase-bin_ and _kdebase-bin_ is necessary for _konqueror_ to work. So if I install _kdesktop_ then _konqueror_ won't work.

Hmmmm.

Actually the "'|'" means "or" so if I have _libkonq5-templates_ installed, I won't need kdesktop, and the exact versions of everything are important too. Anyway, I hope you get the point. This can be complex.

Now _apt_ is a middle level package manager, and _apt-get install_ can be used to get just about any package that you need, but you can also find out about a package by using the option `apt-cache show`.

It will give you a list that includes a description of the package, where you got it, and dependencies. Using these options helps you to decide which packages to add, and which packages might give you trouble. Most of the time you won't need to bother with these options, but it's nice to know them nonetheless.

Besides looking at packages, I've also been looking at logs.
When the computer runs text across the screen too fast for you to read, its most likely dumping all that text into a log somewhere so that, if the desire should ever take you, you could read it.
=ZOOM=Boring logs are good. It is the interesting ones full of warnings that you don't want.=
In Debian, the logs are found in _/var/log_. Many programs make log files, and most of the time they are extremely boring to read. Boring logs are good. It is the interesting ones full of warnings that you don't want.
For example, while sifting through a long _aptitude_ log, I saw the following line.
=CODE_START=
Will install 6 packages, and remove 54 packages.
=CODE_END=
And I thought, "I removed what!"
Ah well, time to swing the hammer one more time. OUCH!