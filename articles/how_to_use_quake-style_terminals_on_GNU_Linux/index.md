---
nid: '2452'
title: 'How to use Quake-style terminals on GNU/Linux'
authors: 'Andrew Min'
published: '2007-08-14 14:19:04'
tags: 'gnu/linux,terminal,terminals,quake'
license: verbatim_only
section: end_users
listed: 'true'

---
We know all about how powerful the GNU/Linux terminal is. However, it’s a pain to have to fire up a terminal emulator like Konsole or gnome-terminal, wait for a few seconds for it load, and then have to keep Alt-Tabbing to it. Wouldn’t it be easier to just have a terminal that automatically hides and shows itself at click of a button? Today, I’m going to look at three different terminal emulators that do just that.


# What the heck is a Quake-style terminal?

Quake is a wildly popular first person shooter created by id Software. In the game, there is a terminal that is accessible by hitting the `~` key. It is used to edit settings and variables, show logs, and enter commands and cheats (for more, read the [Quake-style Console article](http://en.wikipedia.org/wiki/Quake-style_console) at Wikipedia). Quake isn’t the only program that has this functionality: Doom, Half-Life, Dark Engine, Lithtech, and several other games and game engines use similar consoles.


=IMAGE=quaketerminals_figure_1.jpg=Figure 1: The console in NightFall (a mod for Half-Life 2)=


# Kuake: Quake-style terminal for KDE

A long time ago in an IDE far far away... OK, so it wasn’t that long ago (unless January 2003 is really “long ago”) and it wasn’t that far away.  Anyway, not so long ago in an IDE not so far far away, Kuake was born. Martin Galpin got the bright idea of creating a Quake-style front-end to Konsole. The idea was that you’d hit a hotkey (at the time, Ctrl-K) and Konsole would slide down from the top of the screen. You could resize it, realign it, and much more.  When it came it, it achieved great success (Unfortunately, development seemed to freeze after the release of an unstable 0.3 release in March 2004.

Even though Kuake hasn’t been updated recently, you can still install it. The site offers a tar.gz source archive, a Debian package is available at `deb ftp://ftp.berlios.de/pub/kazit/debs`, Ubuntu has a package called `kuake` in the Universe repository, and many other distributions offer packages. The hotkey is `Alt-~` (available after you launch Kuake).


* [Homepage](http://www.nemohackers.org/kuake.php)
* [Screenshots](http://nemohackers.org/software/kuake/screenshots/)


=IMAGE=quaketerminals_figure_2.jpg=Figure 2: Kuake=


# YaKuake: Yet Another Kuake KDE terminal emulator

Meanwhile, in another part of the galaxy, a French programmer named Francois Chazal was working on a forked version of Kuake known as YaKuake (Yet Another Kuake KDE terminal emulator). YaKuake added several features including inline tab renaming, better Xinerama support, and skins. Like its predecessor, its popularity skyrocketed, reaching over 25,000 downloads and earning a [5 star rating from the famous software repository Softpedia](http://www.softpedia.com/reviews/linux/YaKuake-Review-30782.shtml).

YaKuake offers a tar.bz2 source archive. Many distributions offer it as a package in their repositories. The hotkey for launching YaKuake (after it is running) is by default `F12`, but you can change it to whatever you want (I like Kuake’s default `Alt-~` myself).


* [Homepage](http://yakuake.uv.ro/)
* [Screenshots](http://yakuake.uv.ro/?page_id=7)


=IMAGE=quaketerminals_figure_3.jpg=Figure 3: YaKuake=


# Tilda: Quake terminal for Gnome

KDE users weren’t the only ones having fun with Quake-style terminals. In December 2004, Tristan Sloughter (aka kungfooguru) released Tilda (named so because tilde, the ~ symbol and often the hotkey for Quake-style terminals, was already taken), a GTK+ Quake-style terminal emulator. Like Kuake and YaKuake, it took off, reaching 12,000+ downloads in 3 years.

Tilda provides a tar.gz source archive, but many distributions provide packages. Once you install it, run `tilda -C` to configure it.  Then run Tilda with the command `tilda`.  Options are available via `tilda -h`.  Tabs are available too.  Access keys are Ctrl-Shift-T (New Tab), Ctrl-Shift-PageUp (Next Tab), Ctrl-Shift-PageDown (Prev Tab) and Alt-#(go to 1 to 10th tab)


* [Homepage](http://tilda.sourceforge.net/)
* [Screenshots](http://tilda.sourceforge.net/wiki/index.php/Screenshots)


=IMAGE=quaketerminals_figure_4.jpg=Figure 4: Tilda=

