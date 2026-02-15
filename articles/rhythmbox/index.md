---
nid: '2962'
title: 'Rhythmbox, Gnome music awesomeness'
authors: 'Andrew Min'
published: '2008-09-17 13:07:07'
tags: 'music,rhythmbox'
license: verbatim_only
listed: 'true'
book: ubuntu_applications
book_weight: '0'
layout: book
---
Amarok sure inspires a lot of KDE-envy for Gnome users. Unfortunately, it doesn't fit in well in Gnome: it's written for a different desktop environment, uses a whole different toolkit, and requires a lot of extra libraries to run. Luckily, there's a great Gnome-based alternative: Rhythmbox.

<!--break-->

# "What" and "Who" is Rhythmbox for?

=IMAGE=rhythmbox_figure_1.png=Figure 1: Rhythmbox=

According to the home page,

_Rhythmbox is an integrated music management application, originally inspired by Apple's iTunes. It is free software, designed to work well under the GNOME Desktop, and based on the powerful GStreamer media framework._

Way back in the medieval ages of programming (2001), Bastien Nocera created the first release of Rhythmbox. The first release began to attract notice, which was helped by the fact that Apple had just released the first version of iTunes. Soon, Rhythmbox became a big enough project to be hosted on Gnome.org, where it moved to in 2003. By then, Jorn Baayen had taken over development. He re-wrote everything and brought it closer to the KISS (Keep It Simple Stupid) principles that Gnome is so famous for. Rhythmbox was then almost forked by Colin Walters, a Gnome programmer who disagreed with Baayen on the principle of adding internet radio. Baayen refused to accept Walters' patch, so Walters began a branch called netRhythmbox. Luckily, neither Walters or Baayen really wanted to fork, so the Baayen relented and the two merged projects. Ironically, Baayen then decided to retire from Rhythmbox and turned the leadership over to Walters.

# Installation

Rhythmbox comes installed by default in Ubuntu, under the Sound and Video menu. If you use Kubuntu or Xubuntu, you'll need to install it using the command `sudo apt-get install rhythmbox`.

# First launch

When you open Rhythmbox, you'll be presented with a simple, easy-to-use wizard that will set up Rhythmbox for you. After it has done that, Rhythmbox will launch with the Music tab open. All of your songs, with all of their ID3 tags intact, are displayed. You can also easily filter the list of songs by clicking on the Artist or Album in the above panel.

# Common Tasks

## Managing and playing music (duh)

When you first try to play a non-free codec (e.g. MP3), Rhythmbox cleverly asks you if you wish to install GStreamer Ugly or GStreamer ffmpeg. After checking the appropriate codecs, Synaptic pops up and installs the software automatically. Slight problem: the Ugly codec gave the same error message. Apparently, I also had to install the Bad codecs, which didn't happen out of the box. But after I installed that, almost every unprotected codec worked. Theoretically, you should also be able to install El-Tunes ([http://www.el-tunes.com/](http://www.el-tunes.com/)) for iTunes Music Store playback, but that's a whole different story that I won't touch on here.

=IMAGE=rhythmbox_figure_2.png=Figure 2: Rhythmbox rocking it out with Lonestar=

Rhythmbox's interface should be very familiar to anyone who has ever used Apple's iTunes. In fact, according to Wikipedia, Rhythmbox was inspired by iTunes. But even if you haven't used iTunes before, Rhythmbox is very easy to use. You have two options for playing songs: the iTunes-style Library, or the XMMS-style play queue. With the iTunes style, you just double-click on a song in the Music tab and the song starts playing. After the song is done, Rhythmbox goes to the next song. In XMMS-style, you drag all the songs into a Play Queue playlist, which is then played. It's a nice feature if you want to listen to the hard rock Dragonforce followed by some mellow David Mallett.

Playlists are another great way to manage music in Rhythmbox. To make a new playlist, click _Music → Playlist → New Playlist_. Then, drag the music you want into the playlist. You can also create an automatic playlist based on ID3 tags. Click _Music → Playlist → New Automatic Playlist_, configure your criteria, and accept it. Your playlist will automatically update; so, if you create an automatic playlist with only five star ratings, all five star songs are automatically added to the playlist.

If you like podcasts, Rhythmbox is a great client. Just hit _Music → Add Podcast Feed_, paste the podcast URL, then go over to the Podcasts tab. All of your podcasts are listed here. To play one, add it to the queue or double click it.

## Transferring to media devices

