---
nid: '2687'
title: 'Pimp your desktop: automate desktop wallpaper with Webilder'
authors: 'Gary Richmond'
published: '2008-02-14 20:24:53'
tags: 'webilder,wallpapers,tags,flickr,channels'
license: verbatim_only
section: end_users
listed: 'true'

---
They say that you never get a second chance to make a first impression, and if you want to make a good impression with computer lovers with artistic pretensions, a fancy wallpaper is a pretty good place to start. It can be a real ice breaker. Why stop there? Why spend fruitless hours dredging through the art galleries of cyberspace to retrieve a few hard-won digital morsels to decorate your miserable desktop? Just automate the tedious process with Webilder and free up some valuable time to hone your other more valuable Unix skills. Webilder won't make you rich, improve your productivity or make you irresistibly attractive to the opposite sex (much) but it's clever, fun and cool. What more reason do you need to use it? Enough already with the slick sales talk. Let's pimp that desktop!

<!--break-->

# Webilder. Get it, install it and configure it

So, what exactly is Webilder? It is an application designed to deliver wallpaper to your desktop from Flickr and Webshots in an automated fashion, but a highly customizable fashion. It downloads, displays and rotates wallpapers on the desktop, based on the creation of tags you choose yourself or on what Webilder calls "channels"--pre-selected tags you can add if making your own is too much for you.

Webilder is a relatively small program.The only dependencies you are likely to encounter when installing are Python ones and your package manager should take care of those for you. There are three ways to install: source (if you are a closet masochist, so I'll pass over that one), adding repositories (easier) or binaries (easiest). The second one is not only easy but ensures a smooth upgrade path (although I note that Webilder has not be updated since March 2007 with version 0.6.2).

## Installing from the repositories

#The text way

First, as root, open the `/etc/apt/sources.list` file (by running `sudo vi /etc/apt/sources.list`) and copy and paste one of the repositories for your distro (there are ones for Debian (Sid and Etch), Ubuntu (Dapper,Edgy and Fiesty) from the [Webilder hompage](http://www.webilder.org/download.html) The usual rule applies here: back up system-critical files before amending them (`sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak`). Reload your sources list with `apt-get update` and you are at the final step: `apt-get install webilder`. If you want to install either Gnome or KDE support, run `apt-get install webilder webilder-gnome webilder-kde`. That's it.

#The GUI way

If directly editing those text files is not to your liking, the GUI Synaptic package manager is the other option. Open it (as root, `su`, or `sudo` for Ubuntu-based distros) and select the Settings drop-down menu and from there choose Repositories.  Now, click on _New_ and the three greyed-out fields (_URI_, _Distribution_ and _Section_) will now become active. Copy and paste the appropriate repositories from the Webilder Homepage and Ok your way out. 

Synaptic should now prompt you to the effect that, having amended your repositories, you now need to reload the database. So, just click on the _Reload_ button at the top left-hand corner of Synaptic and the repositories will be added to your system. Finally, scroll down to the available software list (or open a Search box), locate Webilder, right click, select _Mark for Installation_ and click on the _Apply_ button. Synaptic will install it. You're done.

##(2) Binaries

If your not too worried about being fashionably up to date, then go down the pre-compiled binary route. There are versions for Fedora Core 6, Arch Linux, Gentoo and Ubuntu. The latter can be found at [Getdeb](http://www.getdeb.net/app/Webilder) with 32 and 64-bit versions for Gusty and Fiesty. 

# Post-install configuration

Once installed on a Gnome desktop you need to create a system tray applet for Webilder. Right click on the panel and  select `Add to Panel`:

=IMAGE=Adding_Webilder_to _Panel.jpg=Figure 1: Adding Webilder to Panel=

In the menu that opens, scroll down to Utilities and drag the camera icon onto the panel. Right click the icon and choose `Preferences`:

=IMAGE=Webilder_General_tab_in_Preferences.jpg=Figure 2: Webilder General tab in Preferences=

Here you can set the period of wallpaper rotation and the frequency of downloading backgrounds. Choose your settings and proceed to the second tab to configure tags for downloading from Flickr:

=IMAGE=Webilder's_Flickr_Preference_tab.jpg=Figure 3: Webilder's Flickr Preference tab=

The two tick boxes are self-explanatory. The main thing to do is to configure tags for Flickr. Leaving the default entry will cause Webilder to automatically download wallpapers based on "interestingness". You can leave it as is or delete it (by highlighting the entry and clicking on `Remove`) and then proceed to create your own customized tag(s). Just click the `Add` button and edit the blank entry to set up your tags and OK you way out.

# Webilder tags: the short and easy way

If setting up your own tags in Preferences looks too much like hard work, you can always let the Webilder website do it for you. It has tags along the lines of "here's one we made earlier". Webilder calls them "Channels". You just need to navigate to [channels](http://www.webilder.org/channels/popular/), click on a tag's camera icon and drag it onto Webilder's Flickr Tab in Preferences screen and Webilder will do the rest: 

=IMAGE=Resize_browser_and_Webilder_Preferences_windows.jpg=Figure 4: Resize browser and Webilder Preferences windows=



=IMAGE=Result_of_dragging_Webilder_tag_camera_icon_onto_Preferences_Flickr_tab.jpg=Figure 5: Result of dragging Webilder tag camera icon onto Preferences Flickr tab=

# Downloading pictures

Panel Applet and tags should now be set up; the last thing to do is to actually start downloading the pictures. Right click the camera icon again and select `Download pictures`: Webilder will add desktop backgrounds to its collection. If you now click on the camera icon a picture browser will open and you will see that Webilder has now added the tag to the Albums Column down the left side with all the other tag(s) you manually created earlier. Selecting any of the tags will bring up the wallpapers dowloaded. (Incidentally, you can access Preferences from within this picture browser as well as downloading pictures once you have set up your tags.) 

Although the primary purpose of Webilder is to automate downloading wallpapers to your desktop, this does not mean that you have been disenfranchised. You have rights, digital rights. You don't have to accept everything Webilder does. Your tag(s) selection may throw up pictures you don't like or want, cluttering up your hard drive; Webilder's basic picture browser allows to you delete wallpapers from any tag collection or to delete them from your hard drive permanently. Just right click on them and choose an option. If you want more options than the limited ones available, then Webilder itself holds the solution.

# Webilder's advanced tab

It is here that you will discover where Webilder stores all those desktop wallpapers. Open up Preferences, select Tab and you will see the file path. There is a period in that file path so you will need to enable viewing hidden files by checking Show Hidden Files in the Nautilus or Konqueror browsers. Mine looks like this `/home/ubuntu/.webilder/Collection/Nature/.thumbs`:

=IMAGE=Where_Webilder_stores_wallpapers.jpg=Figure 6: Where Webilder stores wallpapers=

If you navigate to this path without `./thumbs` you will also see the meta information for each picture if you want it. (You can also retrieve this information in Webilder's main picture browser window by the simple expedient of clicking on any image and it will appear in the box below.) Whichever view you choose you will now be able to open, and manipulate, pictures in your graphics package of choice (Gimp, Picasa, GQview, F-spot etc).

# Conclusion

Webilder doesn't do anything spectacular, but what it does it does well, looks good and it is released under the GPL (the source code is free and available to anyone with the time, inclination and expertise to improve the already decent feature set). Webilder does exactly what it says on the tin. No more, no less. You can't ask for more than that. 