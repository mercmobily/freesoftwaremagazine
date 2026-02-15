---
nid: '3038'
title: 'Crossweavers Chromium: some wine to go with your chrome sir (and some bugs too)?'
authors: 'Gary Richmond'
published: '2008-10-28 11:55:11'
tags: 'wine,google,chromium,youtube'
license: verbatim_only
section: end_users
listed: 'true'

---
A few weeks ago [I discussed the main features of the Chrome browser](/articles/googles_chrome_mozillae_explorer_rendering_engines_war/) and Google's motives; at that point I was like the poor child, nose pressed against the window pane, looking inside at the sumptuous feast at the master's table. I, like all GNU/Linux users, hadn't been invited. Same as ever. Crossweavers decided to gate crash the party and bring their own drink too. In short, in just eleven days from the launch of Chrome they built a version running under Wine, and although their products are proprietary and they usually reciprocate by giving code back to free software like [Wine](http://www.winehq.org/), this time they gave it away for free. Thus did Chrome become Chromium and I had a chance to download and install it. Reader, I benchtested it.

<!--break-->

=ZOOM= Crossweavers decided to gate crash the party and bring their own drink too=

At launch Chrome was designed for use only on a Windows platform. That was undoubtedly a pure marketing decision. It was not intended as a snub to GNU/Linux or Mac users, but nevertheless we were all frozen out. The only way you could take Chrome for a test drive was either to use Windows natively, dual boot or run Windows in a virtualised environment. That looks like overkill just to try out a new browser. I'm teetotal myself and you will never hear me advocating the consumption of alcohol but this is one occasion when I am prepared to make an exception. Well, they do say "a little wine for thy stomach's sake". 

