---
nid: '2472'
title: 'Managing and configuring downloads with KGet'
authors: 'Gary Richmond'
published: '2007-10-08 9:31:17'
tags: 'kde,kget,downloading,download-managers,downloads'
issue: issue_20
license: verbatim_only
section: end_users
listed: 'true'

---
Downloading—no matter what operating system you are using—is ubiquitous. If you’ve been on the internet you will have downloaded something at some point: PDFs, pictures, ISOs, movies, music files, streaming videos to name a few. This article will take a detailed look at _KGet,_ a very versatile GUI download manager for the KDE desktop which is easy to use and has plenty of easily configurable options. It isn’t perfect (but the upcoming KDE4 may rectify that) but we’ll go with what we’ve got and put it through it paces.

KGet isn’t the only option available. GNU/Linux is blessed with any number of downloading facilities, many of them on the command line: _Aria2_, _Curl_, _Wget_, _Axel_, _Axel-Kapt (GUI)_. A quick visit to their man pages (using the `man` command from your terminal) will reveal their versatility and you will use them according to your specific needs apropos a particular download. However, KGet has the advantage of being integrated with KDE and being very user-friendly.


# Getting started

I have not carried out a detailed audit of which distros have KGet as part of their default installation, but if your distro is not one of them it is usually a case of a quick visit to your package manager’s software repositories to rectify the omission. If you wish to see a useful comparison by feature and operating system of various download managers, Wikipedia has a good [tabular comparison](http://en.wikipedia.org/wiki/Comparison_of_download_managers). The first thing you will see, when you run it for the first time, is that it will offer you the option to integrate itself into Konqueror. Personally, I think that choosing to integrate is best but, if you choose not to, your decision is not set in stone. Open KGet and click on _Settings→Configure KGet_ and you will be presented with a six-tab screen. Click on the _Advanced_ tab and check the box for _Use KGet as Downloader Manager for Konqueror_ and all downloads will be intercepted (figure 1).


=IMAGE=Options_to_integrate_KGet_with_Konqueror.jpg=Figure 1: Options to integrate KGet with Konqueror=

If you prefer, you can add a KGet icon to the toolbar by selecting the _Settings_ drop-down menu and clicking on _Configure Toolbars_. From there, scroll down and choose _Disable KGet as Konqueror Download Manager_ and, by use of the arrows, move it from _Available Actions_ to _Current Actions_. The icon is, of course, in toggle mode, so repeatedly clicking on it will disable or enable integration. If you are sticking with your original configuration you can still “opt in” KGet by right-clicking a link and selecting from the actions menu to download with it. The enable/disable function is also available from the right click menu on the Kget icon in the panel.

If you have decided to integrate KGet with Konqueror, two things will happen. First, an icon will be added to the Konqueror toolbar: when you download a file, Kget will intercept the request and Kget will be added to the panel until you decide to quit the application. When it comes to actually downloading a file, that blue icon in the Konqueror toolbar will be very useful; if you click on it, you can do one of two things:


1. You can detach it as a dockable item, place it anywhere on the desktop and you can simply drag a downloadable link (including any file download links in your Bookmarks) onto it and KGet will automatically fire up and start to download
1. If you wish to confirm and monitor progress, just double-click on the big blue icon to view. It is quite a large icon though, so if you think it a bit obtrusive just right-click on it and select _Hide Drop Target_.


# Further configuration

Given the number of file types you will download over a period of time, it makes sense to want a facility which can automatically save files types to predetermined directories. KGet can do that for you too; so, before you initiate an orgy of downloading, set it up to do all the hard work for you, using Konqueror’s View Filter.


## Setting up default download folders

First of all, you need to create suitably-named download folders which will be used by KGet. If you don’t, when you try to add a file type and specify the location you will get an error message. (It would be useful to have KGet create those directories automatically.) Open _Settings→Configure KGet_ and choose the _Folder_ tab. In the _Extensions_ dialogue box key in the file type—wildcards are permitted—and then add the default folder directly or by browsing for it. Click _Add_, _Apply_ and then _OK_ your way out. Do this for all the file types and default folders you’d like to set up and you’re ready to roll. Note that when you start downloading you will see that KGet will still prompt you to save in the pre-selected folder. I would prefer that this all happened seamlessly, but at least this way gives you the option to refuse the default and save elsewhere—to another folder on the hard drive or to an external USB drive or stick. Additionally, if you wish to bypass the default folders you have set up you can also hold down the _Shift_ key and left-click on the link: downloads will proceed to your home directory instead or wherever you decide to save them. You can even set a default download folder for given file types to an external device by specifying the file path to it. Just remember to have the device plugged in! At the end of all this you should see something like that shown in figure 2.


=IMAGE=Setting_up_download_folders_by_file_ type.jpg=Figure 2: Setting up download folders by file type.jpg=


## Scheduling downloads

Whether an internet connection is dialup or broadband, KGet’s scheduling facility is well worth having as an indirect way of managing available bandwidth. In its current incarnation KGet does not have a feature for bandwidth throttling (or segmentation and multi-threading) so this feature is welcome as an indirect way to manage affairs—until KDE4 ships it with both these features (as well as bittorent support!).


<!--pagebreak-->


The reasons why a dialup user might schedule downloads with KGet are almost too obvious: unreliable connections, automatic, timed disconnect by your ISP and so on. Even broadband subscribers are not immune from flaky connections and if you are hogging bandwidth with streaming video it’s not a good time to suddenly decide to download that 3.5GB Fedora 7 ISO. So, let’s schedule it for a less bandwidth/processor hungry time and at the same time take advantage of different global time zones to squeeze the last ounce of bandwidth out of the connection we choose.

You can’t use KGet to determine the timezone from where you will download, so if it’s a big ISO file first select a download mirror in your timezone and if the download speed is slow or fluctuates wildly, look for a mirror (relative to your timezone) which gives you the advantage of a server which may be many hours in advance of you (it may be, say, the middle of the day in the UK, but 3AM in Perth, Australia.) All things being equal you should have a fast and constant download speed. A tip: if you ever want to check the speeds without KGet automatically intercepting downloads, just open KGet’s _Settings_ drop-down menu and select _Configure KGet_, open the _Advanced_ tab and uncheck the box against _Use KGet as Download Manager for Konqueror_: the standard Konqueror download progress screen will open instead when you choose do download a file. If you are satisfied with the speed you can terminate the download, re-enable that KGet checkbox and allow KGet to intercept a particular download request. This ability to switch between these download modes is useful if you think KGet is over engineered for small files like HTMLs or small picture files.

You could, of course, now just proceed to start the download with Kget as your default, then, as the file downloads, click on the pause button if the download speed is slow or fluctuates wildly and click on the resume button at a later time and see if speeds have improved and stabilized. A better way to manage things, viz other tasks and servers in advantageous timezones, (after you have paused the download in KGet) is to double-click on an entry (its inactive status will be indicated by a broken connection icon). A dialogue box will pop up. Select the _Advanced_ button and you will now be able to set a date and time when KGet commences its download (figure 3).


=IMAGE=KGet_advanced_feature_for_scheduling_downloads.jpg=Figure 3: KGet advanced feature for scheduling downloads=

To set the time just click on the hour, minute or second; then, set the time and right arrow across each field until you are satisfied, click on the timer icon above, and your done. Back in the main screen you will now see a small timer icon against the entry: that’s it! KGet can now be left unattended and be relied upon to do the business, and you can do this for as many downloads as you wish. (It would be nice, incidentally, if there were a tooltip to indicate the schedule details when the mouse is hovered over the download details.) That’s the good news. The bad news is that scheduling appears to work fine if KGet is sitting in the background counting down to zero hours but if you quit the application entirely, nothing happens; although, if you then open it the download will start again immediately. Shades of a missed `cron` job being picked up by `anacron`. One way round this problem is to add KGet to _Autostart_. You can either drag a link to the Autostart directory using the GUI (normally the Autostart directory is `~/.kde/Autostart`), or fire up a terminal `cd` to the `Autostart` directory and type the following:


=CODE_START=

ln -s /usr/bin/kget kget

=CODE_END=

This adds a soft link to KGet in Autostart. Type `ls` to confirm that it has been added. Now, if you have scheduled a download and then quit KGet, when you reboot your computer KGet will be running and the scheduled download will start at the appointed time. Alternatively, if you are chronically allergic to the command line and you have a doctors’ exemption note, type `~/.kde/Autostart` in the Konqueror location bar and drag KGet’s Desktop icon to it (if you have one). Note that dot in front of kde in the file path. That means it is a hidden file and if you’er doing all of this graphically you will need to activate _Show Hidden Files_ in the Konqueror _View_ menu in order to see it.


## Scheduling KGet the smart way

The above method is good and relatively straightforward, but you can work a little smarter by thinking ahead too. If you have a series of large files you want to download, you might want to think of assembling them liked stacked aircraft at Heathrow before handing them off the KGet’s air traffic control.

KGet is often criticised for lacking a batch facility but this is not entirely true. There _is_ a batch facility—of sorts. In respect of downloading ISOs, this will not work with HTTP connections—the KGet icon in the Konqueror toolbar will “disappear” in this mode and only “reappear” when you are in FTP mode. With that caveat in mind, navigate to the download page of choice, click the Kget icon in the Konqueror toolbar and select _List All Links_ and you should be presented with something like figure 4.


=IMAGE=KGet_batch_iso_download.jpg=Figure 4: KGet batch iso download=

Once you have selected the files you want, just click on _Download Selected Files_ and Kget will add the selected files to the status screen. At this point you might want to think about pausing them and scheduling them for downloading at optimum times best suited to your own priorities and server load. It’s not perfect by any means but it is better than nothing. To prioritise the order of download highlight a file and either right-click on it and select _Move to Beginning_ or select that option from the _Transfer_ drop-down menu.


<!--pagebreak-->


However, the best way to transfer files to KGet without having to pause at all is to set it to expert and offline mode. Click on the globe button on the toolbar and it will change to a plugin icon; click on the expert mode button and repeat the batch process at the beginning of this paragraph. Now the files will transfer to KGet’s status window but will not download—unless you toggle the plug button which will revert to the globe button. These files can be identified easily as, not only are they not downloading, the download connection is not two separated halves but one (figure 5).


=IMAGE=Expert_and_offline_mode_set_to_on for_batch_downloading.jpg=Figure 5: Expert and offline mode set to “on” for batch downloading=

None of this prevents the user from double-clicking on the desired file and setting up a scheduled download. In any of these permutations the download can be paused, resumed, deleted or the schedule details amended. What would complete KGet as a downloader would be multi-threading, segmentation and better batch handling, but it’s not half bad as it is.

There is one final feature of KGet that is useful utility. If you have emailed yourself (or been emailed) a link to a file download you can simply drag the link to the drop target and KGet will crank into action in the usual fashion—or you can save it for a scheduled download later. That’s nice.


# KGet is a foxy operator

Firefox is a great browser but it’s built-in download facility is so basic that it does not even support resuming from broken connections or across reboots. This is a glaring omission, and an inconvenient one too, but KGet can come to the rescue—with a little prior assistance from a Firefox extension which allows the user to select from a number of downloader managers, including KGet.

The extension in question is called FlashGot and you can download and install it from [the official Mozilla add on site](https://addons.mozilla.org/en-US/firefox/addon/220). If you want to find out more about it [, FlashGot’s website](http://flashgot.net/) is extensive. Once installed you will be able to add KGet (and configure other download managers to work with FlashGot too). Once added, select _Tools_ in the Firefox menu and then select _More Options_, click on _Add_, type in a name and then select _Browse_ and navigate to the executable file path of KGet (if it is not already selected for you) and _OK_ your way out.


# Conclusion

It is a truth universally acknowledged that a browser without a multi-featured download manager must be in want of improvement. Downloading files is such an integral part of the web experience these days that the absence of a good download manager would be as glaring and painful an omission as the want of a good search engine. KGet was designed for the KDE desktop (though of course it will work with GNOME too) and while its feature set is not going to win any awards from a power tweakers’ conference, it integrates well, contains sufficient features to avoid embarrassment and has at least been “ported” to Firefox via the FlashGot extension. We can only look forward to its further development in KDE4.

