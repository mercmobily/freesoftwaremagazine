---
nid: '3129'
title: 'Shutter on Ubuntu: is this the mother of all free software Screenshot Utilities?'
authors: 'Gary Richmond'
published: '2009-04-13 16:00:28'
tags: 'ubuntu,screenshots,flickr,shutter,postr'
license: verbatim_only
section: end_users
listed: 'true'

---
Like anyone else who writes about software I subscribe to the maxim that a picture paints a thousand words. In short, I like to illustrate my text with timely and relevant screenshots; so I'm always on the lookout for good, free software to get the job done. Back in the mists of time [I looked at a command-line utility called Scrot](http://www.freesoftwaremagazine.com/columns/how_to_take_screenshots_with_scrot). It's immensely powerful and configurable but it _does_ take some setting up. Not really entirely convenient when you just want to concentrate on writing the definitive user guide for some piece of killer software. I think Shutter may well be the solution.

# What's in a name?


=ZOOM=I could never quite say it without imagining that it killed most of my ancestors in the great Scrot plague of 1392=


In the beginning was Scrot and the word was not good. Scrot was not one of those insufferably recursive acronyms beloved of GNU/Linux propeller heads. It was simply short for ScreenShot. And Scrot begot Gscrot (GtkScreenShot), a point and click GUI for that command line and still the word was not good. I could never quite say it without imagining that it killed most of my ancestors in the great Scrot plague of 1392 by attacking parts of their anatomy that cannot be mentioned in polite society. Finally, in their wisdom, Gscrot became Shutter and the developers saw that it was good. At last, a name that reflected what it might actually do _and_ you could mention it in front of your maiden Aunt too. A good start and it only gets better. Much better.

Giving your software a good name however will not guarantee that it's any damn good. A Citroen 2CV is still a minger even with a rampant Ferrari horse on the bonnet but with that rebadging the developers of Shutter do not flatter to deceive. It is the real McCoy, the goods. By the end of this article I hope you will agree that calling Shutter a mere screenshot utility is like calling the QE2 a rowing boat.


# So, exactly what and where is Shutter?

