---
nid: '2471'
title: 'Konqueror: doing it all from one interface '
authors: 'Gary Richmond'
published: '2007-11-28 9:28:43'
tags: 'browser,kde,konqueror,kioslaves,filemanager'
issue: issue_20
license: verbatim_only
section: end_users
listed: 'true'

---
When Julius Casear said, as reported by Seutonius and Plutarch, _Veni, Vidi, Vici,_ (I came, I saw, I conquered) he was, depending on your historical interpretation, either referring to the Roman victory at the Battle of Zela or giving a two-fingered salute to the Patrician Senate of Rome. Every schoolboy and girl who has had to endure the exquisite tortures of Latin will know that famous phrase.

Press the fast-forward button to the present and those words might not be out of place on the lips of the good people who developed Konqueror, the all-in-one browser and file manager, best described as a universal document viewer.


<!--break-->


Depending only on `kdebase` it comes as a standard part of the KDE desktop and most GNU/Linux users have browsed or managed files with it at some point. Precisely because it comes pre-installed we tend to take it for granted; besides, in the intervening period since it was launched in 2000, many additions and alternatives have become available—notably the immensely popular Firefox.

Before I start a flame war between KDE and GNOME users and supporters of various file managers and browsers, just let me say that this is not a comparative exercise on their competing features. The purpose of this article is to acquaint the reader with features of Konqueror, of which, they may not be aware and to demonstrate that, with a few exceptions, it is possible to utilize and configure it in such a way that you can spend an entire session without leaving its confines. Of course, this can tend to make it look like a jack-of-all-trades and master of none, so if you need a particular tool GNU/Linux has an embarrassment of riches for the power user too. If many of these features are already known to you, hopefully the remainder will not be and you can use them to enhance your browsing experience. What follows is just my own personal selection of tips, tricks and features which I find most useful. Inevitably, you will have your own favourites (web search shortcuts, mouse gestures, remote files) and wonder why I left them out—so, sorry in advance.


# Go smarter, go faster

Buried treasure is the most fun, so let’s get that spade out and start digging for a few Konqueror gems. One of the first, best and simplest things you can do is to get an easy speed boost. You can get Konqueror to load faster by tweaking the settings: click on _Settings_, then _Configure Konqueror_ and scroll down to the last option, _Performance_. You can minimize memory usage and “preload” a specified number of instances of the browser. Experiment with these setting until you get a combination that best suits your needs and machine specifications in terms of memory and processor capacity. If you would rather not tinker with those settings and you are using Konqueror from within the GNOME desktop, a quick and dirty alternative is to fire up a small KDE application and minimize it. That way, launching Konqueror will require a little less heavy lifting.

You could also start Konqueror with a blank page by typing `about:blank` in an `Alt + F2` KDE dialogue box or with `about:konqueror`—a default page which will allow you to choose where you go from there. (Later you will see how to incorporate these views into your Konqueror profiles.) If you want these start-up options on the Desktop, right click on an empty space there and select _Create New_ and then _Link to Location (URL)_ and in the prompt type a suitable name for the “profile” and, in the box directly below, type one of those commands.

A final way to open Konqueror quickly and just where you want it is to exploit the fact that the location label is actually draggable. Navigate to the web page you want and drag the favicon (to the left of the address) to the Desktop and select _Link Here_and a Desktop shortcut will be created. Better still, if you wish to create a series of desktop web page shortcuts, select _Bookmarks_ and then choose _Edit Bookmarks_ and drag the links you want onto the Desktops for as many bookmark icons you desire. Additionally, this method will not prompt you to copy or link to the desktop. It will install a Desktop icon automatically. The same applies to dragging to the panel.


# Browse it, file it

One feature that makes Konqueror unique—and I do mean unique—is that while others web browsers have many excellent, and indeed unique features, especially Flock, Firefox and Opera, Konqueror stands alone by virtue of its ability to surf the web and navigate your computer file system from the same interface. Yes, I know, Firefox has an extension which allows you to split the screen and view two separate websites—but that is “websites” and not “a website _and_ a personal file” as in figure 1.


=IMAGE=Konqueror_in_browser_and_filemode.jpg=Figure 1: Konqueror in browser and filemode=

In this example, you effectively have a two-pane FTP client: just drag the FTP link in the right-hand browser screen to the file browser screen and Konqueror will prompt you to move/copy the ISO (figure 2).


=IMAGE=Konqueror_in_ftp_mode.jpg=Figure 2: Konqueror in “FTP mode”=

