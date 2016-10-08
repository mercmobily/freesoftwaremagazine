---
nid: '1913'
title: 'Managing your iPod without iTunes'
authors: 'Jon Peck'
published: '2007-02-26 6:30:00'
tags: 'amarok,ipod,gtkpod,podcasts,banshee,rockbox'
issue: issue_16
license: cc-by-nc
section: end_users
listed: 'true'

---
While iTunes is a powerful application, it does have its limitations, mostly stemming from both Digital Rights Management (DRM) restrictions and the Recording Industry Association of America’s (RIAA) interest in preventing unauthorized copying of music, regardless of fair use and personal flexibility. The free software community believes that the ability to freely copy content you own between your iPod and a computer is a right, not a privilege. In this article, I’ll discuss how to fully manage the content on your iPod using completely free software.


=ZOOM=The free software community believes that the ability to freely copy content you own between your iPod and a computer is a right, not a privilege=

Other than purchasing content, what other base functionality of iTunes is commonly used? Copying content to your iPod, maintaining playlists, and subscribing to podcasts. If we’re switching applications, we don’t want to lose any basic functionality!

I used a FAT formatted fourth generation 20 GB iPod Version 3.1.1 for testing, so I can’t attest to video functionality. I used Ubuntu 6.10 x86 for my test system, so any installation notes will apply to that context. By default, Ubuntu comes with Rhythmbox, which didn’t work properly with my iPod, so I just removed it.


# iPod Managers

There are three applications for managing the contents your iPod that rise to the top: gtkpod, Banshee, and Amarok. While gtkpod is primarily just an interface to the iPod, Banshee and Amarok are fully functional audio players. I’ll concentrate on iPod management rather than a full review of all their features.


## gtkpod


