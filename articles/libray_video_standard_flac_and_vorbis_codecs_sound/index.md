---
nid: '3745'
title: 'Lib-Ray Video Standard: FLAC and Vorbis codecs for Sound'
authors: 'Terry Hancock'
published: '2012-04-19 5:24:30'
tags: 'video,audio,lib-ray,flac,vorbis,avconv'
license: cc-by-sa
section: hacking
main_image: libray_flac.png
listed: 'true'

---
In my previous column, I described the success I've had with using VP8 for compressing the video for the Lib-Ray main feature multimedia file. At the end of that process, though, I still have a silent film. We also need to get the audio, and make a decision about the format. WebM calls for Vorbis sound, which probably makes sense for internet downloads, but this is where we part ways -- for my application, bit-perfect audio with FLAC seems to make more sense, at least for the main audio tracks (Vorbis is still in the picture for things like commentaries).

<!--break-->

=TEXTBOX_START=Lib-Ray Video Format=
This is the third in a short series of articles I'm writing about the updated proposal
we are working on for [Lib-Ray](http://lib-ray.org) -- which is to be a free-software, open-standard based no-DRM solution for distributing high-definition video in fixed media (i.e. not downloads, but a copy you can put on your bookshelf).
=TEXTBOX_END=

We really have no choice but to encode video in a lossy format, which is why we need codecs like VP8 (or Theora), but with audio, the decision to use lossy formats is less clearcut. Commercial audio CDs are not compressed at all, but remain a popular option. With downloads, we can use lossy formats (like MP3 or Ogg Vorbis) or we can use lossless formats like FLAC that record a bit-perfect image of the original sound waveform. Which should Lib-Ray use?

Here I'll continue working on mastering my Lib-Ray version "0.3" prototype version of Nina Paley's "Sita Sings the Blues".

# Getting the sound

The master copy of "Sita Sings the Blues" that I received from Paley is in a Quicktime MOV container. The video (as explained in the previous column) is in "Apple RLE" format, and the audio is in the "Apple Lossless Audio Codec" (ALAC) codec. I can extract this to the Free Lossless Audio Codec ("FLAC") format with `avconv` easily:

=CODE_START=
$ avconv -i SSTB_Feb09_1920x1080.mov SStB-Stereo-ST.flac
=CODE_END=

The "`.flac`" ending is enough to tell the program to output FLAC format, although I could've added "`-f flac`" to explicitly request it.

# Encoding the sound

Now so far, I haven't lost any data: unlike the situation with the video, this audio is a _perfect_ representation of the original sound waveform from the master.

To conform to the "WebM" standard, I would then compress this audio using the Vorbis codec using `oggenc` to make a lossy version:

=CODE_START=
$ oggenc -q 10 -o SStB-Stereo-q10.ogg SStB-Stereo-ST.flac
=CODE_END=


However, this strikes me as a rather pointless thing to do. Consider the sizes of these files:

File                       |   Size (GB)
---------------------------|-----------------
12 mbps VP8 video          |   6.30
FLAC Stereo audio          |   0.30
Ogg Vorbis audio (q=10)    |   0.24
Oqq Vorbis audio (q=3)     |   0.06


It probably takes a really good sound system to tell the difference between the original bit-perfect audio and the quality-10 Ogg Vorbis audio. I doubt many people will notice the difference either way. But of course, FLAC is still preferred by serious audiophiles, and it's preferred for mixing and archival purposes. CD audio is also bit-perfect and it remains a useful (if perhaps aging) consumer standard -- and even I can hear the difference between CD audio and a typical lossy compressed MP3 track.

=ZOOM=Even if we decided to go for the default "quality 3" output, we'd be saving just 3.6% of the total file size=

Why take the chance with it? The thing is, if this were a tiny little file being transmitted over the internet, it might make sense to use lossy compression to save bandwidth (and in that situation, we'd probably use a much lower quality setting -- 10 is the maximum Ogg allows). But in this case, we're saving just 0.06/6.6=0.009 or _one percent_ of the total media file size. Even if we decided to go for the default "quality 3" output (commonly used for downloads), we'd be saving just _3.6%_ of the total file size (and this would incur a loss of quality I _know_ I can hear).

_What's the point of that?!_

Now, for things like commentaries, I can see the value of Vorbis -- you might have a considerable stack of them (as on the "Sintel" release, where there are 8 of them), and they would start to add up to a significant penalty. But for the main feature audio, it's hard to justify.

So, in this case, I'm going to stick by my earlier decision: Vorbis audio will be tolerated, but FLAC audio will be specified for the main audio tracks (i.e. the player will have to support both and it is assumed that the FLAC audio is the most important). This represents a small departure from WebM, but that's one reason why I haven't been calling it that -- Lib-Ray's media file will be similar, but not necessarily identical to WebM format. So I'll continue to use the more generic "`.mkv`" file type to refer to Lib-Ray's media file format.