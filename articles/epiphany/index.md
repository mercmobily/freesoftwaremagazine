---
nid: '2977'
title: 'Epiphany, the ultimate Gnome browser'
authors: 'Andrew Min'
published: '2008-09-24 12:34:53'
license: verbatim_only
listed: 'true'
book: ubuntu_applications
book_weight: '0'
layout: book.html

---
Firefox is a great browser. However, it's a tad on the bloated side (even though the new version are definitely better!). Also, Firefox is focused on cross-platform compatibility. That's great, but sometimes that also means that Firefox won't be able to take advantage of Gnome-specific features, including the unified look, better language support, and HIG-compliant settings. If you've been feeling these Firefox blues as well, Epiphany could be the answer.

<!--break-->

# "What" and "Who" is Epiphany for?

=IMAGE=epiphany_figure_1.png=Figure 1: Epiphany=

According to the home page,

_Epiphany is the web browser for the GNOME desktop. Its goal is to be simple and easy to use. Epiphany ties together many GNOME components in order to let you focus on the Web content, instead of the browser application. As part of the GNOME project, Epiphany is Free Software._

In 2000, Marco Pesenti Gritti created a fork of the Mozilla Suite. He liked Mozilla, but disliked its bloat and lack of speed. He felt that all he needed was a web browser, not all the other components of Mozilla. So a Gnome-based browser named Galeon was released to the world in June 2000. By 2001, Gritti's little project had taken on epic proportions. Galeon had achieved immense popularity, and its code was so actively developed that Gritti released Galeon 1.0 before Mozilla 1.0. Unfortunately, the development team soon split. Gritti wanted to keep his browser simple and HIG-compliant. However, many other developers disagreed, calling for more features and scorning Gritti's cautious simplicity-focused approach. Gritti eventually decided that he had had enough and forked the Galeon code into a new project called Epiphany. Because of this, the Galeon developers were able to form a powerful browser, while Gritti was able to keep his HIG-compliant browser. But the Galeon developers eventually ran out of time to hack for their browser. In 2005, they began to abandon Galeon and instead began work on Galeon-like extensions for Epiphany, which by now had gained its own respect in the the free software community.

So is Epiphany right for you? Well, maybe. You should probably be using Ubuntu, not Kubuntu, Xubuntu (or the other derivatives). You should also probably prefer ease-of-use and simplicity over power (not that Epiphany doesn't have power). And you also have to accept that Epiphany won't have as many add-ons as Firefox, although there are a lot. If you're OK with all of the above, Epiphany is a great option.

# Installation

Epiphany is not installed by default on Ubuntu, Kubuntu, or Xubuntu, though there is a movement to make it the default Gnome browser. While you're waiting, you'll need to install it using the command `sudo apt-get install epiphany-browser`. Do_not_ install the `epiphany` package, which is a puzzle game. In Ubuntu Intrepid or higher, you'll have the choice between `epiphany-gecko`, the Gecko (Firefox) engine, or `epiphany-webkit`, the WebKit (KHTML fork that Apple's Safari uses) engine.

# First launch

When Epiphany launches, you'll be presented with the standard Ubuntu start page. Unlike Firefox, there's no wizard that will import data. You can import bookmarks, but you'll need to manually import them by going to the bookmarks manager (see below) and hitting _File → Import Bookmarks_.

# Common tasks

## Browsing the web

Like Firefox, Epiphany's main feature is, obviously, browsing the web. After all, that's the reason it's called "Web Browser" in Ubuntu. I know, hard to believe that a web browser is meant for browsing the web, but that's apparently true. Anyway, like Firefox, browsing is pretty simple to do in Epiphany. Just type in the URL in the location bar and hit enter.

Epiphany also has tabbed browsing, similar to Firefox. In fact, tabbed browsing in Epiphany is almost identical to Firefox's: Ctrl-T opens a new tab, Ctrl-W closes the tab, and Ctrl-Tab and Ctrl-Shift-Tab moves back and forth between the tabs. Like in Firefox, Epiphany's tabbed browsing is much more effective than using windows to display multiple pages.