Rhythmbox supports iPods, MTP players, and USB mass storage devices. The first two aren't available by default, but can easily be turned on by going to _Edit → Plugins_ and checking the appropriate boxes. After that, the media player should show up in the sidebar under the _Devices_ tab. You can play music off of, transfer, and delete music off of the media device.

=IMAGE=rhythmbox_figure_3.png=Figure 3: Viewing my (ugh) iPod Nano=

## Buying music

You have two options for getting new music from the internet: Magnatune and Jamendo. After enabling the respective plugins, both are available under the Stores tab in the sidebar. Magnatune is a very unusual online music store, in that all of its music is available under the Creative Commons Attribution-NonCommercial-ShareAlike License and the price per album is determined by the buyer (between $5-$18). You can purchase the music in OGG, FLAC, WAV, MP3, or CD format using the handy toolbar buttons (or by right-clicking a song and clicking _Purchase Album_). My only gripe is that you can't buy a specific track, only an album.

Jamendo isn't really a store, but an online music sharing site for independent artists who don't need to make money. Unfortunately, it's a little bit of a mess. On the one hand, all the music is 100% free (CC licensed, as with Magnatune). On the other hand, anyone can upload and tag their music. Because of this, you have multiple genres (Contemporary Classical, Classique, classique, Classical piano, Classical Piano with a capital "P", Classical, classical, and classica, rather than just "Classical") and improperly formatted ID3 tags. But still, it's free. There's a lot of good music on Jamendo, if you don't mind sifting through some of the junk. And if you like an artist a lot, Rhythmbox provides an easy way to donate to him or her.

=IMAGE=rhythmbox_figure_4.png=Figure 4: Magnatune! Yay!=

# More Advanced Options

## Listening to radio

Support for radio in Rhythmbox comes in the form of two plugins: FM Radio and Last.fm. FM Radio, as you may have guessed, plays FM radio broadcasts using a USB radio tuner. You can also listen to internet radio streams by clicking _Music → New Internet Radio Station_. Good places to find streams include the [Google Directory](http://www.google.com/Top/Arts/Music/Sound_Files/MP3/Streaming/Stations/), [Shoutcast](http://www.shoutcast.com/), [Live365](http://www.live365.com/]), [xiph.org](http://dir.xiph.org/), [StreamingRadioGuide](http://streamingradioguide.com/), [basic.ch](http://www.basic.ch/), and [punkcast.com](http://www.punkcast.com/). Chances are, your favorite local radio station also has an internet stream. For this, Google is your best friend.

If you prefer another type of radio, try Last.fm. After enabling it and configuring it with your username and password, a Last.fm tab will appear in the sidebar. Click on it, and then begin adding radio stations. There are several types of radio stations that you can add. The first is _Similar Artists_ radio. Type in an artist's name and hit _Add_. The artist and all of the artist's similar songs will begin to play. There's also the _tag radio_, which lets you play songs based on their Last.fm tags, _Artist fan radio_, which lets you play songs that fans of the artist you typed in are listening to, and _Group radio_, which plays songs that people in the group you selected are listening to.

=IMAGE=rhythmbox_figure_5.png=Figure 5: Listening to Canada's CBC radio=

## DAAP streams

If your family or roomates use DAAP (the iTunes sharing protocol), you'll be happy to know that Rhythmbox can connect to a DAAP share. Unfortunately, it won't do the finding for you. First, you'll need the local network IP address, usually 192.168.x.xxx. You'll also need the port, which is usually `3689`. Now that you have all that information, connect to the server using _Music → Connect to DAAP share_. Now, all the songs in the DAAP share should be accessible in the sidebar under the _Shared_ tab.

=IMAGE=rhythmbox_figure_6.png=Figure 6: Connecting to my host DAAP share=

# Pitfalls and Solutions

Often, Rhythmbox gives GStreamer errors when connecting to Last.fm stations. I'm not really sure if it's Last.fm, GStreamer, or Rhythmbox's fault, but it happens almost every time. I haven't found a solution yet, but there's a quick hotfix in the meantime: just keep on playing the station until GStreamer decides to start working.

There's another problem: Rhythmbox isn't the greatest with portable media players like the iPod. You can't transfer playlists, and podcasts are very clunky to manage. And all-in-all, it's pretty obvious that Rhythmbox was not meant to be a portable media player manager. Still, that does bring up a valid point: Rhythmbox was not meant to be a portable media player manager.

# Conclusion

Rhythmbox is the closest to pinnacle of music player perfection that you're likely to see for a while. Its got the perfect blend of ease-of-use for basic users and power for advanced users. There's a reason it's the default music player in Ubuntu.