---
nid: '3549'
title: 'Assembling Video from a PNG Stream with FFMpeg'
authors: 'Tom Kent'
published: '2011-12-05 12:36:03'
tags: 'png,theora,vp8,ffmpeg'
license: verbatim_only
section: hacking
main_image: icon_showreel.png
listed: 'true'

---

For a demonstration in a class I'm teaching, I recently assembled a video from a PNG stream with Sintel (except just the trailer, it was a more manageable size for the demo).

My example's a bit different, so bare with me.

The sintel trailer .png's came letterboxed (!) which I didn't want.  Sidenote: I'm not sure why VLC gave you problems above, but it is generally bad to apply letterboxing to the video you are encoding. All video players I've ever seen will apply it automatically if necessary. It just complicates things further down the road, and will indeed make your video not compress as well.

Additionally, since I was preping this video for my demo (where I used *lots* of different types of compression on it), I wanted to get it into a continuous lossless format, usually I would probably use ffv1 or H.264 lossless for a lossless codec, but in this case they were part of the demo, so I'm just using raw video packaged into a y4m format

Here is the command that takes the stream of PNGs and strips off the letterboxing, then packs it up as raw video, 24fps:

=CODE_START=
ffmpeg -i 1080/sintel_trailer_2k_%04d.png -vf crop=1920:816:0:132 -vcodec rawvideo -r 24 -pix_fmt yuv444p sintel_trailer.y4m
=CODE_END=
From there its easy to convert into theora.

=CODE_START=
ffmpeg2theora -v 10 -K 24 sintel_trailer.y4m
=CODE_END=

Personally I've never gotten comfortable with specifying the video quality, I always like to try out different bit-rates and then look at different results to figure out what is "good enough" (to just try it on part of the video without encoding the whole thing use -ss to specify a staring point and -t to specify a duration).  Without the video quality paramater (which I don't think ffmpeg supports), I can do it all at once:

=CODE_START=
ffmpeg -i 1080/sintel_trailer_2k_%04d.png -vf crop=1920:816:0:132 -vcodec libtheora -b 9000k -r 24 -pix_fmt yuv444p sintel_trailer.ogv
=CODE_END=

You could also go to the VP8 codec, and knock about 55% off the file size with about the same quality:

=CODE_START=
ffmpeg -i 1080/sintel_trailer_2k_%04d.png -vf crop=1920:816:0:132 -vcodec libvpx -b 4000k -r 24 -pix_fmt yuv444p sintel_trailer.ogv
=CODE_END=

Or if you really want quality, you could do either of those with 2-pass:

=CODE_START=
ffmpeg -i 1080/sintel_trailer_2k_%04d.png -pass 1 -vf crop=1920:816:0:132 -vcodec libtheora -b 6000k -bt 6000k -r 24 -pix_fmt yuv444p -f rawvideo -y /dev/null
ffmpeg -i 1080/sintel_trailer_2k_%04d.png -pass 2 -vf crop=1920:816:0:132 -vcodec libtheora -b 6000k -bt 6000k -r 24 -pix_fmt yuv444p sintel_trailer.ogv
=CODE_END=

=CODE_START=
ffmpeg -i 1080/sintel_trailer_2k_%04d.png -pass 1 -vf crop=1920:816:0:132 -vcodec libvpx -b 3000k -bt 3000k -r 24 -pix_fmt yuv444p -f rawvideo -y /dev/null
ffmpeg -i 1080/sintel_trailer_2k_%04d.png -pass 2 -vf crop=1920:816:0:132 -vcodec libvpx -b 3000k -bt 3000k -r 24 -pix_fmt yuv444p sintel_trailer.ogv
=CODE_END=

If you really want the letterboxing, (sigh) you can add -padtop 131 -padbottom 131 -padcolor 000000 to the ffmpeg commands.

To see the results for the entire video quality demo I did for my class, check out this site:

[http://mediaintro.teeks99.com/Video/Video-3-Quality.html](http://mediaintro.teeks99.com/Video/Video-3-Quality.html)
