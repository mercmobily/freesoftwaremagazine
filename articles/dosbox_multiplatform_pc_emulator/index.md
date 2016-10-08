---
nid: '2618'
title: 'DOSBox, a multiplatform PC emulator'
authors: 'Michael Reed'
published: '2008-06-05 14:34:38'
tags: 'emulation,dos,gaming'
issue: issue_22
license: cc-by-nc-nd
section: opinions
listed: 'true'

---
DOSBox is a freely available, cross-platform PC emulator. Rather than attempting to be the technology leader as a business-orientated virtualization environment like VMware or Qemu, DOSBox instead offers a rich set of features aimed at closely recreating the behaviour of a retro gaming PC. To this end, it offers a selection of accurate sound card emulations and facilities to throttle the emulation speed back to vintage PC levels, along with other features designed to make sure that the old games run properly and accurately within a protected environment.

<!--break-->

# The problem defined

Many old games do not run (or do not run properly) on modern PCs. Until Windows became the most popular platform for PC gaming, DOS was the environment under which PC games had to operate. The majority of DOS-based games will run into problems on a modern system, if they will run at all.

Given a sufficient level of demand, a new (and equivalent) productivity application will be created, but the situation for games is different. Games are, to an extent, artistic works, and one artistic work cannot easily be replaced by another.

## Why run old games?

Let's be clear: not every old game is worth revisiting. As a general rule, about eighty percent of everything, in all media, is rubbish. If not actually rubbish, entertainment media can be so tied to the time in which it was made that it cannot survive the transition into a later era.

However, there are games that _are_ worth hunting down and re-playing.

An old game might employ a gameplay style that has no modern equivalent, or a much-loved old game might have a nostalgic attachment for a gamer. Sometimes, the gamer wishes to try out a game that they passed over at the time of release. Finally, some old games are simply great games and are worth playing in their own right.

A sad aspect of computer gaming as a type of entertainment media is that a lot of great content is lost due to inaccessibility. The aspects of a great game that make the experience meaningful—the characters, plots, music, etc—can be locked away due to technological obsolescence. This can prevent both personal re-enjoyment of the game and the potential to share a gaming experience with someone else.

## A solution: emulation

An emulator is a piece of software that simulates the functions of another system. In theory any type of computer system could be emulated in software. The downside of emulation is performance, because the host system must be considerably more powerful than the target.

Most emulators are of one of two types: they are either orientated towards the running of serious applications or the running of games. Emulators designed to unlock access to the library of serious applications on a foreign platform usually focus on execution speed. Game oriented emulators tend to place greater importance on aesthetic accuracy.

As an emulation target, the PC is a relatively straightforward one.

When IBM created the original PC, they made the decision to build it out of off-the-shelf components. This led to the design being comparatively open, a fact which allowed other manufacturers to create PC clones. As a result, the PC architecture is extremely well documented.

## Emulator vs real hardware

Anyone who wants to run old games faces a dilemma: should they emulate it with software or attempt to obtain the real hardware and run that?

For a lot of hobbies that involve a collection, the physical object and its idiosyncrasies are part of the fun, so running a program isn't always as good.

However, an emulator like DOSBox offers many conveniences that would not be possible with a real, physical, vintage PC: unlike a real computer, DOSBox is free, takes up no space and requires no physical maintenance; DOSBox allows the user to specify a system with many possible add-ons, and at no extra cost; using DOSBox, the user can perform all of the file maintenance within the host operating system.

In addition, DOSBox is able to actually enhance some aspects of the original games.

# Introducing DOSBox

DOSBox attempts to recreate the character and feature-set of a period-correct vintage PC.

