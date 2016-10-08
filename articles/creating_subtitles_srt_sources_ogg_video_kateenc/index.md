---
nid: '3540'
title: 'Creating Subtitles from SRT Sources for an Ogg Video with kateenc'
authors: 'Terry Hancock'
published: '2011-05-02 3:18:54'
tags: 'movies,video,ogg,subtitles,kate'
license: verbatim_only
section: end_users
listed: 'true'
book: making_free_movies_with_free_software
book_weight: '10'
layout: book.html

---
<!-- Creating Subtitles from SRT Sources for an Ogg Video with kateenc -->

One of the more interesting aspects of Ogg Video is that it allows an essentially unlimited number of subtitle tracks to be included. This is especially useful for free-culture videos, since they are generally released globally, and there are often contributed subtitles. In fact, for "Sintel", I was able to find 44 subtitle files. I will be including them all as Ogg Kate streams in my prototype "Lib-Ray" version of "Sintel", and in this column I will demonstrate the  use of several command line utilities useful for this, especially the `kateenc` tool for creating the streams.

<!--break-->

=TEXTBOX_START=Making Movies with Free Software=
This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies, _Marya Morevna_, through the [Morevna Project](http://www.morevnaproject.org) and [Lunatics](http://lunatics.tv), which we are working on as Anansi Spaceworks.
=TEXTBOX_END=

After writing my recent piece on my [Blu-Ray Blues](http://www.freesoftwaremagazine.com/columns/five_ideas_escaping_blu_ray_blues) with finding a way to distribute high definition video, I began to experiment with free-licensed, non-patent-encumbered formats. The natural choice was, of course, to start with the [Xiph.org](http://xiph.org) formats and work my way along until I had achieved the goal. Today I'm going to create the subtitle streams.

=ZOOM=If you've been following this series, you'll recognize this as the same site I got the PNG frames and audio soundtracks from=

The mean source for the "Sintel" material is a [download directory](http://media.xiph.org/sintel/) on the Xiph.org website. If you've been following this series, you'll recognize this as the same site I got the PNG frames and audio soundtracks from. This site also has the original `.srt` format subtitle files for the nine languages that are included on the DVD version of Sintel.

Since then, however, 36 additional `.srt` files have been provided by the community, for a total of 45 different subtitle tracks. These are collected at a [different site](http://subs.macouno.com/). I'll be using all of these.

# Subtitles

There are also Ogg streams to carry subtitles. The most popular, and the one I'm going to be using, is [Kate](http://wiki.xiph.org/kate). Like the Theora, FLAC, and fhe command line tool for manipulating this format (`kateenc`) is included in the Debian archive (as part of the `libkate-tools` package).

=ZOOM=There are also Ogg streams to carry subtitles. The most popular, and the one I'm going to be using, is Kate=

The first problem I encounter with the `.srt` files from Sintel is that they do not use consistent encodings (I didn't realize this until `kateenc` choked on some of the files -- it expects UTF-8 encoded files!). Using the `file` command, I can see this right away:

=CODE_START=
$ file *.srt
sintel_afr.srt:     ISO-8859 text, with CRLF line terminators
sintel_ar.srt:      ISO-8859 text, with CRLF line terminators
sintel_bg.srt:      ISO-8859 text, with CRLF line terminators
sintel_bn.srt:      UTF-8 Unicode text
sintel_chs.srt:     ISO-8859 text, with CRLF line terminators
sintel_cn.srt:      Little-endian UTF-16 Unicode text, with CRLF, CR line terminators
sintel_cz.srt:      UTF-8 Unicode text
sintel_da.srt:      ISO-8859 English text, with CRLF line terminators
sintel_eo.srt:      UTF-8 Unicode (with BOM) text, with CRLF line terminators
    [...]
=CODE_END=

I started by collecting these into directories for each of the major encodings, but unfortunately, this is a little hard to untangle. In particular, the ISO-8859 encoded files use different code pages according to language, so you have to recognize the language codes in the file names (or look them up in an [ISO-639 language code](http://en.wikipedia.org/wiki/ISO_639) table) and figure out the correct page. For example, `ar` is the code for Arabic, and this means that we should decode from `ISO-8859-6`. Or so I thought -- actually attempting this results in an error. Opening the file up in Iceweasel, I noticed some weird characters that didn't make sense. It provides some other options for encoding, and with "`Windows-1256`" it actually looked like Arabic. So, that's what I'll use (in fact, it turned out that the majority of these files that `file` identified as `ISO-8859` were actually in one of various Windows encodings -- they were probably submitted in the default encoding of the user who contributed the translations).

This can be converted with the `iconv` command line tool:

=CODE_START=
$ cd ISO-8859
$ iconv -f WINDOWS-1256 -t UTF-8 sintel_ar.srt -o ../UTF-8/sintel_ar.srt
=CODE_END=

I didn't figure out any way to automate this, so I just went through the files one-by-one to convert the encodings appropriately (fortunately, they were not all this hard). I'm not going to go through this in detail, but in the end, I had all 44 of my subtitle files in one directory with UTF-8 encodings.

At this point, a `tcsh` loop is handy for processing the files in bulk to get my Ogg Kate streams:

=CODE_START=
$ cd All/UTF-8/
$ tcsh
> foreach lang ( af ar bg bn cz da de en eo es fi_ep fi_FI fi_ps fr gl gr he hr hu id it jp ko ku la lv mk ml nb_NO nl pa pl pt ro ru sk sr th tr uk vi zh_CN zh zh_TW )
foreach? echo $lang
foreach? kateenc -t srt -c SUB -l $lang -o ../../OGG/sintel_$lang.ogg sintel_$lang.srt
foreach? end
  [...]
> 
=CODE_END=

Note that by providing this code to `kateenc` via the `-l` option, it will identify the subtitle track correctly by language. This will allow the player to identify the tracks correctly by language (I tested this in VLC, and it provides the full-name of each language in that language on the subtitles pull-down menu for the user to select from).

## Fixing bugs in the SRT files

At this point I must be honest -- many of these `.srt` files had bugs. As a result, I got quite a number of syntax warnings from `kateenc`. I had to go back and fix a _lot_ of these files in order to get them to work smoothly.

=ZOOM=I had to go back and fix a lot of these files in order to get them to work smoothly=

When everything is working smoothly, the code above will simply list the language/country code extensions. If something goes wrong, though, the `echo` line will tell which language files was being processed, so you can check it out.

Some of the errors I found on inspection:

* Two subtitle blocks run together without an intervening blank line (kateenc skips the second one and then complains about "non-consecutive ids"). Fix by adding the blank line.
* Extra blank lines inside a subtitle block, resulting in a syntax error.
* Incorrect time codes (typos?) resulting in nonsensical time intervals (reversed, or of zero-length)
* Non-standard annotations, such as author information. These can be converted into normal subtitles and placed at the end (they'll appear near the end titles), thus preserving the correct attribution.
* Unicode byte-order marks at the beginning seem to confuse kateenc in a couple of cases, so I just removed them.

At this point we have 44 Ogg files with Kate streams in them. Combined with the audio and video streams from before, we'll be ready to assembled them into a single multimedia file, which will be the goal of my next column.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=