The wine in question of course is not of the falling down variety, but yet another one of those recursive acronyms beloved of the Unix community. [Wine](http://en.wikipedia.org/wiki/Wine_(software)) (Wine is not an emulator), just in case you haven't heard of or used it before, is the free software project that recognises that, alas, we live in a Windows world and that there are times when, for personal and or commercial reasons, you need to sup with the devil of Microsoft and using Wine is a pretty long spoon with which to do it.
 
Wine is released under the LGPL. Essentially, it implements an alternative compatibility layer for Windows DLL calls that allows you to run a Windows software inside GNU/Linux. The proprietary, paid for version of Wine comes from Codeweavers which markets a product called Crossover; Google has paid them to develop functionality in Wine. So, perhaps ironically, Codeweavers released Chrome for GNU/Linux using Wine. For free.

# But why can't I just use Wine itself or the Chromium build for GNU/Linux?

You can, but you might run into a few problems. First, versions. You need at least version 1.1.3 to run Chromium. My laptops, running Mepis and Fedora 9, are using version 1.1.2 and the repositories do not yet have upgrades. (If you need to check what version you're running just type `wine --version` in a console.) Second, the correct version is only the beginning. You will need some additional software to get things up and running: winetricks, riched20, allfonts (optional). Additionally, Google's net installer will not work with Wine. Many people have reported encountering various problems with trying to install under Chrome under Wine. 

=ZOOM=Chromium has no auto updater so what you have is what you get=

Crossweavers Chromium solves all those problems. It comes with a self-contained bundle which contains the necessary version of Wine and all dependencies. Better still, it comes as a pre-compiled binary, in versions for Ubuntu (32 and 64 bit), Debian, Redhat and Mandriva as well as a compressed tarball for others versions of GNU/Linux and one for Macs (Intel only). You can grab one of them at [the Codeweavers Chromium site](http://www.codeweavers.com/services/ports/chromium/). (However, if you live in in Cuba, Syria, North Korea, Iran, and Sudan Google blocks downloads. Presumably something to do with export controls. I wonder if this restriction has carried over to Codeweavers version?) Installing should be as easy as downloading and installing Chromium with your package manager (Apt-get, Yum, Urpmi). That's it. You're ready to go. One caveat however: unlike the native Windows counterpart, Chromium has no auto updater, so what you have is what you get. It would of course be better to have security and feature updates, but this is not as bad as it first seems. 

Codeweavers expressly advice that Chromium is not fit for purpose as your default browser, that it is more by way of a "proof of concept" and for showcasing their products. As long as you bear that in mind you won't have unreasonable expectations. Like Wine itself, Chromium is beta and therefore a work in progress. Anything "ported" in eleven days is bound to have a few bugs, glitches and missing features. As Chemistry buffs will know Chromium is an odourless, tasteless, malleable, steel-gray element. Hopefully Google's version is a little more colourful. Let's look at it.

# First launch

It took Chromium approximately eight seconds to start. Restarts, after caching, reduced that to between two and three seconds. That's reasonable. The appearance, predictably, betrays the Windows build.

It's pretty minimalist too--as Google intended. No drop-down menus, bookmarks manager to speak of, no sidebar but then bells and whistles are not required when you have designed a browser as a gateway to and showcase for Google services and products.

One of the first things to do on first launch is to set up a shortcut for the desktop, start menu or system tray. Chromium can handle this for you: just click on the page icon (top right) and select create application shortcuts and you will be presented with three checkboxes from which to choose.

Chromium was a little inconsistent here. On my Mepis laptop, even running on Fluxbox, Chromium was added to the main menu and it even added an uninstall option. A nice touch--especially if the version you installed was from the compressed tarball and not a pre-compiled binary which can be removed easily via your package manager. I decided to install Chromium on my beloved Asus EeePc. The Debian version installed without problems but it would not play well with the KDE start menu. It added an "item" but it only pointed to a sub menu offering an uninstall only. At this point I fell back on the tried and tested GNU/Linux method of creating a desktop launcher, browsing for a file path and icon. 

Speaking of icons, the logo for Chromium is the same style as for Chrome but the colours are different--a washed out blue and gray. This may have something to do with Google's determination to protect its logo by not allowing developers to use its trademarks. This restriction seems a little at odds with the open source nature of the project. It looks like a re-run of the Firefox/Iceweasel spat.
 
## A word of warning

Have you ever fired up your browser and been rudely reminded that you had forgotten to plug in the ethernet cable/wireless card when it cannot find the URL you typed into the location bar? Usually,  not a problem. Just plug them in and resubmit and your off along the digital highway. Try this with Chromium and it looks like you're asking for trouble. I only discovered this by accident. I fired up Chromium on my Asus EeePc, intentionally unconnected to the internet as all I wanted to do was to change the desktop icon launcher. Task completed, I started the browser to check that the icon was still working. It was but that was the only good news. A few seconds later Chromium kindly informed me that it had crashed and would I like to restart? Yes, I would, please, but the screen was frozen and it took a while for an "unresponsive" message to come up which eventually allowed me close down the errant browser. Fluke? I thought so. 

I launched Chromium again and the same thing happened twice again but when I connected to the internet beforehand all was well. Was this specific to this laptop? No. The same thing happened on my Mepis machine, only worse. This time it crashed and took the whole machine down with it and the reboot was preceded by a `fsck` on all partitions. You have been warned. Feel my pain and learn.

This was clearly _not_ a machine-specific problem but a _browser_ specific problem. By any standard this is a pretty awful bug, whether it is something intrinsic to Chromium itself or a consequence of building and running it under Wine. Has anyone else encountered this problem? It is perhaps appropriate that Chromium includes Task Manager. You'll need it, though even that proved to be problematical. 

# The essential features

Chromium is deliberately minimalist. It doesn't exactly advertise its capabilities. Basically, there are three ways to access its features. None are unique. You will find them all, more and better, in other top-notch browsers like Firefox, Opera, Flock and Konqueror to mention a few.  Let's take a look.

## Task Manager

For a browser version pushed out of the factory gates in eleven days Task Manager may be your best friend in a digital shell hole. If it works that is. You can use it to view what's going on under the bonnet (hood). The fastest way to launch it is `Shift+Esc` or to right click on the the title border of Chromium and select it, or take the log way round the houses and click on the page button: → developer → task manager:

=IMAGE=Task_Manager_displays_all_tabs.jpg=Figure 1: Task Manager displays all tabs=

If Chromium has jammed up you can launch Task Manager, highlight the offending tab and kill it; however, that does not always work and you may have to resort to `Alt+Ctrl+Esc` to bring up the skull and crossbones to terminate the browser. 

At the bottom left of Task Manager there is a button "stats for nerds". clicking on it will open a new tab which is really `about:memory`. (Alas, there is no `about:config`. That must be slated as a killer addition to any eventual GNU/Linux version _sans_ Wine.):

=IMAGE=Stats_for_nerds_output.jpg=Figure 2: Stats for nerds output=

Despite its best promises in the Summary section memory details of other running browsers like Firefox and Opera did not display --as it did in Chrome if the screenshots I saw were anything to go by. At least the Task Manager reminds us that there are some `about:` details to be had, though nothing that can be tweaked. (You can see a list of them [here](http://googlesystem.blogspot.com/2008/09/google-chromes-about-pages.html).

## Put it on the tab(s)

=ZOOM=Chromium was prone to unprovoked freezes and crashes of individual tabs, the browser and the whole desktop=

A browser without tabs would be as useful as a chocolate fireguard so you would not be surprised to know that Chromium has them too, but it has two neat tricks up its sleeve. First, tabs can be re-ordered by the simple expedient of using the mouse pointer to click and drag them to an order you want. Google has made a lot of the fact that they have applied the principle of sandboxing the browser tabs so that misbehaving tabs can be killed off and leave your browsing session intact. So far so theoretical. In reality, Chromium was prone to unprovoked freezes and crashes of individual tabs, the browser and the whole desktop. At one point, with three tabs open it happily informed me that all three tabs were unresponsive and offered to kill them or "wait". For what? I felt like I had been happy slapped by a bunch of hoodies.  

At other times Chromium was on its best behaviour and ran happily for reasonable periods with six or seven tabs open. As if to make up for erratic and petulant behaviour, Chromium's ability to detach a tab and run it as a separate window worked fine. A tab can also be re-attached to the main browser. If any tab crashed Chromium was on its best front-parlour behaviour and offered to stomp all over it or try to reload the offending page:

=IMAGE=Chromium's_humour_to_ease_the_pain_of_a_crash.jpg=Figure    3: Chromium's humour to ease the pain of a crash=

If Chromium crashes completely and you restart it, it offers you the option to open with a clear browsing session or restore you to the previous tabs you had opened when it threw a hissy fit:

=IMAGE=After_crashing_Chromium_offers_to_restore_your_last_tabs.jpg   =Figure 4: After crashing Chromium offers to restore your last tabs=

If tabs have been closed intentionally or in a crash Chromium remembers them and keeps a list of them for future use. Where? That brings to another central feature of this browser.

# Downloads and history

Again, no self-respecting browser would venture out in broad daylight lacking these features and Chromium is no different, except in the way it chooses to display them. Like the Opera browser you can open a new tab by clicking on the plus sign directly to the right of the last tab. You will be presented with a window that will induce a definite sense of _deja vu_ for all Opera users (or anyone using the Firefox extension to mimic this feature). It's Speed Dial but not quite as we know it.

Opera's version is highly interactive and customisable, whereas Chromium's is not. The window displays your most visited sites as good-sized thumbnails, but you cannot actually create and customise a Speed Dial-type page; when you run Chromium for the first time, you will need to browse some sites in order to populate this window; when you have built up them up, you can click on "show full history" and the thumbnails become a list of links to your whole browsing history which cab be opened in the current window, a new window or a new tab. It would be nice to set this as the default home page in conjunction with other tabs but as you will have noticed from the above screenshot there is no address in the location bar to use. The way to at least set it up as the homepage is to click on the spanner icon (or "wrench" if you are American) at the top right of the browser and select Options:

=IMAGE=The_tabbed_options_box.jpg=Figure 5: The tabbed options box=

Under the section "Homepage" check the radio button for "use the new tab page" and Chromium will open with all your most visited  sites and a full history too. One very weird thing though, speaking of tabs. When you close a tab, Chromium remembers and adds it to the history window under "recently opened tabs". Or does it? Open a website in a new tab and then close it and you will see it being added under that list. Come back a little later and, hey presto, it's gone! Go figure.

# Searches, history and omnibox

Searching is at the core of most of our web experience so browsers need to come equipped for it. Like Firefox 3, Chromium's location bar is also the search bar too: type a URL to visit a website, type a word or phrase and it will be googled for you. By default Chromium comes with a number of search engines pre-installed but you can add your own favourites. Navigate to a search engine you want to add and then right click in the omnibox and select "edit search engines":

=IMAGE=A_simple_interface_to_manage_searches.jpg=Figure  6: A simple interface to manage searches=

As you can see I have added Wikipedia, Digg and YouTube complete with keywords. All you need to do is to fill in the boxes, close and type the first letters of the keyword in the omnibox, hit tab and you can search in the engine of choice:

=IMAGE=Setting_omnibox_to_seach_with_Digg.jpg=Figure 7: Setting omnibox to seach with Digg=

Interestingly, the search engines you add for use in the omnibox find their way into the history tab (top right) and at least _they_ are permanent. Setting the history tab as you default homepage thus makes sense if you do a lot of searching as you can do it from the comfort on one window and open many different search engines in other tabs. This is much more convenient than searching from the clutter of the location bar. On that subject, like Firefox 3, you can bookmark pages by clicking on the star icon on the far left of the location bar. If you click on the spanner/wrench icon and select downloads you will see all your bookmarks listed with a star against them, and they will persist when you delete your browsing by clicking on "delete history for this day". 

As Chrome/Chromium was probably designed more with web applications in mind, bookmarking features are thin on the ground. You can import bookmarks. In Chrome, running on Windows, there is a facility to import IE and Firefox bookmarks, including search engines and browsing history. In Chromium, obviously, it is IE only. It would be nice if the ability to import boomarks from an HTML file had been included with GNU/Linux user in mind. In lieu of that I uploaded my Konqueror bookmarks in that file format, viewed it in Google Docs and bookmarked it in Chrome. 

One final thing about bookmarks. If you use, say, five or six sites regularly, you can display them for ease of access in a bookmarks toolbar. To display it just select "Always show bookmarks bar" from the spanner drop-down menu. This is worth displaying as you can drag certain features onto it. (You can toggle it on and off with ctrl+B.)

# Split tabs, YouTube videos and RSS feedreaders

That bookmarks toolbar is more useful than you know. Chromium is pretty lightweight in feature terms but the hackers have been busy already adding features. They were made for Chrome but I speculated that some of them might work with Chromium. One thing you can do straight off without installing anything is to drag a Firefox tab onto Chromium. The other way around would have been better. If you discovered a site with Chromium that you wanted to do things with, dragging it into Firefox would allow you to use relevant extensions on it. Chromium cannot use extensions, but that does not mean that you can't add stuff. Javascript is pretty universal and there are a few scripts which work on Chrome and work on Chromium too. 

It is good to report that Google have announced that they will be adding native support for [Greasemonkey](http://en.wikipedia.org/wiki/Greasemonkey) in Chrome and hopefully this will apply to any future versions of Chromium whether wrapped up in Wine or built from scratch. If so, it can manage [java userscripts](http://userscripts.org/) and extend the browser's capabilities greatly.

## YouTube, BBC, flash cookies and Incognito

Youtube is an obscure website, but when it eventually becomes popular and achieves market penetration (Ok, only joshing) you might want to download and videos. There are already many methods for doing this, some simple, some messy; however, here is a piece of javascript that is an absolute no-brainer and it works fine with Chromium. Fire up Chromium and point it to [this page](http://googlesystem.blogspot.com/2008/04/download-youtube-videos-as-mp4-files.html) and drag the bookmarklet onto the bookmark bar. That's it! Now, go to Youtube and select a video to view, click the "Get YoutTube video" and it will add a link at the bottom of the yellow box. Right click it and choose `save as` from the menu and Chromium will download and save it as a high-quality mp4 file, not flash video. Neat. Most other methods in other browsers work too but usually only save videos as `flv.` files or you have to do post-download conversion or install additional software.

I almost forgot to mention that this will work even if you do not have Flash installed--and Chromium does not have it. The first time I tried to use the BBC iPlayer it informed that I did not have Flash but did at least give me the opportunity to download with a link to the Adobe version (ugh!). The iPlayer homepage displayed without any problems:

=IMAGE=The_BBC_iPlayer_homepage_displays_Ok_without_Flash.jpg=Figure 8: The BBC iPlayer homepage displays Ok without Flash=

Purists will baulk at that but I went ahead and downloaded it. It is a Windows `exe` file. The easy way to install it was to click on the file in Chrome Downloads tab. You will be prompted to close Chromium before proceeding. It installed fine and when I re-opened the browser I was able to play BBC videos as normal. On my Fedora 9 laptop I took a different route. 

After downloading Flash I went to my downloads folder and right-clicked on the executable. I was presented with two options: install with Wine or install with Crossover. As Chromium comes bundled with a later version of Wine than the one previously installed by me, it seems logical to choose Crossover. It was the right decision. It installed without demur and viewing BBC videos in the iPlayer was flawlessas this screenshot demonstrates:

=IMAGE=Flash_installed_and_the_BBC_iPlayer_is_good_to_go.jpg=Figure  9: Flash installed and the BBC iPlayer is good to go=

However, if you just want to download and view mp4 YouTube videos offline then you don't have to worry about installing binary blobs like Adobe Flash.

# Incognito and Flash cookies

This might be a good point at which to say something about Chromium's much-hyped Incognito mode. It looks cute and you are greeted with a some initial blurb before you proceed:

=IMAGE=Incognito's_security_advisory.jpg=Figure 10: Incognito's security advisory=

Yes, I agree, it can protect your local machine when you are browsing but as Google itself admits this is no protection against servers tracking what you do online. You'll need something stronger than Incognito to cover your tracks (yes, I know, it has been described as "porn mode"), but it is better than nothing.

For obvious reasons Incognito will open in a separate window. If you come to a webpage in your general browsing that you would rather view in a relatively more secure way just right click any link and open it in Incognito. It seems to do what it says on the tin, but there is an issue with something called flash cookies, sometimes called [Local Shared Objects (LSO)](http://en.wikipedia.org/wiki/Local_Shared_Object). These are not normal cookies. Wikipedia describes the as "cookie-like data" and any flash material you view will track you. In the event you are using Chromium's Incognito mode on a page using Flash, "cookies" will not be deleted. in fact [there have been reports](http://s3mp.blogspot.com/2008/09/google-chrome-s3mp-and-security.html) that this type of cookie has persisted across Incognito sessions and even leaked across from regular sessions too. Go to that website and try out the proof of concept link to see this in action. 

There are a number of solutions to this. Delete the cookies after a browsing session. You will find them in `~/.macromedia` and locate files with `.sol` extensions. (I drilled down through a thicket of directories and found the platters of my hard drive infested with the little buggers.) The problem with this is that you have to remember to do this at the end of a browsing session or set up a script to do it for you and run it with `cron`. Alternatively, you can use [Macromedia’s Flash Player Settings Manager](http://www.macromedia.com/support/documentation/en/flashplayer/help/settings_manager.html) and set the global storage settings to "none" to keep them off your machine.

-ZOOM=the best solution of course is the Stallman solution: no proprietary binary blobs on free software=

Finally, if you are using Firefox (versions 2 and 3) you can install the [Objection extension](http://objection.mozdev.org/) which will be added to the browser preferences. This is worth doing when you remember that these shared objects are also shared across browsers. The best solution of course is the Stallman solution: no proprietary binary blobs on free software. In other words, install the [Gnash player](http://www.gnu.org/software/gnash/). I wonder if anyone has got it to work with Chromium. 

To end this section on a less carping note I should say in defense of Incognito that, cookie leaking notwithstanding, you can exploit it to [use miutiple Google accounts simultaneously](http://googlesystem.blogspot.com/2008/09/use-multiple-google-accounts.html). Strictly one for the productivity geeks but neat just the same.

## Split tab

You can have a twin-pane file manager, a split window in Konqueror and an extension for Firefox for splitting the screen. Why should Chromium be left out in the cold? Suppose you are researching an article with Google and writing it in an online web application like Google Docs. You will be hoping back and forth between tabs. There is a better way, another piece of clever javascript you can install on Chromium which will allow you to view both sites in one tab in a resizable split screen.

You will find the software at [Chrome Plugins](http://www.chromeplugins.org/plugins/google-chrome-dual-view/). Scroll down to just below the second screenshot and drag the link "Chrome Dual View" on to the bookmarks toolbar. Done. Open the website you want, click on that button and you the pop-up box will fill in the site details (or you can enter a different one if you choose). Ok your way out and a second box will pop up. Enter the page you want and again Ok your way out. You're done:

=IMAGE=A_javascript_bookmarklet_makes_all_the_difference.jpg=Figure  11: A javascript bookmarklet makes all the difference=

Now, every time you want to "split" a tab into two windows to work faster and smarter, just click that button.

## RSS feed viewer

Chromium has no built-in feed viewer but yet another piece of javascript can fill the gap. Point your browser at this [Chrome hacks site](http://feeds.ramisp.org/) and drag the bookmarklets on to the bookmarks toolbar. One will view feeds, and the other will auto detect them. The next time you visit a site just click on one of them and proceed. 

# Expanding the Textarea

One final, useful feature. If you are unable to resist putting pen to paper to execrate this article on the grounds that it is a heap of ordure, badly written or the product of a deranged mind (in fairness, that last one is probably true) you can at least have an expansive canvas on which to vent your spleen because Chromium allows you to resize the text area to handle your outpouring of bile. Most websites, including Free Software Magazine, have a text box at the bottom of the page where you can leave your comments. If it is too small just grab the text box at the right-hand corner with your mouse and drag out out to the size you want. Now you can abuse me at length to your heart's content.

# Verdict

=ZOOM=chromium can only get better. The Unix community will see to that=

We have to give Codeweavers great credit for getting out Chrome to Mac and GNU/Linux users so incredibly fast, but the price for that audacity is a willingness to put up with bugs. Stability was an issue whether I was using it on Mepis, Fedora or Xandros on the Asus EeePc. I did like the History and Dowload tabs though. The former particularly looked very good and has lots of potential.

Will I be making Chromium my main/default browser? In the immortal words of Eliza Doolittle, "not bloody likely". Will I be keeping it? Yes, if only out of a perverse sense of fondness for Chromium. There is enough in it for me to believe that once the proper version for GNU/Linux comes out it can iron out the bugs and add features to extend it. Yes, it has been over hyped (but it was nice, at last, to have a chance to see what all the hype was about). Google products usually are but let's give it a fair wind and see what emerges.

There has been a lot of talk in the midst of the current financial hiatus about the failure of financial regulators to sufficiently stress test their banking models at all or only after the event but fortunately free software designers are made of sterner stuff. So Chromium can only get better. The Unix community will see to that.
 
Perhaps given the massive hype surrounding the launch of Chrome and the way in which it was launched with a thirty-eight page comic format it was inevitable that the Google haters, like the Microphobes, decided to satirise it. If you want to be amused at their irreverent parodies point Chromium (or any other browser!) at [this clever spoof](http://www.surfchrome.com/index.php/gallery/chrometoon-googleville-satire/59-initial-mock-google-cartoons-emerge).  Not before time too. Enjoy.