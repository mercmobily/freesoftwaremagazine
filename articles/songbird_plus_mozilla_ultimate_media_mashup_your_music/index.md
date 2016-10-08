---
nid: '3047'
title: 'Songbird plus Mozilla, the ultimate media mashup for your music'
authors: 'Gary Richmond'
published: '2008-11-10 14:27:02'
tags: 'mozilla,songbird,mashup,addons'
license: verbatim_only
section: end_users
listed: 'true'

---
GNU/Linux has come a long way since XMMS, the Winamp wannabe. The number of free media players  has bloomed: Amarok, Banshee, Rhythmbox, Kaffeine, Kplayer and JuK. They have enough features to cater for every need a dedicated music lover could wish for. So Songbird, which is not even at version 1.0, would have its work cut out to rival those media players especially the ability to play video as well as music. But Songbird has one unique feature. It has a built-in browser, Mozilla, which allows it to extract maximum mileage from your music collection. Web integration leverages your music and allows you to do some really great stuff. This article will look at the features of Songbird that make it an essential addition to any installation.

<!--break-->

First, the licence. Songbird has been released under the GPL and with a EULA. Are they mad? No! Songbird had to incorporate it because it includes the Mozilla browser; this is also why, incidentally, you will have to accept the EULA before you can actually install it. however, you won't regret it. Not for nothing has Songbird been described as the Firefox of media players. Songbird is a media player _and_ an integrated browser.

Songbird runs on Mozilla's [XULRunner](http://en.wikipedia.org/wiki/XULRunner) and is cross platform for Windows, GNU/Linux, Solaris and Macs. XULRunner is a small runtime environment which allows you to run Songbird even if you do not have Firefox installed, which might be a boon if you are running a minimal GNU/Linux distro where space and memory are critical considerations (as Songbird is not exactly abstemious when it comes to memory and processor hogging). More importantly, Songbird can work with most online music services and is not restricted like iTunes to one format or music source. Songbird will manage MP3, Ogg and Flac on a GNU/Linux platform and play nicely with eMusic, Connect, lastfm and Amazon. This is hardly surprising: being free software, Songbird is no friend of RIAA content or Apple-style DRM music either.

