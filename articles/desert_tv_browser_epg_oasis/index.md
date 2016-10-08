---
nid: '3137'
title: 'In a Desert, TV-Browser is an EPG Oasis'
authors: 'Gary Richmond'
published: '2009-04-16 4:25:05'
tags: 'java,tv-browser,kaffeine,epg'
license: verbatim_only
section: opinions
main_image: hide.jpg
listed: 'true'

---
It is not often that you fail to find half a dozen free software programs to fill a particular niche -browsers, e-mail clients or file managers to name a few; so it was with both surprise and disappointment that I nearly drew a blank in my search for an Electronic Programme Guide (EPG) for GNU/Linux. Yes, Freevo and MythTV have this feature built in, but installing and configuring them just to get your mitts on an EPG looks like overkill. I wanted a simple, _stand-alone_ EPG programme. I got TV-Browser and I got a hell of a lot more than I bargained for. If you install it, you will too.

# Why?


=ZOOM=I entertained fantasies of dropping it from the roof of the Microsoft Headquarters onto a passing group of promising account executives=


Well, it all began with my fifteen-year old analogue JVC twenty-nine inch CRT television. It had been playing up for several weeks before it finally gave up the ghost. Being the local scrooge, I has entertained notions of deferring changing over to digital until the great switchover here in the UK but it was not to be. It had to go. It was a beast of a machine that would have taxed the strength of an Olympic weight lifter. Before I despatched it to the great recycling centre in the sky I entertained fantasies of dropping it from the roof of a skyscraper but I sublimated my grief at the expense and bought a new digital TV.

It has many great features but one of the most useful was the Electronic Programme Guide. I liked it so much that I began to wonder if I could source one that ran as free software on GNU/Linux. I found four: Freeguide, Maxemumtvguide, gTVG and TV-Browser. Freeguide worked but was _very_ basic, short on features and lacked any significant degree of interactivity. Maxemumtvguide looked better but still lacked features. gTVG was basic too and hadn't been updated since September 2007. TV-Browser was different. 

TV-Browser has enough features and configurations to keep me diverted until Windows goes open source. The EPG built in to my TV had one odd feature though. It just would not work when the television was not on! What were the makers thinking of? I need TV-Browser to fill that gap.


# It's a Java app but it's been happy slapped with the ugly stick