* Homepage: [http://www.gtkpod.org/](http://www.gtkpod.org/)
* Version: v0.99.8 (09/24/2006)
* Platform: All (GTK2)
* License: GNU GPL v2


=IMAGE=gtkpod.jpg=gtkpod—Cross-platform iPod interface with a smart playlist editor=

gtkpod is a cross-platform interface for the iPod, with support for all iPods through the 5G and iTunes mobile phones. It features a smart playlist editor.

I had no issues with the installation; no configuration was needed, and the iPod showed up correctly. The main view displays a comprehensive, sortable playlist editor. To use, you click the Read button to read the iPod’s iTunesDB, make your changes, then Sync. If you choose, you can also sync specific files, directories, or playlists. Copying music from the iPod to your computer is as simple as right-clicking and selecting “Copy Tracks to Filesystem”. The resulting files were nicely named based on the tags. I copied files by simply dragging and dropping the folder onto the gtkpod window. When I ejected the iPod and checked my changes, everything was there without corruption, and the newly copied files and playlists worked without issue.

By default, gtkpod offers playback of files using XMMS. You can change the command under `Preferences→Tools→Play`.

gtkpod also comes with a few system utilities. You can also normalize the volume level of your audio files, but as I trust the engineers and producers to set their levels appropriately (let’s not get into compression, that’s a rant unto itself), I wouldn’t recommend it for normal use. I tried it, and it seemed to work. Other useful utilities include a scan for orphaned and dangling files and a quick overview of disk utilization.

Overall, I really like this utility because of its logical interface, ease of use, and lack of bloat.


## Amarok


* Homepage: [http://amarok.kde.org/](http://amarok.kde.org/)
* Version: 1.4.4 (10/30/2006)
* Platform: GNU/Linux, Unix
* License: GNU GPL


=IMAGE=Amarok.jpg=Amarok—GNU/Linux audio player with support for many audio devices=

Amarok is a GNU/Linux audio player. While developed initially for KDE, it’s currently desktop independent. One of its advantages is support for many audio devices, including iPod, iRiver, etc. Upon the first run, you’re given the opportunity to set up your library. Unfortunately, out of the box on Ubuntu 6.10, the iPod wasn’t detected, but a quick configuration change made all the difference: `Settings→Configure Amarok→Media Device→Add Device→Plugin (Apple iPod), name (iPod), and mount point (/media/ipod)`.


=ZOOM=One of [Amarok’s] advantages is support for many audio devices, including iPod, iRiver...=

Copying music from the iPod is as simple as right-clicking and selecting `Manage Files→Copy Track to Collection`. As it adds files to Amarok’s library, the file is neatly named and placed in an appropriate folder (you’re given the option of which folder naming scheme you’d like). Copying to the iPod from your collection is similarly easy: right-click, Transfer to Media Device, select the Media Device and click Transfer. Amarok automatically checks for duplicate tracks, which is nice. The album cover function works quite nicely, fetching the image from Amazon or another external source. Playlists also work quite well.

Overall, Amarok is a strong tool, and definitely worth considering if you’re looking for both iPod and Library management.


<!--pagebreak-->



## Banshee


* Homepage: [http://banshee-project.org/](http://banshee-project.org/)
* Version: 0.11.3 (12/09/2006)
* Platform: GNU/Linux (GTK)
* License: MIT


=IMAGE=Banshee.jpg=Banshee—GNU/Linux audio player that should work with iPods... but doesn’t live up to the task=

Banshee is an audio player for Gnome that has the ability to synchronize music with iPods. It’s more of a media manager, similar to iTunes.

When first run, Banshee asks you to set up your Music Library. When I reached the main window, the iPod showed up automatically and no additional configuration was required. However, my iPod playlists didn’t show up... not the end of the world, but not good either.

I copied tracks from the iPod by dragging them from the Banshee interface onto the desktop. However, the resulting file name was a bit wacky—Banshee just copied it directly from the iPod without renaming it based on the internal tags. Copying tracks from the Music Library to the iPod was similarly flawed; I dragged a single track, then the whole album, and ended up with a duplicate. When I synchronized, I lost an entire album that had been on the iPod that I hadn’t been working with! I suppose that the program tried to warn me: “Actions will alter or erase existing iPod contents and may cause incompatibility with iTunes!”. Fortunately, the duplicated track seemed to be intact.

I ejected the iPod and surveyed the damage. The duplicate was there, and my album really had gone missing.

There’s an iTunes Music Store plugin, which allows you to purchase music from the iTunes store. After the disappearing album, I opted not to try it.

I removed Banshee and reinstalled gtkpod to try to fix things. I got a warning and a notice. The notice told me that a duplicate track had been detected and removed (good!). The warning was a bit more disturbing; “iTunesDB... does not match checksum in... iTunesDB.ext ... gtkpod will try to match the information using MD5 checksums. This may take a long time”. The operation seemed to go quickly enough. Then I tried syncing; gtkpod failed to write to the artwork database, so now that was corrupted too. Also, when I checked the iPod files, it reported dozens of dangling tracks which it recommended for removal; when I did, I was left with only one song on the entire iPod. Good thing I prepared for this by backing everything up.

While Banshee may be a good media manager, based on my experience, I can’t recommend it at all for managing your iPod.


# Podcasts


=ZOOM=Podcasts... are actually just syndicated media files... you don’t need iTunes to retrieve [podcasts]=

Podcasts, while on the surface are a mysterious and trendy Web 2.0 creature, are actually just syndicated media files. While Apple has embraced podcasts and treats them like it was their idea, you don’t need iTunes to retrieve the content of a podcast; you can use any news reader. However, there is additional functionality to be gained by using an application specific to handling feeds. An aggregator is client software that monitors subscribed web feeds and downloads any new content. Here are just a few of the many podcatching clients.


## Juice


* Homepage: [http://juicereceiver.sourceforge.net](http://juicereceiver.sourceforge.net)
* Version: 2.2
* Platform: Windows, Mac OS, GNU/Linux (fork)
* License: GNU GPL


=IMAGE=juice.jpg=Juice—The first and most common cross-platform podcatcher=

Juice (formerly iPodder) is the most common cross-platform podcast aggregator, and also considered the first. Currently, there’s no GNU/Linux version; their homepage recommends the iPodder fork [PodNova](http://www.podnova.com/) instead.

On first run, Juice had two default podcasts already subscribed (Adam Curry and news about Juice), but they can be removed. Overall, I found Juice very logical and easy to use; just add a feed and check for files. The downloaded files are neatly organized in the destination folder, ready to be transferred to your portable media device. You can leave Juice running in the background to continuously keep your subscriptions up to date.

If you’re using either Windows or Mac OS, I’d strongly suggest giving Juice a try; when in Windows, I used it on a regular basis.


<!--pagebreak-->



## gPodder


* Homepage: [http://perli.net/projekte/gpodder/](http://perli.net/projekte/gpodder/)
* Version: 0.8.0 (07/28/2006)
* Platform: GNU/Linux
* License: GNU GPL


=IMAGE=gPodder.jpg=gPodder—Copies podcasts directly to your iPod=

gPodder has the advantage of being able to copy podcasts directly to your iPod. You subscribe to podcast feeds using gPodder’s “channels”: simply paste the feed URL, select the content you’d like to download, and press the download button. By default, they’re added to the podcast playlist, so they’re considered actual podcasts by the iPod! An excellent feature that allows you to use the iPod’s full podcast functionality, such as remembering where you were. Under the Podcasts menu, you can both Sync to iPod and clean up iPod podcasts.

On the downside, for each downloaded file, the artist field is overwritten with “gPodder podcast”, and it doesn’t look like that can be reconfigured.

Overall, gPodder is an excellent program for managing your podcasts; it’s lightweight and clean, which I prefer.


## BashPodder


* Homepage: [http://linc.homeunix.org:8080/scripts/bashpodder/](http://linc.homeunix.org:8080/scripts/bashpodder/)
* Version: 1.2 (09/14/2006)
* Platform: All (requires bash, wget and sed)
* License: GNU GPL

BashPodder brings the base functionality of an aggregator down to its barest essentials—just tell it what feed you want it to check and which directory to put the downloaded content in. Using the K.I.S.S. principle (Keep It Simple, Stupid), BashPodder consists of just three files: a crontab friendly script, an XML stylesheet, and a text list of feeds. There is a GUI available, but that kind of defeats the purpose of such a minimalistic approach. I like this no-nonsense approach: just paste the source URL into the feed list and the next time the script is executed, the feed will be checked and new content acquired.


# Other iPod Managers

There are other “free” iPod managers, some cross platform, others platform specific. Development on the plugin foo_pod for the audio player foobar2000 (closed source with a BSD API) has ended with feature completion for the 4G and no current plans for anything above. There’s a plugin for Winamp, which is being overshadowed by the recent inclusion of official internal iPod support. EphPod is closed source, and while it seems to work well for anything under a 4G, it hasn’t been updated in years. The manager Media Monkey comes in two flavors: a no-cost no-nags version, and a commercial version with additional functionality. However, it lacks essential features like duplicate checking.

Visit the Wikipedia article [Comparison of iPod Managers](http://en.wikipedia.org/wiki/Comparison_of_iPod_Managers) for a good roundup and comparison of these other utilities.


# Firmware Replacement

There’s another more drastic direction that you can take: replacing the iPod’s operating system. While not for the faint of heart (you run an extremely slim chance of bricking your player), you can completely unlock the potential of your iPod using free software.


=ZOOM=Replacing the iPod’s operating system can completely unlock the potential of your iPod=


## iPodLinux


* Homepage: [http://ipodlinux.org/](http://ipodlinux.org/)
* License: GNU GPL

iPodLinux is custom uClinux kernel with an interface named podzilla. Dozens of applications in the form of modules have been written to add functionality and value, including utilities like text keypads and screen locks, and games like chess and tetris. Using the [Music Player Daemon](http://musicpd.org/) (MPD), it supports MP3, FLAC, Ogg Vorbis, and AAC files. It’s under a state of constant development, but in my opinion it’s not a mature, stable application yet.


## Rockbox


* Homepage: [http://www.rockbox.org/](http://www.rockbox.org/)
* License: GNU GPL v2

Rockbox is a free and mature operating system/firmware replacement, and it’s not limited to just iPods—Archos, iriver, and iAudio devices are also supported. It plays back many formats, including MPEG audio, Ogg Vorbis, Musepack, AAC, AC3, FLAC, WavPack, Shorten, Apple Lossless, and WAV. It comes bundled with many applications and games, including Brickmania, Chess, Doom, Snake, Space Invaders, Game Boy emulation, and much more. The last time I was on a business trip, my flight was delayed, but the Rockbox applications helped time pass by much faster. Best of all, Rockbox has an excellent implementation of gapless playback built in by default.

Neither iPodLinux nor Rockbox have official stand-alone installers, but if you follow their simple step-by-step instructions, you’ll be fine. Overall, because of its maturity, functionality, and support, I prefer Rockbox over both the official iPod firmware and iPodLinux.


# Conclusion

I currently use gtkpod when managing my iTunesDB, gPodder for subscriptions, and Rockbox when I want to completely liberate my iPod. Fortunately, there are many free tools and options for iPod management, so you should now be able to find your own balance between the functionality you crave and the interface you prefer.

