---
nid: '2835'
title: 'Amarok, the music player that does it all'
authors: 'Andrew Min'
published: '2008-08-26 8:17:00'
tags: 'amarok,music,media'
license: verbatim_only
listed: 'true'
book: ubuntu_applications
book_weight: '0'
layout: book.html

---
For a time, GNU/Linux music library tools seemed to be, well, non-existent. Sure, XMMS was an awesome media player. But if you wanted to catalog your music, you were out of luck. Apple users had iTunes and were always rubbing it into the free software world's face. Even Microsoft, the sleeping Redmond giant, had upgraded Windows Media Player to include a library feature. Then, a giant wolf named Amarok charged to the rescue.

<!--break-->

# "What" and "Who" is Amarok for?

=IMAGE=amarok_figure_1.jpg=Figure 1: Amarok=

According to the home page:

>Amarok is the music player for Linux and Unix with an intuitive interface. Amarok makes playing the music you love easier than ever before - and looks good doing it.

Back in 2003, a developer named Mark Kretschmann (also known as _markey_) began growing dissatisfied with the XMMS media player. Apparently:

>it annoyed me that you had to press so many little buttons to do the most basic tasks. Like, loading a few files into the playlist required clicking 5 buttons.

He started thinking about how cool it would be if someone merged the Midnight Commander interface with an XMMS backend. Since no one else seemed to be doing it, Kretschmann threw his own app together and called it amaroK, after the album by Mike Oldfield. Today, it's been renamed to Amarok and is run by (as developer Max Howell put it) "whoever commits the most code". Amarok has tons of backends, supports portable media players like iPods, supports plugins, and is currently included in the KDE project, a real mark of honor.

If you are a basic user who just wants to listen to music, Amarok probably isn't for you. Products like JuK are much easier to use. But if you aren't afraid of learning new things or are a power music listener, Amarok is definitely for you.

# Installation

Amarok is pre-installed for Kubuntu users, under the Multimedia application menu. If you prefer Ubuntu or Xubuntu, you can install Amarok using the command `sudo apt-get install amarok`.

# First launch

When you first open Amarok on Kubuntu, you'll be presented with a window containing your playlist (the list of songs that will be played) and the _Context_ tab. Since you don't have a collection yet, just click the _Build Collection_ button to figure out where your music is stored (mine is in `~/Music/`). After doing this, you'll be able to find your collection under the _Collection_ tab (on the left), as well as your playlists, a file browser, the _Magnatune_ music store, and removable devices like iPods.

# Common tasks

## Managing and playing music (duh)

Since Amarok _is_ a music library program, you would expect it to play and manage your music. It does this very well. Any music put in your collection folder is automatically added to your library, a nice feature sorely lacking in other similar programs (_cough_ iTunes _cough_). To play music, just drag the music from your collection into the playlist window and double click on an item.

=IMAGE=amarok_figure_2.jpg=Figure 2: Amarok playing one of my favorite bands=

## Ratings, scores, and statistics

One thing that I really liked about iTunes was the ability to rate my songs on a scale of 1 to 5 (5 being the highest). Amarok has both this and a very powerful Score tool. To activate them, configure Amarok (_Settings → Configure Amarok_) and check _Use ratings_ and _Use scores_ under the _Components_ section. Then, in the main playlist window, right-click on the columns, highlight _Show Columns_, and check _Rating and Score_. You can then rate songs by mousing over the _Rating_ column and clicking on the appropriate star. You can click again to lower the star to a half (so clicking on a 5 star song will make it into a 4.5 star song) and click once again to remove the star (clicking on a 4.5 star song will make it a 4 star song).

The scores are quite different. Unlike ratings, scores are computed by Amarok on a scale from 1-100 based on how many times you start, stop, and skip the song. So the more you play it, the higher the score. The problem is, this can sometimes be thrown off since often you'll simply stop a song midway because you have to go do something else. Therefore, scores aren't really very accurate unless you use them for a long period of time.

Of course, ratings and scores don't really do anything by themselves. One nice feature Amarok has that I have yet to see in any other music player is a _Statistics_ feature (_Tools → Statistics_). This will show you your favorite tracks, most played tracks, favorite artists, favorite albums, favorite genres, and your newest albums.

=IMAGE=amarok_figure_3.jpg=Figure 3: My Amarok stats (I have a slight obsession with Southern music)=

## Saving playlists

Sometimes, it's nice to save your current playlist. I love country, but I can't listen to it 24/7. Often, I prefer the slow mellow sounds of Johnny Cash. Other times, I prefer the lively country-rock of Brad Paisley and Lonestar. On some days, I'll listen to my favorite folk artist, David Mallett. And of course, sometimes I'll move out of the Tennessee music and blast my speakers with Casting Crowns. But it's annoying to have to continually drag in all my favorite artists for their particular genre into the Playlist window. To solve that problem, just save your playlist by clicking _Playlist → Save Playlist As_ (or Ctrl-S). Enter a name for your playlist and click OK. To play the playlist, simply drag it into the Playlist window from the Playlist tab on the left side. If you wish to update your playlist with new songs, just drag a song from the main _Playlist_ window into the correct playlist.