Java is not as sexy or cutting edge as it used to be. Flash and Ajax are the newer kids on the block but the beauty of Java is that it is operating-system independent. Both client and server models are distributed under the GPL. It will run on GNU/Linux, Windows and Macs. It exploits the "write once, run anywhere" (WORA) paradigm and works as long as you have installed Java JRE (version 5.0 or higher). Therein lies a slight problem. Due to the licence (Sun's) Java does not ship as a default with GNU/Linux. If it _is_ in the repositories of your distro it will only install if you accept the terms of the licence. If you don't tell Stallman I won't either. [The homepage](http://www.tvbrowser.org/downloads-mainmenu-5/tv-browser-mainmenu-6.html) for this EPG offers versions for Ubuntu binaries, Windows executables, `.dmg` packages for Macs and a source tarball. There is also a download link for Gentoo, Suse and Debian.

When you run TV-Browser for the first time you it will take you through a four-step setup wizard. You don't have to run it. If you choose to cancel the wizard, TV-Browser will run and you can defer setup by invoking it from the `Help` drop-down menu but it makes sense if you want to have readily available television schedules to go with the setup wizard on the first run.

The first thing you will notice is that in common with many Java applications, at least on my machine, ugly can be an issue. It won't win a beauty contest and while function trumps looks you may as well configure it to get it looking as good as you can. By default [anti-aliasing](http://en.wikipedia.org/wiki/Anti-aliasing) is off. Switch it on by going to `Settings` in the `TV-Browser` drop-down menu and clicking on the Fonts entry under `Graphical Settings` and check the anti-aliasing box. Customising the font type and size will improve things further too and these can be chosen on a category basis of programme title, details and column headers. Spending a little time customising the appearance will improve your experience no end. The default theme is none too pretty either--but it can be changed too, though not quite so easily. You can add no less than thirty extra themes with [themepacks](http://javootoo.l2fprod.com/plaf/skinlf/themepacks/index.html). Visit that link and download the ones you want to your Directory of choice. They are Zip files.


=ZOOM=Your instinct will be to extract and run the zip files. Don't=


Your instinct will be to extract and run them. Don't. What you need to do is to _copy_ these Zip files to TV-Browser's themepacks directory. You will see certain files in you enable viewing hidden files in your file manager of choice but `themepacks` won't be one of them. The command line to the rescue: I fired up a console and typed `whereis tvbrowser` and got `/usr/sbin/tvbrowser /usr/share/tvbrowser`. It's the second entry we're interested in. Navigate to it and you will find the `themepacks` directory. Copy the zip files to it (as `/usr` is a system file you will need to do this as root; `su`, or `sudo` for Ubuntu users) and you're done. 

To install a new theme all you need to do now is to go to Settings again and click on the Graphical Settings folder icon and select the Look and Feel entry but it is not there. I only discovered by accident that you now have to also click on the icon itself to bring up that option. Actually, if you click on the tree expansion arrow you won't see it but if you click directly on ther yellow folder you will:

=IMAGE=TV_Browser's_Settings_menu_for_themes.jpg=Figure 1: TV Browser's Settings menu for themes=

The `config` button will launch a dialogue window from where you can choose one of the zipped themed you downloaded earlier and copied to the `themepacks` file:
 
=IMAGE=A_choice_of_themes.jpg=Figure 2: A choice of themes=

I chose the tiger themepack which gave TV-Browser a Mac look for the scrollbars (you can make your own from an external graphics package like GIMP and add them if you wish).

For the chosen theme to take effect you will need to restart the applications. If you want to prettify TV-Browser further you can extend the icon set by visiting the website. The default is a choice of two icon themes: Tango and Crystal Clear. I like the latter but the website will offer you a choice of another three (not thirty, alas). the process is the same: download, do not unzip, and copy them, this time to the `icons` directory (in the same file path as `/usr/share/tvbrowser`.


# TV-Browser is extensible and interactive

If this EPG were a simple list of channels and all their available programmes it would be pretty unremarkable, but it has features which render it powerful and highly interactive. Here is a just a flavour of the checklist:


* Reminders
* Export reminders to other software: email clients
* calendar
* plugins
* channel lists for eleven countries
* configurable context menus
* configurable mouse actions
* choice of web browser(s)
* configurable search function
* configurable web search for programme details (including individual actors)
* configurable external TV cards for recording scheduled programmes

TV-Browser was designed to be nothing if not interactive, and hopefully make satellite dish TV unnecessary. It is difficult to do justice to the sheer range of features and customisations here so I will concentrate on what I think are the best and the most useful.

# Reminders with e-mail and organizers

EPG software without a reminder function would be pretty useless. TV-Browser has this, so that a reminder will pop up on your desktop at a time of your choosing. This can be done for multiple reminders for the same/different programmes in different organisers:


=IMAGE=Nine_ways_to_remember.jpg=Figure 3: Nine ways to remember=


It takes things a little further by allowing you to configure how you set up your reminders by exporting them to desktop organisers like Korganizer and Google Calendar and e-mail clients (I have configured my scroll wheel to export programme information to Google Calendar). If you are running KDE you can also set up Knotify as your reminder of choice. Once you export stuff you can then use the features of the organiser or e-mail to do more with the programme information. When you do an export, TV-Browser adds a little icon to the bottom right-hand corner of the programme (as for Favourites). If you enable Tree View (`F2`) and expand the categories TV-Browser will indicate in what external software the reminder has been saved (the blue progress bar indicates time elapsed in the scheduled programme). It reflects the same feature already set up in the main screen. This is done in Settings under Graphical Settings > Program Display where the colours for background and progress bar can be set). A quick login to Google Calendar confirms that TV-Browser has handled the transfer of data perfectly. So, if you are on another machine you still have schedule details and access to reminder pop ups. You can also combine this with the Filter feature which allows you to display programmes by category. For example, you can filter for "marked" programmes which will show all programmes such as favourites and then send them all as a batch to organisers or calendars and e-mail using the available plugins.

TV-Browser also supports exporting information to [iCal](http://en.wikipedia.org/wiki/ICalendar) and [vCal](http://en.wikipedia.org/wiki/VCal) These file formats allow you to save to your hard drive (or other media) and then e-mail to other users sharing that format. If you want to simply e-mail programme details to others, TV-Browser requires only the file path of your chosen e-mail client (Evolution, Kmail, Thunderbird etc) to be added to the settings for the e-mail plugin. This option will be added to the right-context menu and when selected will automatically pull in the programme details in a compose e-mail window.

If you need to bypass reminders, favourites, etc and just want a quick snapshot of what programmes are running currently select the appropriate toolbar button (tooltips enabled) and TV-Browser will list them all by (filterable) channels:


=IMAGE=Running_programmes_filter.jpg= Figure 4: Running programmes filter=


If you have installed the Treeview plugin you can see a more expansive view:


=IMAGE=Treeview_in_expanded_mode.jpg= Figure 5: Treeview in expanded mode=


# Plugins

Plugins are ubiquitous and everyone likes them. They can really extend an application's range. TV-Browser has them too. Many come pre-installed but you can download and install many more. The pick of the bunch must be the _Blog this!_ plugin which allows you to upload TV-Browser content to one of three blog tools (Wordpress, Blogger or b2evolution). Ideal for anyone who writes about the media. Hot on its heels comes a plugin for anyone addicted to the latest micro madness to hit the blogshere: Twitter. Select it from the context menu and you can be up and composing a one hundred and forty character masterpiece in no time at all. How did Tolstoy ever manage without it?  For anyone who likes to write about the media, the web search plugin is highly configurable and featureful. You can choose the browser you want as your default from Technical Settings > Web Browser. I chose Opera because of the way I have set it up and because I use the BBC iPlayer a lot but you might want to use Firefox instead, especially if you have loaded it up with lots of multimedia addons relevant to what you are doing in TV-Browser.


=ZOOM=I need some expertise on building a contextual web search menu entry for TV-Browser. Any takers?=


You can also add customised web pages specific to a particular programme and they will be added to the context menu. The built-in websites include Wikipedia, Google, Altavista and Yahoo to mention just four. If a programme has a cast list of actors a (configurable) sub menu will automatically be available: 

=IMAGE=Web_search_options_for_Scrubs.jpg=Figure 6: Web search options for Scrubs=

If you add your own web search page that feature is not available. For example, I added the YouTube page to the search list but when you click on it, it defaults to the home page instead of, say, opening up a list of videos relative to the selected programme in TV-Browser. I thought I might solve this by looking at the format of the pre-installed search pages but when you highlight the entry the edit button is grayed out. Browsing the configuration files of TV-Browser for clues left me none the wiser. I need some expertise on building a contextual web search menu entry for TV-Browser. Any takers?

Like Olita Adams, I saved the best for last. The EPG on my television is also highly interactive and it also allows me to use the menu to watch/record a particular programme. So far, so unremarkable but this is a feature that the sparsity of stand alone EPG software for GNU/Linux usually lack. TV-Browser has a feature to allow the user to link into an external TV Card and use the EPG not only to manage programmes but to use it to connect to a viewer. 

I have Kaffeine installed and know that it has a DVB module for watching television. TV-Browser plus Kaffeine plus my old hulking Haupagge TV Card equals a well integrated media experience. well, not quite. The first thing to do is to ensure than after a scan for TV signals in Kaffeine, the channels you have selected match up with those in TV-Browser. Configuring the TV card is a matter of selecting `manage plugins` from the Plugins drop-down menu. There are three tabs: _Devices_ is the one we want. Choosing `Add Device` pops up a box to fill in the name of your card. `Configure Device` is the next port of call. Type in the file path of the external application you want TV-Browser to call (in my case `/usr/bin/kaffeine`), switch over to the Parameter tab and insert`variable` as the Record and Delete input. Click on the Plugin button on the toolbar and you will have a summary of the scheduled recording:

=IMAGE=Recording_schedule_at_a_glance.jpg=Figure 7: Recording schedule at a glance=


Additionally, you will also now have a Recording Control entry in the Programme Tree View (`F2`, toggable):


=IMAGE=Recordings_copied_to_Tree_view.jpg=Figure 8: Recordings copied to Tree view=


Both views give the user access to all the usual context menus. All programmes marked for recording will now have an earphones icon next to them. So far so brilliant but that is the end of the good news. Nothing was recorded. I suspect the card configuration was incomplete. Documentation here is sparse and with so many parameters to choose from it is not at all clear what is actually required to pass actionable parameters to fire up Kaffeine and record programs. Has anyone cracked this? 

Update: I think this may have something to do with [DCOP](http://en.wikipedia.org/wiki/DCOP). Kaffeine supports this (though DCOP has been superceded by the desktop-neutral [D-BUS](http://en.wikipedia.org/wiki/D-Bus)which does pretty much the same thing). I say this because, in searching for an alternative to interact with TV-Browser, I came across [Kalva](http://kalva.berlios.de/) which is a lightweight video application (though it has not been developed since 2007) which specifically mentioned improved interaction with TV-Browser via DCOP. I have not been able to test this out as I ran into a `Kdelibs` dependency problem. Serves me right for neglecting timely updates.

Once this item is sorted TV-Browser will qualify as a definitive stand-alone free software EPG. It has been exceptionally well thought out, it has enough configuration options, menu and sub menus to keep a user occupied for hours. It interacts well with other useful software and will doubtless be extended further via even more plugins. If you have downloaded TV schedules for several a week or more TV-Browser can be used offline plan viewing and set up reminders. Features such as Google Calendar and e-mail notifications would require the user to be online so it would be nice to see the developers incorporate a Google Gears-style offline synchronisation plugins to make it a truly offline stand-alone EPG. It qualifies automatically for inclusion in you Sessions/Startup folder.

=ZOOM=TV-Browser puts the feature in featureful=

Poor documentation aside, it is hard to fault TV-Browser. The only other problem I encountered was that whilst non-copyrighted station icons loaded on initial setup they disappeared on a restart and could only be reloaded by running the Setup Wizard again (from the Help menu). Even so, I have rarely been so impressed by the sheer configurability of a piece of software. It puts the feature in featureful. Viewer, couch potato (if this is the sort of software I've started to rave about perhaps I need to get out more), Twitter fiend, blogger, media pundit and researcher--TV-Browser has something for everyone. It feeds your inner control freak.