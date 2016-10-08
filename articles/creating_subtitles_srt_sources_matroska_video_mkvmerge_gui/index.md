---
nid: '3548'
title: 'Creating Subtitles from SRT Sources for a Matroska Video with mkvmerge GUI'
authors: 'Tom Kent'
published: '2011-06-01 12:38:56'
tags: 'video,subtitles'
license: verbatim_only
section: end_users
listed: 'true'

---
Another alternative to using kate subtitles in an Ogg video would be to use the existing SRT subtitles in a Matroska video container. I don't believe the SRT format is patent encumbered (its really simple with just timecodes and text, so I'd _hope_ that no one was give a patent on something that obvious), and the Matroska (or MKV) container format is an amazing, all-purpose container.  From wikipedia: 

> The Matroska Multimedia Container is an open standard free container format, a file format that can hold an unlimited number of video, audio, picture or subtitle tracks inside a single file.

So basically its just like Ogg, but (in my opinion) better.

# How to do it 

Anyway, the simplest way to build up your video is to use the MKV File Creator a.k.a `mkvmerge` GUI, which is a front-end for the `mkvmerge` command line tool.  When you open it up, you are presented with the "Input" tab, where you can add media files of various types (audio, video, subtitles, and more).  

Here you could add a track of Theora or VP8 video, a track (or more) of Vorbis or FLAC audio, and then all 45 subtitle .SRT files.  For each track you add (more important for the audio and subtitles than the video) you can give that track a name such as "Director's Commentary" and a language "eng", "jpn", "spa", etc.  

Once you've got all your tracks set correctly, you can go ahead and set your output file name and click "start muxing" and the program will build your complete file for you!

The only downside to this is that it won't process the subtitles through kate, so you won't get the errors for the broken SRT files. If you wanted to find these errors you would have to take another step before importing them into the `mkvmerge` GUI (like run them through kate to see what complains, or use another tool).

# An aside: Ogg vs. MKV

In my understanding of it, Ogg was built with streaming (possibly losing packets over UDP) as a primary goal. MKV was designed more as a storage container (but still has some very limited streaming ability) that is great for progressive downloads.  In addition MKV gives you chapters if you want to segment your video in that manner. Finally MKV files are the base of the WebM format (`mkvmerge` GUI will support outputting to these), but then you are limited to VP8 video and Vorbis audio (not sure about subtitles).  

In my opinion the decision point for Ogg vs. MKV is if you are doing a stream. For a stream (like live TV, not progressive download) Ogg wins, hands down.  For everything else, why not use MKV? Its just that much more flexible and extensible. 