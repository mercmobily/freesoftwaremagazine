---
nid: '3030'
title: 'Krusader: one file manager to rule them all'
authors: 'Gary Richmond'
published: '2008-10-14 13:46:37'
tags: 'kde,konqueror,krusader,filemanagers'
license: verbatim_only
section: end_users
listed: 'true'

---
I don't like KDE4. I don't like the Dolphin file manager either. There, I said it. I'm not trying to start a flame war. Really. But those dislikes are proportional to my concern about the future of Konqueror. For my money, it is just about one of the best things before and since sliced bread. I loved it enough to [write about here at length and in depth](http://www.freesoftwaremagazine.com/articles/konqueror_the_browser_file_manager_you_didnt_know). As a file manager it is packed to the gunnels with power features and as a browser it's not half bad either. The integration of both in this universal document viewer is the killer feature but it is getting rather left behind behind in the Web 2.0 goldrush. I worry that it might wither on the vine. Then, I discovered Krusader. It's a massively powerful and feature-packed twin panel file manager and if Dolphin isn't cutting the mustard Krusader might just be what you've been looking for.

<!--break-->

# The crew done good. Yo!

=ZOOM=Like the hairbear bunch, Krusader Crew are the good guys and the've created a file manager with impeccable credentials=

[Krusader](http://www.krusader.org/) is the brainchild of the "the krusader krew" which does rather make them sound like a bunch of Harlem hoodies, but don't let that put you off. They don't mug and they don't graffiti. Like the Hairbear Bunch, they're the good guys and they have created a file manager with impeccable credentials stretching all the way back to Norton and Total Commander. Hell, they've even trying to port an experimental version of Krusader to Windows. Primarily however, Kruasder is the lovechild of free software with its developers freely admitting that they stole shamelessly from other file managers and it will run on any GNU/Linux distro, dependencies notwithstanding; and it has been released under the chocolately goodness of the GPL. Nothing there to offend Unix purists then. The latest version is "phoenix egg" (2.0.0.beta1), released in July 2008 as a port to KDE4. Other than live CDs, I am not using KDE4 at the moment so my screenshots of Krusader are from KDE3.

This is not a HOWTO for Krusader, but a look at the features that make it the proverbial, killer application for file management. You should be able to grab a copy of Krusader from your distro's repositories via the package manager. If you dislike bloat and prefer minimalist windows managers like XFCE or Fluxbox, the good news is that Krusader will run without KDE--provided you have the necessary libraries installed (and if you toggle between various window managers and have KDE installed, you will be good to go). All screenshots are from version 1.9 running under GNOME in Fedora 9. 

# Krusader and the Orthodox File Manager (OFM) paradigm

=ZOOM=You will recognize too Krusader's pedigree stretching back to the Norton and Midnight Commander=

Dolphin and Konqueror can display split screens. In fact, Konqueror can be split into as many screens as you want (unlike Dolphin) but a split screen file manager is not the same as a two-pane file manager. That is the proper description of Krusader. It launches with a (resizable) twin pane view by default. Konqueror would require a profile to do that. Why? Because Krusader conforms to the [OFM paradigm.](http://www.softpanorama.org/OFM/index.shtml).

OFM is too detailed to discuss here, but if I had to sum it up I would say that it is the only type of file manager that is standardized and the skills are transferable from command line to GUI and back. Dr. Nikolai Bezroukov's [e-book](http://www.softpanorama.org/OFM/Paradigm/index.shtml) on the OFM paradigm would classify Krusader as "a visual shell for Unix". Once you have read his ten commandments for OFMs you will recognize the krusader profile immediately. You will recognize too Krusader's pedigree stretching back to the Norton and Midnight Commander file managers. The Krusader crew clearly know the commandments and have applied them rigorously. No dancing around the Golden Calf here and that paradigm will explain the thinking behind all the features that make Krusader an absolutely must have file manager that should be in everyone's toolbox. In OFM terms, Krusader includes support for scripting via useractions, cross-panel awareness, focus on keyboard control, built-in viewer and editor and verbose output of actions.


# KDE integration from the first launch

The first thing that you notice after installing Krusader is that it integrates tightly with KDE. So tightly in fact that when you launch it for the first time you have to jump through several hoops before actually using it:

=IMAGE=Krusader's_first_launch.jpg=Figure 1: Krusader's first launch=

The clue is the reference to "external applications". Krusader's power and transparency rely on and exploit those features of KDE familiar to anyone who uses Konqueror: [KPart](http://en.wikipedia.org/wiki/KParts) [KIO](http://en.wikipedia.org/wiki/KIO) and [DCOP](http://en.wikipedia.org/wiki/DCOP) (superseded by [D-Bus](http://en.wikipedia.org/wiki/D-Bus) in KDE4). KPart is particularly important as it allows any applications that implements its object model to embed itself in Krusader:

=IMAGE=Krusader's_search_results_for_packers.jpg=Figure 2: Krusader's search results for packers=

=IMAGE=Krusader_searches_for_external_tools.jpg=Figure 3: Krusader searches for external tools=

At this point you make want to keep your package manager handy to install any missing software to complete Krusader's toolset. Krusader will then present you with the configuration screen:

=IMAGE=Konfigurator_Creating_Your_Own_Krusader.jpg=Figure 4: Konfigurator: Creating Your Own Krusader=

You can choose to do it all there and then, or cancel and explore it later. Configuring Krusader is a happy task for a long, damp autumnal evening. It is jam packed with features and tweaks. And so at last you arrive at the main screen. Phew!:

=IMAGE=Krusader's_main_screen.jpg=Figure 5: Krusader's main screen=

The twin panel is the default; if you prefer it can be displayed horizontally too, which is very useful if you have files with long names that do not display well in the vertical twin panel:

=IMAGE=Krusader_in_Horizontal_mode.jpg=Figure 6: Krusader in Horizontal mode=

There are also a (toggable) command line prompt and a series of buttons along the bottom covering many of the most used and popular commands: `view`, `edit`, `copy`, `move`, `mkdir`, `delete` and `rename`. Tabbed browsing of local or remote files is now a given, and Krusader does the business there too, using the same icons--but at the bottom. Drag and drop is there too, as you would demand. Right clicking on a file will render a preview with the option to open it with a specified application which can be customised by the user, overriding the defaults. So far so normal.

# Features that make Krusader special

One of the first and best discoveries you will make about Krusader is that it has the ability to search through both archived and ISO files as if they were conventional directories.  Of course, you can search through an ISO file by mounting it as a loop device, but Krusader is easier and much faster. Krusader settles the eternal debate command line purists and advocates of the GUI by giving the user both, just like Konqueror. In fact you get two for the price of one. Krusader allows you to call up a separate konsole or an embedded terminal inside Krusader:

=IMAGE=Krusader_with_embedded_terminal.jpg=Figure 7: Krusader with embedded terminal=

This allows you to navigate through the directory structure without, if you prefer, having to navigate on the command line yet still view the one screen panel following the other. It's great as a tool for demonstrating to newcomers the relationship between the two.

Everyone who uses any browser will be familiar with the history facility (particularly handy if you crash before saving a bookmark). Krusader has this valuable feature which allows you to select any directory and open it. Krusader is not a browser, but it has borrowed that idea and it keeps a record of all the file locations you visit--including remote sites (Krusader supports the `ftp`, `sftp`, `fish` and `SMB` protocols). Similarly, Krusader has a bookmark manager (BookMan) which functions more or less in the same fashion as a web browser bookmark manager. This is a very powerful way to organise the results of your file browsing and learning to use it is already in the bag as everyone has used a file browser. `popular urls` is a dynamic list of "sites" visited, constantly updated to reflect usage, as the name suggests. Think of it as bookmarks on the fly for file locations when you don't want bookmark (or simply can't be bothered).

## Pop up panel

By default, Kruasder conforms to the OFM paradigm but you can expand it with an additional panel (as well as with tabs) by clicking on the button at the bottom-right hand side of the right panel:

=IMAGE=Krusader's_pop_up_panel.jpg=Figure 8: Krusader's pop up panel=

This embeds a view of disk usage which will be familiar to anyone who has ever used Filelight or Baobab. The view is customisable too: it can be displayed as a detailed file view or as a horizontal bar graph.

If you prefer, you can view disk usage in a separate window under any of those three views:

=IMAGE=Disk_Usage_in_file_view.jpg=Figure 9: Disk Usage in file view=


=IMAGE=Disk_Usage_in_bar_graph_view.jpg=Figure 10: Disk_Usage-in_bar_graph_view=


=IMAGE=Disk_Usage_in_filelight_view.jpg=Figure 11: Disk Usage in filelight view=


You also have the ability to toggle between the three views via three buttons at the top. The colour scheme is customisable too. This is not just a static viewer: you can open files from this location, and if you are viewing graphics files Krusader had its own internal, built-in  tabbed viewer, Krviewer, which can be called as a stand-alone window or from within Krusader itself. It uses code from Konqueror and can therefore view any file type that is viewable in Konqueror. If you want a more powerful graphics package to manipulate images, you can revert to the standard file manager, right click, make your own selection and tick a check box to ensure that Krusader remembers your choice as the default the next time you click on a file.

## Jump points

It doesn't take long to disappear down the labyrinth of a file system like an over enthusiastic terrier. Before you know it, you've got a little lost--but Krusader can help you. Think of it like Ariadne's thread in the Minotaur's maze. If you've lost your bearing, well, before you set off make a reference point and any others you care to make as you explore your file system. Customising the toolbar is definitely useful here as these features can be added and are only one mouse click away. With jump back you can set your point of origin anywhere in the file system you want and retain your sanity and economise on the mouse clicks.

## Useractions

=ZOOM=Useractions is what puts Krusader on steroids=

In some ways this is the crown jewels of Krusader. It is what really makes it so powerful and customisable. Perhaps it is Krusader's answer to Konqueror's underused extensions. Either way, it is what puts Krusader on steroids. Essentially, what you have here is user-specified scripts that do not require expert programming skills and can executed with a single mouse click or a keystroke.

The quickest to see the default install of useractions is to right click any file:

=IMAGE=Krusader's_default_useractions.jpg=Figure 12: Krusader's default useractions=

The "default" will vary according to what external tools and packages were detected and installed at first run (see Figures 1 and 2) and what missing packages you installed subsequently; however, you can certainly add to the list. The easy way is to avail of the efforts of others across the internet: point your browser to [KDE-org](http://www.kde-files.org/index.php?xcontentmode=662) and download the useractions of choice. Compared to Konqueror's service menus (about 250 available) the choice is limited 

Make a directory called, say, Krusader user scripts, and save your useractions there. To add them to Krusader's right context menu you need to call up Userman, Krusader's GUI for managing scripts. This is called from Konfigurator:

=IMAGE=ActionMan:_Manage_Your_Useractions.jpg=Figure 13: ActionMan: Manage Your Useractions=

Userman allows you to call external applications using variable parameters. Fortunately the [Krusader handbook](http://www.krusader.org/handbook/) provides a detailed guide to user actions. (It is an HTML file with links. Request to the "krew": it would be very useful to have the option to view this as a single page so that it could be saved for offline viewing. Better still, add an option to view/download as PDF.) Userscripts can extend Krusader's file management capabilities and learning how to write them is good way to become a power user by extending the context menu.

## Mountman

Time was when getting external, removable media to work on GNU/Linux meant being a geek expert on the command line; today, no self-respecting distro would dare venture into daylight now without the ability to auto mount such media. If you prefer, you can cancel the popups and do it your way with Mountman or exploit Krusader's tight KDE integration with Kio slaves and type media:/ in the location bar to view CDs, DVDs, USB flash sticks and USB drives and then access all the richness of the right-click context menu.

Mountman is slightly different. It is a GUI tool to manage mounted file systems. Clicking on any mounted file system will display it in a pie chart, double clicking it will open the chosen file system inside Krusader and right clicking it will offer a number of options (mount, unmount, eject). Krusader had no problems displaying and opening my iRiver mp3 player:

=IMAGE=MountMan _displays_and_manages_your_file_system.jpg=Figure 14: MountMan displays and manages your file system=

=IMAGE=Krusader_displays_contents_of_iRiver_player_in_multiple_views.jpg=Figure 15: Krusader displays contents of iRiver player in multiple views=

From any of these views you can open files in your application of choice (and if you prefer set the file icons and applications in Kcontrol. Krusader's icons are not hard coded.)

## Synchronizer


=IMAGE=The_default_Synchronizer_screen.jpg=Figure 16: The default Synchronizer screen=


=ZOOM=The final tasty morsel in Krusader's Smorgesbord of goodies is the built-in facility to synchronize files=

The final tasty morsel in Krusader's Smorgesbord of goodies is the built-in facility to synchronize files. It is immensely powerful and it is impossible to precis its features in a general overview. Suffice it to say that the entry for this feature is the biggest in the user manual, and the crew seem to packed in every conceivable feature. You can of course use Rsync (still under development) or Unison (no longer in development) on the command line or their GUI frontends (Grsync and GTKUnison respectfully); however, if you want to manage everything from one interface without calling external applications then Krusader is the tool for the job. Basically, Synchronizer's function is to keep two directories in sync and in doing so it offers a blizzard of options for the power user: comparing, filtering, colour coding, asymmetric synchronisation, ad hoc backup, integration with Kget (if installed) with the ability to schedule local and (pause) remote FTP files.

# Conclusion

It is impossible to overstate the range of Krusader's feature set. The developers seem to have thought of just about everything. By integrating it tightly to the very best features of KDE they have ensured that it is immensely customisable and extensible. They have maintained an impressive release cycle and are highly receptive to users' wishlists. 

In that spirit let me add a few items to those lists.

Krusader is a file browser and it supports a large number of protocols, so here is my heretical suggestion: add the `http` protocol and a rendering engine and transform Krudaser into a reincarnation of Konqueror. As it is already tied into KDE and it already uses Konqueror code, making Krusader into a universal document viewer would not be an insurmountable undertaking--but why? We already have Konqueror. Yes, but with the arrival of Dolphin as the default file manager for KDE4 (though with Konqueror included) and the browser side of it lagging somewhat behind browsers like Flock, Firefox and Opera, there is a danger that Konqueror will shrivel on the vine for want of some tender loving care. That would be a shame. In spite of all the bells and whistles of Web 2.0 applications Konqueror still remains a priceless asset in GNU/Linux. If it is going to be neglected, can those nice young Krusader developers think the unthinkable and make it the new Konqueror? Integrate K3b too? The icing on the cake would be for Krusader to utilize Konqueror's KDE service menus. Result.