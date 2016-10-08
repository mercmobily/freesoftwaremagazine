---
nid: '3746'
title: 'Lib-Ray Video Standard: Assembling the Matroska MKV container file with mkvtoolnix-gtk'
authors: 'Terry Hancock'
published: '2012-04-23 1:58:47'
license: cc-by-sa
section: hacking
main_image: libray_mkv.png
listed: 'true'

---
<!-- Lib-Ray Video Standard: Assembling the Matroska MKV container file with mkvtoolnix-gtk -->

In my previous installments, I described the success I've been having with compressing "Sita Sings the Blues" with the VP8 video codec, and at the end I had a video file. Then I converted the audio to get a FLAC copy of the soundtrack (opting to retain this rather than compress into Vorbis format). Now in this installment, I'll show how I used `mkvtoolnix-gtk` to build a complete MKV file with VP8 video, FLAC audio, and named chapters. The result is the complete "main feature" multimedia file that will form the core of the Lib-Ray prototype.

<!--break-->

=TEXTBOX_START=Lib-Ray Video Format=
This is the fourth in a short series of articles I'm writing about the updated proposal
we are working on for [Lib-Ray](http://lib-ray.org) -- which is to be a free-software, open-standard based no-DRM solution for distributing high-definition video in fixed media (i.e. not downloads, but a copy you can put on your bookshelf).
=TEXTBOX_END=

Streaming multimedia formats are complex creatures. At the top level, there is a "container" format which encodes a series of data packets from one or more "streams". Each stream then has its own internal format. The packets from these streams are interlaced in the container so that the reading program gets a little bit of each, along with timing information which it then uses to play them all simultaneously. This is how you can get video and audio playing out of one file onto your screen with everything syncnhronized. The VP8 codec that I described previously is just the format for representing the video stream. The container file is "Matroska" or "MKV" format.

At the end of encoding, I did technically have an MKV file, but it was a very dumb one, containing only the single VP8 video stream (it doesn't even have sound at this point). Now, I need to assemble the sound, chapters information, and possibly subtitles and put them into the stream as well.

The tools for handling Matroska streams are available in two Debian packages: `mkvtoolnix` and `mkvtoolnix-gtk`. The latter provides a simple GTK GUI interface for manipulating MKV files with the commandline tools in the former package.

# Subtitles (or not?)

In the first two prototypes for Lib-Ray, I used OggKate stream format for subtitles. This is a very versatile format that allows for vector graphics and could be used for more complex tasks than just subtitles. You might regard it as overkill for the simple task of providing translations, but that kind of flexibility would've been pretty cool.
The more common (and simpler) format for subtitles, though, is the "SRT" format which can be read by most video players. SRT format is just a text file with time codes and the text desired. It can't do vector or bitmap graphics, it just provides text.

=ZOOM=The decision to use SDHC cards along with the observation that released videos could then be patched to include things like additional subtitle tracks argues for a structure that stores subtitles in separate files=

However, it is supported by a number of software tools. It can be easily read (and created) in a unicode-capable plain text editor. The WHATWG HTML "[Living Standard](http://www.whatwg.org/specs/web-apps/current-work/multipage/index.html)" shows recently added [features](http://www.whatwg.org/specs/web-apps/current-work/multipage/the-video-element.html#timed-text-tracks) to support reading SRT subtitles from separate files. And there is a Javascript library which can emulate these features using Dynamic HTML programming in the page.

Finally, the decision to use SDHC cards along with the observation that released videos could then be patched to include things like additional subtitle tracks argues for a structure that stores subtitles in separate files -- which is a common way to deal with SRT files (but not so common with Ogg Kate format).

So, I've decided to back off from Ogg Kate and adopt the more common SRT format. I may decide later to include some subtitles in the media file, but at present, I'm just going to assume they will be in seperate files.

# Using mkvtoolnix

The `mkvtoolnix` package in Debian provides three utilities: `mkvmerge` for assembling streams into an MKV file, `mkvinfo` which can tell you what an MKV file contains, and `mkvextract` for getting the separate streams out of an MKV file. I didn't make much use of these commandline utilities, though.

Instead, I used the graphical front-end provided by the `mkvtoolnix-gtk` package. This provides "`mmg`" which is a GTK-based graphical tool for controlling `mkvmerge`. This is a very simple program, and I wouldn't exactly call it good GUI design, but it does the job, and the task is simple enough that the GUI doesn't get in the way. What follow is the step-by-step process I used for the Lib-Ray "Sita Sings the Blues".

=IMG=mkvtoolnix_gui-sita-input.png=Mmg program, set up with the audio and video source tracks=

To get the input video and audio files, I just click the "add" button, browse for the desired source files, and select it. The video source is another (simpler) MKV file -- the direct output from `vpxenc`. The audio is the FLAC file.

I also enter the desired target filename in the bottom field.

# Chapters

One thing that Matroska does rather nicely is allow you to add named chapter marks to your stream. For "Sita Sings the Blues", I just adopted the same chapter breaks as the DVD edition. To do this, I made a list of the start and end times for each of the DVD chapters. I added these using the "Chapter Editor" tab in `mmg`.

=IMG=mkvtoolnix_gui-sita-chapters.png=The chapters editor allows you to define and name chapter breaks=

One thing that is a little weird is that `mmg` does not actually read the chapter information you put into the "Chapters" tab. Instead, you have to save the chapters data to a file, then you need to add this file to a separate field on the "Global" tab in `mmg`. This makes no sense to me, but that's the way it works.

=IMG=mkvtoolnix_gui-sita-global.png=The chapters file has to be selected from the "Global" tab=

I had no use for the "Attachments" tab, so I won't go into that -- apparently you can embed additional files in the MKV file. Might be useful for a cover-art image or something (but the Lib-Ray standard will store this in a separate file).

I'm intrigued by the "File/segment" options. It seems like you can probably break up a video into smaller chunks, as the DVD standard requires (in a standard DVD, the individual media "VOB" files are limited to 1 GB in size, so the movie is actually represented as a chain of these files). I can see that this might be useful, but then again, the filesystems I'm likely to support for Lib-Ray don't have a problem with large files. So I question whether there's any technical value to breaking up the media file. My conclusion for now is to keep it simple and make one giant (7 GB) file. If I find problems with the filesystem, I'll revisit this issue.

# Finish

After this, I just click the "Start muxing" button. At that point, I get a progress bar. The multiplexing process is much faster than the earlier encoding steps. Still, this took a good 20 minutes or so on this feature length video.

After I completed this, I watched the resulting video in both VLC and Totem. It worked well in both. I use VLC for most general multimedia viewing. The significance of Totem is that it uses the Gstreamer backend, which is likely what I will be using in designing a Lib-Ray player (more on that in a later column). So it's good to see that it works!