=IMAGE=amarok_figure_4.jpg=Figure 4: Saving some favorites in a playlist=

Of course, playlists can be quite annoying to update. Especially for my "Favorites" playlist, which is basically a collection of all of my favorite songs. There's a better way, luckily: _Smart Playlists_. To create one, go to the Playlists tab (on the left side), right-click on the _Smart Playlists_ folder, and click _New Smart Playlist_. Give it a name, criteria (you can have multiple criteria using the + button on the right), and hit OK. It will then show up in the _Smart Playlists_ folder in the _Playlists_ tab and will work the same as a regular playlist except that it will automatically update itself.

=IMAGE=amarok_figure_5.jpg=Figure 5: Creating a smart playlist=

## Listening to podcasts

One of the few things Apple pioneered with iTunes was the ability to listen to podcasts within music players. Amarok quickly added this feature. To subscribe to a podcast, just right-click on the _Podcast_ folder in the _Playlist_ tab (one the left side) and click _Add Podcast_. Type in the podcast URL (e.g. `http://feeds.feedburner.com/AFieldGuideToAmericanPolitics`) and click OK. To check for updates to the podcast, right-click it and click _Check for Updates_ (or right-click on the _Podcast_ folder and click _Refresh All Podcasts_). When you want to play a podcast, just drag it into the Playlist window and double-click it.

=IMAGE=amarok_figure_6.jpg=Figure 6: Adding a podcast=

## Transferring to media devices

The obvious companion to Amarok is a portable media player like a Creative Zen, iRiver, or (gasp) iPod. The nice thing is that Amarok will automatically detect any media player you plug in. To transfer music to it, just drag the music you want from your collection to the Devices tab (on the left). You can send a playlist over by right-clicking it and and clicking Synchronize With Media Device.

=IMAGE=amarok_figure_7.jpg=Figure 7: Transferring music to my (horror!) iPod nano=

# More advanced options

At the beginning, I mentioned that Amarok was a very powerful media player. However, many other players do all of the above and often more. What makes Amarok so special? There are several advanced features that quickly make Amarok very endearing to its users.

## Scripting

What makes Firefox the #2 browser on the web? I sure don't keep it because it's light or fast (it's neither). I keep it because it has support for a ton of add-ons which extend its capabilities to everything from finding random pages to warning you when a site is insecure. That's partly what makes Amarok so great as well. In their infinite wisdom, Amarok's developers decided to add scripting capabilities to their app. This means that any developer can create a plugin for Amarok in almost any scripting language. To find them, look at the Amarok Scripts section at [KDE-Look.org](http://www.kde-look.org). All you have to do is download it, open Script Manager (_Tools → Script Manager_), click _Install Script_, and select your script.

## Sending to Last.fm

Another nice feature is the ability to "scrobble" (send to the popular site [Last.fm](http://www.last.fm/)) all of your played tracks. That way, you can receive artists' recommendations from Last.fm. To do so, open up the configuration window (_Settings → Configure Amarok_), go to the Last.fm tab, type in your Last.fm user name and password, and hit OK. Now, all of your played tracks will be submitted to Last.fm. Additionally, you can see some related artists to the currently playing artist in your Context tab (on the left).

=IMAGE=amarok_figure_8.jpg=Figure 8: Configuring Amarok to use Last.fm=

## Getting album artwork

I can't bear to have my music without album artwork (the CD cover). Luckily, Amarok provides a handy tool to get it for you. Just go to your _Cover Manager_ (_Tools → Cover Manager_), right-click on the album, and click _Fetch From Amazon_. You can also just get all the missing artwork with the _Fetch Missing Covers_ button. And if you can't find it on Amazon, you can set it manually. Do an internet search to find the artwork, download it, go to the _Cover Manager_, right-click on the album, and click _Set Custom Cover_. Voila! Your album will now have artwork.

=IMAGE=amarok_figure_9.jpg=Figure 9: The cover manager=

# Pitfalls and solutions

Amarok isn't perfect: all programmers fall short, and Amarok is no exception. For example, it can't sync with media devices. Yes, you can transfer music to a portable media device, but you can't actually _synchronize_ music with media devices like iPods. You can only _transfer_ music. So if you add a new album to your library, you have to _manually_ transfer the album. Additionally, podcasts can be transferred over. However, you can't make Amarok automatically delete old podcasts on the media device (though you can in the main player). Finally, smart playlists won't automatically update: you have to do it manually. Luckily, these aren't huge pitfalls that make or break a media player. Even with these, I'm happy with my wolfish player.

# Conclusion

If you're a big music lover, Amarok is definitely a program you should consider. It's so terrific that I even had one friend who hates all things KDE admit that he used Amarok. So if you like doing everything you can with your media player, give Amarok a whirl.