---
nid: '3539'
title: 'Assembling Video from a PNG Stream for an Ogg Video with png2theora'
authors: 'Terry Hancock'
published: '2011-04-27 12:36:58'
tags: 'movies,video,codecs,png,theora'
license: verbatim_only
section: end_users
listed: 'true'
book: making_free_movies_with_free_software
book_weight: '10'
layout: book.html

---
<!-- Assembling Video from a PNG Stream for an Ogg Video with png2theora -->

Ogg Theora is the codec of choice for free-licensed, patent-free video, and so that is the one I'll be using in my experiment in creating an alternative format for distributing high definition video. The original, full-quality animation for "Sintel" is provided as a series of PNG images representing each frame, and so I'll need to turn that into a high-quality Theora video stream for my prototype "Lib-Ray" version of "Sintel". In this column, I'll show how I do that.

<!--break-->

=TEXTBOX_START=Making Movies with Free Software=
This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies, _Marya Morevna_, through the [Morevna Project](http://www.morevnaproject.org) and [Lunatics](http://lunatics.tv), which we are working on as Anansi Spaceworks.
=TEXTBOX_END=

After writing my recent piece on my [Blu-Ray Blues](http://www.freesoftwaremagazine.com/columns/five_ideas_escaping_blu_ray_blues) with finding a way to distribute high definition video, I began to experiment with free-licensed, non-patent-encumbered formats. The natural choice was, of course, to start with the [Xiph.org](http://xiph.org) formats and work my way along until I had achieved the goal. Today I'm going to demonstrate the creation of the video stream itself.

=ZOOM=Today I'm going to demonstrate the creation of the video stream itself=

# Source Material

I am using "Sintel" from the Blender Foundation's Durian Open Movie project to prototype this video. This is particularly convenient because all of the necessary materials are [available](http://www.sintel.org/news/sintel-4k-3x16-bits-available-too/) from a [Xiph.org server](http://media.xiph.org/sintel/). On the site you can find original "1920 HD" frames, "2K" frames, and even "4K" frames.

In particular, I download the individual frames of the movie in PNG format, which provides a completely-lossless high-quality version of the video. In fact, this took me the better part of a week, because I have a slow internet connection and it is about 25 GB of data! These "1080" images are not actually 1920x1080 pixels in size, because Sintel is designed for a 2.35:1 theatrical aspect ratio -- they are instead at 1920x818 pixels.

=ZOOM=I download the individual frames of the movie in PNG format, which provides a completely-lossless high-quality version of the video=

# Video

Obviously we must have a video stream (which is [Theora](http://wiki.xiph.org/Theora)). Frankly Theora is not the best codec out there. Its compression-to-quality performance is poor compared to the proprietary H264 codec used in many Blu-Ray disks (although better than the MPEG2 compression used on some early Blu-Rays released in the USA).

However, the H264 compression codec has patents that are aggressively enforced by the people who brought us MPEG and MP3 formats, and they charge fees for certain kinds of use. Since a large part of the reason for moving to a new format is to avoid such entanglements, it's only natural that I'm going to choose a free codec like Theora, even if it isn't quite as good.

Recently, there is also a new competing format for video released by Google, which is called "WebM". There are a number of reasons I'm not going to use WebM -- it's still very new, it still doesn't beat H264, it is not currently set up to integrate with Ogg containers and related streams, and it may not be mature enough to handle all of the features I want to use.

=ZOOM=Recently, there is also a new competing format for video released by Google, which is called "WebM"=

In general, I think it's safe to use Theora, though I'll have to pay attention to make sure that it is doing an adequate job. It will undoubtedly be easier to use with Ogg containers, since it was designed for them.

## Making a Theora stream from PNG images

Of course, I don't yet have a Theora stream. I have PNG images -- one per frame, intended to be run at 24 frames per second. I decided to "letterbox" these -- place black bars at top and bottom of the screen to fill it out to 1920x1080 resolution. I'm not entirely sure why, but this seems to improve playback quality in VLC. There is very little cost to the file size, because the black fields contain little unique information, and thus they compress well.

The letterboxing is particularly easy to do with ImageMagick. I created a new, plain black image at 1920x1080 pixels in Gimp (I could have used the interactive ImageMagick tool too -- I'm not sure how to do this on the command line, though I suspect it's possible). Then I used a `tcsh` loop to inset each frame onto this background and store it in a separate file with the prefix `lb.` (for "letterbox"):

=CODE_START=
$ 
$ tcsh
> foreach f ( 00*.png )
foreach? composite  $f ../letterbox_bkg.png -gravity center lb.$f
foreach? end
>
=CODE_END=

Now, I want to create a compressed Theora video stream from these letterboxed frame images.

The tool we use for this is "`png2theora`" and is included with the `libtheora` package. However, on my Debian system, the command line utility has been altered to `theora_png2theora` for reasons unknown to me, so that's what I'll be using.

=CODE_START=
$ theora_png2theora -v 10 -f 24 -F 1 -k 24 --chroma-444 -o ../build/sintel_theora10_letterbox1.ogv lb.%08d.png
=CODE_END=

The options mean the following:

* `-v 10` tells the program to use quality "10", which is the maximum
* `-f 24 -F 1` sets the frame rate to 24 frames per second (numerator and denominator)
* `-k 24` says to make a "key frame" every 24 frames (which is once per second)
* `--chroma-444` say to calculate chroma value at full resolution
* `-o` tells where to output the resulting Theora file (note this is in a parallel directory called "build" to the one where I've stored my images)
* The pattern matches the image files, using a C/printf notation for the integers in the filenames

This should produce the highest picture quality Theora file that the program can produce, essentially without consideration for the space it takes up. In fact, the resulting file is about 2 GB in size, for a 15 minute film. This works out to about 17 mbps -- similar to broadcast quality HD television, and somewhat less than the nominal 40 mbps for Blu-Ray videos.

This is the finish line for today's column. In the next, I will create the subtitle streams.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=