DOSBox is a cross platform application and can be run on Mac OS X, GNU/Linux and Windows, amongst others. Users of all platforms can obtain the latest version, as a free software download, directly from [the DOSBox website](http://www.dosbox.com/). As it exists within the package repository of most popular distributions, GNU/Linux users might prefer to install it via their package manager.

It's worth mentioning that DOSBox has an enthusiastic and active community behind it. People sometimes forget to check out the associated community before investing the time needed to learn a new piece of software. For one thing, it's easier to get help when you're stuck if the community is vibrant and supported by decent forum facilities.

The DOSBox website also hosts a searchable games database that documents the level of success that users have had with various games.

## What is emulated?

Conceptually, the components of a PC could be split into three parts: the hardware, the operating system and the applications. DOSBox simulates the hardware of a i486 compatible PC with a sound card and VGA graphics. It also provides a built-in DOS-like operating system substitute.

## The CPU

The upper performance limit of DOSBox depends upon the overall processing power of the host machine. Using some subjective testing, I estimated that my modest single core 1.7GHz AMD equipped PC allows DOSBox to emulate a PC equivalent in performance to a low-end 486. This makes a game like Doom, for example, very playable.

In theory, there is no limit to how fast the emulated PC could go if you had a sufficiently powerful computer on which to run it.

DOSBox has two modes of CPU emulation: "Normal" and "Dynamic". Normal mode is slower but more rigorously compatible. Dynamic mode gives the emulator a considerable speed boost but might break compatibility with some games.

When running vintage games, a facility to _slow down_ the emulator is often important. Many older games were designed in a short-sighted manner, and as a result, run too quickly on later machines. So for example, some games that were created for a 286 class machine ran unreasonably quickly on a 386. In DOSBox, a key combination is used to "throttle" or slow down the emulator.

## The memory game

DOS based PCs had quite a complicated memory layout, and as a result, the DOS gamer had to become a bit of an expert in memory configuration.

<!--pagebreak-->

As DOSBox automatically simulates the different memory standards, nearly every game should find enough memory of the type that it needs, without any manual configuration of the emulator. This is another advantage of playing games in DOSBox rather than on the real hardware.

## Graphics support

DOSBox emulates all of the common graphics adaptors from the early four colour CGA all the way through VGA and up to Super-VGA. This comprehensive graphics adaptor support means that DOSBox can accommodate everything from the earliest PC games to the final DOS releases.

As an aside, it's worth noting that in the early days of PC gaming, other, cheaper home computers were ahead of the PC in terms of graphics power.

## Graphics scalers

DOSBox is even able to improve upon the original graphics quality. It supports a number of methods that intelligently increase the resolution of the original source graphics. These filters are referred to as scalers. DOSBox supports a number of scaler types and the choice of filter normally represents a trade-off between performance impact and quality. Some of the scalers are far better than the "texture blur" effects of earlier technologies and honestly do give the impression of extra detail.

This is another advantage of using emulation as opposed to running the game on the real hardware.

=IMAGE=monkey_comp.jpg=Figure 1: Original and scaler side-by-side=

Click on figure 1 and compare the two screenshots to see the level of improvement that a scaler can bring. Notice the pixelization around the diagonal edges and the text of the unprocessed image.

## Sound

The first PCs had support for a simple monophonic sound generator connected to an internal speaker. As with the graphics, the early PC was inferior to most games-orientated home computers of the time. Manufacturers were quick to develop add on cards that improved the sound quality.

The most important cards emulated by DOSBox are:

* Ad Lib—A very successful early standard. This card offered facilities for synthesised music and simple sound effects.
* Sound Blaster—This card was, effectively, the successor to the Ad Lib sound card as the standard card for PC gaming. It featured basic digital sample playback in addition to all of the facilities of an Ad Lib card.
* Sound Blaster 16—Improvements in sound quality.
* MIDI pass-through—the MIDI (Musical Instrument Digital Interface) support of DOSBox allows you to route the sound of a game into an external MIDI synthesiser or a high quality software synthesiser on the host operating system.

DOSBox emulates all of these cards and a some other, obscure cards, so the user has to decide which card to use.

If the game supports it, any of the Sound Blaster cards are a better pick than the Ad Lib because they have all of the facilities of the Ad Lib. The Sound Blaster 16 was widely supported in later games and had all of the facilities of the original Sound Blaster and the Ad Lib.

If the game supports MIDI for its musical output, this has the potential to be of the highest quality.

Note that DOSBox emulates a PC that has all of these sound cards installed at the same time. Most DOS games make use of a setup utility to tell the game which sound card to support. It's up to the user to use this utility to configure the game.

As for quality, the sound support is top notch. Back in the day, I spent many hours playing games that used the real sound cards, and I can confirm that the simulation offered by DOSBox is very accurate indeed. Most of the old sound cards were quite poor from an electrical standpoint, so it's quite possible that DOSBox's output through a good quality modern card could exceed the quality of the original device.

Tip: If the DOSBox sound breaks up during gameplay, try throttling the emulator by a few percent. This frees up some resources on your computer for sound generation.

## DOS

DOSBox provides a built-in version of DOS that is similar enough to classic DOS to run most games. This DOS replacement provides a considerable subset of the features of "real" DOS alongside some extra features that directly control the emulator.

## DOSBox in use

When the emulator first starts up, it presents a familiar DOS prompt along with some helpful start-up information.

=IMAGE=dosbox_start_full.jpg=Figure 2: DOSBox starting up under Kubuntu Linux=

Games are loaded in the same way that they were in the old days: using the standard DOS file management commands, the user navigates to the directory that contains the game files and then types the name of the program file.

## Controlling the emulator

Control of the emulator itself is achieved through special DOS commands, key combinations, and a configuration file. This is one of the few shortcomings of DOSBox, as most emulators now offer a more sophisticated GUI. For example, it's possible to become a bit stuck if one allows the emulator to grab both the keyboard and the mouse at the same time, as there is no way of knowing the key combination needed to release the mouse!

The developers were forced to make choices between improving ease of use and adding features that allow more games to run, and I wouldn't describe DOSBox as an _awkward_ program to use. However, it's undeniable that some other emulators make DOSBox's runtime control and configuration features seem old-fashioned.

## Front ends

The relative terseness of the user interface experience has prompted a number of third parties to develop various front-end utilities. These front-ends typically give a user friendly interface to the configuration of DOSBox and the management of a game collection. Utilities such as [DOS Shell](http://www.loonies.narod.ru/dosshell.htm)—not to be confused with the old MS-DOS file manager of the same name—give simple point and click access to game launching. In addition to global configuration and game launching, DOS Shell can associate each game with its own custom settings.

=IMAGE=dosshell_capture.jpg=Figure 3: The DOS Shell front end running under Windows=

As GUI launchers for DOSBox exists for nearly every supported platform, some might argue that the DOSBox developers are right to concentrate on core functionality rather than a pretty user interface. Unfortunately, none of the GUI front ends can offer much run-time control over the emulator.

## The command line interface

Typing `intro` at the command prompt gives the user a few pages of helpful information about the use of DOSBox.

<!--pagebreak-->

One of the first things most users will want to do is to point DOSBox towards the directory that contains their DOS games. Mapping a DOSBox virtual drive to a real directory on the host machine is achieved by using the `mount` command.
Using Linux, the command sequence `mount c ~/dos_games` maps the the directory `dos_games` in my home directory to the `C` drive in the emulator.

The `mount` command also also allows the user to setup CD ROM access from within the emulator. This mapped CD ROM drive can be an actual, physical CD ROM drive, a directory on your hard disk or an ISO dump of a CD ROM. DOSBox can also mount floppy and hard disk images.

The documentation covers the use of the mount command, along with the other DOSBox commands.

## Save states

The second feature that DOSBox is missing is the ability to manage save-states. Some emulators have a facility to freeze the emulation and to save the state of the emulator to a file. Later, the user can restore the save-state and continue from where he or she left off.

Some might argue that, as there were no practical limits on game saving imposed by PC hardware, a game that does not allow the player to arbitrarily save at any point represents a deliberate design choice by the game developer. Still, it's a useful facility to have.

# Getting the games

Before you can make any real use of DOSBox, you must obtain some games. Unfortunately, in nearly all cases, it is impossible to buy brand-new copies of DOS-era games, and such games can only be bought from suppliers of second hand goods, such as eBay.

The DOSBox documentation [goes into detail](http://www.dosbox.com/wiki/MOUNT) on the subject of mounting actual physical media from within DOSBox.

## Abandonware

If you can't source a physical, second-hand copy of a game, another option is to search for it on-line. Formally commercial software that has been made available for free download is termed abandonware, and abandonware games occupy a legal grey area. However, most software companies turn a blind eye to what are, technically, violations of copyright when it concerns games that no longer have any commercial value.

A Google search for the title of the game along with the word "Abandonware" is often a good starting point when searching for specific game.

If you're not looking for a specific game, there are many sites, such as [The Home Of The Underdogs](http://www.the-underdogs.info/) and [C-DOS Abandonware](http://www.cdosabandonware.com/) that contain catalogued and rated collections of games for browsing and direct download.

# What I wouldn't run on DOSBox

As good as DOSBox is, there are certain games that I would use other methods to run.

## Adventure games

[ScummVM](http://www.scummvm.org/) and [Free SCI](http://freesci.linuxgames.com/) are two emulators dedicated to running the point and click graphical adventure games created by Lucas Arts and Sierra. These specialised emulators are less resource intensive than DOSBox as they simulate only the functions needed to run the game rather than emulating an entire computer. They also have some extra features and a user interface tailored to the running of that specific class of game.

ScummVM even has some support for games that were not made by Lucas Arts, so if you're thinking of running a point and click adventure, it might be worth looking these two up before trying the game in DOSBox.

If text adventures are your thing, it might be worth searching on the internet to see if there is a dedicated emulator for the game that you want to run. The actual programming behind a text adventure is relatively simple, and as a result, most companies used one of a few different _interpreters_ for all of their games. Most of the common interpreters have been rewritten and updated and are available as free software. As with the graphical adventure emulators, these emulators are relatively lightweight and offer some enhancements specific to the class of games that they are designed to run.

## First person shooters

A number of the classic, first person shooters have had their engines rewritten to make them run on modern computers. Game engine updates exist for Doom, Duke Nukem 3D and Quake, amongst others. As is the case with adventure game interpreters, reworked game engines for first person shooters generally contain many enhancements over the original game.

## Windows Games

Some people have had success in installing Windows within DOSBox. However, I wouldn't recommend using DOSBox for running Windows games. DOSBox is optimised for running DOS games and there are other emulators that are better at running Windows and therefore Windows games.

If you would like to run Windows games from within an emulated environment, I would recommend looking up an emulator such as [Qemu](http://fabrice.bellard.free.fr/qemu/) or [VMware](http://www.vmware.com/). These emulators offer better performance than DOSBox when it comes to running Windows. As I stated above, DOS games need accurate emulation of real PC hardware; Windows games don't care about the details of the underlying hardware as they benefit from hardware abstraction.

Earlier generations of Windows games are beginning to falter when run under the most recent versions of Windows. So, even Windows users might be able to make good use of emulators such as these.

# Conclusion

DOSBox was created to to enable people to play DOS era games on a modern system. Without something like DOSBox, many of these games would only be accessible to people willing to acquire and maintain a vintage PC.

As well as enabling the games to run, DOSBox can even enhance the original games while running them within a protected, modern environment. Although speed isn't the main focus of DOSBox, even computers that are a few years old should be fast enough to run all but the final DOS-era games.

DOSBox does a nearly perfect job apart from the two, relatively minor criticisms that I outlined above: the user interface could be a bit more sophisticated, and save states would be a welcome feature.

DOSBox is available from the [DOSBox website](http://www.dosbox.com/).
