---
nid: '2651'
title: 'How to Install the latest (and last?) Netscape Navigator'
authors: 'Gary Richmond'
published: '2008-01-15 22:43:28'
tags: 'howto,netscape,navigator'
license: verbatim_only
section: end_users
listed: 'true'

---
Before you start shouting at me, I know. Nestcape Navigator will soon be no more. After many years of faithful service, and before Firefox and Flock were a mere twinkle in a web developer's glinting eye, AOL has announced that the browser will be retired at the beginning of February and put out to pasture in its nonage. You might be thinking that installing a browser with a death sentence hanging over its head is about as sensible as a portable defibrillator in a funeral parlour, but read on.

It does not mean that it will not be available (in many versions), only that there will be no further official development; however, I still think it worth installing even if you decide later to remove it. I will show you how to install it and how to get the best out of two features that Firefox currently does not have.

#Installation

If traditional binaries were available for the usual GNU/Linux distros this article would be superfluous: however, I have been unable to locate any, save one Deb file for Debian and Ubuntu (which are not official) I did not locate any RPM packages for Navigator but you could always try converting the Debian version with Alien. Your mileage may vary. If you are willing to try it out you can follow the link [on this website](http://chrislinuxprojects.co.nr/). However, installation is, nevertheless, a relative no-brainer even for recent adopters of free software. First, fire up your browser of choice and head over to [the official Netscape website](http://browser.netscape.com/) to grab a copy. The current version is 9.0.0.5 for Linux and is available as a compressed tarball on the front page. Just click on the icon link for it and save it to a location of your choice.

Before you starting gouging out your eyes at the despairing thought of yet another error-littered attempt at a `./configure, make` and `make install` routine disintegrating before those  mutilated eyeballs--fear not! We're not going down that route, because we don't actually need to. Netscape Navigator virtually installs itself. Just open a console and `cd` to the directory to where you saved it and extract it with the following command:

=CODE_START=
tar xvvzf netscape-navigator-9.0.0.5.tar.gz
=CODE_END=

(If you prefer, you can avoid the command line, initially, by opening Konqueror and clicking on the file to unpack it. A Navigator folder will be created and you can scroll up to it and view the contents.) A rapid scrolling of files will ensue and when complete you will be returned to the prompt in the current directory. (Some Ubuntu users might encounter an error message indicating the need to install `libstdc++.so.5`. Install it via Synaptic or apt-get install on the command line and try again. Note: the file you are looking for in Synaptic will be `libstdc++5`, without the `so`) Proceed now to the dreaded triptych of make... No, stop, I am only joking! You've just installed it. No, really, you have. It was that easy. Not a source install or a shell script in sight. Well, not quite that easy because you still have a little post-install work to do.

#The post-install stuff

You now need to move Navigator; so it's time for the console again. If you are not already in the directory where you extracted it to, `cd` to it and type the following command as root (su or sudo for Ubuntu users):

=CODE_START=
 mv navigator/ /usr/local/
=CODE_END=

This will move it to `/usr/local/`. Follow this up by creating a soft/symbolic link ([symlinks](http://en.wikipedia.org/wiki/Symbolic_link) for short) to that location which will link it to the binary:

=CODE_START=
ln -s /usr/local/navigator/navigator /usr/local/bin/navigator
=CODE_END=

A browser without plugins is about as useful as a chocolate teapot, so to complete the installation you need to repeat the soft/symbolic link trick for Firefox-compatible plugins (still as root):

=CODE_START=
ln -s /usr/lib/mozilla/plugins/* /usr/local/navigator/plugins/
=CODE_END=

and then type exit to leave root and return to your normal user prompt. To test that the browser has installed properly run it from a terminal with the command navigator.

Alternatively, if you want a quick, dirty install, sans plugins and symlinks just extract as above and run `./netscape/navigator` in a terminal.

Now that you have used one of these two methods to extract and install Navigator you can make life that bit easier by installing a menu item for it. In KDE (my poison of choice. Gnome users can use Alacarte) just right click on the launch icon, select Menu Editor, click on the New Item icon (second from left) and follow the prompt and complete the relevant boxes on the right.

=TEXTBOX_START=Tip =
Normally, I would type `whereis navigator` to see the file path and copy and paste it to the Command box; in this instance, because of the way in which it was set up, simply typing the executable navigator in the command box will work.
=TEXTBOX_END=

If installing Navigator does not give you a default icon option when editing the panel menu, you can browse for it. You will find it at `/usr/local/navigator/icons/mozicon50.xpm`. Optionally, once selected and installed, drag the start menu icon onto the desktop and select link here and you're done. 

#Uninstalling Navigator

If you decide that the browser can't justify it's real estate then you can always uninstall it. If there was no binary it will not be registered in the RPM or Debian database so apt-get and Synaptic are out. You didn't use the traditional source install method with Checkinstall, so no binaries there either. Nor do you need to root around the install configuration files to locate an uninstall routine. Running a terminal as root just type:

=CODE_START=
rm -rf /usr/local/navigator ; rm /usr/local/bin/navigator
=CODE_END=

Drag the desktop icon to the trash icon to delete it and remove the menu item for it by reversing the process you used to install it. Just highlight the item and click on the delete icon to remove it. Despite all of these deletions your system will still retain Navigator's bookmarks, extensions, web browsing history and extensions. These reside in the profile folder at `~/.netscape/navigator/`. Delete the contents there and there should be no traces of Navigator anywhere.

If you managed to download and install the Debian (or converted RPM) binary, removing it (including its configuration files) is simplicity itself. `Apt-get remove netscape-navigator -- purge` will do the business, or select it in Synaptic (as root) and choose `Select for Complete Removal`. 

#Some Navigator features that may make the install worth the effort

Let's be honest about it. This version of Netscape Navigator is effectively a clone of Firefox 2 (with addon compatibility and secuity patches incorporated from Firefox 2.0.0.11) but I find that it loads and runs faster (this is a browser-only versions minus the e-mail client, HTML composer and newsgroup reader). In fact I liked it so much that I decided to install it on my newly-acquired Asus Eeepc. It scales very well on the seven inch screen and looks good too. The really good news is that most extensions and themes written for Firefox 2 will work in Navigator. However, the real reason I installed it was to get my sticky fingers on two features absent from Firefox: Mini Browser and Link Pad.

If you delve into Preferences (in the Edit drop-down menu) and select the Advanced option you will see that those two features are included as additional tabs. Mini Browser gives you a split-screen facility without the clutter of installing an extension for that feature. In the resizable Mini Browser you can also drag and drop links to it from the main screen. Link Pad is like a scratchpad for links you want to go to later but don't want to bookmark, or, as Netscape describe it, a holding area for interesting links that don't merit bookmarking--which can be set to be deleted as soon as the link is clicked or set in Preferences to be retained.

Oh, and did I mention that it supports auto correction of URL typos, it supports [OPML](http://en.wikipedia.org/wiki/OPML) (an XML format for supporting lists of newsfeeds in respect of importing and exporting bookmarks), has a Restart Navigator option which is useful if you have just installed a theme/extension and wish to return to the webpage/tabs you are currently viewing when you close it and has a pause/resume feature for downloads that has only just been added to Firefox 3?


#And finally

If you like this browser, feel strongly about its future and want to see its continued existence you can always [petition AOL](http://www.petitiononline.com/saveNS/petition.html) to continue development. I wish you all luck.
