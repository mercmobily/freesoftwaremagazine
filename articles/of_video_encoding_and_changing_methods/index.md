---
nid: '2044'
title: 'Of video encoding and changing methods'
authors: 'Mitch Meyran'
published: '2007-02-04 8:32:49'
tags: 'video,avisynth,virtualdub,mplayer,avidemux'
license: verbatim_only
section: opinions
listed: 'true'

---
I guess my [previous post](http://www.freesoftwaremagazine.com/blogs/of_movie_making_and_control) was a bit premature; for shorts, I was saying then that some Free softwares for video editing on Windows were good, but had no equivalent in the Free software world. While I was not wrong _stricto sensus_, I hammered a few of them during the last few weeks.

Thus, I’ll now write about the various free video treatment softwares I know and the slight shift in method this entails.

You'll see that there are strengths and weaknesses on both sides.


<!--break-->



# Free Software you can use on MS Windows (but maybe not anymore)


## [Virtualdub](http://www.virtualdub.org) and Co.

As a “proof that [he] had too much free time in college”, Avery Lee developed a video capture software that would enable him to actually reduce dropped frames, then he started adding a filter here, a driver workaround there... Arriving at one of the leading linear video processing softwares out there: Virtualdub.

Virtualdub is under the GPL; as such, it has over time spawned its fair share of forks; most of these ended up fused into one, aptly called [Virtualdubmod](http://sourceforge.net/projects/virtualdubmod) which added Matroska and OGM support. Its main interest comes from the video compatibility with Virtualdub, mixed with much more sound capabilities: variable bitrate, multiple sound tracks...


## [Avisynth](http://avisynth.org/)

That one is a script-based video processor: you can turn, mix, twist, deinterlace, filter, resize, convert, in short do whatever you want to video and sound streams, then either direct those to a video treatment software (as if it were a simple file) or create a file.

It’s also under the GPL.

One of its main features is the ability to add custom filters, and there are a truckload of them: intelligent deinterlacing, video cleanup and restoration, etc., can be tested and accomodated to meet pretty much anyone’s needs.


## [Xvid](http://www.xvid.org) (and its control panel)

Xvid is actually found both under Windows and GNU/Linux, but the difference is that under Windows, it’s always the same panel regardless of the application you use. As such, once you’ve set your preferred MPEG-4 encoding profile, convolution matrix, it stays.

Xvid is a code only implementation of the MPEG-4 standard, up to Advanced Simple Profile and preliminary h264 capabilities. It is quite fast and of high compression quality while still adhering to the standard. Due to its origins, it is very much compatible with the proprietary DivX codec (which does exist under Windows, MacOS X and GNU/Linux, even though the latter isn’t being updated very often).


# Free software you can use on GNU/Linux (and probably BSD, too)


## [Avidemux](http://fixounet.free.fr/avidemux/)

This is the closest to a Virtualdub “clone” I could find under our dear free OSes: the interface is not too dissimilar (while being GTK-based), it’s pretty much as fast as Vdub is, it provides similar video filters by default... But it has its differences:


* Virtualdub cannot apply effects on YUV colour spaces: you need to convert the video to RGB to do so, or to feed it treated video through Avisynth. Avidemux doesn’t care.
* Virtualdub processes only MPEG-1 video files natively, and requires AVI formatted files (with ACM codecs) otherwise. Avidemux can process many more video formats (such as DV files or DVD VOBs).
* Virtualdub is very VERY stable, and crashes usually open a small internal debugger that can give you an explanation for the crash. Avidemux merely exits, only sometimes leaving a core dump behind.
* You can use Virtualdub to open video files (`virtualdub video.avi` works); Avidemux can be, too, but then it won’t open the video file you’ve clicked to open it. Ooopsie.
* Avidemux can output OGM files, however you can’t feed it a Vorbis sound stream; you’ll need `ogmmerge` to mix your Avidemux-treated video and its soundtrack. Ooopsie too. While “vanilla” Vdub doesn’t do OGM, Vdubmod is a snap to add tracks with tags.
* Virtualdub’s encoding window allows you to set priority on the fly, and provides finer grained statistics (possible stalls, calculated future file size...)

As a side note, Avidemux seems to reuses some of the code coming from Avisynth, but also some Mplayer stuff.


## [Kino](http://www.kinodv.org/)

This one is also a linear video editing software; however, it adds more flexibility: Kino can apply time-based effects (Vdub and Avidemux apply filters to the whole stream) and provides more flexible clip management. While I’m not one to add too many effects to a video, Kino is the ultimate weapon of the DV user: its deinterlacing engine is fast and efficient, and does field matching instead of merely blending fields, resulting in a clean, sharp picture quality.

It’s too bad though, that it doesn’t provide more advanced MPEG-4 encoding options. It is, however, well geared for DVD authoring.

It crashed once on me; however, when I restarted it, it detected the crash, reloaded my current project in its pre-crash state, and let me continue merrily.


## [Cinelerra](http://heroinewarrior.com/cinelerra.php3)

Cinelerra is a valiant effort to put Adobe Premiere to shame: it supports effects, clip libraries, multiple timelines; it is fast, able, the interface can be modded...

However, its internationalisation sucks: I got more than my share of messed up accents in the lot (bad character table translation) and missing translations; while the latter doesn’t bother me much, the accents can actually push a label off of the window, and the setting becomes impossible to understand.

Moreover, I don’t know if the 64-bit port is to fault for that, but I just couldn’t add clips to the clip library, and the software kept crashing. I gave up on it after half an hour of crashes, restarts and no progress. Maybe the 32-bit English version is a breeze to work with, but the 64-bit French version... well it sucks.


## [DVD::Rip](http://www.exit1.org/dvdrip/) ([Transcode](http://www.transcoding.org/cgi-bin/transcode) wizard)

While it does rip encrypted DVDs (booh! would say the DRM camp), it is quite useful for cropping, resizing, multiplexing and dubbing a movie. It is, moreover, FAST! However, I don’t like using it too much because I can’t do simple pass quality based Xvid movies with it: I have to do dual passes.

Having looked at Transcode’s manpage though, I’d rather keep using this one for backing up my few DVDs.


## Xvid, the free OS version

Don’t kid yourselves, I know perfectly well that both the Win32 and POSIX versions are based off the exact same code. What I miss most though, is the control panel; while Avidemux’s Xvid panel is a virtual copy of the Win32 Xvid codec settings window, it is set for Avidemux alone.

Speed and quality though, they are absolutely indistinguishable from eachother (as it should be); maybe we’ll see more of a difference when Xvid finally implements multithreading...


# Conclusion

Free systems have their fair share of video treatment software and tools. I have covered only a few of them here, but let me tell you that I only need one last little bit of trial and error work in order to dump video editing on Windows for good. And just in time too, as most of the software I use on Win32 won’t work with Vista...