If you have not set up a specific folder for such downloads you don’t need to spend time searching for it. (If you have KGet set up to intercept all download requests to bespoke folders this will override that setting.) If you prefer you can open a terminal within Konqueror and drag, drop and download a file there (see more of this below.)

To get this result, select _Settings_ from the drop-down menu and choose _Split Screen Vertically_. However, for faster action with the keyboard simply do any of the following to open and close split screen configurations:


* `Ctrl + Shift + L`—splits the screen vertically
* `Ctrl + Shift + T`—splits the screen horizontally
* `Ctrl + Shift + R`—closes the active split screen(s)

Copying and or transferring files is made much easier by the use of split screens as it makes drag and drop even simpler. This includes external media too: CDs, DVDs, USB drives and USB sticks. You cannot make a catapult out of Konqueror—but you can utilize its “rubber band” method to select contiguous files and select from the right click menu for options. Just use your mouse to draw an area around the files you want (figure 3).


=IMAGE=selecting_contiguous_files_with_the_rubberband_method.jpg=Figure 3: Selecting contiguous files with the “rubber band” method=

If you need to to do some command-line work, Konqueror can save you the bother of opening up a separate console. If you select the _Settings_ drop-down menu you will see an entry to “show terminal emulator” (or add the icon for it via the _Settings_ drop-down menu, under _Configure Toolbars_ and drag it onto the toolbar): this will open an instance of a terminal inside Konqueror. For a GNU/Linux newbie, this is a useful way to follow the system file structure—because clicking on a folder will not only take you to that item in graphical mode but it will be followed on the command line too. Once you have taken the shortcut to the desired directory you can execute commands on a particular file in the built-in terminal (figure 4).


=IMAGE=Konqueror_in_file_and_terminal_mode.jpg=Figure 4: Konqueror in file and terminal mode=


# Bespoke file management and browsing

Another great feature of Konqueror will save time and ease navigation: the _View Filter_.


<!--pagebreak-->


You can access it from the Tools drop-down menu and also add the icon to the toolbar by selecting and adding it from _Settings_ and then _Configure Toolbars_. If you select the file type you downloaded, then all files of that type will appear. Like all good menus, View Filter is contextual. You will not see it when Konqueror is in web browser mode. A boon for the terminally disorganised! View Filter also works incrementally; that is, if after your first filtering exercise you then select another file type, it is _added_ to the selection. You need to select _Reset_ to restore the file manager default.

If you are browsing a web page, _View Filter_ is denied to you for obvious reasons; however, the view filter on offer in browser mode can offer the user a useful learning tool. For example, when writing articles for Free Software Magazine I frequently forget some of the allowed XML tags (or don’t actually know one at all)—just ask the editor! Split screen to the rescue. Open the web article of your choice, split the screen (thus replicating the page), click on the new screen to make it active (a green “LED” will highlight at the bottom of the browser) and select the _View_ menu and change the _View Mode_ to _Embedded Advanced Text Editor_. The XML tagging of the article will now appear and you can make a line by line comparison to see and understand how the article has been constructed tag wise (figure 5).


=IMAGE=split_ screen_ showing_ html_ page_ and_ as_ embedded_ text _editor.jpg=Figure 5: Split screen showing HTML page and as embedded text editor=

This is a very useful _aide-memoire_ and learning tool. Yes, _View→Page Source_ in Firefox will do the same, but in two separate windows, and while Opera will open another tab (`Ctrl + UM`) in 9.5 alpha version). However, these do not facilitate easy line-by-line comparison. Incidentally, if you want the duplicate split screen to follow the navigation of the original, just click on the small, empty square at the bottom of the browser. A small chain-link symbol will appear. I must admit, I can’t think of a use for this feature though. Can you?

If you want mouse-free browser navigation on hypertext links, hit `Ctrl` and the links will be tagged with a small beige square with letters. Select a corresponding letter on the keyboard to follow that link. Your proverbial mileage may vary with this one: if you go to the Distrowatch site, a site thick with closely-spaced links, navigation by keyboard letters tagged to those links may be problematic.

Like any self-respecting browser, you can of course set your homepage in the configuration files of Konqueror but unlike Firefox you cannot set multiple homepages to open up in separate tabs. Typing the following in Firefox does the trick: `http://www.google.com/linux | http://www.distrowatch.com | http://www.bbc.co.uk.` This will not work in Konqueror, but it is nothing if not versatile. It supports loading profiles (as do Firefox and Opera) to get round that problem—amongst others.

