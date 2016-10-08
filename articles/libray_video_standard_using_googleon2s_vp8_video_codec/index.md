---
nid: '3744'
title: 'Lib-Ray Video Standard: Using Google/On2''s VP8 Video Codec'
authors: 'Terry Hancock'
published: '2012-04-16 2:10:09'
tags: 'lib-ray,video,vp8,webm,mkv,bluray'
license: cc-by-sa
section: hacking
main_image: libray_vp8.png
listed: 'true'

---
When I started working on a no-DRM, open-standards-based solution for distributing high-definition video on fixed media ("[Lib-Ray](http://lib-ray.org)"), I naturally thought of Theora, because it was developed as a free software project. Several people have suggested, though, that the VP8 codec would be a better fit for my application. This month, I've finally gotten the necessary `vpxtools` and `mkvtoolnix` packages installed on my Debian system, and so I'm having a first-look at VP8. The results are _very_ promising, though the tools are somewhat finicky.

<!--break-->


=TEXTBOX_START=Lib-Ray Video Format=
This is the second in a short series of articles I'm writing about the updated proposal
we are working on for [Lib-Ray](http://lib-ray.org) -- which is to be a free-software, open-standard based no-DRM solution for distributing high-definition video in fixed media (i.e. not downloads, but a copy you can put on your bookshelf).
=TEXTBOX_END=


I had originally set a goal that I would get a third prototype of Lib-Ray out sometime last Summer, but I ran into a number of problems, which resulting in me putting the whole thing on the proverbial "back-burner" for awhile and did not deliver on that.

One of these problems was that, although it was clear that I should test out a new basis for the feature video file, using the Matroska container format and the VP8 video codec (a combination that is similar if not necessarily identical to Google's "WebM" video format), I did not yet have access to the tools. I had a stable system based on Debian's "Squeeze" distribution, which I was actively using for production work on "[Lunatics](http://lunatics.tv)", and I was afraid to disrupt it by doing the upgrade.

=ZOOM=I had originally set a goal that I would get a third prototype of Lib-Ray out sometime last Summer=

Recently however, the pile of "stuff I can't do unless I upgrade" started to outweigh the pile of "stuff I might lose in an upgrade" and so I bit the bullet, updated my `sources.list` to "Wheezy" and typed "`apt-get update` and `apt-get dist-upgrade`. And, sure enough, I broke _everything_, or so it seems (still picking up pieces).

But the good news is that I now have the `vpxtools`, `mkvtoolnix`, and `mkvtoolnix-gtk` packages installed and am able to work with both Matroska container files and VP8 video streams. A little more ambivalently, I've switched from `ffmpeg` (no longer included!) to `avconv` for commandline transcoding operations. This is a fork of the `ffmpeg` tool that is apparently now preferred in Debian, and so far, it seems to support most of the same interface.

I had made the first two prototypes using "[Sintel](http://www.sintel.org)" from the Blender Foundation, of which I have a PNG-stream copy (in other words, a directory full of each frame in the film as an individual losslessly-compressed PNG image) to function as the video master. I now also have a copy of "[Sita Sings the Blues](http://www.sitasingstheblues.com)" in "Apple Quicktime RLE Video" format, which is also losslessly-compressed ("RLE" means "run-length encoded", a very, very basic compression algorithm). For what it's worth -- this master file for "Sita Sings the Blues" is about 210 GB in size.

=ZOOM=To be a practical format, Lib-Ray must get a compression of more than 10X that size while remaining acceptably "crystal clear" to the human eye on a 1920x1080 pixel HDTV display=

To be a practical format, Lib-Ray must get a compression of more than 10X that size while remaining acceptably "crystal clear" to the human eye on a 1920x1080 pixel HDTV display -- fortunately modern lossy video codecs can do that! It's okay if you'd like to take a moment to applaud the hardworking geniuses behind that before continuing -- they certainly deserve it.

The actual tools, though, are a little bit finicky, so be prepared for some pain (that's why they call it the "bleeding edge").

=TEXTBOX_START="WebM" or "MKV"?=
In this series, I will refer to the format of the main feature video file as "MKV" format or "MKV/VP8" format. This standard is close to Google's "WebM" standard, but may not be identical (for example WebM specifies Vorbis for audio, whereas the MKV/VP8 format I am considering for Lib-Ray may use either FLAC or Vorbis. There are also some more sophisticated MKV features that may be outside the range of the subset Google has decided to call "WebM".
2
Most of what I have to say will apply to either my MKV format or to Google's WebM, but there may be exceptions, and I haven't tried to track down these differences.
=TEXTBOX_END=

# Getting VP8 encoding to work

Although the `avconv` is able to provide VP8 encoding via `libvpx`, it has some problems. Specifically, when I was trying to use `avconv`, it produced glitchy video with occasional "garbage explosions" when played back in VLC. These looks like it might be associated with a rate-control problem in the newer "constrained quality" algorithm. Whatever the reason, I could not find a way to make the problem go away. Also, no matter how high I set the bitrate in `avconv`, the video was always encoded at a very low bitrate (more like what you'd expect to create for streaming on the web).

So, it seems that it is much more reliable to use the special-purpose `vpxenc` encoding tool to make VP8 video. That program, however, is very limited in what it can take as input -- infuriating, since it is very hard to find any information on what format it wants to have! After some reading and some experimentation, I figured out that what it wants (or at least what works) is to convert the source video to "Y4M" format using the "`yuv4mpegpipe`" format option in `avconv`. _Then_ you convert _that_ video into VP8 using `vpxenc`.

Converting to Y4M is pretty easy:
=CODE_START=
$ avconv -i SSTB_Feb09_1920x1080.mov -s hd1080 -r 24 -f yuv4mpegpipe -pix_fmt yuv420p SStB-1920x1080px24-master.y4m
=CODE_END=

The conversion from source format (whatever that is) into Y4M "raw video" does not really affect the quality. I'm not certain if it is a perfectly lossless format, but it certainly does not have much impact, and the file size remains quite large. For a feature length film, like "Sita Sings the Blues", this makes for a pretty big disk space requirement: the original Sita master file is in Apple RLE ("run length encoded") format -- a lossless codec which does not achieve very high compression. This file is 210GB.

It's interesting to note that, since "Sita Sings the Blues" is apparently animated "on twos", the algorithm believes it is encoded at 12 fps and will make a 12 fps video (which looks quite choppy) unless you explicitly tell it to encode at 24 fps as I have done here. To be honest, I don't fully understand the "pixel format" option -- I just picked one of the available options and it seems to be correct.

The resulting Y4M file is actually larger than the original master, at 341 GB, possibly owing to the step up in frame-rate.

So far, this is pretty straightforward stuff. The only complications arose from the relative absence of documentation and inconsistent naming (the "Y4M" format apparently goes by several names, including "raw video", "yuv", and "yuv4mpegpipe"). 

The next step is much more interesting -- this is where we apply the `vpxenc` tool to the Y4M video file and produce a VP8-encoded video in an MKV container file. There are zillions of ways to do this, because there are a lot of options. I highly recommend visiting the [WebM project](http://www.webmproject.org/)'s "[VP8 Encoder Parameter Guidelines](http://www.webmproject.org/tools/encoder-parameters/)" page, which explains these options in detail.

In my case, I fixed size-limits to think about: 4 GB, 8 GB, 16 GB, or 32 GB. Those are the available sizes of [SDHC cards for Lib-Ray distribution](http://www.freesoftwaremagazine.com/articles/libray_video_standard_moving_sdhc_flash_media). It's good to be a little below each of these limits, because that will leave plenty of room for menus and extras. But it doesn't really help to be much below the limit (unless you have lots of video extras, perhaps).

My expectation, based on descriptions of broadcast HDTV and Blu-Ray disks suggested that a good bitrate might be in the neighborhood of 18 megabits/second. So that's what I started with:

=CODE_START=
$ vpxenc SStB-1920x1080px24-master.y4m -o SStB-1920x1080px24-best-18m-vbr.mkv --i420 -w 1920 -h 1080 -p 2 -t 3 --best --target-bitrate=18000 --end-usage=vbr --auto-alt-ref=1 --fps=24/1 -v --minsection-pct=5 --maxsection-pct=800 --lag-in-frames=16 --kf-min-dist=0 --kf-max-dist=480 --token-parts=3 --static-thresh=0 --drop-frame=0 --min-q=0 --max-q=6
Codec: WebM Project VP8 Encoder v1.0.0
Source file: SStB-1920x1080px24-master.y4m Format: YV12
Destination file: SStB-1920x1080px24-best-18m-vbr.mkv
          [...]
=CODE_END=

The resulting file is about 9.5 GB in size, and it looks _beautiful_ on screen. I am not able to see any artifacts at all just by watching it.

The size is a little bit awkward, though -- just a little too much for an 8GB card, but much smaller than a 16 GB card. If I'm going to have to buy 16 GB cards (about $16 each -- SD flash cards are about a $/GB currently), then I might as well encode with more bits.

=ZOOM=It's very possible that "Sita Sings the Blues" compresses exceptionally well=

On the other hand, it's very possible that "Sita Sings the Blues" compresses exceptionally well. The film is not only animated "on twos" (so half as many real frames as a live-action feature-length film), but it also makes extensive use of "[limited animation](http://en.wikipedia.org/wiki/Limited_animation)" in which large parts of the screen don't move _at all_ for as much as a minute at a time. If the compression algorithm is smart enough (and VP8 is pretty smart), then it can take advantage of these facts and make a much smaller file without any visible sacrifice of quality.

So, I gave this a try as well:

=CODE_START=
vpxenc SStB-1920x1080px24-master.y4m -o SStB-1920x1080px24-best-12m-vbr.mkv --i420 -w 1920 -h 1080 -p 2 -t 3 --best --target-bitrate=12000 --end-usage=vbr --auto-alt-ref=1 --fps=24/1 -v --minsection-pct=5 --maxsection-pct=800 --lag-in-frames=16 --kf-min-dist=0 --kf-max-dist=480 --token-parts=3 --static-thresh=0 --drop-frame=0 --min-q=0 --max-q=6
Codec: WebM Project VP8 Encoder v1.0.0
Source file: SStB-1920x1080px24-master.y4m Format: YV12
Destination file: SStB-1920x1080px24-best-12m-vbr
     [...]
=CODE_END=

Again, this file is beautiful to watch. At high-definition, even on my 21" widescreen monitor, the movie is much more engaging than in the DVD copy. Sita was made for theatrical release, and there are many fine details which are very fuzzy in the DVD version, but which are sharp and clear in this high-quality / high-definition copy.

In fact, I can't tell the difference between the 9.5 GB copy and this 6.5 GB copy, or for that matter, between either of them and the original 210 GB lossless master copy.

But maybe I'm just blind?

It'd be nice to have a way to _objectively_ measure the quality of these compressed copies and then to see how they compare to the expectation for high-definition home video (i.e. Blu-Ray) releases.

# Measuring video quality

Fortunately, there are such techiques, and there is a commandline utility for GNU/Linux systems that will compute the two most popular metrics:  [PSNR](http://en.wikipedia.org/wiki/PSNR) and [SSIM](http://en.wikipedia.org/wiki/Structural_similarity), called "[qpsnr](http://qpsnr.youlink.org/)" For a detailed explanation of the computation of these metrics and how useful they are, please take a look at the links (from Wikipedia). However, in a nutshell, PSNR measures the error in color values on a pixel-by-pixel basis, while SSIM measures the preservation of spatial structures in the image. Both are completely objective, mathematically-computed measurements. Both have some deviation from human psychological assessment of image quality. PSNR has been around longer, but has been criticized a lot. SSIM seems to come closer to measuring what your eye does. Both are useful metrics.

=ZOOM=There is a commandline utility for GNU/Linux systems that will compute the two most popular metrics: PSNR and SSIM=

In any case, it's far better for me to have an objective metric to work with. It seems to me that a good policy will be to set a threshold for both PSNR and SSIM metrics and insist that videos exceed both of them.

Like `vpxenc`, `qpsnr` is finicky about its input files. To measure the metrics using `qpsnr`, it's first necessary to convert the compressed videos back into Y4M format (both metrics are computed by doing frame-by-frame analysis of the videos). However, this uses a _lot_ of disk space. I quickly ran into limits with this, so I decided to just convert the first 20 minutes of the film and compare that -- it seems to be a fairly representative sample. So I do the conversion:

=CODE_START=
$ avconv -i SStB-1920x1080px24-best-18m-vbr.mkv -frames 30000 -f yuv4mpegpipe SStB-best-18m-vbr.y4m

$ avconv -i SStB-1920x1080px24-best-12m-vbr.mkv -frames 30000 -f yuv4mpegpipe SStB-12mbps_best_vbr.y4m
=CODE_END=

To compute PSNRs for these two videos:

=CODE_START=
$ qpsnr -a avg_psnr -o fpa=1440 -m 28800 -r SStB-1920x1080px24-master.y4m SStB-best-18m-vbr.y4m

$ qpsnr -a avg_psnr -o fpa=1440 -m 28800 -r SStB-1920x1080px24-master.y4m SStB-12mbps_best_vbr.y4m
=CODE_END=

And SSIM is computed very similarly:
=CODE_START=
$ qpsnr -a avg_ssim -o fpa=1440 -m 28800 -r SStB-1920x1080px24-master.y4m SStB-best-18m-vbr.y4m

$ qpsnr -a avg_ssim -o fpa=1440 -m 28800 -r SStB-1920x1080px24-master.y4m SStB-12mbps_best_vbr.y4m
=CODE_END=

In both cases, I computed averages for each minute of film (1440 frames) and limited the comparisons to the first 20 minutes of film. These test take awhile to run, and there's really no need to compare the entire length of the movie.

Based on this test, I can report the following:

File           |  12mbps File   | 18mpbs File
---------------|----------------|-----------------
Size           |   6.7 GB       |   9.3 GB
---------------|----------------|-----------------
Min PSNR (dB)  |    41.3        |   42.2
Median PSNR    |    46.3        |   47.9
Max PSNR       |    51.0        |   52.5
---------------|----------------|-----------------
Min SSIM       |    0.9868      |   0.9898
Median SSIM    |    0.9968      |   0.9975
Max SSIM       |    0.9985      |   0.9988


Now, in an objective sense, these numbers look very good. Decibels are 1/10 of an order of magnitude on a logarithmic scale, so 30dB is about 1000:1, 40dB is about 10,000:1, and 50dB is about 100,000:1. The dynamic range of a typical HDTV is around 1000:1, so going beyond 30dB probably doesn't really help a whole lot for actual displays. The total dynamic range of human vision is much larger due to "dark adaption", but for an individual scene, it probably isn't much more than 10,000:1. So once you get to 40dB, you probably wouldn't notice the difference, even on a studio-grade video monitor.

=ZOOM=So once you get to 40dB, you probably wouldn't notice the difference, even on a studio-grade video monitor.=

It's harder to say what the SSIM numbers mean in absolute terms, although the maximum value is 1.000, so these numbers are clearly pushing the top of the range.

As for the difference between these two files, we're pretty obviously in the realm of diminishing returns: for an expenditure of about 2.6 billion bits, we get just over one decibel in PSNR, and a similarly tiny improvement in SSIM.

This all supports the idea that the 6.7 GB file is just fine to use, which means we can indeed use 8 GB SDHC media. In fact, we _could_ put it on a double-layer DVD at this size, but since "Sita" is probably exceptional, it still makes sense to target SDHC media.

# So how does it compare to Blu-Ray?

I set a goal of being "about as good as Blu-Ray" early on in the development of Lib-Ray, but it's very hard to objectively compare video quality, and as if that weren't enough of a problem, there is very little information available about just how good (objectively) Blu-Ray is. It may, not to put too fine a point on it, all be just a load of hype. For example, one source I found in my search for hard numbers on Blu-Ray image quality said that "[some Blu-Ray disks were only slightly better than DVD](http://www.which.co.uk/technology/tv-and-dvd/guides/blu-ray-disc-quality/)" (although others were very good). Even that was a completely subjective comparison, though, so it did not provide any kind of numbers to compare to other technologies.

=ZOOM=Ironically, the VP8 codec is so much better than the MPEG2 codec used for DVDs that this high-quality high-definition video is smaller than the data for the standard definition DVD!=

The Wikipedia entry on [PSNR](http://en.wikipedia.org/wiki/PSNR) claims that common values in video compression for fixed media are 30-50 dB, while 20-25 dB is considered acceptable for broadcast use. Unfortunately, the entry on [SSIM](http://en.wikipedia.org/wiki/Structural_similarity) does not give similar guidance. A paper, "[Comparison of HDTV Formats USing Objective Video Quality Measures](http://www.vcl.fer.hr/papers_pdf/Comparison%20of%20HDTV%20Formats%20Using%20Objective%20Video%20Quality%20Measures.pdf)" (DOI 10.1007/s11042-009-0441-2) by Emil Dumic, Sonja Grgic, and Mislav Grgic comparing different video codecs and metrics appears to indicate that an SSIM of 0.90 or more is pretty good (SSIM scores are basically a fraction -- "90% similar" is apparently quite a good measure. They also list PSNR in the neighborhood of 40 dB for the live action Blu-Radio clip they used for their research.

In the case of "Sita Sings the Blues", I think I basically just got lucky. I doubt that other titles will compress so well -- probably smooth computer animation like "Sintel" or live action movies will present more of a challenge to the compression algorithm and I'll likely have to standardize on larger SDHC cards as a result. Ironically, the VP8 codec is so much better than the MPEG2 codec used for DVDs that this high-quality high-definition video is smaller than the data for the standard definition DVD!



