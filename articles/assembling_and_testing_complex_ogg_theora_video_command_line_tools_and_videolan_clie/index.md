---
nid: '3556'
title: 'Assembling and Testing a Complex Ogg Theora Video with Command Line Tools and VideoLAN Client (VLC)'
authors: 'Terry Hancock'
published: '2011-06-14 16:56:23'
tags: 'movies,video,google,ogg,vlc,lunatics,theora,vp8,lib-ray,matroska,webm'
license: verbatim_only
section: end_users
listed: 'true'
book: making_free_movies_with_free_software
book_weight: '10'
layout: book
---
<!-- Assembling and Testing a Complex Ogg Theora Video with Command Line Tools and VideoLAN Client (VLC) -->

Unless you've been hiding in a cave for the last few years, you probably know about the free multimedia codecs with the fishy-sounding names from Xiph.org: Ogg Vorbis (for sound) and Ogg Theora (for video). You might be less familiar with other family and friends, including FLAC (lossless audio), Skeleton (metadata stream), and Kate (subtitles). However, together this collection of codecs can be used with the Ogg container format to provide all of the functionality of a DVD video file -- multiple soundtracks, full surround sound, high definition, and selectable subtitles. Having created the various streams for a prototype release of "Sintel" in my last few columns, I'm now going to integrate them into a single video file and test it with some players.

<!--break-->

