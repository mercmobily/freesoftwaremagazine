---
nid: '3536'
title: 'Understanding Surround and Binaural Sound'
authors: 'Terry Hancock'
published: '2011-04-11 2:10:13'
tags: 'movies,3d,sound,binaural,flac,vorbis,wav'
license: verbatim_only
section: hacking
listed: 'true'
book: making_free_movies_with_free_software
book_weight: '1'
layout: book
---
<!-- Understanding Surround and Binaural Sound -->

Film soundtracks are usually made available in either "Stereo" or "5.1 Surround" sound, although other possibilities exist. Quite a few of the source sound recordings I've been using are "binaural" recordings, which sound eerily realistic over earphones, but often less impressive when played back on speakers. What does this stuff mean, and how can I use free software tools to make the most of it? This will be an ongoing learning experience, but I want to start with a brief description of these most common technologies, and how they are supported by the file formats we have available to us: Vorbis, FLAC, and WAV.

<!--break-->

=TEXTBOX_START=Making Movies with Free Software=
This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies, _Marya Morevna_, through the [Morevna Project](http://www.morevnaproject.org) and [Lunatics](http://lunatics.tv), which we are working on as Anansi Spaceworks.
=TEXTBOX_END=

This column may seem a little abstract for Free Software Magazine, but it provides a launching off point (and a technical introduction) for a number of topics I hope to cover in upcoming. In order to process surround sound with free software tools, it's first important to understand what surround sound is, and why we might want to use it. An intriguing step along the way is true "binaural" sound, and how it differs from ordinary "stereo" sound.

# The path to "surround sound"

The first sound recordings were "mono" -- that is to say, they just recorded a single waveform, representing frequency and volume information, but no directionality. This was fine for many purposes, but it was a little weak when it came to things like music.

=ZOOM=Human hearing is three-dimensional. We can distinguish the direction and, to some degree, distance of a sound source=

Human hearing is three-dimensional. We can distinguish the direction and, to some degree, distance of a sound source. In fact, there's a wealth of information in the sounds that reach our ears, and our brains do some very sophisticated processing of that information.

I think most people realize that the main way that "stereo" sound works is by having sound come at different volumes in each ear -- if it's louder in your left ear (or coming out of the left speaker), then it seems to be coming from that direction. And vice-versa. That's called "panning", we say that the sound signal has been "panned" to the left speaker.

=IMAGE=fig_stereo_panning.jpg=Simple stereo sound produces a limited 3D illusion by changing the loudness of the signal coming from each speaker -- imitating the simplest aspect of binaural hearing=

This is very popular, and works quite well. It's also very easy to do in a mixing console or in a mixing application like audacity -- you just change the relative left and right amplitudes of the waveforms for different elements you are going to record. In this way, you can take a bunch of independent mono recordings (of individual instruments, for example) and spread them out across the left-right spectrum.

To the sensitive ear though, this sounds slightly "off" or "flat", though, and you might wonder why that is.

Another approach is to actually record in stereo, with double mics, simulating your ears. Some people go so far as to put the mics on a dummy-head to simulate the effects of your head when you are listening (and yes, it does alter the sound). This kind of recording is called "binaural" (two-ear) recording, and if you have a chance, you should listen to some of these recordings on ear-phones.

=IMAGE=fig_binaural_sound.jpg=Real binaural sound though, contains a number of secondary effects like phase changes and filtering that derive from the path each sound takes to get into each ear. Our brains do some very sophisticated processing on this information to produce an audio 3D image of the environment. Binaural recordings can be quite impressive to listen to=

Here's a few examples from Wikimedia Commons of binaural recordings which you might want to listen to: 

* [A working 17th century water mill at Weald and Downland Open Air Museum](http://commons.wikimedia.org/wiki/File:Weald_and_Dowland_water_mill.ogg)
* [Two Skyballs bouncing indoors](http://commons.wikimedia.org/wiki/File:Skyball.ogg)
* [Sounds from a pool table](http://commons.wikimedia.org/wiki/File:Pool_Sounds.ogg)
* [Paper sounds and whispering demo](http://commons.wikimedia.org/wiki/File:BinauralPaper.ogg)

If you listen to these via earphones and close your eyes, I think you'll be impressed by how complete the auditory scenes appear in your head -- you're able to localize the sounds much better. Simple stereo panning cannot do this.

There are actually a number of subtle physical processes going on. Some of them have to do with the way sound goes around and/or through your head as it gets to the "far ear" from the sound source. This can cause frequency filtering effects or echoes. You also pick up echos and reverberation or ambience from the walls of the room in which a recording is made.

=ZOOM=There are actually a number of subtle physical processes going on=

But by far the most significant effect (other than volume, which panning models) is the _phase change_. Sound is fairly slow (at least compared to light), and there is a significant time delay between sound arriving at the nearer and further ears. This time delay causes the waveforms to be time-shifted relative to each other. Your brain is very sensitive to this information (which is a marvel of neurobiology and evolution, but we're just going to take it for granted here), and you interpret these changes as spatial information.

=IMAGE=fig_two_sources.jpg=The binaural illusion, while great on earphones, breaks down with room speakers, which you can distinguish as two distinct localized sources -- because now there's a new set of phase changes associated with the listening room, which tends to scramble the information in the original signal=

Unfortunately, binaural sounds really only work through earphones. Once you put them on large speakers in a room, most of the subtlety is lost, and it's hard to tell them apart from ordinary panned stereo sound. That's because the sound no longer enters your ears unaltered -- instead it bounces around the room, past your furniture, reverberates off the walls, and so on, leaving the sensitive phase information muddled. Instead of hearing the complex sound visualization of the recording, you are instead sensitive to the sound visualization of your room.

What to do?

## What's with the "5.1"? 

One way is to add more speakers. Various configurations have been tried over the years, from 3 speakers all the way up to 10 speakers, but the most popular by far is a 6 speaker arrangement called "5.1 surround" sound.

In this arrangement, there are still "Left" and "Right" speakers, which are also positioned in _front_ of you (typical to either side of the screen for video), but there are also others: a "Center" speaker in front (right behind the screen), and then "Left Surround" and "Right Surround" speakers that are positioned behind you. That takes care of the "5".

=ZOOM=Finally, the ".1" is a low-frequency effect  ("LFE") channel which goes to a sub-woofer=

Finally, the ".1" is a low-frequency effect  ("LFE") channel which goes to a sub-woofer, typically located in front of you, but it would probably be most optimal to place it directly under your chair. This is the speaker that makes the room shake when there's a particularly loud crash on the sound track -- very popular in action movies.

=IMAGE=fig_surround_sound.jpg=Some of the 3D illusion can be restored by moving to a multi-speaker system which surrounds the listener with sound. Balancing left and right and front and back speakers allows for more information to be retained, even over room speakers. This has made 5.1 surround sound very popular for home (and commercial) theater viewing=

## Variations

Now of course, you can have simpler versions: "[quadraphonic](http://en.wikipedia.org/wiki/Quadraphonic_sound)" or "4.0 Surround" sound, for example, eliminates the "Center" and "LFE" channels, and was popular for awhile in the 1970s. There are also more complex surround systems, which mainly add additional "Surround" speakers, giving us 7.1 ("Left Front", "Center", "Right Front", "Left", "Right", "Left Back", "Right Back", and "LFE"), and also 9.1.

# Going from Binaural to Surround and back?

Clearly, since your brain can derive a 3D audio experience from either surround sound or binaural stereo sound through headphones, there must be some computational way to go from one to the other. And indeed this is true. However, it is _complicated_.

Looking into this is one of those "rabbit hole" moments when I discover that there's a whole field of endeavor that I didn't even know existed until now. Some interesting keywords (and Wikipedia links), may give you some idea: [3D audio Effect](http://en.wikipedia.org/wiki/3D_audio_effect), [Head-Related Transfer Functions](http://en.wikipedia.org/wiki/Head-related_transfer_function), [Binaural Recording](http://en.wikipedia.org/wiki/Binaural_recording), [Psychoacoustics](http://en.wikipedia.org/wiki/Psychoacoustics), [sound Localization](http://en.wikipedia.org/wiki/Sound_localization), and of course, [surround sound](http://en.wikipedia.org/wiki/Surround_sound).

=ZOOM=Looking into this is one of those "rabbit hole" moments when I discover that there's a whole field of endeavor that I didn't even know existed until now=

Some work was done with this for the Blender Foundation's "Yo Frankie!" video game project, by [Barcelona Media](http://www.barcelonamedia.org/linies/10/en), which resulted in a [paper](http://lac.linuxaudio.org/2009/cdm/Thursday/05_Arumi/27.pdf) (PDF 1.4MB) and a [slide presentation](http://clam-project.org/download/misc/blender_conference_oct09_slides.pdf) (PDF 6MB) on the technique, which used the [CLAM](http://clam-project.org/) audio processing library in combination with [Ardour](http://ardour.org/) and [Blender](http://blender.org) to create simulations of 3D sound effects. Someday I may attempt to use this technique and document it here -- but not today.

# File format support: Ogg Vorbis, WAV, and FLAC

There are basically four file formats that I work with regularly for processing sound: MP3, WAV, Ogg Vorbis, and FLAC. MP3 has a number of problems, including patent restrictions which make it a poor choice for us to use for our own work, but of course, a great deal of music -- even the free-licensed music we are mostly relying on -- is distributed this way by default.

=ZOOM=There are basically four file formats that I work with regularly for processing sound: MP3, WAV, Ogg Vorbis, and FLAC=

So, of course, I have to support it on input, and so I'll address this first: MP3 does not support 5.1 surround sound. Nor any kind of multi-channel sound except "Stereo". There may be some variations out there that contradict this, but they do not appear to be part of the MP3 standard. Of course, you can encode binaural recordings in any stereo format, and some of the binaural recordings as source material are in MP3 format.

The best free format for lossy compressed audio is of course, Ogg Vorbis. Vorbis _does_ support multichannel sound (for many channels, some sources say "unlimited", others say 256 -- but in any case, it's more than enough).

Note that there is a distinction between an Ogg container file containing more than one Vorbis stream and a single Vorbis stream with multiple interlaced channels of audio! It's probably best to think of a stream with separate Vorbis audio streams as a set of _alternative_ audio tracks (and indeed this is how VideoLAN Client ([VLC](http://videolan.org)) handles such a stream. Whereas, an Ogg with a single Vorbis stream can hold many channels -- which are intended to be played back simultaneously, to different speakers. The most common case is "Stereo", where the first channels goes to the "Left" speaker and the second goes to the "Right" speaker. This gets more complex, and less standard with 5.1 surround sound, but the principle is the same.

=ZOOM=Note that there is a distinction between an Ogg container file containing more than one Vorbis stream and a single Vorbis stream with multiple interlaced channels of audio!=

However, 5.1 surround sound tends to be a high-fidelity need, which is somewhat in conflict with the bandwidth-conscious "good enough" ethos that applies to lossy compression formats. 

So most of the time, when I'm trying to mix high-fidelity surround sound tracks, I'll be working with one of the two _lossless_ formats that are available: _uncompressed_ WAV format, and _losslessly compressed_ FLAC format. FLAC (which stands for "Free Lossless Audio Compression") may not be very familiar to you if you're not an audiophile, but it has become a popular format for internet-sharing of lossless audio files. FLAC files tend to be much larger than either Ogg Vorbis or MP3 files, but also quite a bit smaller than uncompressed WAV files, which are, of course, very bulky.

# Channel Assignments

As I mentioned briefly above, there is a wide-spread convention on the correct order for stereo tracks -- the left channel is first, followed by the right. Life is not so easy with surround sound. Standard orders have been slow to emerge, and inconsistencies remain. FLAC follows the same convention as WAV files, but Vorbis uses a different order. I had to do a lot of digging to find this, so I want to end today's column with a reference table the standard 5.1 surround sound channel assignments in these formats:

Channel         |  WAV/FLAC       |  Vorbis
----------------|-----------------|----------------
1               |  Left           | Left
2               |  Right          | Center
3               |  Center         | Right
4               |  LFE            | Left-Surround
5               |  Left-Surround  | Right-Surround
6               |  Right-Surround | LFE

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=
