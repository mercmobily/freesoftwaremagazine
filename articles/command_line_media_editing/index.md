---
nid: '2049'
title: 'Command line media editing'
authors: 'Jonathan Roberts'
published: '2007-02-05 9:00:00'
tags: 'cli,command-line,media,editing'
license: verbatim_only
section: opinions
listed: 'true'

---
This last week I've been trying my hand at a bit of DVD authoring and I thought I'd pass on everything that I've found out! A couple of the most useful tools are command line based, hence the title, but I'm also going to talk about a fantastic GUI that brings these bits and pieces together. To my horror, just as I sat down to write this I discovered Mitch Meyran had just posted a very similar [blog entry](http://www.freesoftwaremagazine.com/blogs/of_video_encoding_and_changing_methods)! This post, however, is a bit more command line based and HOWTO-like in structure. 

I think the tool I've found to be most useful so far is `ffmpeg`. If you install this package through your package manager and then run it with no options in a terminal, you'll see just how flexible it is as your screen fills up with line after line of options! Don't let this overwhelm you though, I've been using it to convert one file format to another and stream recording and have found I needed to know very few options. Imagine you have an MPG file you want converted to an OGG:

`ffmpeg -i /path/to/yourinputfile.mpg -sameq /path/to/youroutputfile.ogg`

The `-i` option _always_ has to come before your input file; the output file, however, does not require any options. In this example, I used the `-sameq` output option, which forces the output to be of the same quality of the input. 

Another input option I've found to be very useful is `-ss` which takes a time argument in the form of `hh:mm:ss`. It forces the encoding to start from a specific point in the video (or audio) file (it's useful for clipping of the beginning of some files). The other output option I've found very useful is `-r` which lets you change the frames per second of the encoding – for PAL televisions use 25 and for NTSC use 29 (I believe these numbers are correct). 

`Sox` and `soxmix` are very similar to ffmpeg: the difference is that they deal specifically with audio files. Sox can be used for converting one audio type to another, or it can also be used for concatenating two audio files together; soxmix can be used for mixing two audio files together to form one. I didn't actually use soxmix in this current project, but I have used it in my [podcast](http://questionsplease.org) for mixing the two sides of the conversations into one file. To achieve this you simply use the following command:

`soxmix /path/to/input1 /path/to/input2 /path/to/output`

There are a lot of options that can be applied here; for example reduce the volume of one of the files as it is mixed in with the other, but that is the subject of another post... Sox has very similar syntax to Soxmix. However, when you give sox two input files they will not be mixed, but concatenated. To convert one audio type to another with sox you can use a command similar to this:

`sox /path/to/input.mp3 /path/to/output.ogg`

Next up on the command line is [DVD-Slideshow](http://dvd-slideshow.sourceforge.net/wiki/Main_Page). Used in conjunction with dir2slideshow you can create photo slideshows that will play back on any DVD player. Start of by using `dir2slideshow` to produce an input file for DVD-Slideshow:

`dir2slideshow -n 'name goes here' -t 5 /path/to/photo/folder`

The `-n` option gives the slideshow a name and the `-t` option sets how many seconds each picture should be displayed for. This produces an output file `name.txt`; we then use the following command to have DVD-Sideshow format our pictures for a DVD player:

`dvd-slideshow -n 'name goes here' -f name.txt -a 'any background music file here'`

The `-f` option lets us specify the file we created with `dir2slideshow` and the `-a` option lets you specify some kind of background music to have playing while you watch your photos. If you'd like more information on DVD-slideshow their [website](http://dvd-slideshow.sourceforge.net/wiki/Main_Page) is a great wiki and has brilliant documentation. I think that's everything I want to talk about from the command line! My apologies for the simplistic examples, I can only hope they'll prove useful to some people...

Earlier, I mentioned GUI programs. If you're wanting to produce a DVD I haven't managed to find anything better, or more straight-forward, than [ManDVD](http://kde-apps.org/content/show.php?content=38347). It doesn't accept all file formats as input and its own editing abilities are limited – which is why all the command line tools are useful – but it is a great program for producing menus, has a good graphical front end for DVD-Slideshow. It will create all the VOB files for you and also an ISO which you can burn to as many discs as you like. It's a KDE app but it's running brilliantly on my Fedora Core 6 Gnome desktop so I don't think that is an issue for anyone. The only problem I can think is that I haven't seen it in any repository, but the dependencies are clearly presented on the site and easy to find. To run it, you simply extract the tarball and either double click the executable or run `./mandvd` from the command line. Saying all that, I will soon have to take a look at [Mitch's post](http://www.freesoftwaremagazine.com/blogs/of_video_encoding_and_changing_methods) about video editing that I mentioned, maybe some of those applications will prove useful to me as well.

