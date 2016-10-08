---
nid: '3065'
title: 'YouTube and GNU/Linux: download and convert videos the easy way'
authors: 'Gary Richmond'
published: '2008-12-10 17:49:29'
tags: 'browsers,youtube,addons,elltube,pytube'
license: verbatim_only
section: end_users
listed: 'true'

---
YouTube has a rather frivolous reputation, the sort of site you might visit to see a video of snowboarding hamsters or jetpacking gerbils. It wasn't until I started re-learning the guitar, learning to play the piano too and sight reading sheet music that I began to realize that YouTube was a great source of online tutorials. The quality varies from the execrable to the sublime, but I found sufficient quality material to start wondering how I might best use YouTube to organize my digital music lessons. As a committed GNU/Linux user I wondered how to make the most of my distro's ability to manage my viewing and download experience. Unixland is a free country full of choice and here are the choicest tips, tools, tricks and applications to get the best out of YouTube.

<!--break-->

Obviously the premier requirement for _viewing_ YouTube videos is to have Flash installed. Many distros will come with it pre-installed. If not, grab it from your distro's repositories. That is the easiest route. If it is not available there, then install it from the prompt you will get when you try to view a video. This will take you to the [official Adobe site for downloading Flash](http://get.adobe.com/flashplayer/). This does not always work. If not try the manual install of the compressed tarball. `cd` to t he directory where you downloaded it and type in a console `tar -xzvf install_flash_player*linux.tar.gz` and install it with `install_flash_player*linux` and (as root) copy flash to your browser's plugin directory with `cp libflashplayer.so /usr/lib/firefox-3*/plugins/`. This should work with other browsers as well as Firefox. You may need to restart your browser to get Flash up and running and in the case of Konqueror it will be necessary to use the configuration menu to scan for new plugins.

=ZOOM=If your inner Richard Stallman hates binary blobs, try the free Gnash=

