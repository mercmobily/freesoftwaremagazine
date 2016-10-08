---
nid: '2310'
title: 'Desktop search tools for GNU/Linux: the competition hots up (part one) '
authors: 'Gary Richmond'
published: '2007-05-27 3:59:46'
tags: 'search,desktop-search,beagle'
license: verbatim_only
section: end_users
listed: 'true'

---
I sometimes think that search tools are like my local bus: none comes along for ages and then three turn up in quick succession. For quite some time Beagle and Kat have been meeting the needs of users like you and me who fill up their hard drives with the results of our internet meanderings and because we have been remiss in keeping those drives well organized we eventually have to use search tools to find that PDF or HTML article we spent an eternity looking for.

Beagle has been out for quite some time and was very much launched as the poster boy of Mono along with F-Spot. Before I get flamed, I know some purists will regard the installation of Mono as cause for being strung up outside Micronovell by piano wire from a lampost but if you want Beagle you will have to turn a Nelsonian eye to it and grit your teeth. (Is that a mixed metaphor?) Don’t worry. There is no truth in the rumour that every time someone uses a Mono-based application Satan blinds an innocent puppy.

It comes frequently pre-installed with many distros today and, where it is not, it can usually be installed from the software repositories which will pull in any dependencies required. You can see a list of dependencies [here](http://mail.gnome.org/archives/dashboard-hackers/2007-May/msg00013.html). If a precompiled binary is not available for your particular distro you can always head over to the Beagle [website](http://beagle-project.org/Main_Page) for the source tarball. Install from source? Why not? It reminds me of the good old days when men were _real_ men and installing from source was _real_ installing from source, when real men made their own frocks and crocheted their own yoghurt!

Beagle was designed for the GNOME desktop but it will also work on KDE, and the Kerry frontend was designed specifically for that desktop. In either incarnation, it is still going strong but I’m afraid that Kat is floundering. In fact it appears to be dead. Go to either [here](kat.sourceforge.net) or [here](kat.mandriva.com) and you will be redirected to the main page of Kat’s sponsor, Mandriva, which informs you that the Kat project webpage is closed. It is still available for [download](http://sourceforge.net/projects/kat) in either precompiled binaries for earlier versions of various distros or in source format which now looks like the best bet.

GNU/Linux is about choice and therefore freedom and therefore power and when it comes to desktop search tools the same mantra applies. If some efforts have fallen by the wayside the GNU/Linux community possesses sufficient imagination and talent in depth to come up with alternatives and I want to look at three Beagle rivals and compare them to that established search tool.


# Beagle: best in class?

Well, there’s quite a lot to list so let’s get the facts out on the table about Beagle. It has been out for a few years now and version 0.2.17 has just been released. Beagle offers real time searching and it supports the following data sources:


* File system
* Evolution mail, calendar, and addressbook
* Thunderbird mail, news, RSS feeds, and addressbook
* Korganizer events and TODOs
* KMail mail
* KAddressbook addressbook
* Pidgin (formerly Gaim) and Kopete instant messaging and IRC logs
* Firefox and Epiphany web pages (as you view them, through browser extensions, automatically disabled for secure websites for things like online banking and credit card transactions)
* Konqueror web pages
* Blam, Liferea and Akregator RSS feeds
* Tomboy, KNotes, and Labyrinth notes
* Konversation IRC logs
* Opera Web History

It supports extraction of text and metadata from the following file formats:


* Folders
* Office Documents
* OpenOffice.org (`.sxw`, `.sxc`, `.sxi` and more)
* OpenDocument (`.odt`, `.ods`, `.odp`)
* Microsoft Office (`.doc`, `.xls`, `.ppt`)
* AbiWord (`.abw`)
* Scribus (`.sla`)
* Rich Text Format (`.rtf`)
* PDF (`.pdf`)
* Text Documents (`.txt`)
* HTML (`.xhtml`, `.html`, `.htm`)
* Source code (Boo, C, C++, C#, Fortran, Java, JavaScript, Lisp, Matlab, Pascal, Perl, PHP, Python, Ruby, Scilab and Shell scripts)
* Plain text (`.txt`, any plain text file that isn’t filed under any other category)
* Documentation/Help Documents
* Texinfo
* Man pages
* Docbook
* Monodoc
* Windows help files (`.chm`)
* Images (`.jpeg`, `.png`, `.bmp`, `.tiff`, `.gif`, `.svg`)
* F-Spot and Digikam tags in the images are also indexed
* Audio (`.mp3`, `.ogg`, `.flac`, `.ape`, `.mpc`, `.m4a`, `.aac`, tracker, amiga audio, `.wma`)
* `.m3u` and `.pls` playlists
* Archive files (`.zip`, `.tar`, `.gzip`, `.bzip2`) and their contents
* Application launchers
* Linux packages (ebuild, `.rpm`, `.dpkg`)
* Generic XSLT files Video (`.mpeg`, `.asf`, `.wmv`, `.mng`, `.mp4`, quicktime and other formats supported by MPlayer or Totem

And, if you want to see a list of supported data sources for a Beagle installation, then just issue the following command:


=CODE_START=
beagle-info --list-backends
=CODE_END=

This is what I got on my laptop running Mepis:


=CODE_START=
 
Mail (/usr/lib/beagle/BeagleDaemonLib.dll)
Files (/usr/lib/beagle/BeagleDaemonLib.dll)
GaimLog (/usr/lib/beagle/BeagleDaemonLib.dll)
IndexingService (/usr/lib/beagle/BeagleDaemonLib.dll)
Tomboy (/usr/lib/beagle/BeagleDaemonLib.dll)
Blam (/usr/lib/beagle/BeagleDaemonLib.dll)
Liferea (/usr/lib/beagle/BeagleDaemonLib.dll)
Akregator (/usr/lib/beagle/BeagleDaemonLib.dll)
KonquerorHistory (/usr/lib/beagle/BeagleDaemonLib.dll)
Kopete (/usr/lib/beagle/BeagleDaemonLib.dll) 

=CODE_END=

And here is a list of applications using Beagle:


* The GNOME-based search tool included in Beagle.
* **Kerry Beagle**: a KDE-based search tool.
* **Nautilus**: The GNOME file manager can use Beagle to quickly find files based on content and metadata.
* **Yelp**: The GNOME help browser uses Beagle to search Docbook and `man` pages.
* **Deskbar**: A versatile search interface
* **Tangerine**: allows for publication of music over a local network using DAAP can find all your music automatically using Beagle.
* **Brasero**: A CD/DVD-burning application can find files on your system using Beagle.
* The SUSE Linux Enterprise Desktop main menu has a search entry which uses Beagle.
* **beaglefs**: A FUSE filesystem built on top of Beagle.
* **kio-beagle**: A KDE IO implementation for Beagle integration into KDE applications like Konqueror.
* **Peagle**: Beagle Web frontend, coded in PHP, with a look and feel similar to modern web search engines.
* **catfish**: A unified frontend to beagle, (s)locate, doodle and tracker, written in PyGTK2.
* **kBeagleBar**: A KDE kicker applet for beagle.
* **yaBi**: A pyKDE application for querying beagle. It uses KHTML to display results, CSS for designing and beagle-python bindings to query beagle.

Given such extensive support it is not surprising that the implementation of Beagle has been seen as one of the factors in the [adoption](http://www.desktoplinux.com/articles/AT3453502692.html) of GNU/Linux on the desktop.


# Beagle’s a clever dog. How does he do it?

First off, it utilizes the [Lucene search engine](http://lucene.apache.org/) from Apache  and uses `inotify`. inotify is a Linux kernel subsystem to provide file system event notification and has been in the main kernel since version 2.6.13. This is ideal for search tools like Beagle because it permits `reindexing` of changed files obviating the need for scanning a file system frequently which would be CPU-intensive. Another thing you can do is to enable extended file attributes. It is a file system to enable users to associate computer files with metadata not interpreted by the filesystem. It is supported in Ext2, Ext3, ReiserFS and XFS filesystems. If not enabled, the default for Beagle is to track file status by using the slower sqlite.

To enable `user_xattr` you will need to edit `/etc/fstab` (as root) and add it to the file attributes for the partition in question—usually the partition containing `home` (e.g., `/dev/hda3/home`). You then need to remount the partition with `mount -o remount /home`. **A word of caution though: I have seen reports of adding this feature to the XFS filesystem which resulted in a read only filesystem on reboot, so keep a rescue/repair LiveCD on hand just in case!** In fact, it might not be a bad idea to try all of this on a fresh, testbed install to be on the safe side and copy in some files for Beagle to chew on when you execute searches. For further information on `inotify` and `extended attributes` look [here](http://en.wikipedia.org/wiki/Inotify) and [here](http://beagle-project.org/Enabling_Extended_Attributes) respectively.

Allied to the above-listed features Beagle makes for a powerful search tool although it has been accused of being something of a resource hog. Run Beagle for a few hours and check it with the `top` command; enabling `user_xattr` will use some tens of megabytes for several gigabytes of files. If you are bothered by this then you can set the environmental variable with `BEAGLE_DISABLE_XATTR` but be aware that this will not reset `ctime` back to `mtime` which some worry might affect backups (For more detail on what this is have a look at [this](http://en.wikipedia.org/wiki/Stat_(Unix)) Wikipedia entry. This is perhaps a small price to pay for such a versatile piece of software which interfaces to so many applications.


# Other tips

If you are determined to run it on your laptop but are concerned about the drain on your battery you can disable the Beagle Daemon either by issuing the command `beagle-shutdown` or in all versions since 0.2.14 simply uncheck the box marked “Start search & indexing services automatically”. Or, to use Beagle without indexing, to conserve battery power, issue the command `beagled --disable-scheduler`. If you are on AC power, this will not be strictly necessary, but a matter of personal preference and how much resource you are prepared to give to Beagle on your hard drive. Users of Ubuntu Fiesty Fawn will have Beagle version 0.2.14 which will have an option to disable indexing whilst on battery power. I have that feature on Kerry Beagle on Fedora Core 6, which can be set directly from the graphical user interface configuration option. (However, Fiesty Fawn ships with Tracker, a Meta search tool and I have heard that that it might scrap with Beagle like a pitbull unless you disable the Beagle daemon first. As I am not running that version of Ubuntu yet, can anyone comment on this?) If you are using a different version you can disable Beagle and run it manually on a per session basis as and when needed. To do this issue the following commands and exercise the little mutt:


=CODE_START=

beagle-shutdown
export BEAGLE_EXERCISE_THE_DOG=1
beagled

=CODE_END=

This will index the hard drive agressively and hog resources, so leave it to get on with and resume other tasks later.

Whilst for most tasks the GUI for Beagle will be quite ample for your purposes, as always with GNU/Linux, the command line can be your friend—to exercise a fine degree of granular control try these commands for size:


* **beagle-config**—Current documentation is probably too limited to be useful. Use the `beagle-settings gui` instead.
* **beagled**—The main Beagle program behind the scenes. Coordinates indexing and searching.
* **beagle-query**—A command line search interface to the Beagle indexes.
* **beagle-settings**—a graphic interface for beagle-config.
* **beagle-shutdown**—Launch to cleanly shutdown the beagled program.
* **beagle-status**—Continually displays the number of items indexed by type.
* **beagle-search**—The graphic user interface for Beagle.

I mentioned earlier that there were two graphical frontends for Beagle, one for GNOME (which will also run on KDE) and Kerry Beagle. I prefer the latter. Once you have completed a search you can right-click and select the application with which you want to open it. In the case of web pages, I have a choice of five installed browsers as well as the extra option on the open icon at the bottom of each search result to open with the default browser, Konqueror. There is another menu for actions that offers me the options to attach as an e-mail, edit as root and send with Bluetooth. By contrast the GNOME-based frontend offers only the opportunity to double-click and open a webpage with Konqueror. Kerry Beagle as a front end seems to lack granular configurations. You seem to need either to launch the GNOME frontend or, if you prefer, launch the settings option only. In a terminal, as normal user, type `beagle-settings` and a small front-end will give you Search Preferences box with two tabs—search and indexing. There are options for adding file paths and excluding them too on the grounds of privacy. If you are curious as to what the busy little canine is up to you can also issue the following command as normal user in a terminal: `ls ~/.beagle/Log/ | grep current`.


# Give the dog a bone

If there is one bone Beagle might be grateful for it would perhaps be integration with Google. Indeed, that is [one of the projects](http://beagle-project.org/Summer_Of_Code_2007) at the Google Summer of Code but, in fact, it is already available via the installation of the Deskbar Applet, a facility for GNOME users which is only as far away as a command in your package manager of choice but a little more needs to be done to integrate the applet with Google web search.

Basically, you will need to go to the [Google API page](http://code.google.com/) and use your Google account or create a new one. Once an account has been created a Google Web API licence key will be generated and e-mailed to you. The installation and any problems associated with it are too detailed to itemize here, but there is a very good guide on the following [website](http://linuxhelp.blogspot.com/2006/02/deskbar-applet-integrating-google.html). You will probably also need to know that Google is no longer issuing new keys for the SOAP Search API which is needed to integrate Google and Beagle and has switched (for new, not existing, users) to an AJAX Search API. There is a good [guide](http://code.google.com/apis/soapsearch/index.html.) here. Just follow the links. Your mileage may vary and I have not tried this yet.


# Other frontends: Catfish, Peagle and Yabi

There are, it is said, nine ways to skin a cat and GNU/Linux knows all of them. So, it will come as no surprise to the reader that people have been busy creating new frontends for Beagle and the three listed above are well worth a look. I will look at them in part two. In the meantime, have a look at the Beagle, Catfish, Yabi and Peagle screenshots categories.


# Screenshots


=IMAGE=kerry_beagle_config.jpg=Kerry Beagle configuration=


=IMAGE=kerry_beagle_backends.jpg=Kerry Beagle backends=


=IMAGE=kerry_beagle_config.jpg=Kerry Beagle configuration with indexing for laptops=


=IMAGE=kerry_beagle_daemon_status.jpg=Kerry Beagle Daemon Status=