The [official website](http://shutter-project.org/) describes it as "_a feature-rich screenshot program_". That is not hyperbole. It is feature rich all right and the word "utility" is nowhere to be found. Yes, you can use it as a one shot (!) screenshot utility and e-mail the results to your friends, just as you would do with Ksnapshot in KDE or screenshot for Gnome but Shutter is a fully-fledged programme with all the bells and whistles which can do so much more. So let's see what they sound like.

Shutter is not Ubuntu-centric but the developers have made it available via a PPA in the repositories for all versions of Ubuntu from 7.10 (Gusty Gibbon) to 9.04 (Jaunty Jackalope) via [a link to Launchpad](https://launchpad.net/~shutter/+archive/ppa) and installation is simply a matter of running Synaptic as root and adding the relevant repository by copying and pasting the link for your version and updating the repositories. The main advantage of using this method is that not only is it easy but it will also ensure that you will always have the most up to date version of Shutter. Installing it is as easy as `apt-get install shutter` as root in a console. Dependencies, if any, will be taken care of automatically by the package manager.

If you prefer a stand-alone Debian binary the ever dependable [Getdeb](http://www.getdeb.net/app/Shutter) has 32 and 64-bit versions but only for Intrepid Ibex. Just click on the download link and choose to open it with Getdeb and it will do the rest, including pulling down any dependencies you might need. That's it.  Whichever route you go down Shutter will now be in your menu under Accessories. (If you want to create a Desktop shortcut just drag it onto the Desktop and create a _link_ for it there.) During the writing of this article The Shutter developers have updated quite a lot of stuff and [versions are now available for Jaunty Jackalope too](http://shutter-project.org/downloads/).


=ZOOM=Surely it's only a matter of time before Shutter will be available for all the main distros=


If you are using another distro there are packages for [Fedora](http://code.google.com/p/rpm4fc-cn/downloads/list), [Mandriva](http://fr2.rpmfind.net/linux/rpm2html/search.php?query=shutter), [Mepis](http://mepis.blue-pearls.net/testrepo/pool/test/s/shutter/) and [Archlinux](http://aur.archlinux.org/packages.php?ID=24443). That is just as well. Shutter for Fedora has got no further than the Fedora project WishList and there is no sign of them in the other repositories but I'm sure it's only a matter of time before Shutter will be available for all the main distros. (All screenshots in this article of Shutter are from Ubuntu 8.10 running Gnome.)


# Who is Shutter for?

Shutter can stand in for Ksnapshot and it's Gnome equivalent when all you want to do is take a simple screenshot with the defaults. If that is _all_ you want to do then Shutter is probably not for you. If you are a dedicated blogger or technical writer compiling a user manual for software or detailed tutorials and how-tos then Shutter may be manna from Heaven.


# Show me the screenshots!

Whoa! Before you get the happy shutter bug and run out of film Shutter will really repay staying your trigger finger until you have done a little configuration first. It will put Shutter on steroids. Preferences is where you do the business.


# Set it up like you want


=ZOOM=Shutter carves out some unique territory=


Shutter supports the usual formats including Bitmap, PNG and JPG. Any of them can be selected as the default. No self-respecting screenshot utility worthy of the name would be complete without a delay function to allow you time to set up the shot. Check. Toggling the cursor for excluding/including in screenshots and options for windows decoration. Check. Add thumbnails too. Check. Compression levels. Check. Now, here's where Shutter carves out some unique territory. You have just set it up as you want but say you need to upload screenshots in a different format, without delays to satisfy a particular website or FTP server. Rather than constantly visiting settings in Preferences everytime you need to reconfigure, do it all in pass by setting up profiles to cover all the angles:

=IMAGE=Setting_up_profiles.jpg=Figure 1:Setting up profiles=


If you use Firefox or Konqueror you will be familiar with the concept of profiles. Shutter is similar. Once you set up Shutter just the way you want it you can save the profiles and give them meaningful names, Now, in the main Shutter window clicking on View > Selection will reveal the available profiles and your choice will be reflected at the bottom right of the screen:

=IMAGE=Selection_reveals_profile_switching.jpg=Figure 2: Selection reveals profile switching=


Profiles can be added, amended or deleted at any time. As part of your profiling you can have a `save to` directory for any given profile so that screenshots in different file formats are separated out more efficiently for use later.

Before you finally start serious screenshot work with Shutter it is worth paying a visit to a console and typing `man shutter`. There is stuff here you can use. By default, Shutter will open like any other application as well as putting an applet in the system tray but if you want it to open only in the tray `shutter --min_on_startup` will do the trick. So now, when you want to take a screenshot just right click on the shutter icon in the system tray and select the type of screenshot you want from the drop-down menu (Selection, Window, Full or Section). 

To simplify matters you could create an alias for that command and write it to your `bashrc` file. Better still, just add Shutter to your startup folder in  Ubuntu Gnome by using the `Sessions Manager` (System > Preferences > Sessions). For KDE users, select Startup Programs tab, Add and enter name and command). (For a detailed howto on Alias [see my article here on FSM](http://www.freesoftwaremagazine.com/articles/the_alias_command)).

Further useful command-line options include `shutter --selection`, `shutter --section`, `shutter --full` and `shutter --window`. Try them and see what they do.


# Nothing left to do now but start snapping

Like Scrot and ImageMagick Shutter allows you to select the type of screenshot you want -entire screen, specific window or a section of a screen but you don't need a console and long commands. Just right click on the system tray icon and choose one from the drop-down list. `Selection` will invoke a lightbox overlay and display instructions (providing you are using Advanced Mode):


=IMAGE=Selection_prepares_for_a_section_shot.jpg=Figure 3: Selection prepares for a section shot=


Drag the mouse to define the area you want to screenshot and hit the `Return` key and Shutter is done:

 
=IMAGE=Section_selected._Say_cheese.jpg=Figure 4: Section selected. Say cheese=


The other options are more or less self explanatory. What they all have in common is that all types of screenshots are saved in what Shutter describes as "Sessions" which is just a tabbed interface holding details of all screenshot you took. Incidentally, when the tabs start to multiply Shutter adds a scroll facility directly under the toolbar. You can use it directly or, like Konqueror, place your cursor along the row of tabs and use the mouse wheel to scroll back and forward through the screenshots. If you close down Shutter when they are all open, it remembers them and when you restart it all sessions are restored. If you delete them they are gone but only from the Shutter interface. They are still there in the directory you chose to save them in.


Once you've taken a screenshot  you can use the Edit tool to annotate it:


=IMAGE=A_random_sample_of_editing_tools.jpg=Figure 5: A random sample of editing tools=

The numbered arrows indicating edit functions were inserted by using Shutter's own built in tools.

This is a boon for any technical writers illustrating complex how-tos. It won't have the range or power of Gimp, Photoshop or Scribus but it has enough features to get the basics done. Sometimes less is more. Shutter can do it all from taking the initial screenshot to annotation to uploading from a single interface. If the editing tools in Shutter aren't enough, the screenshots you take with it can be opened with external graphics packages like Gimp. This too can be set in the Preferences and set as part of a profile which will automatically open in the chosen application after a screenshot is taken.

=ZOOM=You can import stuff from your own hard drive. If that is not enough, Shutter comes bundled with a good batch of plugins=


If you prefer, Shutter's graphic capabilities can be extended. The Import Image facility in Edit mode has a list of built ins but if you don't find what you need to annotate a screenshot you can import stuff from your own hard drive. If that is not enough, Shutter comes bundled with a batch of plugins (accessible from the Execute context menu) to sex up screenshots with branding, raised borders, shadows, edges etc. Right click a screenshot and up comes the plugin prompt:


=IMAGE=Shutter's_plugin_reporting_for_duty.jpg=Figure 6: Shutter's plugin reporting for duty=

Click on the drop-down menu and the choice of plugins is revealed:

=IMAGE=It's_a_plugfest.jpg=Figure 7: It's a plugfest=

You can also view the available plugins in the Preferences Plugins tab too:

=IMAGE=Plugins_with_file_paths_too.jpg=Figure 8: Plugins with file paths too=


One gem in Edit mode worth mentioning is the censor button. When you have taken screenshots of e-mail clients or usernames/logons to remote servers or machines on a LAN the last thing you want is to broadcast them to the world. Just click on it and drag the mouse across the offending details and it will be blotted out:


=IMAGE=Even_free_sofware_users_need_censorship_sometimes.jpg=Figure 9: Even free sofware users need censorship sometimes=

I've been looking for that _built in_ capability for ages. At last.


# We don't need no stinking Firefox addons

People snap their desktop customisations but others like to take snaps of webpages too. Firefox has several addons for that but the problem with them is either, like Snagit and Fireshot, that they are Windows only or cross platform but feature hobbled and/or proprietary. Obviously, they work only inside a browser so they are useless for snapping anything else. Addons break too as versions and browser updates do too. Addons capture webpages and annotate them too but Shutter can do all the usual stuff screenshot utilities do and then some but it can also capture an _entire_ webpage. Selecting the Web icon on the Toolbar opens a URL dialogue box. Type in a URL and Shutter will capture it:

=IMAGE=Shutter_in_whole_webpage_capture_mode.jpg=Figure 10: Shutter in whole webpage capture mode=


As screenshots go it is very elongated looking but open it in an external image viewer and you will see that Shutter has indeed snapped the webpage in it's entirety. You can then do all the post-capture editing on it you want. And of course you still take conventional screenshots of webpages, including sections and annotations.


# Shutter has three last tricks up it's sleeve

Uploading files to websites, including graphics, is not stop-press news. What is news is that a screenshot utility can handle this feature too. At the moment Shutter is set to allow uploads to three sites (but not Picasa or Photobucket):

=IMAGE=Shutter's_built_in_upload_options.jpg=Figure 11: Shutter's built in upload options=


All is not lost though if you upload to Flickr. There is a Gnome utility called [Postr](http://www.getdeb.net/release/2663) which has this feature and it can be [installed and integrated into Shutter](http://shutter-project.org/2008/10/upload-your-screenshots-to-flickr/) making it a one-stop tool from first screenshot to Flickr upload. Well, that's the theory but the version of Postr at Getdeb is presumably based on the Ubuntu repositories for Version 8.10 and is broken as far as integration into Shutter goes. Install from there and you will certainly have Postr as a stand-alone application. However it will not be added as an "Open with" option in Shutter's Advanced Tab in Preferences.

There are two fixes for this. When I discovered the problem I contacted the developers via The Shutter website and was astounded at the customer service. They were onto the problem faster than a terrier on a rat. A flurry of e-mails ensued and before you could say software patent they had put up not one but two solutions. If you are the kind of person who derives pleasure from delving through the entrails of configuration files here is the first fix the developers gave me to make the version of Postr in the Ubuntu repositories integrate with Shutter: As root, open the `postr.desktop` file with `sudo gedit '/usr/share/applications/postr.desktop'` and add the following line `MimeType=image/bmp; image/jpeg;image/gif; image/png;image/tiff; image/x-bmp` (no spaces though!). Save your way out and then just update the database with `sudo update-desktop-database`. Now Postr will integrate with Shutter.

The easier route is, first, to uninstall that broken version of Postr with a simple `apt-get remove postr --purge` (as root of course) and [grab that fixed version from the Shutter website](http://shutter-project.org/downloads/). Scroll down to "Fixed Postr Package" for the link and Getdebi will take care of the installation for you. Both fixes work perfectly. I have each of them running on two different machines. Either way you should now be getting results like these:


=IMAGE=Flickr_uploader_via_Postr_via_Shutter.jpg=Figure 12: Flickr uploader via Postr via Shutter=

=IMAGE=Submit_to_Flickr_in_batches.jpg=Figure 13: Submit to Flickr in batches=


Make the integrated Flickr uploader with Postr another profile and that feature is only a mouse click away with the `Prt Scr` key bindings turned on. In the meantime, if you are working on a collaborative project uploading to a shared FTP server Shutter can oblige. Finally, for the _piece de resistance_, Shutter can even handle screenshots of [virtual desktops](http://en.wikipedia.org/wiki/Virtual_desktop) from the comfort of the Fullscreen icon drop-down menu. Select any of the available desktops and Shutter will automatically jump to it, take a screenshot, add it to your sessions tabs and return to the desktop whence it came.

I said that Shutter had three last tricks up its sleeve. The third one is transparent but no less effective for that. It supports watched folders. Anyone who uses audio players will be familiar with this feature. It is supported in Shutter by utilizing Gnome's [GVFS](http://en.wikipedia.org/wiki/GVFS) (Gnome Virtual File system). In practice this means that if you take a screenshot with Shutter and subsequently edit it with another graphics package all the changes you make will be picked up by Shutter. That's a useful little feature.


# Conclusion


=ZOOM= Shutter makes you proud to be called a lens louse=


There are bog-standard screenshot utilities, Firefox add-ons, Scrot and ImageMagick. The command line tools invoke the power of scripting language too which, with experience and imagination, allows you to do damn near anything with screenshots so I won't be abandoning them anytime soon. Then there is Shutter, written in Perl and GPLV3 compliant, containing nothing to offend the sensibilities of the most abstemious free software evangelist and packed with a decent slew of the features bloggers and technical writers might need. Where it's toolset falls short Shutter offers a gateway to other viewing/editing graphics applications to fill any gaps. (Detailed online PDF documentation would be very welcome.) 

As for the developers (Mario Kemper and Vadim Peretokin), their after-sales care was an object lesson in professionalism and represents everything that is right and good about free software. I have no doubt that we will see more of the same, as they tell me that version 0.90 of Shutter is slated to add in support for Skype and Gmail. A big up and respect to them. Thanks guys. Shutter makes you proud to be called a lens louse.