=IMAGE=epiphany_figure_2.png=Figure 2: Tabbed browsing in Epiphany=

## Using Flash and Java

Flash and Java work basically the same on Epiphany as Firefox, albeit a little more complicated. To install Flash in both, you need to install the appropriate Flash plugin package, either swfdec (an unofficial free Flash plugin), Gnash (another unofficial free Flash plugin), or Flash Player (the official freeware plugin). The difference is that Firefox has a built-in tool to automatically install the package, while Epiphany users are required to manually install the plugin. To install Flash support, run `sudo apt-get install packagename`, where `packagename` is replaced by `swfdec-mozilla`, `mozilla-plugin-gnash`, or `flashplugin-nonfree`.

Installing Java is very similar to Flash. You have three options: the unofficial GCJ plugin, the unofficial IcedTea plugin, and the official Sun plugin. Just run `sudo apt-get install packagename`, where `packagename` is replaced by `gcjwebplugin`, `icedtea-gcjwebplugin`, or `sun-java6-plugin`.

=IMAGE=epiphany_figure_3.png=Figure 3: Using apt to install Flash=

# More advanced options

## Installing official extensions

Epiphany doesn't have quite as many extensions as Firefox, but there are quite a few available. Installing them isn't quite as easy as in Firefox, as you are required to use apt rather than a built-in extension.

The most used one is the `epiphany-extensions` package, which can be installed using the command `sudo apt-get install epiphany-extensions`. The epiphany-extensions package is a collection of official (or officially recognized) extensions, ranging from an ad blocker to a Greasemonkey-like user script interpreter. After installing the package, you can enable the extensions you want from the _Extensions Manager_ at _Tools → Extensions_. My favorites are the already mentioned _Ad Blocker_, the _News Feed Subscription_ RSS reader integrator, and the _Mouse Gestures_ keyboard-replacement tool. The extensions are mostly non-intuitive, so you may want to look at the manual (in the _Extensions Manager_, click on the _Help_ button).

=IMAGE=epiphany_figure_4.png=Figure 4: The News Feed extension for Epiphany=

## Installing non-official extensions

Not all of Epiphany's great extensions are official. Another one of my favorites is the 3rd party Gwget extension, an add-on that integrates the Gwget download manager with Epiphany. It's packaged in the Ubuntu repositories under the name `epiphany-extension-gwget`, which you can install with the command `sudo apt-get install epiphany-extension-gwget`. After installing it, enable the GWGet extension in the Extensions Manager. From now on, Gwget will pop up every time you tell Epiphany to download something.

Unfortunately, there are also many extensions that aren't packaged for Ubuntu users. It's a little more complicated to install these. First, download (with Gwget, of course) an extension from the [Epiphany Third Party Extensions page](http://live.gnome.org/Epiphany/ThirdPartyExtensions). Instructions vary, but usually you'll just need to copy the downloaded files to the `~/.gnome2/epiphany/extensions/` folder. Then, enable them as usual using the _Extensions Manager_. If all goes well, the extension should start working.

=IMAGE=epiphany_figure_5.png=Figure 5: Gwget and Epiphany: an obvious pair=

# Pitfalls and solutions

Like any piece of software, Epiphany isn't perfect. The thing most people complain about is the lack of a theme. However, since Epiphany is 100% compliant with the GTK engines, Epiphany should always integrate into your current theme. Also, there have been the usual complaints about bugs that were never closed (Galeon bug #70575, which affects Epiphany, has been around since 2002). But every project has its bugs. Heck, GTK+ had one bug that lasted for seven years (#56070, if you're nerdy enough to care). Besides those two little quibbles, there isn't a lot you can complain about when you're reviewing Epiphany, except that it doesn't look great in Kubuntu. But since Epiphany is meant for GTK+/Gnome, not KDE, that makes a lot of sense.

# Conclusion

If you're a Gnome user who needs a Gnome browser, a Xubuntu user who can't survive the heaviness of Firefox, or just a person who likes speed and power, give Epiphany a try. It's worth it.