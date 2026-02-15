---
nid: '2976'
title: 'Firefox, the king of web browsers'
authors: 'Andrew Min'
published: '2008-08-31 20:55:06'
tags: 'firefox,browser,web-browser'
license: verbatim_only
listed: 'true'
book: ubuntu_applications
book_weight: '0'
layout: book
---
After Microsoft killed Netscape, there was no serious competitor to Internet Explorer in the browser wars. For years, Microsoft lorded its dominance of the web browser market. Then along came Firefox, the open source web browser that took the world by storm.

<!--break-->

# "What" and "Who" is Firefox for?

=IMAGE=firefox_figure_1.png=Figure 1: Firefox=

According to the home page,

_The Firefox Web Browser is the faster, more secure, and fully customizable way to surf the web._

In 2004, the browser war was over. Netscape was dead, Opera was a blip on the radar, and Mozilla was going nowhere. It seemed to everyone that Internet Explorer was the one and only web browser, no matter how bad it was. Then, Firefox came along. Created by Dave Hyatt and Blake Ross and based on the Mozilla code base, Firefox was a godsend for Microsoft-haters. It had none of the bloat that Mozilla shipped with. Additionally, the Gecko engine was completely standards-compliant, which earned it the love of the W3C programmers. Soon, Firefox was gaining major attention, with positive reviews from the New York Times, Wall Street Journal, and USA Today.

Firefox is meant for all audiences. Whether you're a new user or a longtime UNIX veteran, Firefox is the ideal browser for both everyday and advanced needs.

# Installation

