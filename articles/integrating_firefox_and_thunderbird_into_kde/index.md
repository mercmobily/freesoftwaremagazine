---
nid: '2324'
title: 'Integrating Firefox and Thunderbird into KDE'
authors: 'Andrew Min'
published: '2007-06-01 15:53:14'
tags: 'firefox,howto,mozilla,kde,thunderbird'
license: verbatim_only
section: end_users
listed: 'true'

---
Ever since I first fired up KDE on openSuSE, I’ve been in love. The KDE interface just swept me off my feet. But there’s always been one nagging thing. [Firefox](http://www.mozilla.com/en-US/firefox/) and [Thunderbird](http://www.mozilla.com/en-US/thunderbird/) stick out like two sore thumbs. They don’t look like KDE apps (see figure 1 and figure 4), they don’t work with KDE programs (like KPrinter), and they just don’t feel like they belong in KDE. Luckily, since both of these apps have support for add-ons, it is easy to remedy this.


=IMAGE=figure_1.jpg=Figure 1: Firefox with default interface=


=IMAGE=figure_2.jpg=Figure 2: Thunderbird with default interface=


# Making Firefox and Thunderbird look like KDE apps

To start off, let’s add a nice theme. My favorite for both Firefox and Thunderbird is [Mostly Crystal](http://www.tom-cat.com/mozilla/) (especially since it has support for theming extensions like [Go Up](https://addons.mozilla.org/en-US/firefox/addon/1677)). If you don’t like Mostly Crystal, there are tons of other Firefox themes including:


* the [Plastikfox](http://www.polinux.upv.es/mozilla/temas.php?idioma=en) themes from Mozillux,
* [KDEFF](https://addons.mozilla.org/en-US/firefox/addon/3652),
* [Plastikfox Crystal Clear](https://addons.mozilla.org/en-US/firefox/addon/916),
* [CrystalFox Modern](https://addons.mozilla.org/en-US/firefox/addon/4517),
* [CrystalFox Classic](https://addons.mozilla.org/en-US/firefox/addon/4518),
* [CrystalFox RoundedStyle](https://addons.mozilla.org/en-US/firefox/addon/4519),
* [CrystalFox Cute](https://addons.mozilla.org/en-US/firefox/addon/4520),
* [Crystal Lite](https://addons.mozilla.org/en-US/firefox/addon/4592),
* [Polyesterfox](https://addons.mozilla.org/en-US/firefox/addon/2970), and
* [Doodle Plastik](https://addons.mozilla.org/en-US/firefox/addon/2241).

Thunderbird users can use my favorite Mostly Crystal, [Plastikthunder](http://www.polinux.upv.es/mozilla/temas.php?idioma=en), or [Doodle Plastik for Thunderbird](https://addons.mozilla.org/en-US/thunderbird/addon/2673). If you can’t choose, download all of them, and then try each one.

Now that the themes are installed, it’s time for more advanced theming. First, install the CuteMenus—Crystal SVG extension ([Firefox version](https://addons.mozilla.org/en-US/firefox/addon/1330), [Thunderbird version](https://addons.mozilla.org/en-US/thunderbird/addon/1330)). All of your Firefox and Thunderbird menus should now have Crystal icons.

In GNU/Linux, Firefox and Thunderbird use the GNOME file picker. But why use that when you could use a KDE file picker? In Firefox 2.0 and higher, just open `about:config`, look for the boolean `ui.allow_platform_file_picker`, and change it to `false`. You can do the same: just open `about:config` in Thunderbird 1.5 or later via `Tools→Options→Advanced→General→Config Editor (button)`, and change `ui.allow_platform_file_picker` to `false`.  See figure 3 for the final result:


=IMAGE=figure_3.jpg=Figure 3: KDE file picker=

The last tool you’ll need is the [Konquefox](http://konquefox.free.fr/index.html) extension. This adds a Clear URL button, a Go Up button, and some zoom buttons to make Firefox look a little more like Konqueror.


# Making Firefox and Thunderbird work with KDE apps (and vice versa)

Just because Firefox and Thunderbird look like they are KDE apps doesn’t mean they work nicely with them. You don’t have access to powerful KDE utilities like KPrinter, KGet, or Kate. Also, KDE doesn’t exactly play nicely with Firefox or Thunderbird either (it prefers Konqueror and Kmail). Luckily, it’s easy to fix many of these problems.

I use KPrinter for handling my printers. Unfortunately, the Mozilla apps don’t work with KPrinter by default. So it’s time to open up `about:config` again. Set `print.printer_PostScript/Default.print_command` to `kprinter --stdin` and `print.always_print_silent ` to `true`. When printing, make sure you choose Postscript/default (leaving “Print to file” unchecked) and then click the Print button. At this point you will get the KPrinter dialog.  Note that this may not work for Thunderbird.

KGet is one of my favorite download managers. But Firefox and Thunderbird by default won’t recognize anything except their own (and extremely weak) download manager. So, get the [FlashGot](http://flashgot.net/) extension (Thunderbird version [here](https://addons.mozilla.org/en-US/thunderbird/addon/220)). Then go to `Tools→Add-ons`, open FlashGot’s preferences, and change the download manager to KDE KGet. Whenever you want to download a file using KGet, just choose the option to use FlashGot instead of the Mozilla download manager.

KDE comes with Konqueror and Kmail set as the default web browser and email client. However, I prefer the deadly duo of Firefox and Thunderbird. To change them to become the default programs, open KControl, open KDE Components, and click on Default Applications. Change the Email Client to `thunderbird`. Then open Web Browser, change the option to open `http` and `https` URLs to `firefox`, and hit Apply. Now, every time you click on a `mailto:`, `http://`, or `https://` link, Thunderbird or Firefox will open.

One of the few things I miss are the Windows Media, QuickTime, and Real Media plugins that Windows and Macintosh users have access to. That all stopped when I found the Kaffeine plugin for Firefox. Just install the [kaffeine-mozilla](http://tinyurl.com/bm48m) plugin, and Firefox will stream files that Kaffeine supports using the Kaffeine plugin.

Occasionally, the tools that Firefox supply don’t do the job I want. If you agree, just use [Launchy](http://gemal.dk/mozilla/launchy.html) for both Firefox and Thunderbird. Add the program to the `launchy.xml` file (see the [homepage](http://gemal.dk/mozilla/launchy.html) for more). Then whenever you want to open a page in an external program, click the Launchy button and click the appropriate menu item.


# Conclusion

Although Firefox and Thunderbird are, out of the box, extremely non-KDEish, the power of add-ons has made it so that both can look like, feel like, and work with KDE apps (see figure 4 and figure 5 for the final product). The developers are also working on fixing platform issues. They are planning to add support for KWallet ([Bug 278343](https://bugzilla.mozilla.org/show_bug.cgi?id=278343)), KDE-like keyboard shortcut dialogs (Bugs [57805](https://bugzilla.mozilla.org/show_bug.cgi?id=57805) and [257241](https://bugzilla.mozilla.org/show_bug.cgi?id=257241)), and much more (see [Platform Integration](http://wiki.mozilla.org/Firefox/Feature_Brainstorming:Platform_Integration) at the Mozilla wiki). But that shouldn’t be a big surprise. The combination of the excellent developers and terrific add-ons are two of the reasons Firefox has [over 30% of the browser market share](http://www.w3schools.com/browsers/browsers_stats.asp), and Thunderbird remains one of the most popular free software email clients.


=IMAGE=figure_4.jpg=Figure 4: Firefox: KDE style=


=IMAGE=figure_5.jpg=Figure 5: Thunderbird: KDE style=

**Further reading**:[1][HOWTO Integrate Firefox with KDE](http://gentoo-wiki.com/HOWTO_Integrate_Firefox_with_KDE)[2][Mozillux](http://www.polinux.upv.es/mozilla/?idioma=en)[3][Konquefox Tricks](http://konquefox.free.fr/index.html#tricks)