Despite the fact that Songbird has been out for a few years, you will search in vain for a pre-compiled binary for GNU/Linux on [their website](http://getsongbird.com/). It is a familiar case of a compressed tarball for GNU/Linuxer users. If source code is your thing, download it and see if you can install it without dependency problems and arcane error messages that even Google can't explain. I have installed software from source but as I'm not a closet masochist; I prefer to take the less fraught route to installation. If you are really lucky you might find it in the repositories of your distro; in the meantime Debian, Ubuntu and Fedora user are in luck. Debian users can find pre-compiled debs at the ever-resourceful [Getdeb](http://www.getdeb.net/app/Songbird); Ubuntu users will find 32 and 64-bit versions for Ubuntu Intrepid and Hardy. Fedora users can get their helping of binary goodness at [Digitalruin](http://www.digitalruin.net/node/42) in a variety of versions: 32 and 64 bit, ppc and ppc64 and source RPM. I had no trouble installing Songbird on Ubuntu Hardy and Fedora 9.

If all has gone, well Songbird should now be in your panel menu under the appropriate heading. When you launch it for the first time you will see is that licence agreement. Accept it and Songbird, in common with many other media players, will offer you a setup wizard to scan your hard drive for music files and to install an initial set of extensions:


=IMAGE=A_flatulent_bird_greets_you.jpg=Figure 1: A flatulent bird greets you=


=IMAGE=Use_it_or_set_it_up_later.jpg=Figure 2: Use it or set it up later=



=IMAGE=Please_help_the_developers.jpg=Figure 3: Please help the developers=

# Is it a bird or a browser? Both.

You can of course decide not to use the wizard: you can always configure it later if you wish. Songbird will then launch itself and you either free to start exploring your music or import (more) media to Songbird. If you have a iPod and elected to install the base extensions with the wizard, your iPod it will be recognised and handled. Incidentally, Songbird also supports [MTP](http://en.wikipedia.org/wiki/Media_Transfer_Protocol) (Windows only) which meant that you should be able to import music from supported devices, though not in the integrated manner of Amarok. Once you have populated Songbird with music, it's time to experiment and have some serious fun extending it to see what it can do. 

The first thing you will notice is that this is a tabbed music player--because one of the tabs will be for Songbird's homepage. As with any self-respecting browser you can go to the Preferences and customize the browser behaviour in terms of the homepage and all the other usual stuff. Doing that in what is ostensibly a music player is positively surreal. The layout is intentionally reminiscent of iTunes. The default is four panes but these can be customised too, both by using Songbird's built-in features and by adding that feature so beloved by Firefox users: addons (extensions for old timers like me). Firefox without extensions just doesn't cut it, and Songbird might just be another music player without the built-in browser and the addons that have been written specially for it. That is the real genius of this little avian beast. 

The second thing you will notice is that the current music player control window persists across all tabs; this means that it will display in the library tabs as well as in any tabs showing web pages. That is a very useful, built-in feature which allows you to control your music whilst browsing. To do that in Firefox proper would require the installation of an addon like Foxytunes with all the subsequent version compatibility issues. That panel incidentally can be set to appear at the bottom or top of Songbird, and if you install the [pane buttons addon](http://addons.songbirdnest.com/addon/1304) you can hide/unhide it to maximize browsing space, along with hiding the left and right panels.


# Addons for customising how Songbird looks

Apart from the addons for skins to change the appearance of Songbird (which calls them "feathers", of course) there is much you can do to affect the look which is not only cosmetic but functional too. There are three addons which can change the way you view you music collection in Songbird: Album Art, MediaFlow and AlbumList.

The first one will be familiar to anyone who uses Amarok. It is powered by the [Album Art Manager](http://addons.songbirdnest.com/addon/102) which will fetch album covers not already supplied from the song meta data:


=IMAGE=Album_Art_Manager.jpg=Figure 4: Album Art Manager=

The button for this was grayed out on my version of Songbird (why?) but it was possible to remedy this defect by right clicking in each individual missing cover and select an online service (Google, Amazon) to fetch the missing album art; Songbird did this faster and more accurately than the corresponding services in Amarok. This, incidentally, is a good reason for adding as many album cover art addons as possible, to maximize the chances of discovery. If Amazon fails, Lastfm may come up trumps.

If you prefer to browse and play your music on an album basis then [AlbumList](http://addons.songbirdnest.com/addon/1309) is the one for you. No words of explanation are necessary. A screenshot will suffice:

=IMAGE=Viewing_music_library_as_album_lists.jpg=Figure 5: Viewing music library as album lists=

AlbumArt is effectively the Album Art Manager in a separate, active pane and if you have fetched album covers you will have a colourful display.

For the devotees of eye candy, the [MediaFlow addon](http://addons.songbirdnest.com/addon/238) is hard to beat. It represents your music like a carousel which can be panned across the screen using the scroll wheel on your mouse. Clicking on any album will play the song. (Obviously, it works better if you have fetched any missing album covers beforehand, otherwise the placeholder is a rather unattractive disc icon):

=IMAGE=Mediaflow:_pure,_unashamed_eye_candy.jpg=Figure 6: Mediaflow: pure, unashamed eye candy=

Install these addons with a judicious smattering of feathers and Songbird will trill along very nicely indeed. Mix and match is the name of the game here. 

# Addons for productivity

Songbird has many excellent built-in features but there is always room for improvement with some addons until the developers incorporate them into the the next version(s). Here are just a few of the best to extend Songbird's power.

## Songbird Library Organizer

If you are like me and your middle name is Mr Disorganized, and you have music files scattered all over your hard drive you might just be grateful for [Library Organiser](http://addons.songbirdnest.com/addon/8). The name says it all.

## Scrubz

Songbird, in common with any music player worthy of the name, can manage the metadata of any song. This can be accessed from the Tools menu under Metadata Editor. You can amend information and fill in any missing details too. This is fine if you you have the time and the information to hand, but you can automate the whole tedious process by installing the Scrubz addon. It's a hefty size, 7.5MB, but worth it. Once installed Scrubz uses the well known [Music Brainz](http://musicbrainz.org/) as a backend to fill in the missing metadata in conjunction with [MusicDNS](http://www.musicip.com/dns/index.jsp) to "fingerprint" every song in your music library. Launching it is simply a matter of clicking on the media view button at the top right of Songbird (beside the search box):

=IMAGE=Scrubz_tries_to_fill_in_the_gaps.jpg=Figure 7: Scrubz tries to fill in the gaps=

You can filter the view to display those tracks with missing metadata or show all tracks. Scrubz identified ninety nine tracks with incomplete metadata. Selecting any track in that list will cause Scrubz to search and return results which can be accepted and added to your music library. Well, that's the theory. In reality, Scrubz did not return _any_ results at all--and others have reported this too. Not for nothing have the pioneers of the inevitable warned that this addon is experimental and "possible side effects could include loss of data, nausea, vomiting, receding hairline, eczema, excessive body odor, uneven tire wear, or immaculate conception. Use at your own risk". I'm fairly sure I tick some of those boxes anyway but that's geek humour for you.

However, I'd afraid I've been a bit of a tease. Scrubz is not only experimental. Alas, it is not available for GNU/Linux versions of Songbird. How surprising. The only reason I was able to take it out for a test drive was because the CEO of Codeweavers, Jeremy White, made an injudicious bet called [CodeWeavers Lame Duck Presidential Challenge](http://www.codeweavers.com/about/general/press/20081027/). He "lost" (gladly, I suspect. All publicity is good publicity) and paid up in the form of a free copy of Crossover Linux Pro: 

_We are giving away all of our software for free on Tuesday, October 28th, 2008. This is a fully working, fully supported copy of either CrossOver Mac Professional, or CrossOver Linux Professional. No hooks, tricks, timebombs, or gimmicks: it's the real deal._

It was. Despite the blurb that this offer was open only to US citizens I had no trouble signing up for my free copy; installed it and ran both Firefox and Songbird through it. Maybe during your Presidential campaign the United Kindom was unilaterally incorporated as the fifty second state of the Union. Free software in exchange for reverse colonisation. Seems like a fair deal to me. Your country or your software? You bet!

## Concerts

If trawling through the official websites of your favourite artists in the Songbird library to view their tour itinerary is a bit of a slog, Songbird has an addon to for that too. Once you download and install Concerts, it will appear in the side panel of the library tab. Clicking on it will bring up configuration options for country and artist:

=IMAGE=Songbird's_concerts_configuration.jpg=Figure 8: Songbird's concerts configuration=

Now, the Concerts entry in the Library sidebar will indicate how many artists' tours venues it has picked up (click on any of the links for Songbird to open a separate browser tab). At present, Concerts can only be configured for retrieval from USA, UK, Canada, Australia and New Zealand. Europe will be added later. When you play a song and unhide the mashType panel, you will not only have access to lyrics, artist biographies and YouTube videos but to concerts information too.

# Web integration

As a music player Songbird is improving all the time. However, it still has a way to go. Better device support, CD ripping and burning are slated for version 0.8; once these features have been added, it is reasonable to suggest that Songbird will stand comparison to media players like Amarok, Banshee and Rhythmbox. In the meantime the feature that elevates Songbird above the others is the tight web integration. True, in Amarok, Wikipedia can pull in the lyrics of a song or take you to the singer's webpage from within Amarok itself or offer to open the page in a separate browser; however, only Songbird will do this directly from a tab inside the music player with all the features of a proper browser too. The combination of player/browser in one application is unique as a default. However by using the built-in features and extending them with certain addons you can really put Songbird on the top branch of the tree.

## Wikipedia

[The Wikpedia addon](http://addons.songbirdnest.com/addon/10) will make Amarok users feel right at home. Once installed, you can view artist information when you play a song. The Wikipedia page will appear in a toggable panel, the position of which can be customised by the user (left, right or bottom panels). Note to the "Pioneers of the Inevitable" (as the developers of Songbird style themselves): once in the Wikipedia panel it would be good to add tabs and navigation buttons to follow links as in the main mozilla browser window. In the meantime, here is my favourite singer/songwriter, James Taylor, in all his multimedia glory courtesy of Songbird, Flickr, Wikipedia and LyricMaster:

=IMAGE=three_media_panels_maximize_artist_information.jpg=Figure 9: three media panels maximize artist information=

## YouTube and mashTape

[mashTape](http://addons.songbirdnest.com/addon/73) is surely one of the most impressive and productive partnerships for Songbird. In fact, if you have mashTape installed you could dispense with some of the other addons. Here's why.

First, to get the most out of the mashTape addon you will need to make sure you have Flash installed. Most of us do and it will work with any browser. However, the bad news is that Songbird does not seem to auto-detect flash plugins. So, when you install the Youtube addon it will not display YouTube content. To remedy this you need a little command line magic.

Fire up a console (as root, running as normal user returns an message that the file/directory does not exist) and copy the following files:

`cp libflashplayer.so /usr/lib/songbird-.0.7.0/plugins`

`cp flashplayer.xpt /usr/lib/songbird-0.7.0/components`

Obviously, substitute your own version number if different. File paths too might be different in your particular distro.

Songbird should now detect Flash. Test it by opening a tab and go to the Youtube page, select a video and see if it plays. If there is a message that Flash is not installed, either check your typing of those two commands or restart Songbird and you should be good to go. Now you are ready to install mashTape. (You can install it before using those commands but all you will get when you click on the YouTube tab of mashTape is a prompt to download missing plugin. Nothing happens.)

Now, the next time you select a song and display the mashTape panel,  you can display song lyrics and artist information _as well as_ YouTube videos in an intelligently-resizable panel (that is, reloads video in higher resolution):

=IMAGE=Selected_artist's_YouTube_videos_in_mashTape_panel.jpg=Figure 10: Selected artist's YouTube videos in mashTape panel=

It would be a nice to add the ability to open the chosen video in a new browser tab. That said, this is simply a brilliant addon and if you install no other, install mashTape with Flash enabled for Songbird. If you experience freezes or any bugginess, disabling smooth scrolling seems to help.

# Playing the web: Shoutcast

All the addons mentioned so far, especially mashTape, extend Songbird wonderfully well but it is only when you browse the web that it really demonstrates the true meaning of "playing the web".

In common with other media players Songbird can play internet radio and for that it has the well-known Shoutcast. Selecting it from the library sidebar will populate the player with the ability to filter according to choice of musical genre:

=IMAGE=Shoutcast_radio_with_filter.jpg=Figure 11: Shoutcast radio with filter=

If you follow up a particular piece of music on a separate webpage and discover any embedded music in supported formats (MP3, Ogg etc) Songbird will prompt you that it has discovered them and play the selected file(s) on the fly or download them and automatically add them to your music library:

=IMAGE=Songbird_will_automatically_detect_media.jpg=Figure 12: Songbird will automatically detect media=

By a similar token, if you discover a music file and you decide it is a keeper then just drag the file from Songbird's media discovery pane onto the library sidebar or just click on download. If these pages have an auto-discovery RSS feed, Songbird will detect them and allow you to subscribe to the podcast from the bottom page.

# FlashGot and DownloadHelper--two addons to turbo charge Songbird's web integration

As if Songbird didn't already leverage its web capabilities enough, these two addons manage to extend it that bit further. [FlashGot](http://addons.songbirdnest.com/addon/114) calls your chosen external downloader to download single/multiple files; DownloadHelper assists in web content extraction. If, for example, you visit YouTube you can download a video to your hard drive; you can also configure the extension to automatically convert the download to a number of alternative file formats. This should also work in MySpace and Google videos amongst others and like FlashGot; this addon will handle multiple downloads for images or video. Ideally, it should be possible to open the chosen YouTube video in mashTape in a separate browser tab and deploy DownloadHelper. Better still, Songbird's developers should think about enabling this feature from within the music library tab itself. At present DownloadHelper only appears in the browser tab.

[DownloadHelper](http://addons.songbirdnest.com/addon/1305) has a shedload of features and is highly customisable; even if you do not install this addon limited playing of videos is still possible with Songbird's built-in oddly named "cheesy video player". As with audio files, if Songbird detects video files on a webpage it will open a web playlist panel and list them for downloading/playing. It's pretty rudimentary but at least it is well integrated with Songbird's music library. 

# Export playlist tool

[This addon](http://addons.songbirdnest.com/addon/51) will, eventually, be superfluous once the developers add CD burning to Songbird; in the meantime, if you wish to burn a CD of a playlist from Songbird, this might work act as a bridging measure.

With this addon you can export a playlist in M3U and PLS formats and open them in media players like Amarok and Banshee to access their CD-burning facilities. Install the [Now Playing List addon](http://addons.songbirdnest.com/addon/96) as well and you will have the perfect combination to create, manage and export playlists. 

# Profiles

Profiles will be familiar to anyone using Firefox, Opera and Flock. Songbird has this feature too. With profiles you can configure it to your hearts' content: profiles bloated with addons and `about:config` tweaks and sleek, minimal interfaces for fast loading and fast working. The profile wizard can be accessed from the tools menu or launched from the command line with `songbird --profile`. Incidentally, one nice feature of running Songbird under Crossover Linux Pro from Codeweavers is that it adds three items to my KDE start menu: Safe-Mode and Profile-Manager and Uinstall Songbird. That's a really nice touch if you can't be bothered to fire up a console and work on the command line.

# And finally, Songbird as a file browser?

GNU/Linux is awash with many excellent file managers, but if you are working in Songbird and just need to do a quick check on your file system for something relevant to the browser or music downloads: 

=IMAGE=Songbird_doubles_up_as_a_file_manager_too.jpg=Figure 13: Songbird doubles up as a file manager too=

You can browse without the need for installing an addon like Firefly (which probably won't work in Songbird anyway. I tried six Firefox addons at random from the official Mozilla site and they were all incompatible. If you know how write extensions and know XUL then you may be able to amend such addons to work with Songbird). Just open a tab and type: `file:/` and navigate from there. That's it.


# Verdict

Just as the debut of Google's Chrome browser caused a serious outbreak of headlines calling it an IE killer, Songbird was greeted with cries of "iTunes killer". The former description was perhaps understandable but the latter is way off the mark. iTunes is Apple specific, embroiled in DRM and a store front for Apple's products. Its web integration is confined to downloading songs from their site in proprietary format; Songbird on the other hand is free software and enables web integration, web mashup--whatever you call it--is its very _raison d'etre_; with the right addons Songbird can do some very impressive stuff.

Songbird did throw a few tantrums (both in the native GNU/Linux and Wine-based versions), especially when the mashTape panel was open at the YouTube tab, but other than that it was mostly on its best front-parlour behaviour. The biggest improvements that can be made is to add CD ripping/burning, an equaliser, crossfading, visualization to mention just a few. The browser side of this mashup speaks for itself based as it is on the tried and trusted Mozilla. Throw in a judicious selection of addons and tight integration with Songbird's media capabilities and you have a a piece of software that should eventually find its way into the repositories of all the major GNU/Linux distros and encourage developers to roll out corresponding pre-compiled binaries to facilitate that.

Songbird may not be cock of the north just yet, but given a little more polish and stability there is no reason why Songbird should not mount a serious challenge to other free software media software and become part of everyone's comfort zone. I await version 1.0 with impatience.

