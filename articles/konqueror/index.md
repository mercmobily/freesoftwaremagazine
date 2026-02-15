---
nid: '2988'
title: 'Konqueror, The Powerful KDE Browser'
authors: 'Andrew Min'
published: '2008-09-30 4:06:49'
tags: 'kde,konqueror'
license: verbatim_only
listed: 'true'
book: ubuntu_applications
book_weight: '0'
layout: book
---
So far, all of the browsers that I reviewed for this book have been Gnome-based browsers. Epiphany is a Gnome-sponsored project, and Firefox is rapidly moving towards Gnomeization (though at the time of this writing, a Qt port of Firefox is under heavy development). What's a good KDE user to do? Simple: use the conqueror of the browser market, Konqueror.

<!--break-->

# "What" and "Who" is Konqueror for?

=IMAGE=konqueror_figure_1.png=Figure 1: Konqueror=

According to the home page,

_Konqueror is an Open Source web browser with HTML 4.01 compliance, supporting Java applets, JavaScript, CSS 1, CSS 2.1, as well as Netscape plugins (for example, Flash or RealVideo plugins)._

In 2000, users of the new KDE 2.0 release found a new replacement for the old KDE File Manager. This replacement, known as Konqueror, combined a Netscape-like web browser and a Midnight Commander-like file manager to make a very handy all-in-one browser. In addition to the browser and file manager, there was support for all the KIO protocols, turning Konqueror into an FTP client, Samba client, NFS browser, and LDAP viewer as well as a file manager and browser. It could also open and view many different types of files, thanks to KParts integration. TechRepublic even went so far as to call it "perhaps the most exciting part of KDE 2.0". Konqueror quickly began to attract attention. Linux Magazine awarded it the Tuxie award for Best Web Browser, linux-community.de gave it the Linux New Media award, and the famed Linux Journal gave Konqueror the editor's choice award for the best web client. Soon, Konqueror was the de facto KDE manager, doing everything from one interface. Unfortunately, Konqueror was removed as default file manager in KDE 4 in favor of Dolphin. While it can still be used as a file manager, it uses the Dolphin engine and doesn't give many advantages over Dolphin.

Is Konqueror for you? It depends. Konqueror is definitely only for KDE users. You can theoretically run it in Gnome or Xfce, but the main features of Konqueror are KDE-dependent. Additionally, Konqueror is built for the power user. Basic users can use it, but Konqueror ships with many features that basic users don't need. If you don't mind this, then I emphatically recommend Konqueror.

# Installation

Konqueror is installed by default in Kubuntu. If you're an Ubuntu or Xubuntu user, you probably won't want to use Konqueror anyway, since Firefox provides a lot of Konqueror's browsing features. However, if you feel inclined to use Konqueror, you can install it using the command `sudo apt-get install konqueror`.

# First launch

When Konqueror is first launched, it loads the about:konqueror page. This gives you links to a few handy folders, a tutorial on how to use Konqueror, and the default search engine.

# Common tasks

_Note: I will not be discussing Konqueror's file manager features. There are two reasons for this. First, Konqueror is not going to be the main file manager in KDE 4, so the average user will be more interested in learning about Dolphin, the default manager. Second, Gary Richmond has already done a great piece on [all of Konqueror's file manager features](http://www.freesoftwaremagazine.com/articles/konqueror_the_browser_file_manager_you_didnt_know)._

## Browsing the web

Like most web browsers, opening a website is pretty intuitive in Konqueror. Just type in the URL in the location bar and hit enter. Konqueror will then load the site with its KHTML browsing engine.

Like Firefox and Epiphany, Konqueror sports tabs as an option to open multiple windows. The hotkeys are basically the same: Ctrl-T to open a new tab, Ctrl-W to close the current tab, and Ctrl-Page Down and Ctrl-Page Up to navigate between the tabs. Unlike the other two browsers, however, Konqueror also provides a native way to split the current window (Firefox users can use the Split Browser extension to get similar functionality). This method is handy for displaying multiple webpages side by side. If you use Konqueror as a file browser, it can also be handy for displaying local and remote files in the same window. To split the screen vertically, hit Ctrl-Shift-L. To split it horizontally, hit Ctrl-Shift-T. Ctrl-Shift-R closes the selected split.

=IMAGE=konqueror_figure_2.png=Figure 2: A split screen showing an FTP client and two remote websites=

## Using Flash and Java

Kubuntu's version of Konqueror supports Netscape plugins (including Flash and Java) out of the box. If you installed Konqueror on a non-Kubuntu system, however, you may need to install the `konqueror-nsplugins` package (`sudo apt-get install konqueror-nsplugins`). Once you have Netscape plugin support ready, you can install the appropriate Flash and Java plugins (`flashplugin-nonfree`, `gcjwebplugin`, `icedtea-gcjwebplugin`, or `sun-java6-plugin`), as well as any other Netscape-compatible plugin. For Flash, you also have the option of installing `konqueror-plugin-gnash`, which is potentially easier than using a Netscape plugin.

=IMAGE=konqueror_figure_3.png=Figure 3: Watching a YouTube video with Konqueror and Flash=

# More advanced options

## Installing add-ons

While there's no official repository of add-ons, there are quite a few Konqueror plugins floating around the Ubuntu repository. You can find many of them with a search for `konqueror-plugin` ([http://packages.ubuntu.com/search?keywords=konqueror-plugin](http://packages.ubuntu.com/search?keywords=konqueror-plugin)), or simply install the `konqueror-plugins` package (`sudo apt-get install konqueror-plugins`) to download all of them. Once the installation is complete, you can usually find the extensions under the Tools menu. Some of my favorites include `konqueror-plugin-autorefresh`, which automatically refreshes a page, `konqueror-plugin-babelfish`, a translator tool powered by Babel Fish, and `konqueror-plugin-webarchiver`, a website archiver.

There's also a handy third-party extension called [Tweaking Konqueror tabs](http://www.kde-apps.org/content/show.php/Tweaking+Konqueror+tabs?content=44376). Created by suslik, this handy tool tweaks different Konqueror settings that would ordinarily require editing the complicated `~/.kde/share/config/konquerorrc` file. Tweaks available include showing/hiding the add tab, close tab, and hover close tab buttons and closing a tab with a middle click.

=IMAGE=konqueror_figure_4.png=Figure 4: Easy translation of andrewmin.com to Korean, courtesy of the Konqueror Babel Fish plugin=

# Pitfalls and solutions

Kubuntu uses KHTML as Konqueror's default engine in Kubuntu Hardy and is expected to use it in Kubuntu Intrepid. Unfortunately, KHTML isn't a very reliable web engine. Although it is Acid2-compliant, many web apps, including Gmail, fail miserably in Konqueror. Because of this, there is talk of moving to WebKit, a free software Apple-created engine forked from KHTML that runs web apps much better. Many FOSS projects, including Gnome and Qt, use WebKit components. The KDE relationship with WebKit, however, is rather frayed. Because of this, at the time of this writing WebKit is only available for Konqueror in the Kubuntu Intrepid package `webkitkde`.

=IMAGE=konqueror_figure_5.png=Figure 5: Gmail freezing Konqueror=

# Conclusion

If you're pining for a powerful KDE browser in the age where Firefox is catering to a Gnome audience, Konqueror is a wonderful option. It's fast, extremely configurable, and robust. There's a very good reason that Konqueror is the default browser in Kubuntu.