If your inner Richard Stallman hates the binary blob, try the free [Gnash.](http://www.gnu.org/software/gnash/) It may be preferable politically, but people have experienced problems with it and your mileage may vary a lot with this one. It might be necessary to remove the non-free version to get this one working properly. Later in this article I will tell you how to download and save YouTube videos even if you cannot view them in Konqueror because Flash is either not installed or is but is not working properly.

Assuming that Flash has been pre-installed (or downloaded, installed) and is working, downloading and saving Youtube videos doesn't actually require you to do anything too fancy. Any enabled browser will do. This tip exploits the fact that as you are watching a streaming YouTube video it is being "saved". Where? In your `/tmp` directory. Regardless of what browser you are using to view a video, it will be saved to that directory. Using your favourite file manager, navigate to it. It will be easily recognizable as it will have a file name like `Flash312N4Er`, to take a random example. You can right click it and play it in any flash-enabled media player (Kaffeine, Movieplayer, Kplayer etc). As you might guess, as the file is in the `/tmp` directory it will be lost once your computer reboots so if you want to save it just drag and drop it into the directory of choice and it will be there when you reboot. Renaming it might be a good idea too! Yes , it really is that simple and will work with any of the main browsers, except Dillo and its ilk. 

# The sheer audacity of it

This is the simplest method to download and save videos. Sometimes though, you may want the embedded MP3 music track in a video to save out to your removable media player. Enter [Audacity](http://audacity.sourceforge.net/), a versatile piece of software to encode and record audio. Many distros include it, but if yours isn't one of them then it's usually only an `apt-get`, `yum` or `urpmi` away. It isn't a glamour puss but it does the job, and if you want to set your parameters viz recording levels and audio codecs, [Audacity](http://www.bestfreewaredownload.com/freeware/t-free-audacity-freeware-hussbdrs.html) gives you a lot. A word of warning though. If you fire up any application which uses the sound card and then start Audacity it _will_ start but not before it spits out an error message that it cannot access your sound card and will not be able to record anything. So, start Audacity first, minimize it and _then_ open your media player and tee up the flash video. 

Once you have set Audacity to your taste and preferences, start the video and hit the record button and Audacity will strip out the music track for you. When the video has finished stop recording and export the resulting ripped file as either a `wav`, `ogg`, `mp3` or `flac` files. (If you are using the latest beta version--1.3.6--then you will also have the ability to encode in a wider range of file formats: WMA, M4A and AC3 as Audacity now supports [FFmpeg](http://en.wikipedia.org/wiki/FFmpeg). If not already installed it will need to be sourced separately in your distro repositories. FFmpeg is well worth having anyway as it is a powerful command-line tool in its own right for video/audio conversion that provides the heavy lifting for well-known media players like MPlayer, MEncoder and VLC). 

# YouTube and KDE service menus

This, as they say in my part of the world, is the long way round the houses but at least it has the virtue of easily-available software that comes as standard with most version of GNU/Linux. It doesn't give you much granularity but it works. If you are using KDE/Konqueror, things start to get interesting when service menus hove into view. [I wrote about these little gems back in the summer](http://www.freesoftwaremagazine.com/articles/konqueror_the_browser_file_manager_you_didnt_know) when considering just how much you could do from within the confines of Konqueror. Service menus really do extend Konqueror's capabilities massively and there are two particularly relevant to YouTube. They directly download videos in a variety of file formats and allows extraction to various audio codecs.

The ability to directly download a YouTube video by simply selecting this function from the right context menu (even when Flash is not working in Konqueror) is a godsend for anyone who wants life on easy street. The service menu for [Get YouTube Video](http://www.kde-apps.org/content/show.php/Get+YouTube+Video+(improved)?content=41456) can be downloaded at the KDE apps site. Copy and paste one or other of the two sets of install instructions (the second one worked for me) and the menus will be added. Now, head over to Youtube and enter a search term. Even without trying to open a full video for viewing, just right click on any video title in the resultant list and Konqueror will offer you a number of tasty options:

=IMAGE=Get_YouTube_Video_service_menu_options.jpg=Figure 1: Get YouTube Video service menu options=

Now you have a choices to download in either `.flv` or `.mp4` format and their four sub menus allowing encoding and playback in various formats. MPeg-4 is supported by all the big hitters of free software, including Amarok, Banshee, MPlayer, Rhythmbox, Songbird, VLS and Xine and renders good-quality video.

The second service menu is one which follows on from the first one. Once you have downloaded your YouTube video you may want to extract the audio stream if the video is of a musical nature. Install [Audiokonverter](http://www.kde-apps.org/content/show.php/audiokonverter?content=12608) and a simple right click will offer to extract the audio stream to Ogg, MP3, AAC, MP4 and Flac formats (providing you have the file formats installed).

In the same vein, if you just want a simple, non interactive YouTube downloader for Konqueror's context menu without options then install [Clive](http://home.gna.org/clive/) and follow it up with the [clive download Video KDE service menu](http://www.kde-apps.org/content/show.php/download+video+with+clive?content=86560). 

# YouTube and Firefox

What if you don't have or use Konqueror (or Dolphin)? Firefox, as you might expect, has an addon to fill the gap. YouPlayer. [Grab the addon at the official site](https://addons.mozilla.org/en-US/firefox/addon/5709) and it will add a a small icon at the bottom right of the browser. Clicking on it will open a sidebar. You can now drag a YouTube video onto the bottom pane and elect to play it in the embedded player in the top pane or download it. Ditto for Google Videos. You can, incidentally, use this addon as a scratch bookmark tool. Just drag a tab to the bottom pane and it's bookmarked.

The other addon you need to complete the YouTube experience in Firefox is [DownloadHelper](https://addons.mozilla.org/en-US/firefox/addon/3006). Once installed the inevitable right context menu offers the user options to download a YouTube video; The addon Preferences has seven tabs, the two most important being the YouTube and conversion tabs. The first allows you to configure how downloads are handled in terms of file names, detecting and using highest video quality and the conversion tab is the real meat here. It contains a link to an external application to convert videos. If you you have FFmpeg installed you should be good to go. The choice of codecs is substantial and you can configure thing so that you can enable automatic conversion, download in default Flash video or manually convert after download. 

DownloadHelper goes further: if you want to monitor YouTube (and other sites) for video updates on specific subjects you can downlaod the subtile extension either from the DownloadHelper menu in Tools (install) which will take you to the addon page or [go to it directly](https://addons.mozilla.org/en-US/firefox/addon/4906). Once installed all you need to do is to link to the [DownloadHelper page](http://www.downloadhelper.net/st-build.php) and follow the tutorial to set up a toolbar button which you can configure to monitor YouTube and other video sites for new video alerts according to the chosen subjects. 

For really powerful audio/video controls however the [Media Converter addon](https://addons.mozilla.org/en-US/firefox/addon/8189) is hard to beat if you want GUI click and point simplicity. Once installed this extension will add itself to the right-context menu; when you select a Youtube video you now have the option to convert and download it by way of a point and click wizard which offers a cornucopia of options to set video types, audio streams, bitrates, resolution and frames. If you prefer, you can go to the [Media Converter homepage](http://www.mediaconverter.org/) to search Youtube remotely in "portal mode". The default is to convert a video directly from various portals: 

=IMAGE=Media_Converter's_five_step_wizard.jpg=Figure 2: Media Converter's five step wizard=

Type the search term and you will be taken to another screen:

=IMAGE=Media_Converter's_five_step_wizard_screen_two.jpg=Figure 3: Media Converter's five step wizard screen two=

Youtube is the default search portal. Type in a term, hit search and you will be presented with YouTube thumbnails with a link at the bottom of each one to convert it with the same five step wizard the addon invoked when you click a convert link directly in Youtube itself:

=IMAGE=Search_results_for_Jackson_Browne.jpg=Figure 4: Search results for Jackson Browne=

This method is attractive, fast, compact and neat but it does have one major drawback. The search term returned 4,159 results but you are limited to 120; regardless of this limitation, there is a more serious restriction: you are limited to ten conversion downloads per day as the site/addon identifies your IP address. As most of us use DHCP to get a connection from our ISPs rather than static addressing it should be possible to disconnect, reconnect and get a new, different IP lease and start again rather than wait for another day. Also, if you convert to the highest bite rates for both audio and visual components of a video the file generated can be rather large. The last one I did weighted in at nearly 65Mb (and there is a 100MB limit--which I take to mean _per file_ rather than a grand total per session). That said, this is a really powerful Firefox addon to get the most out of YouTube videos. Highly recommended.

# Download in Firefox (and other browsers) _without_ addons

Provided Firefox has Flash installed and Javascript enabled the [Ckuik website](http://ckuik.com/) not only is feature packed but also allows you to download Youtube videos and save them to your hard drive (just hover your mouse over the video and all the options will pop up). There are other impressive features on this site but I won't spoil them by blabbing. See for yourself. This site is not GNU/Linux specific but so different that I thought I ought to include it. In a similar vein, _sans_ download capability, is [YouTube Fast Search](http://www.yvoschaap.com/youtube/). Well worth a visit. Both sites exploit YouTube's API. Enjoy.

# Stand alone GUIs

Using your browser is fine, but what about media players or dedicated software for Youtube? Fortunately, there is a trend towards integrating internet backends to media players and other standalone software. Here is a thumbnail overview of the pick of the bunch.

## Totem

Gnome users will be familiar with [Totem](http://projects.gnome.org/totem/) Most dependencies involve Python and gstreamer-plugins-bad 0.10.6. Better still, if you do not have Flash installed you can still find and view YouTube videos as Totem uses the Youtube API. However, you will still need to activate the plugin from Totem's Edit menu. Once done, enable the sidebar from the View menu and you are set to browse Youtube and view. The quality of Youtube videos has improved since the arrival of the H264 format. If your distro repositories lack this plugin, one is [available in a `deb.` binary for Ubuntu Hardy or a compressed tarball](http://www.soccio.it/michelinux/2008/03/29/h264-youtube-video-in-totem/en/). Using Totem instead of firing up relative memory and RAM hogs like Firefox and Opera makes sense, to say nothing of the improved security profile. When Totem can view _and_ save/convert Youtube videos it will really come into its own. For the haters of binary blobs like Flash player, the knowledge that using Totem with that plugin will bypass proprietary software and Adobe's attempt to add DRM restrictions to Flash will be deeply satisfying.


## Miro

Formerly Democracy Player, [Miro](http://www.getmiro.com/) plays a plethora of formats and even if you do not want to view and save YouTube videos [the feature set is so extensive](http://www.getmiro.com/features/) that it is worth installing in its own right and you will find a version for all the main distros. You can search, download and save from YouTube (though Miro will automatically delete after five days unless you set the options to save permanently). Miro will allow you to view the videos in full screen and in HD too--if or when YouTube ever support that format. Miro is a must for audio visual fanatics.

## Elltube

[Elltube](http://elltube.sourceforge.net/) is an elegant, simple no nonsense GUI for downloading and converting Youtube videos. Version 0.3 has just been released. The only dependencies are PyQt4 > 4.0 and Python > 2.4  and if you want conversion facilities, FFmpeg. It supports numerous codecs: AVI, MPEG, MP4, MP3, WAV. Unlike Totem, Elltube does not have a specific search facility. It requires the user to paste a YouTube URL. The good news is that to do this doesn't even require Elltube to be running at all. Just browse YouTube (even with a browser not Flash enabled), right click and select `copy link address`. You will be pleasantly surprised when you launch Elltube. That link will automatically be there and it is then just a matter of choosing a file format for download/conversion and hitting the download button. It really is that simple. As my screenshot reveals however, I didn't realize that it was that easy until I started experimenting with Elltube:

=IMAGE=Elltube_downloading_and_converting_a_YouTube_video.jpg=Figure 5: Elltube downloading and converting a YouTube video=

Adding a YouTube API to search by topic/person would make this a more versatile application--and perhaps a saved playlist too, but this one is also very much recommended. The homepage has various binaries for some distros and a Python install script which is a no brainer.

## PyTube

=ZOOM=PyTube looks like a Swiss Army knife of applications=

Of all the stand-alone frontends PyTube is the most extensive. Using it to only download and convert YouTube videos is to ignore the fact that it has a container lorry load of features. The bad news is that the homepage domain has expired. However, you can [grab a Debian binary at the venerable Getdeb]( http://www.getdeb.net/release/3057) for Ubuntu Hardy (32 or 64 bit versions) and it may also be available as a Suse one-click install too. 

Well, I tried both--and failed. Even using live CDs of both Ubuntu 8.10 and OpenSuse 11.0 failed. Ubuntu was vile beyond belief. Trying to install the Getdeb binary threw up a slew of dependency problems. I picked them off one by one having scoured the internet to fill the gap left by the Ubuntu repositories and and having satisfied them all tired installing PyTube again only to come full circle to dependency errors for packages that actually had installed. I don't give up easily. When I want to try out a piece of software I will persist for hours trying to find a way to get it working but this just beat me and left my feeling like the first time I used GNU/Linux. My language was unprintable. A note to developers and campaigners for replacing Windows with GNU/Linux: until installation is as brainless as that inferior operating system, this kind of experience will put off Unix novices. Permanently.

The cliche about something being the Swiss Army knife of applications is well justified in the case of PyTube and many of these tools may be of use in a post download scenario: video editing tools--rotation, scaling, merging, adding audio; preconfigured support for certain devices like iPods ans PSPs; file formats--OGG, MP3, MP4, AMP, WAV, FLV, AVI and 3GP; YouTube (including using your registered User Account to extend PyTube), Google Video, MySpace TV and Metacafe search and download facilities. Well, they would be if I could have got the software installed. So, in the meantime, I an reduced to titivating you with [delicious screenshots hosted on Ubuntugeek](http://www.ubuntugeek.com/pytube-best-youtubegoogle-manager-downloader-and-video-converter-for-ubuntu-linux.htm). The lucky bastards. If anyone can tell me if there is a distro (live or not)out there that can actually run PyTube _please_ let me know. I'm keen.

## QtTube

This is another frontend for Youtube-dl. Does what it says on the tin, without the frills of Elltube. It is pretty basic, but if you want it search your distro repositories or grab a Debian binary, again at [Getdeb](http://www.getdeb.net/release/2504). It is a simple GUI script for youtube-dl that utilizes kdialog. 

## And finally, good old Javascript

=ZOOM=If you can use your mouse to drag and drop you are quids in=

If you want to download YouTube videos in MP4 format then a simple bit of Javascript will do the job but it will mean that you will be restricted to your chosen browser (this works with Chrome, Firefox, Netscape Navigator, Opera and Flock). 

Just fire up your chosen browser and [go to this page](http://googlesystem.blogspot.com/2008/04/download-youtube-videos-as-mp4-files.html) and drag the link onto the toolbar. Proceed to YouTube and when you find a video you want to download just click the button labelled "Get YouTube video" and you will see that a link--Download as MP4-- is inserted into the Subscribe box to the right of the selected video. Right click and download it. Done. Basic, easy and quick, no dependencies or upgrading required. It really doesn't get any easier than that. If you can use your mouse to drag and drop you are quids in.

# Conclusion

GNU/Linux users are pretty well served by both stand alone applications, service menus, javascript and browser addons for getting the best out of Youtube. Taken together, they just about cover all the angles. For once, the GUI seems to have trumped the power of the command line. The biggest problem you are likely to encounter is not dependencies (!) so much as making sure that you have all the audio and video codecs installed. (Just don't ask me about Fedora or PyTube.) In the meantime I'm off to YouTube to see if I can lay my hands on a video of James Taylor guitar licks and some tutorials on playing two-handed scales. Ouch.