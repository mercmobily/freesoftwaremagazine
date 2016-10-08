---
nid: '1370'
title: 'Changing the recipe'
authors: 'Joshua Pritikin'
published: '2006-07-13 6:38:23'
issue: ''
license: verbatim_only
section: hacking
listed: 'true'

---
There is a tradition amongst computer game aficionados which may be little known to people accustomed to proprietary games. This activity is called _mod’ing_—making small changes to a game to customize the play experience. Without a game’s source code, such changes are extremely difficult to implement. Games licensed as free software, on the other hand, are quite amenable to mods. This article presents two example mods for single-player games and proceeds to discuss mod’ing in general.


=ZOOM=It may be news to you that it is usually easy to tinker with the source code for games=

If you haven’t done much programming then it may be news to you that it is usually easy to tinker with the source code for games. Typically there are a few crucial variables like `score` and `powerup`. There is a main loop which reads keyboard and mouse events. Adding a special cheat key and recompiling can entail as little time as an hour or two.

It may sound impractical for mere reflex gamers to make source code changes for cheat keys and the like. Examine the following examples to decide whether you’ll need any help.


# Mods for single-player games

Before jumping into source code, understand that most software is developed through independent projects. Gathering all these projects and making them work together is the primary motive of distributions like Red Hat, Gentoo, and Debian. If you use the packaging tools which come with your distribution then you will have an easier time because the myriad of integration problems are already solved. I use the Debian toolset here.


=CODE_START=

# Some preparation: apt-src automates the process of
# downloading source code. We'll keep track of our
# changes with GIT, just like the pros.
#
$ apt-get install apt-src git-core

# You may have to add a deb-src line to your
# /etc/apt/sources.list.
#
$ apt-src install gnome-games

# This tutorial uses version 2.12.3.  Other versions
# hopefully differ little.
#
$ cd gnome-games-*

# Take a snapshot of the original version.
#
$ git init-db
$ git add .
$ git repo-config user.name "John Doe" # your name here
$ git commit -m original

# Edit the code such that git diff show the following
# changes. Add lines prefixed with plus and remove
# lines prefixed with minus. It's probably OK if the
# line numbers turn out slightly different.
#
$ git diff
--- a/gnometris/blockops.h
+++ b/gnometris/blockops.h
@@ -44,10 +44,10 @@ public:
        GnomeCanvasItem *generateItem(int x, int y, ..

        const Block * const getFieldAt(int x, int y) ..
+       void eliminateLine(int l);

 private:
        bool blockOkHere(int x, int y, int b, int r);
-       void eliminateLine(int l);
        Block **field;
        bool field_initialized;
        Field *fieldDisplay;
--- a/gnometris/tetris.cpp
+++ b/gnometris/tetris.cpp
@@ -1132,6 +1132,10 @@ Tetris::keyReleaseHandler ..
        } else if (keyval == t->moveDrop) {
                t->dropBlock = false;
                res = TRUE;
+       } else if (keyval == 'c') {
+               t->ops->putBlockInField(true);
+               t->ops->eliminateLine(LINES-1);
+               t->ops->putBlockInField(false);
        }

        return res;

# Build a new deb package with your mod.  This can take
# a long time depending on the speed of your machine.
# You need about 100M of free disk space.
#
$ dpkg-buildpackage -b -uc -rfakeroot

# If all goes well, install it on your box.
#
$ su -c 'dpkg -i ../gnome-games*.deb'


=CODE_END=


<!--pagebreak-->


Now while you are playing gnometris, you can press ‘c’ to remove the bottom line of blocks. As you can see, mods are not much more difficult than designing new levels for Rocks-n-Diamonds or KGoldRunner. Moreover, you can mod games which have a trivial conception of levels (like Tetris). Let’s take another example.


=CODE_START=

$ apt-src install supertux
$ cd supertux-*            # version 0.1.3
$ git init-db
$ git add .
$ git repo-config user.name "John Doe" # your name here
$ git commit -m original

# The man page for supertux has a clue: the
# --debug-mode command line option. The following
# patch enables parts of the debug_mode
# unconditionally.
#
$ git diff
--- a/src/gameloop.cpp
+++ b/src/gameloop.cpp
@@ -334,7 +334,7 @@ GameSession::process_events()
                           }
                         break;
                       case SDLK_TAB:
-                        if(debug_mode)
+                        if(1)
                           {
                             tux.size = !tux.size;
                             if(tux.size == BIG)
@@ -346,15 +346,15 @@ GameSession::process_events()
                           }
                         break;
                       case SDLK_END:
-                        if(debug_mode)
+                        if(1)
                           player_status.distros += 50;
                         break;
                       case SDLK_DELETE:
-                        if(debug_mode)
+                        if(1)
                           tux.got_coffee = 1;
                         break;
                       case SDLK_INSERT:
-                        if(debug_mode)
+                        if(1)
                           tux.invincible_timer ..
                         break;
                       case SDLK_l:
@@ -362,7 +362,7 @@ GameSession::process_events()
                           --player_status.lives;
                         break;
                       case SDLK_s:
-                        if(debug_mode)
+                        if(1)
                           player_status.score += 1000;
                       case SDLK_f:
                         if(debug_fps)

# Build a new deb package with your mod. If all
# goes well, install it on your box.
#
$ dpkg-buildpackage -b -uc -rfakeroot
$ su -c 'dpkg -i ../supertux*.deb'


=CODE_END=

Making mods is a more profound activity than you might assume. Changing the rules of a game invites a provocative series of questions: Why was I working so hard to achieve what I now understand is an arbitrary goal? Who determined the original rules and why? These questions transcend the limits of the original game design. Mods are empowering. Mods encourage authoring in preference to submissive consumption.

Thinking beyond video games, are there game-like structures in our social system? Who set up the rules for these social games? For what purpose? Ultimately, thinking about mods leads to _The Matrix_ like insights:


>What you must learn is that these rules are no different than the rules of a computer system. Some of them can be bent. Others can be broken.


# Multi-player doppelganger

Some games are designed from the ground up to involve multiple players. Even games which were originally single-player often add facilities for involving multiple players within the same playground. Since changing the rules of a multi-player game entails discussion and consensus among all the potential participants, the mod procedure outlined here is more difficult to implement for multi-player games. Also, modding can sometimes have ethical implications if the modifications are created  purely to give an specific player an unfair advantage over other human players who are not aware of it.

Have fun mod'ing!