=TEXTBOX_START=Making Movies with Free Software=
This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies, _Marya Morevna_, through the [Morevna Project](http://www.morevnaproject.org) and [Lunatics](http://lunatics.tv), which we are working on as Anansi Spaceworks.
=TEXTBOX_END=

In this series of articles, I've been assembling a prototype for [Lib-Ray](http://lib-ray.org) -- a format I'm inventing in order to have a free, non-DRM way to distribute high definition video. In previous columns, I covered how to [create a Theora video stream from PNG images](http://www.freesoftwaremagazine.com/columns/assembling_video_png_stream_ogg_video_png2theora), how to [create Ogg FLAC and Vorbis soundtracks](http://www.freesoftwaremagazine.com/columns/multiplexing_flac_channels_5_1_surround_sound_audacity), and how to [create OggKate subtitle tracks from SRT files](http://www.freesoftwaremagazine.com/columns/creating_subtitles_srt_sources_ogg_video_kateenc). Now, I'm going to put all these together into a single multiplexed stream.

=ZOOM=I have been very pleased to find that it is indeed possible to do most of what DVD video does with Xiph formats=

I have been very pleased to find that it is indeed possible to do most of what DVD video does with Xiph formats (except for the menus, of course -- I'll attend to that problem in a later column). What this specifically entails is:

* High-definition/high-quality video
* High-fidelity sound (losslessly compressed)
* Multiple soundtracks (for example, for different languages or for commentaries)
* Multiple subtitle tracks (also for languages)

In fact, as we'll see, the Xiph.org formats are slightly more capable than the standard DVD "VOB" format, and this turns out to be a major advantage for free format distributions. Some of the advantages:

* No limit on HD resolution of files
* Up to 7.1 channel sound per track (could do more if additional tracks are used)
* Essentially unlimited audio tracks
* Essentially unlimited subtitle tracks

By contrast, DVD video is designed for specific screen sizes, generally handles up to 5.1 surround sound, and allows relatively few alternate audio or subtitle tracks. These features are extremely useful for free culture distribution, because free culture respects no borders -- our media are released globally. This makes multiple language support a much hgher priority for us.

# Putting it together

At this point I now have a collection of separate Ogg streams: 

* The single video track was created from the original animation PNG stream by using the `png2theora` utility included as part of the `libtheora` package.
* Three FLAC audio streams were created from the FLAC soundtrack files on the "Sintel" website.
* Eight Vorbis audio streams were created by ripping the commentaries from the DVD version of Sintel using VLC.
* Forty-five Ogg Kate streams were created from original `.srt` files which I downloaded from two online sites (the eight official sets released with the DVD, plus additional contributed tracks).

I'm now ready to assemble the multiplexed Ogg stream from these individual pieces.
For this, I use the `oggz` utility -- specifically the `merge` command. This will 
take all of the pages from each stream and shuffle them together in time sequence -- sort of like shuffling together several decks of cards. The time order is preserved so that the combination can be read as a stream -- the player will read the file as it goes, getting information on all the streams it is supposed to be providing simultaneously.

=ZOOM=I'm now ready to assemble the multiplexed Ogg stream from these individual pieces=

You should probably be aware that the Theora video stream will take up the lion's share of this data, since video -- especially HD video -- is very bulky. The 5.1 surround sound FLAC stream will be second largest, followed by the stereo FLAC streams, then the mono Vorbis streams, and finally the subtitles, which (being text) are comparatively tiny.

All in all, we can expect the file to grow from the original Theora file by only a few percent (about 15% in fact), so although the file is much more complex, it does not represent a problem in terms of the data rate -- at least not on modern hardware that can handle an ordinary Theora file of this resolution.

# oggz merge

The final step is extremely simple, using the `oggz` command-line utility. In the Debian GNU/Linux distribution, this is provided by the package `oggz-tools`, and can be installed easily with `apt-get`.

Oggz uses a sub-command syntax -- you call the program with the first argument being the actual command. There are a number of useful tools included, and I recommend reading the man-page or looking at the [online documentation](http://www.xiph.org/oggz/) if you want to do other things with it. Today, though, all I need is the "`merge`" command. This will take all of the Ogg streams on the command line (the remaining arguments, and put them into a single, interleaved Ogg stream. Each stream is broken up into packets, and the packets are stored in the file in chronological order (which facilitates streaming). As with many command line utilities, the "`-o`" option identifies what file the result will be written to.

Now that we have all the streams we need, this is a single step (I run this in the same directory with all of the component streams that I need to use):

=CODE_START=
$ oggz merge sintel_theora10_letterbox-c420.ogv sintel-master-STEREO.oga sintel-master-51-MUX.oga sintel-music+effects-STEREO.oga commentary_*.ogg sintel_??.ogg  -o sintel-feature-theora10-c420+audio+subtitles.ogv
=CODE_END=

The end product (`sintel-feature-theora10-c420+audio+subtitles.ogv`) is a multiplexed stream, which contains the following tracks:

* `sintel_theora10_letterbox-c420.ogv` - Theora codec video
* `sintel-master-STEREO.oga` - FLAC codec stereo soundtrack
* `sintel-master-51-MUX.oga` - FLAC codec 5.1 surround soundtrack
* `sintel-music+effects-STEREO.oga` - FLAC codec stereo effects and music (no dialogue)
* `commentary_*.ogg` - Eight different commentary tracks in Vorbis codec
* `sintel_??.ogg` - 40 different subtitle tracks in Kate codecs

One other `oggz` command useful for this project is "`info`" -- this will print out a description of all of these embedded codecs, which can be great help in troubleshooting and in making sure you have the correct file. A full listing is too long for this column, but here's an abbreviated sample:

=CODE_START=
$ oggz info sintel-feature-theora10-c420+audio+subtitles.ogv
Theora: serialno 2117638884
        21315 packets in 27086 pages, 0.8 packets/page, 0.433% Ogg overhead
        Theora-Version: 3.2.1
        Video-Framerate: 24.000 fps
        Video-Width: 1920
        Video-Height: 1080

Flac: serialno 1296443856
        10415 packets in 2610 pages, 4.0 packets/page, 0.496% Ogg overhead
        Audio-Samplerate: 48000 Hz
        Audio-Channels: 2
        FLAC-Ogg-Mapping-Version: 1.0

Flac: serialno 1019386753
        10411 packets in 2895 pages, 3.6 packets/page, 0.441% Ogg overhead
        Audio-Samplerate: 48000 Hz                                                                                                                                                                           
        Audio-Channels: 6                                                                                                                                                                                    
        FLAC-Ogg-Mapping-Version: 1.0         

[...]

Kate: serialno 1939961767
        35 packets in 28 pages, 1.2 packets/page, 33.319% Ogg overhead
        Content-Language: zh
        Content-Category: SUB
=CODE_END=

# Testing the file in VLC

The video player I use the most on my desktop is [VLC](http://videolan.org) (VideoLAN Client). So how does it work? Well: playback works well in a window or at full screen. As you can see in Figure 1, the audio menu looks correct, and the channel assignments work as you would expect. Figure 2 shows the subtitle menu.

=IMAGE=fig_vlc_1_audio_tracks.jpg=Figure 1: Testing the multiplexed video with VLC - Audio track list=

=ZOOM=The video player I use the most on my desktop is VLC (VideoLAN Client)=

The subtitles did not render on my own VLC installation, although my investigation suggests this is a problem with my own VLC installation or with a bug in the backend video driver (on my hardware, only the SDL backend seems to work at all, and it is the one with the problem). However, I tested the same file on another computer, which is running the same hardware, and the subtitles rendered as expected.

=IMAGE=fig_vlc_2_subtitles.jpg=Figure 2: Subtitle track list in VLC=

It's possible that my problem derives from using some packages from the "Debian Multimedia" archive (there are reports that these may be incompatible with standard Debian archive packages, though of course, you need them to run some of the multimedia packages that are not included in the standard Debian archive). Figure 3 shows some samples of the subtitles as they appear on the other computer.

=IMAGE=fig_vlc_3_rendered_subtitles.jpg=Figure 3: A sampling of the available subtitle tracks=

Unlike DVD subtitles, which are really just bitmap graphics, these subtitles are rendered as text, which means they use a system font which must be installed, and must support the language you want. I had to configure this in VLC, and I found it was very difficult to find a single font that supported all of the available subtitle languages. The only one that really does that is the "GNU Unifont", which is available in TrueType format -- but it is exceptionally _ugly_. 

In practice, though, most users will install fonts that support their native language, and that is the language they will generally want to use for their subtitles. So while this broad support is a problem for me in testing, it probably isn't so much of a problem for the people who actually need the subtitles.

# Other roads: Matroska, VP8, and WebM

One question I've received is "Why Ogg-Theora instead of Matroska-VP8 (a.k.a. WebM)?" I want to take a moment to address that before moving on.

=ZOOM="Why Ogg-Theora instead of Matroska-VP8 (a.k.a. WebM)?"=

Ogg Theora is the "obvious" choice for a free software, patent-free codec. It was developed by the community, for the community, and that's one reason why I'm attached to it. Perhaps this is an irrational motivation.

Unfortunately, the case for Matroska or VP8, or the combination of the two, which is Google's WebM, is also mostly an irrational one -- "use it because Google's using it".

Mind you, I _like_ Google (at least as much as any human being can like a non-human non-person thing like a corporation), but I would need technical reasons to justify a switch to a new codec or container format, not just political ones -- especially when it's clear that switching would involve a technical penalty.

As far as I can tell, it should be possible to embed VP8 video into an Ogg container format. So, if VP8 really does perform better than Theora, then VP8-in-Ogg would seem like the obvious and least-disruptive choice: it would allow all of the audio and subtitle infrastructure to remain as-is.

As for the [Matroska](http://www.matroska.org) format, I've read over the site, and I find little to distinguish it from Ogg in terms of value to Lib-Ray. A few (minor) negative points stand out:

* The emphasis on high-bitrate applications seems to indicate larger overhead
* The standard is newer, and as far as I can tell, less widely supported
* The software license is open, but it has a more restrictive trademark policy
* The development appears to be more monolithic -- Matroska seems to be a "cathedral"

None of these is a show-stopper, the business model is a minor concern; the license is certainly free; it's not likely that using a new format would present much of a problem when [Lib-Ray](http://lib-ray.org) itself is also new and immature; and higher overhead is hardly a problem at the 15-20 Mbps bitrate that I'm finding with Lib-Ray. So that's not really the issue. The issue is, what do these penalties buy?

=ZOOM=Almost all of the benefits of Matroska are essentially the same as the benefits of Ogg. Which leaves me feeling a little mystified=

Unfortunately, I've seen no good case for this -- almost all of the benefits of Matroska are essentially the same as the benefits of Ogg. Which leaves me feeling a little mystified -- what was the "itch" that the Matroska developers were trying to scratch? And is it an itch I share?

So if anyone reading this can present a technical (not political) case for why Matroska is a better choice than Ogg for Lib-Ray, I'd be very interested to hear it! Leave a comment. Maybe a later Lib-Ray prototype will switch over to Matroska, or at least include it as an option.

# Almost there...

So far we have a working video file in Xiph.org's Ogg Theora format with other Ogg components for sound and subtitles. This works reasonably well in VLC, and presumably in other players as well (though I have not been able to test most of them). The only remaining question is how to add a disk menu environment to this video, and that will be the topic of my next column, which should complete this series on my "Lib-Ray prototype."

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=


