---
nid: '1783'
title: 'Set up a free software IRC client in less than 5 minutes'
authors: 'Robin Monks'
published: '2006-10-03 12:24:42'
license: verbatim_only
section: end_users
listed: 'true'

---
Everyone loves IRC (stands for Internet Relay Chat; a kind of group chat room often used by open source/free software projects and developers, or as support channels), unfortunately the open source IRC clients out there are often hidden away.  In this week's article, I'm going to show you how to set up your IRC client in under 5 minutes using only free software.

The IRC client I've chosen for this article is [ChatZilla](http://chatzilla.hacksrus.com/).  Mainly because ChatZilla is a [Firefox](http://getfirefox.com) extension, and can be installed and run on any OS that runs Firefox 1.0 or higher (and comes prebundled with [SeaMonkey](http://www.mozilla.org/projects/seamonkey/)).  ChatZilla is also available as a standalone program for Windows.  I'll outline using ChatZilla both ways below.

Of course, ChatZilla isn't the only IRC client on the block.  Other free software IRC clients are out there.  Such as [HydraIRC](http://www.hydrairc.com/) (Windows), [bersirc](http://bersirc.free2code.net) (Windows), [AeruIRC](http://aeruirc.sf.net/) (Windows) and [XChat](http://www.xchat.org/) (which is similar in interface to ChatZilla).  In my opinion ChatZilla has the cleanest interface of these clients, and works on the most platforms, so I will use that for the basis of this blog entry.

**For those using the extension, Minutes 1-2:** First ensure you are using [Firefox](http://getfirefox.com) 1.0 or higher (1.5.0.7 is the latest version), [SeaMonkey](http://www.mozilla.org/projects/seamonkey/) 1.0 or higher (1.1 is the latest version) or Mozilla Suite 1.0 or higher ([SeaMonkey](http://www.mozilla.org/projects/seamonkey/) 1.1 is the latest version).  Then go to [the ChatZilla extension page](https://addons.mozilla.org/firefox/16/) and click on the "Install Now" link.  Firefox/SeaMonkey will prompt if you want to install ChatZilla, click "Install Now".  After the installation is complete you'll need to close all Firefox/SeaMonkey windows (Including any icons in your system tray, you can close them by right-clicking and pressing exit), and then restart Firefox/SeaMonkey.  You'll want to bookmark this page to refer to it after Firefox/SeaMonkey has restarted.  Press Ctrl-D to bookmark.

After Firefox or SeaMonkey has been restarted, a "ChatZilla" entry should appear under the Tools menu (SeaMonkey and Mozilla Suite users might find it under Windows->ChatZilla or Windows->Messaging).  If there is a ChatZilla item there, installation was successful, and you can continue to Minute 3 below.  If there isn't a ChatZilla item, look under Tools->Extensions and see if there is a ChatZilla item in the extension list.  If it still says something in effect to "You must restart your browser", try rebooting your PC to force all parts to restart.  If there is no ChatZilla item in the list, try installing the extension again.

**For those on Windows using the stand-alone ChatZilla, Minutes 1-2:** You can download the stand-alone installer from [ bunnyblog](http://thumper.kicks-ass.org/wordpress/chatzilla-on-xulrunner/) ([direct link to installer](http://thumper.kicks-ass.org/xulapps/ChatZilla%200.9.75%20Setup.exe)).  Download the installer to a folder on your computer and then run it.  It will walk you though the installation of ChatZilla and the XULrunner that lets ChatZilla run standalone.

After installation, you should have a new set of icons in the start menu for ChatZilla, proceed to Minute 3.


=IMAGE=chatzilla-2.jpg=Standard ChatZilla interface.=

**Minute 3:** Now it's time to start ChatZilla.  If you are using the extension, open ChatZilla from the Tools or Windows menu in your browser.  If you installed the standalone ChatZilla, open it from the link on your start menu.  On first run, you'll receive a list of possible networks.  For the sake of an example, we'll join the Ubuntu channel on Freenode.  Type `/server freenode`.  Some connecting text will appear and in a few seconds you'll see "welcome to freenode" along with some help text.

Next, type in `/join #ubuntu` and you should now be in the Ubuntu channel.

**Minute 4:** If you are interested in learning more about IRC, and what channels you can go to, take a look at [the Wikipedia page on IRC](http://en.wikipedia.org/wiki/Internet_Relay_Chat) which can answer most questions.  Also, don't forget that in support channels, people donate their time to be there, so be nice to them :)

**Minute 5:** If you want to make your IRC client look a bit nicer, you can find some great themes online [at my page](http://devlinks.googlepages.com/) and [at the official motifs page](http://chatzilla.hacksrus.com/motifs.html).  You can install a motif by dragging and dropping a link onto ChatZilla, or by typing `/motif {URL of motif}`.



I hope you'll enjoy the free software way to IRC, there is a lot more to tell about IRC, but telling you all the secrets would make it less fun for you to find them yourself :)  Have fun and see you next week!

