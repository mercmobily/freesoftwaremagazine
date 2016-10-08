---
nid: '2051'
title: 'Gentlemen, start your engines!'
authors: 'Marco Marongiu'
published: '2007-02-05 17:00:00'
tags: 'opengl,games,torcs,racing'
license: verbatim_only
section: opinions
listed: 'true'

---
Those of you that are fans of car racing will probably recognize this post's title as the famous phrase that gives the official start to the Indianapolis 500. If it happens that you are a fan of both car racing and free software, you may well be interested in TORCS (The Open Racing Cars Simulator).


<!--break-->


[TORCS](http://torcs.sourceforge.net/) is a free software racing car game that uses [OpenGL](http://www.opengl.org/) libraries for 3D rendering. It comes in Linux and Windows versions. You can compile it from source of course, but you also can have it in [binary precompiled format](http://torcs.sourceforge.net/sections.php?op=viewarticle&artid=3#linux-lokiinstaller). Some distributions also have it pre-packaged. My Debian testing, for example, has it, but it has been purged of the files that are non-free; your mileage may vary (well, what else can I say talking about cars? :-) I don't spend much time playing with my PC, but I confess that since I discovered torcs I have wasted some!

The aim of the game is to have robots racing one against the other, or to have you at the steering wheel racing against them—and, believe me, while some of them are quite "naive", there are others that are really hard to fight against.

I first came across TORCS some two years ago, and I immediately liked it. Having an old laptop dating from 2002, I had to castrate some of the 3D goodies of the game, nevertheless I liked playing with it a lot.

Installing it is fairly simple: download the [installer](http://torcs.sourceforge.net/sections.php?op=viewarticle&artid=3#linux-lokiinstaller) somewhere on your hard disk; then open a terminal as a normal user if you want to install it just for yourself, or as super-user for a system-wide installation. Then run it like this:


=CODE_START=
sh torcs-1.3.0-linux-glibc-2.3-pIII.bz2.run
=CODE_END=

This will unpack the package in a temporary directory and launch the installer.


=IMAGE=installer.jpg=The TORCS installer=

Agree to the GPL license terms and you will be shown the TORCS installer. Choose your options and push on "Begin Install". After a little while you'll have TORCS installed and the `torcs` command available in the path you specified. You are ready to start your engine!

At this point I guess you are in a hurry to run your first race so I am not going to bother you with a lot of screenshots that you may well get from the torcs website. Let's walk through the basic set-up instead, after which you'll be able to walk on your own foot.


=IMAGE=configure_players.jpg=Getting started=

Assuming you have a better PC and video card than mine and you don't mean to tweak the program's options, click on the "Configure players" button.


=IMAGE=configure_players_configured.jpg=Get a car!=

Choose your car, set some other options and push on "Accept". Then click on race. And, since you are in a hurry...


=IMAGE=select_race.jpg=Getting to the track, fast!=

...select "Quick race" from the "Select Race" menu.


=IMAGE=select_track.jpg=Choosing the track=

Select one of the tracks...


=IMAGE=select_drivers.jpg=Choosing your opponents=

...and your opponents. Remember to put yourself on the list, otherwise you'll watch the robots racing against themselves! Then...


=IMAGE=quick_race_options.jpg=Your mileage may vary... but you choose!=

Select the racing distance and accept. You are then back to the "Quick Race" menu. Select "New race" and... enjoy!!!