Firefox is pre-installed in Ubuntu and Xubuntu. Kubuntu users will need to install the firefox package using the following command: `sudo apt-get install firefox`. Kubuntu users will probably also want to install the CrystalFox Qute ([https://addons.mozilla.org/en-US/firefox/addon/7554](https://addons.mozilla.org/en-US/firefox/addon/7554)) or the KFirefox ([http://ramonantonio.net/kde-firefox/](http://ramonantonio.net/kde-firefox/)) theme for KDE 3.5 and KDE 4 respectively.

# First launch

When Firefox launches, you'll be presented with a wizard asking if you'd like to import any data from other installed web browsers. After completing this wizard, the Firefox welcome page will open, as will the Ubuntu start page. You should now be ready to start using Firefox.

# Common tasks

## Browsing the web

Obviously, the main feature of a web browser is the ability to browse the web. To open a web page in Firefox, just type in the address in the location bar at the top of the window and hit enter. The web page will then load.

One of the most useful features in Firefox is the tabbed browsing feature. Just hit Ctrl-T, and a new tab opens up. To close it again, just use Ctrl-W. Tabs are much better than windows for multiple pages, as they require less system resources and are easier to access. Switching between tabs is also much faster: just hit Ctrl-Tab to go to the next tab and Ctrl-Shift-Tab to go to the previous tab.

=IMAGE=firefox_figure_2.png=Figure 2: Tabbed browsing in Firefox=

## Adding bookmarks

Bookmarks ("favorites" in Internet Explorer) are ways of remembering sites that you may want to come back to later. To add a bookmark, first go to the page that you wish to save. Then, hit _Bookmarks → Add Bookmark_, give it a name, and hit OK. Now, the bookmark should show up in the _Bookmarks_ menu at the top. Clicking on it will bring you back to the page. For more advanced bookmarking configuration, you can play around with the Bookmarks Manager (_Bookmarks → Organize Bookmarks_).

Not all web pages are created equally. Because of this, you'll probably use some bookmarks more than others. For example, every morning I check RealClearPolitics.com for the latest in political news. Because of this, I like having the RCP bookmark in an easy-to-access place. That's where the Firefox bookmarks bar comes in. It's the bar right below the address bar, and it contains any bookmarks you put there. There are several ways of adding to the bookmarks bar, but the easiest way is to open the site you wish to bookmark in a new tab and then drag that tab onto the bookmark bar.

=IMAGE=firefox_figure_3.png=Figure 3: Bookmarks Manager=

## Using Flash and Java

If you're browsing the web, chances are that you'll need the Flash and Java plugins. Flash is an essential for most sites, including online video sites like YouTube, online photo galleries, and online games. Java is less commonly used, but still handy to have around.

Installing Flash is a snap. The first time you see a site with Flash, the applet will be replaced by the message, "Click here to download plugin". When you click on it, the plugin finder service pops up. You have three choices: _Adobe Flash Player_ (the official Flash player), _Swfdec_ (a free software Flash player), and _Gnash_ (another free software Flash player). Both Swfdec and Gnash are a little buggy at times, being beta-quality software. However, they are coming along nicely and they might be good to go by the time you read this article. After selecting one, hit _Next_. A window will pop up asking if you want to install the software. Accept, type in your password at the prompt, and watch as Flash/Gnash/Swfdec automatically installs itself. After it is done, reload the page. The Flash content should immediately start working.

=IMAGE=firefox_figure_4.png=Figure 4: Flash chooser=

Java is much the same. Like Flash, a prompt automatically asks you to download the Java plugin as soon as you visit a Java-powered page. You have four options: GCJ (a free Java plugin), OpenJDK (a free software version released by Sun), Java SE 6 (an official non-free plugin), and Java SE 5 (an official older non-free plugin).

=IMAGE=firefox_figure_5.png=Figure 5: Java chooser=

# More advanced options

## Installing themes

Firefox looks good out of the box (especially if you use 3.0). However, you can make it look even better by installing themes ([https://addons.mozilla.org/themes/](https://addons.mozilla.org/themes/)). There are tons of cool ones, but my favorites are:

* CrystalFox Qute ([https://addons.mozilla.org/en-US/firefox/addon/7554](https://addons.mozilla.org/en-US/firefox/addon/7554))
* Blue Ice ([https://addons.mozilla.org/en-US/firefox/addon/3085](https://addons.mozilla.org/en-US/firefox/addon/3085), unfortunately not yet available for Firefox 3.0)
* NY Yankees (of course!) ([https://addons.mozilla.org/en-US/firefox/addon/5499](https://addons.mozilla.org/en-US/firefox/addon/5499)). 

Installing themes is really easy: just click on the install button, and hit _Install_. The Add-ons manager will then pop-up. Click the _Themes_ tab, check _Use Theme_ on the appropriate theme, and click the _Restart Firefox_ button. Now, your new theme should take effect.

=IMAGE=firefox_figure_6.png=Figure 6: Installing the theme for the best baseball team in the world=

## Installing extensions

The reason Firefox was created was to escape the bloat from the Mozilla Suite. The creators reasoned that the average web user didn't need a mail client, chat client, news client, and HTML editor. Shocking, right? But the good news is that the creators also realized that some **do** need these features. Therefore, they kept the old Mozilla model of extensions, user-built add-ons that extend the functionality (or, like the About:IceCream extension, reduce the functionality) of Firefox. They're all available at Mozilla Add-ons ([http://addons.mozilla.org/extensions](http://addons.mozilla.org/extensions)), just like the themes. Installing them is basically the same as installing a theme: just click on the Install button, accept the prompt, and restart Firefox. My favorite extensions include:

* Adblock Plus ad blocker ([https://addons.mozilla.org/en-US/firefox/addon/1865](https://addons.mozilla.org/en-US/firefox/addon/1865))
* ColorfulTabs tab colorfier ([https://addons.mozilla.org/en-US/firefox/addon/1368](https://addons.mozilla.org/en-US/firefox/addon/1368))
* DownThemAll! download accelerator ([https://addons.mozilla.org/en-US/firefox/addon/201](https://addons.mozilla.org/en-US/firefox/addon/201))
* StumbleUpon website discoverer ([https://addons.mozilla.org/en-US/firefox/addon/138](https://addons.mozilla.org/en-US/firefox/addon/138)).

=IMAGE=firefox_figure_7.png=Figure 7: Installing the most critical Firefox extension=

# Pitfalls and solutions

Firefox isn't perfect. For example, it is often considered bloated. However, this is mainly for two reasons that aren't really valid: leaky extensions and Firefox < 3.0. Many extensions cause memory leaks, slowing down Firefox and making it use much more memory than it should. There's a long list of problematic extensions and how to fix them at the [Mozillazine](http://kb.mozillazine.org/Problematic_extensions). Mostly, the problems can be fixed by upgrading to a newer version of a faulty extension. But sometimes, like in the case of the Google Web Accelerator, the MegaUpload Toolbar, and Media Player Connectivity, the only solution is to uninstall the extension.

Versions previous to Firefox 3 were also memory leakers. Often, Firefox would start out with a relatively low memory usage and then spool until it reached more than even (**gasp**) Internet Explorer. But Firefox 3 eliminated many of these bugs, doing such tasks as removing nsFloatCache, lowering XPCOM objects leakage, fixing the watch method in the JavaScript engine, patching evalcx, and tuning up the cache. Because of this, Firefox 3's memory usage is substantially lower than Firefox 2 or Firefox 1, making many of the system usage complaints completely invalid.

# Conclusion

Firefox is the perfect web browser for almost every single user. If you're a basic user, you'll be pleased by the simplicity of Firefox. If you're an advanced user, you'll be happy to discover how extensible and customizable Firefox is. And that's why Firefox has an 18% market share.