Incidentally, I have noted that Konqueror can vary in the profiles menu from distro to distro. If you are using Ubuntu you will find some of the features missing. You can restore them—just point your browser [here](http://awebfactory.com.ar/node/91).

Open Konqueror. Depending on how many homepages you want as your default, split the screen and resize as desired and in turn, make each one active, browse to a web page and repeat this for all screens until you have set them all up. Then click on _Settings_ and select _Save View Profile “Web Browsing”_, choose a relevant and suitable name for the profile and check the box _save urls in profile_. That’s it. Depending on the size of your screen you might want to increase your real estate by hitting the F11 key. If you have a really big screen or are viewing on a large, high resolution TV screen a combination of these settings will give you plenty of viewing space which you might need if you want to display a screen as shown in figure 6.


=IMAGE=Konqueror_on_steroids:_every_view_you_could_want.jpg=Figure 6: Konqueror on steroids: every view you could want=

If space is at a premium you can set up a profile with tabs instead and call the profile, say, “tabbed homepages” as opposed to “splitscreen homepages”. The same can be done for Konqueror profiles in file mode too. An added bonus in file view mode is that you can set the background colour to distinguish different multiple split screens—figure 7 illustrates the possibilities.


=IMAGE=konqueror_split_screen_with_bespoke_colours.jpg=Figure 7: Konqueror split screen with bespoke colours=


# Put it on the tab(s)

In the dark, prehistoric days of Internet Explorer the concept of tabbed browsing was as exotic as the concept of secure computing at Microsoft, but Konqueror, like Firefox, Opera, Galeon, Epiphany and others have been offering users the indispensable advantages of tabbed browsing for years. Konqueror’s tabbed browsing integrates well with profiles, but it can do even more than that, with a little effort.

The long way ’round the houses is to click on the drop-down file menu and select _New Tab_ and right click on it to select _Close Tab_. There are other ways: middle click on a link in browser mode to open a new tab, or middle click on a directory or specific file in file mode for the same effect. If you prefer you can drag and drop a web link to a blank space to the right of the last tab.

Frustratingly, Konqueror has no close button on its tabs by default, but you can add this very useful feature. Konqueror’s configuration files are all in plain text, easy to read and edit (as root). Open your favourite text editor as root and navigate here: `/home/yourusername/.kde/share/config/konquerorrc` scroll down to the section titled _FMSettings_ and change the line `MouseMiddleClickClosesTab` to `true` as per figure 8.


=IMAGE=Konqueror_config_files.jpg=Figure 8: Konqueror config files=

A close button is a useful feature in tabbed browsing. Opera, Firefox and Flock have it. Konqueror can have it too. Just head over to the [KDE wiki](http://wiki.kde.org/tiki-index.php?page=Hidden%20configuration) and get a useful little GUI for tweaking the hidden configuration settings or grab it [here](http://www.kde-apps.org/content/show.php/Tweaking+Konqueror+tabs?content=44376). To run it type `tweak` into an `Alt + F2` run command box, or type the following kioslave into the Konqueror location bar: `settings:/Components/` and the Tweak icon applet will be there for you (figures 9 and 10).


=IMAGE=Konqueror_with_close_button_on_tabs.jpg=Figure 9: Konqueror with close button on tabs=


=IMAGE=Tweak_gui_with_tabs.jpg=Figure 10: Tweak gui with tabs=

If you want to make working with tabs easier, hover your mouse over any tab and scroll the middle button back and forward to switch between tabs; if you want to re-arrange the order of the tabs too, drag and drop it elsewhere along the line of the tabs.


<!--pagebreak-->


Konqueror has another neat trick up its sleeve. There may be times when you would like it to open up a file view in a particular mode every time and not just on a per session basis—be it icon view, file view, detailed file view, etc. Again, open up `/home/yourusername/.kde/share/config/konquerorrc` and edit (as root) the line highlighted in the figure 11, then set the value to true in the `MainViewSettings` section.


=IMAGE=Konqueror_setting_for_per_folder_view.jpg=Figure 11: Konqueror setting for per folder view=

Once you make this change and then select the file view you want from the _View_ drop-down menu (select _View Mode_) for a particular directory, close Konqueror and reopen it: that will be the default directory view until you change it. The gimlet-eyed amongst you will have spotted that this change can be “merged” with profile configurations to make your ideal file browser settings.

A final tip on tabs. If you prefer your Konqueror tabs at the bottom, just edit (as root) `home/yourusername/.kde/share/config/konquerorrc` again and change in _FMSettings_ section `TabPosition=Top` to Bottom.


# Freedom through slavery

Although that sounds like a cross between a piece of Orwellian Newspeak and some Gnomic Blakean wisdom it brings us to one of the most useful and powerful features of Konqueror: kioslaves. Kio is short for KDE input/output, which gives it seamless network transparency. They take the format, to cite just a few of the many instances, of `help:/` `man:/` and `info:/`.

You can find a list of the supported kioslaves under the _Protocols_ section of _KInfoCenter_ and it’s pretty large. If you dislike the command line and the manpage display in a terminal, fire up Konqueror and type `man:/` in the location bar followed by the manpage you want and you will get a nice clean, HTML page. Writing an article about _Amarok_ and don’t want to open that application just to confirm some small detail? Well, just type `help:/amarok` instead and Konqueror will launch the application handbook. This is neat and handy but kioslaves can do much more powerful things.


## Slave to the rhythm and something on the side(bar)

Everyone will have their own favourites and my selection is a purely personal one based on my preferences and usage—you will surely have your own. Here is a brief selection of mine that I think demonstrate the great power and utility of their transparency. GNU/Linux has many fine ripping and encoding utilities for music files (including the latest K3B release which now includes a ripping facility) and I use them. However, `audiocd:/` is a kioslave that can do much from a single Konqueror interface when you want it quick and dirty.

If you insert a music CD, open Konqueror and type `audiocd:/` in the location bar you will be presented with figure 12.


=IMAGE=audiocd_ kioslave_in_action.jpg=Figure 12: Audio kioslave in action=

What you have is the original WAV files on the CD listed (and if you are connected to the internet when you do this the song titles will be displayed courtesy of [CDDB](http://en.wikipedia.org/wiki/CDDB), otherwise they will simply be listed as track 1, track 2, etc.). Konqueror also creates virtual files in all the music file codecs you distro supports natively, including any proprietary ones you have downloaded and installed. Ripping and encoding all of the selected tracks is simply a matter of copying/dragging and dropping the selected codec to a directory on your hard drive. Konqueror will do the rest. What it can’t do, without your direct and prior intervention, is to configure the parameters. So, in the spirit of this article, open another tab and type `settings:/Sound/` in the location bar and select _Audio CDs_ and you can tweak settings (bitrates, ID3tags) for MP3 and Ogg Vorbis.

For command-line devotees with lots of hard disk space to spare you can drag the WAV file on to a terminal in Konqueror and the `kfmclient` (a Konqueror script) will offer you several options. `cp` is the one you want. This will copy the file to the default directory. If you want to copy it elsewhere you will have to `cd` to it first, then copy. Konqueror is not finished with your music files just yet. If you are not storing the files on your hard drive or on an external USB drive you might want to burn the track(s) to a CD. Well, if you have `Konqburn` (formerly Kio-burn) installed you can burn with Konqueror too. Just drag the selected track(s) to the CD icon in the sidebar and proceed. Unfortunately, I can’t give you a screenshot for this one on my system (dependency problems)—if you want it, you can see and get it [here](http://konqburn.sourceforge.net/) and follow the links.

If you want to sample the music you just ripped and encoded with Konqueror, no need to fire up a heavy-duty media player (unless you need or want advanced features). Just click on the media player button in the Konqueror sidebar. (If it’s not there, add it by right-clicking in a blank space in the sidebar, select _Add New_ and, er, add it. Incidentally, you can run more than one sidebar feature. just right click on a blank space of the sidebar and check _Multiple Views_.) Click on the Media Player icon button in the sidebar, drag the track onto it and you’re grooving (figure 13). (For something more substantial try the Amarok button in the sidebar.)


=IMAGE=mp3_dragged_onto_konqueror_sidebar.jpg=Figure 13: An MP3 dragged onto the Konqueror sidebar=

Another kioslave which allows you to do stuff without leaving the confines of Konqueror is _Kio-sysinfo_. You will need `apt slave` installed for this to work but you can see the results are pretty impressive (figure 14)


=IMAGE=sysinfo_ kioslave_gives_ you _lots_ of_ actionable_ info.jpg=Figure 14: The sysinfo kioslave gives you lots of actionable info=

If you are running an apt-based distro there is an actionable button for apt linked to the repository which allows you to do a local and online search and download; all the buttons under _Common Folders_ and _Disk Information_ are also actionable. You can download [pre-compiled binaries of Kio-sysinfo](http://jerrad.tuxfamily.org/kiosysinfo_eng.html) for the most popular distros.

If you don’t like the relatively high search overheads of Beagle and its ilk and/or you machine is low spec, the `locate:/` slave could be a useful alternative. It presents the results in files and folders, the latter in non-default colours—and it’s very fast.

There are many more kioslaves you can run. I have doubtlessly left out your favourite—especially the remote protocols like `fish`, `ssh`, `webdav`, `smb`, `vnc`, etc. I stopped counting the number of IO slaves listed in Kinfocenter at seventy; however many or few you use, especially in combination with the sidebar, you can get a lot of serious mileage out of a well-configured Konqueror interface.


# Glad to be of service!

The prescient, smug, existentially-stressed lifts designed by the Sirius Cybernetics Corporation which so annoyed Marvin the Paranoid Android might have been impressed by the designers of Konqueror and its tight integration with KDE. Both are anxious to please and give good service. The happy vertical people carriers did it one way (bar the occasional sulking in basements as a protest) and Konqueror does it with _Service Menus_. These are very similar in many respects to Firefox extensions; installing your own personal selection will round off the features which make it possible to spend an entire session in Konqueror without straying from its interface.

Of course, all file browsers and web browsers have their right-click context menus, but additional service menus will turbo-charge Konqueror. The best place to cruise for them is at [the KDE Apps website](http://www.kde-apps.org). Select “service menus” and you presently have access to two hundred and fifty one of them. Again, my selection reflects my preferences and requirements.


## KIM

As I like to add screenshots to my articles and sometimes need to do some editing on them without invoking a major graphics package, I find the KIM service menu (KDE Image Menu) very useful. Amongst the things contained in the Action Menu are the following: resize, convert, rotate, compress, add text, add borders. Undo functions would be nice, but nevertheless this adds some very quick and useful functions to Konqueror when you just need some “post production” editing on those screenshots you took from the command line (figure 15)


=IMAGE=Kim_menu_options.jpg=Figure 15: Kim menu options=


## Audiokonvert

This service menu supplements Konqueror’s ability to rip and encode a music CD. For those times when you have downloaded a music file and it is not in a format you can play, or that you want it, Konqueror will allow you to convert audio files to and from five different formats (figure 16)


=IMAGE=audiokonvert.jpg=Figure 16: Audiokonvert options=

Once you have selected your conversion option a progress window will open as shown in figure 17.


=IMAGE=Audiokonvert-output.jpg=Figure 17: Audiokonvert output=

Despite the error message, the file converted without problems. If you are converting to the format for your iPod (M4A) then you can transfer it to the player via the iPod kioslave from the Konqueror location bar.


## One for Debian users

Usually, you open you package manager (Synaptic, Kynaptic, Adept, etc.) to install a binary or use `apt-get` on the command line. If you are doing rudimentary stuff with the package you can do it in Konqueror with the Debian Menu, a service menu that allows you to install, uninstall and query package information (figure 18).


=IMAGE=Debian_service_menu.jpg=Figure 18: Debian service menu=

These are just a few of _my_ favourites. You will have yours. You have two hundred and fifty from which to choose. Go get ’em! and if you can’t find what you’re looking for then take a quick [tutorial](http://techbase.kde.org/Development/Tutorials/Creating_Konqueror_Service_Menus) to learn how to make your own.


## PDF toolkit

This last one is a gem. It is a service menu with a great and powerful range of options, and you get it at the [Kde-look site](http://www.kde-look.org/content/show.php/konq-pdf+(new+PDF-smp)?content=37321). As you can see from figure 19, it offers many options for manipulating PDF files.


=IMAGE=Pdf_options.jpg=Figure 19: PDF options=


# Conclusion

Konqueror as a universal document viewer has proved worthy of the name; with the addition of service menus and kioslaves and a little inbuilt configuration, Konqueror can sustain you for a whole session, as long as your needs are not those of a power user. Yes, it passes the Acid2 test for web compliance but it does not work well with every website (which browser does?); it _does_ work with GMail but only in the poor man’s HTML version (and you can always try _Change Browser Identification_ in the _Tools_ menu and set it to Firefox), and it does not have Firefox-style extensions. Nevertheless, I hope this article has proved both Konqueror’s power and versatility to do so much more than the others from within its own interface.

