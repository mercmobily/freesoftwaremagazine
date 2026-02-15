---
nid: '3126'
title: 'Thunar File Browser: Tips, Tricks and Scripts'
authors: 'Gary Richmond'
published: '2009-03-21 2:50:00'
tags: 'scripts,filemanager,xfce,thunar,uca'
license: verbatim_only
section: end_users
listed: 'true'

---
GNU/Linux is blessed with a good choice of file managers. Gnome has Nautilus, KDE has Dolphin and Konqueror and Krusader, which [I wrote about some time ago](/articles/krusader_one_file_manager_rule_them_all/)).

If you are looking for a minimalist system with low processor and memory overheads to revive an old "underpowered" machine or make the latest PC look even faster, you have to start thinking about alternatives. One of them is Thunar, the default browser of [XFCE](http://www.xfce.org/). It even has its [own homepage](http://thunar.xfce.org/index.html). The good news though is that it will run perfectly well on Gnome and KDE and other smaller desktops once you package manager has pulled in all the necessary dependencies, so you don't need to change desktops to get and use it. This article will be Debian/Ubuntu centric, but Thunar should be available in the repositories of all the major distros like Mandriva and Fedora.

# Thunar plays nicely. Easy to get too

=ZOOM=Thunar eschews bloat and embraces the philosophy of KISS--keep it simple, stupid but that does not mean driving a Mongol horde through the FreeDesktop standards=

We all love power user features in our software, whether it's browsers or file managers; however as you add features the bloat meter goes off the scale and performance eventually degrades. The guys at XFCE make no apology for designing a file manager that eschews bloat and embraces the philosophy of KISS--keep it simple, stupid. In their own words, Thunar's _"interface is clean and intuitive, and does not include any confusing or useless options"_. However, that does not mean driving a Mongol horde through the [FreeDesktop standards](http://www.freedesktop.org/wiki/). Thunar, as part of XFCE, is fully compliant so if you install it on the big hitters like Gnome or KDE it will just run out of the box without configuration.

Obviously, if you are using the XFCE desktop environment Thunar will come bundled. The [XFCE download page](http://www.xfce.org/download/) lists various available binaries for the XFCE destop for Debian, Mandriva, Solaris OpenSUSE and Xubuntu but the easiest route for dependency resolution is to install Thunar as a stand alone binary package from your distro's own package manager (unless you want an extra desktop option at session login time). If your inner machochist needs feeding you can use [XFCE's graphical installer](http://www.xfce.org/documentation/installers/xfce/index.html) but it is a long way round the houses, you will need to enter the Stygian underworld of the command line too and it does seems rather excessive just to get your eager fingers on a single file manager. Save the grief and use your package manager. Depending on how up to date your own distro and respositories are, you should be able to get a recent or the latest version of Thunar (1.0.0) which was released at the end of February this year as part of XFCE 4.6.0.

# Thunar's no gas guzzler

Thunar launches fast and directory load times are good (depending on how big the contents of your hard disk are). Invoking `ps aux | grep thunar` followed by `top-p4732` (the PID for my instance of Thunar) in a console reveals that Thunar is not too thirsty and will give you many miles to the gallon: CPU between 0.3 and 0.7%, memory at 2.7%. By contrast Konqueror revealed 12.30% and 9.50% for CPU and memory usage respectively. (if you prefer you can issue `ps -C thunar` to get the PID and then `top -p xxxx` to view the stats.) When you're using Thunar on a machine with very low memory and processor specs that's useful to know and have. There are other methods. I'll come back to that in another article.

# A quick tour of the basics	

=ZOOM=The moment you start adding in these features morbid obesity sets in and defeats the whole purpose of designing low-fat software=

On a first launch Thunar looks spartan and it is functionally sparse too. It's a Greyhound, not a Tortoise. You won't need an eye test to see that there is no space-cluttering toolbar with colourful icons which can be added or removed, except by changing navigation mode. When you right click a file or a folder for a context menu, the options are basic. The file canvas (background) is not configurable, there is no tab facility, no split screen option or many of the other features you find in other file managers. Nor should there be. The moment you start adding in these features morbid obesity sets in and defeats the whole purpose of designing low-fat software.

Thunar does the basics and does them well--and fast--but it not bereft of useful features. Let me put on my tour guide blazer here. We can at least be grateful that Thunar has avoided Nautilus' dreadful spatial browsing model (yes, I know, it can be turned off.) If you want to set Thunar as your default file manager in Gnome, the splendidly-named [Psychocats website](http://psychocats.net/ubuntu/nonautilusplease) has a series of scripts to change it, as well as scripts to change it to Krusader or Konqueror too. Any flavour you want as long as it's not Nautilus. Dont' worry, if it all ends in tears the site also has a script to revert Gnome to Nautilus as the default file manager.

The default is the "breadcrumb trail" as it has come to be known and this the default. Thunar calls this "Pathbar Style" and the traditional location bar is "Toolbar Style". You can switch between them from the View and Location Selector sub menu. In the former, when you have more than one location open, you can copy a file (or files) by holding down the middle scroll button and dragging the file(s) onto one of the breadcrumbs. Note, that's _copy_, not _move_. Now, I'm all for pared down file managers but no option between _copy_ and _move to_? Crazy. The same applies if you are in toolbar mode, except that the file copy exercise involves dragging the selected file(s) across to the (resizable) sidebar.

Speaking of the Sidebar, whilst it is resizable, that behaviour depends on whether you are viewing it in Shortcut or Tree view. In the former only Directories display and the ability to shrink the sidebar is limited by the size of the Directory name. In Tree mode no such restriction applies and a scroll bar appears to accommodate longer file names. Regardless of whatever you are in the sidebar cannot be toggled on and off. On the plus side, you can create directory shortcuts (and add contextual icons) simply by right clicking and selecting `Add Folder to Shortcuts` or just drag and drop directories into the sidebar directly. Any icons you add or remove in the sidebar will be reflected in the main screen and vica versa. (Use `F9` to toggle the sidebar on and off.)

Individual files fare a little better. Right clicking on a music, video, PDF or HTML file will present the reader with the usual contextual applications:

=IMAGE=Context_menu_for_Debian_binaries.jpg=Figure 1: Context menu for Debian binaries=

=IMAGE=Context_menu_for_html_files.jpg=Figure 2: Context menu for html files=

=IMAGE=Context_menu_audio_codecs.jpg=Figure 3: Context menu audio codecs=

=IMAGE=Context_menu_for_video_codecs.jpg=Figure 4: Context menu for video codecs=

If the application you want to use to handle a particular file is not in the list, you can always add it by selecting Properties from the context menu and clicking on `Open With` in the General tab. You can then select from a list of applications to become the default. Now, every time you open the file it will use your choice as the default. If the one you want is not listed you can add it from the Properties dialogue and it will open with that selection and it will then be added to the list of options.

# Finding stuff with Thunar

=ZOOM=A file manager without a find function? Thunar filled that gap. I wish it hadn't=

Until I used Thunar I had never encountered a file manager without a find function. Thunar filled that gap. I wish it hadn't. Well, that's not strictly true but what I am about to describe really doesn't merit the name find as it is limited to searching the current selection. You won't find it in any of the drop-down menus. You need to do `Ctrl + F` which will pop up a small search box and the bottom right hand corner of Thunar:

=IMAGE=Thunar's_find_function.jpg=Figure 5: Thunar's find function=


Eureka! Count to five and that box exits stage left without so much as a by your leave. If you are quick you can toggle it off by hitting the `Esc` key If you start typing the box it will stay open while you input your search term. Yes, it works but it will only find files in the current screen and I need hardly say, you can forget about wildcard searches. (Just as well then that Thunar supports displaying directories and files, amongst other things, in ascending/descending order (select from the View menu) to make finding stuff easier). There is a solution to this and the developers call it User Custom Actions (UCA).

# Extending Thunar with User Custom Actions

When you right click on files and directories in Konqueror, by default you will have access to a lot of options and if that's not enough for you there are several hundred addons called _Service Menus_ which add enormous power to that file manager. Thunar _is_ extensible after all, using User Custom Actions. There aren't too many of them but they are well worth having and they don't clutter Thunar or slow it down.

You can get round the virtually non-existent search capabilities by using UCA to install Catfish, a GUI meta front end for `find`, `locate` and `Beagle`. Catfish should be available in the repositories of all the main distros. That's the easy part. Post-install configuration is a little more involved and too detailed for this article, but you can find out how to integrate it with Thunar in [my article on search engines](/articles/desktop_search_beagle_part_2/) 

User Custom Actions can be accessed from the drop-down Edit menu. Select `Configure Custom Actions` and you will be presented with an interface:

=IMAGE=User_Custom_action_configuration_tool.jpg=Figure 6: User Custom action configuration tool=

Highlight an action to see the details or to edit it in both tabs:

=IMAGE=Select_an_action_to_create_or_edit_actions.jpg=Figure 7: Select an action to create or edit actions=

=IMAGE=Configuration_options_on_the_appearance_tab.jpg=Figure 8: Configuration options on the appearance tab=

From here you can add actions, edit or delete them in a similar manner familiar to anyone who has ever invoked Userscripts and Greasemonkey. Nautilus scripts spring to mind too.

If you are using the latest or a recent version of Thunar, many plugins will come pre-installed; this can be checked by selecting Properties from any file or Directory right click. As features are added the number of tabs increased and you can configure them from within each tab. Using Thunar to browse audio files in particular reminds me how brilliant Konqueror's service menus are when it comes to options for codec conversion. After a bit of hunting I managed to turn up a nice little Debian binary which added some of those functions to Thunar. In fact it is a Nautilus script but it installs and works perfectly well with Thunar too. Head over to the [Xubuntu Blog](http://xubuntu.wordpress.com/2008/02/18/howto-use-audio-convert-in-thunar/), grab a copy, install it and follow the instructions on the site to configure it for Thunar's User Custom Action. Right click any audio file and the Audio Convert script will launch and convert according to your selection--codec (flac, ogg, wav, ape and aac), meta tags and bitrates:


=IMAGE=Automatic_or_manual_meta_tag_configuration.jpg=Figure 9: Automatic or manual meta tag configuration=

=IMAGE=Audio_Convert_offers_the_user_Ogg_bitrate_quality.jpg=Figure 10: Audio Convert offers the user Ogg bitrate quality=

The only gripe about this nifty little script is that it only works for converting _from_ MP3 to those codecs, not vica versa. If you right click on an OGG file the script is not available. Still, it works and is very fast and uncluttered. Worth the effort.

Another script which can be easily grabbed from your package manager's repositories, if not already preinstalled in the latest version, is one for creating archives (you will need File Roller for this but your package manager will pull in that dependency) with no less than thirteen format options. If you select a single file that menu option will not be available, but if you select multiple files using `Ctrl or `Shift` with the mouse or use the "rubber band" method (hold down the left mouse button and drag a square/rectangle around contiguous files/Directories) it will appear:

=IMAGE=File_formats_for_archive_creation.jpg=Figure 11: File formats for archive creation=

By default it will name it from your home directory but you can either accept the default or give it a new name or select one from existing directories.

One of the most common complaints about Thunar was the inability to mount and read Samba shares if you were on local or wide area network. Unlike Konqueror, Thunar does not have Kio ioslave transparency. Time was when you had to work around this is by mounting the shares manually and then simply view them in Thunar. However, a Shares Plugin is now available to do that for you. Packages are available for the Jaunty Jackalope, the Intrepid Ibex and the Hardy Heron [at Launchpad](https://launchpad.net/~danielmorales/+archive/ppa/) via personal package applications (PPA) which can be added by copying and pasting into the Ubuntu repositories in Synaptic (which means you will always have the most up to date software). If you are not using ubuntu or variants like Xubuntu, the same site offers a distro-neutral source tarball.

User Custom Actions will add functionality to Thunar's context menu, but a big improvement is on the way, an evolution of UCAs called Thunar Actions Plugin and [the wiki for it](http://thunar.xfce.org/pwiki/projects/thunar-actions-plugin) has mockup screenshots and it increases hugely what Thunar will be able to do and better still, packages are planned for Fedora, Ubuntu and Debian. At the moment only SVN is available. Speaking of which, if you want to add SVN to the menu, [download the Thunar-svn-plugin](http://goodies.xfce.org/projects/thunar-plugins/thunar-svn-plugin). Follow the instructions on the XFCE Goodies webpage, dependencies notwithstanding, and you should be good to go.

You don't have to rely on others coming up with heavy-duty scripts to get you hands on some really useful menu options. With a relatively easy learning curve you can learn to build your own. If you would rather just copy and paste, the Thunar wiki has a good list of actions you can add. I added the action to burn an ISO with K3B and to convert PNGs to JPEGs. Worked a treat. Once you have done this a few times you can experiment and add your own. It can be a bit trial and error, suck it and see but you'll get there in the end. Experiment, the worst thing that can happen is that your UCA fails. God loves a trier. The main thing to remember is to check the relevant boxes in the UCA Appearance Conditions tab to ensure that Thunar knows to select the correct contextual action/application based on the file type.

# Conclusion

=ZOOM=Thunar may be named after the Norse God of Thunder but it does not announce it's presence with a bang=

Thunar is not a Konqueror, Dolphin or Krusader file manager killer. It's not meant to be. Plugins notwithstanding, the developers have resisted excessive feature creep and it is extremely stable. I've never managed to crash or freeze it. Thunar is a bit of a Plain Jane though. It won't win a beauty contest, save the rainforests or campaign for world peace. It just works fast and does the business without a fuss or fanfare. It may be named after the Norse God of Thunder but it does not announce it's presence with a bang. Or a whimper. If you haven't already got it, get it and extend your options.

