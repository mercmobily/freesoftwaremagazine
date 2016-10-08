---
nid: '3557'
title: 'Emulating disk menus with HTML5 and Chromium for Lib-Ray'
authors: 'Terry Hancock'
published: '2011-06-28 9:07:10'
tags: 'movies,video,chromium,html5,lib-ray'
license: verbatim_only
section: hacking
listed: 'true'
book: making_free_movies_with_free_software
book_weight: '10'
layout: book.html

---
<!-- Emulating disk menus with HTML5 and Chromium for Lib-Ray -->

The final step (and probably most interesting) step in creating my Lib-Ray prototype (for releasing high-definition video without DRM or other anti-features) is to make a disk menu system to access the video data that I've already prepared. This column will actually document my second prototype design, as opposed to the first prototype which I presented at Texas Linux Fest in April 2011. This second is a big improvement and conforms much better to the draft HTML5 standard from the WHAT Working Group, and is much more functional in the existing Chromium browser, although improvements are still needed.

<!--break-->

When I first approached the [Lib-Ray](http://lib-ray.org) design problem, I saw it primarily as an issue of video standards -- to which I wanted to add functionality equivalent to DVD disk menus. An early insight was that HTML pages provided most of the needed functionality, although it was not immediately clear how to connect them to the video player for the main feature. So, looking at it in those terms, I came up with a design in which the HTML browser is used only for the menus, requiring some extra glue code to control the external video player.

When I gave a [presentation on Lib-Ray](http://texaslinuxfest.org/sessions/goodbye-blu-ray-hello-lib-ray-free-format-free-movies) at the [Texas Linux Fest](http://texaslinuxfest.org/) conference, though, I got the sort of response which was quite frankly part of the reason I wanted to go -- a "why don't you just..." question which allowed me to break through some of my own blind spots.

The insight, really, is that HTML5 browsers are really all about putting the video player _in the browser_, and so a much more natural approach is to run the whole thing inside the browser. I did realize that this capability existed, but I had a number of objections based on performance and compatibility issues. However, with further analysis and testing, I found that most of these objections vanished.

Perhaps more importantly, I came to understand just how cutting edge (and therefore still pliable) the HTML5 standard is -- some of the features I will be using in my design where actually written into the WHAT Working Group's live draft HTML standard _while I was working on this project!_ So, instead of having to create a custom plugin from scratch, I'm now just relying on the WHATWG standards to actually be implemented in Chromium -- a highly probable outcome even if I do nothing, and probably near certainty if I can demonstrate a convincing use-case for these features. After all, the parts of the standard I need were written by Google employees -- the same people who are primarily responsible for Chromium.

# Lib-Ray filesystem structure

Figure 1 shows the basic structure of a Lib-Ray disk: there are separate directories for the menus and the media files, to make them easier to find and reduce clutter. A third directory, "Extra", is reserved for free-form data content (general HTML pages that go beyond the limitations on the menus, other sorts of data files, etc).

In the root directory of the medium, there are just three files: `index.html` is the disk "Main Menu"; `meta.cnf` is a metadata file in "config" or "INI" format with simple key-value pairs; and `cover.jpg` is an image file representing the front cover of the disk, to be used in storage and retrieval systems.

=IMAGE=fig_libray_disk_structure.jpg=Figure 1: The file structure of a Lib-Ray disk=

The `meta.cnf` file I've provided for "Sintel" is pretty simple:

=CODE_START=
[Lib-Ray]
# Mandatory fields
LibRayVersion: 0.2
LibRayID: 1     # ID for the producer (sign up for this with lib-ray.org)
DiskID: 2       # ID for this disk (you assign this number)
Cover: cover.jpg
Title: Sintel

[Copyright]
Date: 2010
RightsOwner: Blender Foundation
RightsURL: www.blender.org
License: Creative Commons Attribution Only, Version 3.0, Unported
=CODE_END=

The "0.2" version number indicates this second prototype design. The `LibRayID` of `1` will be reserved for prototypes, otherwise it'll just be a unique number for producers (I'm thinking of setting up a wiki page for this), who will then assign a `DiskID` according to their own standards. The idea is just to give disks a unique ID code.

Additional metadata tags can be added later -- this is just the bare minimum that I think we need.

I've been asked why I didn't use a more powerful format, such as XML-RDF. Well, I thought about it. Then I thought "I'll have to get a manual to figure out how to input that correctly." And that killed it, because if I have to search for a manual, so will anyone else using it, and what will actually happen is that people just won't use it.

The simple key-value syntax of the INI (or "config") format is so dead simple that it's self-documenting and very easy to understand, so I have some confidence it will get used. Of course, nothing will keep people from putting XML-RDF metadata on the disks in the "Extra" folder.

The `cover.jpg` image is just a copy of the **Sintel** promotional poster, which is also the cover art for the DVD edition.

# Playing the disk

Playback begins when the disk is loaded, and the `index.html` page is opened in full-screen "kiosk" mode in the Chromium browser. The browser could in principle be any fully-compatible HTML5 browser, but in fact, [Chromium](http://code.google.com/chromium/) is the only browser that really works at all for this (I tested some of this with Iceweasel -- a Mozilla-based browser like Firefox -- and I discovered important functionality missing, so I will be sticking with Chromium for this column). For the record, this is Chromium 6.0.472.63 (59945) provided by the [chromium-browser](http://packages.debian.org/squeeze/chromium-browser) package in Debian. Fortunately, as a [WebKit](http://www.webkit.org/) based browser, Chromium is very similar to the browsers which are most likely to be found on Home Theater PCs, so this is a reasonable choice (and even if it weren't, adding a requirement for the Chromium browser would be a small penalty for Lib-Ray support on HTPCs).

At this point, the viewer sees something like Figure 2 -- which is the disk "Main Menu" that I created for **Sintel**.

=IMAGE=fig_sintel_main_menu.jpg=Figure 2: The "Main Menu" for my Lib-Ray "Sintel" disk=

At this point, the viewer can use a mouse to click on the "Play" button, navigate to the button using the tab key, _or_ they can simply press "Ctrl+P" to play the movie. This takes advantage of a new HTML5 attribute, `accesskey`, which allows us to specify hot keys for links. This is terrific for Lib-Ray, because any hot-key combination can be triggered from an infrared remote signal. This allows us to correctly implement the "Play" button behavior, as we would like to, in order to provide a proper [10-Foot User Interface](http://en.wikipedia.org/wiki/10-foot_user_interface).

The "Play" link is a simple HTML link to the "`Menu/feature.html`" file, which provides the playback behavior (this naming convention will be suggested, but not required by the Lib-Ray standard).

=IMAGE=fig_10ft_ui.jpg=Figure 3: Home Theater PCs typically use a "10-foot user interface" like a television set with a remote -- I support that by using "accesskey" to specify hotkeys which could be mapped to a remote control=

# The feature video file

The `feature.html` file is simply a container for the video player, which runs in full screen. So in a sense, we never really see the `feature.html` page -- when it loads, we are watching the video in full screen mode.

Here's what it looks like on my prototype **Sintel** disk:

=CODE_START=
<!DOCTYPE html>
<html>
<head>
<title>Sintel</title>
<meta charset="utf-8"/>

<!-- Basic Lib-Ray library communicates menu-based control settings to video player -->
<script src="libray.js"></script>
</head>

<body onLoad="honor_videosettings();" style="overflow: hidden; overflow-style: move; margin: 0; padding: 0; border: 0;" >
<video id="feature" preload="auto" autoplay="autoplay" style="margin: 0; padding: 0; border: 0;" width="1920" height="1080">
<source src="../Media/feature.ogv" type='video/ogg; codecs="theora, vorbis"'/>

<!--Optional external subtitle tracks go here-->

Video appears not to be loading.
You may want to open the <a href="../Media/feature.ogv">video file</a> with an external player (i.e. right click and select what player to open the file with)
</video>
<a href="../index.html" id="quit" accesskey="q"></a>
</body>
</html>

=CODE_END=

Clearly this is an HTML5 page. What it does is to create a "video" element that is 1920x1080 pixels in size. On a 1920x1080 "Full HD" monitor, this will exactly fill the screen. Assuming that Chromium is in fullscreen "kiosk" mode, the browser has no border, so this is possible.

By default in this circumstance, the browser would produce horizontal and vertical scrollbars (it seems it doesn't realize that it wouldn't need scrollbars except to make room for the scrollbars). This is overridden, though, by the use of the "`overflow-style: move;`" and "`overflow: hidden;`" CSS properties.

You'll also notice we have a phantom button (i.e. with no visible content) with the "`accesskey="q"`" attribute. This provides the "Stop" behavior during playback -- hitting "Ctrl+Q" will stop playback and return to the menu. Just as with the "Play" button, the "Stop" button on the remote can be configured to generate this keystroke.


# Setup menus and the `libray` Javascript library

For the most part, we interact with the video player by using Javascript calls. These are provided by the linked `libray.js` library which is very small and simple (more on that below). The `libray.js` file is available from the [Lib-Ray Downloads](http://lib-ray.org/downloads) page.

Following the general pattern of DVD menus, we have separate menu pages for audio and subtitle track selection and also for the scene selection. These pages don't actually change anything about the video player (which is not loaded until we navigate to the `feature.html` page).

What they do is to call functions from `libray.js` -- `setTrack()` and `play()` -- which set string variables in the "Session Storage" memory (another HTML5 feature -- "Session Storage" is a kind of super-cookie implementation, with more room and no need to upload data to a server through an HTML POST). This information is available through the browser object and can be accessed by other pages as you navigate through them. Thus, it's an ideal way to store the statelike data that we need about track numbers to play and where to start the video.

Then, when we navigate to the `feature.html` page, using the "Play" or "Resume Film" buttons, a Javascript function is called to read these values and set up the video player accordingly (if you happened to hear my presentation on m first prototype design you'll notice that this Javascript library is basically replacing the plugin code I had expected to need -- and this is obviously a much easier solution).

So, for example, here is the code used in the scenes menu to jump to Sintel's travel montage:

=CODE_START=
<div style="left: 150px; top: 234px;">
<a href="javascript:void play( 5, 50)">
<img src="scn-06.png" width="672" height="286" alt="SCENE 6"/>
<h3>Quest</h3>
</a>
</div>
=CODE_END=

=IMAGE=fig_scene_select2.jpg=Figure 4: The second "Scenes" menu=

This link has an image and a caption to identify the scene. The link is a Javascript call to the "`play()`" function. The arguments 5 and 50 represent the time: "5:50" (5 minutes and 50 seconds).

An audio track select button looks like this, using the "`setTrack()`" function from `libray.js`:

=CODE_START=
<div style="top: 150px; left:600px;">
<a href="javascript:void setTrack('audio', 2);" tabindex="4" id="en_51"><h2>English 5.1 Surround</h2></a>
</div>
=CODE_END=

=IMAGE=fig_audio_menu.jpg=Figure 5: The "Audio" setup menu=

Similar code controls the subtitles:

=CODE_START=
<td><a href="javascript:void setTrack('subtitle', 9)" id='en'>(en)<h3 class="lang">English</h3></a></td>
=CODE_END=

=IMAGE=fig_subtitle_menu.jpg=Figure 6: The "Subtitles" setup menu=

In all of these cases, what the function really does is just store the user's selection in the "Session Storage" provided by the browser (this is one of the things that did not work in Iceweasel, by the way -- only in Chromium).

The code that really does the work is called from the `feature.html` button when it loads the "body" element. The "`onLoad`" event calls `honor_videosettings()` which, as the name implies, actually honors the settings that are stored in the Session Storage. Here's what that function looks like:

=CODE_START=
   // Honor the settings selected in Audio and Subtitle menus when playing back video
   // (used in the feature.html page
  function honor_videosettings() {
    feature = document.getElementById('feature');
    quit    = document.getElementById('quit');
    
    // Seek to playback position if set
    feature.addEventListener("loadedmetadata", seek, false);
    
    // Return to menu bookmark after playback finishes (or is stopped)
    feature.addEventListener("ended", return_to_menu, false);
    feature.addEventListener("abort", return_to_menu, false);
    feature.addEventListener("error", return_to_menu, false);
    quit.addEventListener("click", return_to_menu, false);
    }
=CODE_END=

As you can see, this function isn't the bottom line either -- it sets up event listeners to call the appropriate code (I originally tried running everything directly from here, but that's very unreliable -- it creates a race condition with the process that loads the video data).

Chromium (or any fully-compliant HTML5 browser) generates a "`loadedMetadata`" Javascript event when it has loaded the basic information about the video file (it may still be streaming the video data, but it knows the structure of the file). Once that happens, it's safe to call the "`seek()`" function which seeks to the correct point in the file (and should also set the tracks correctly, although this does not yet work in the current version of Chromium). Here's the code for `seek()`:

=CODE_START=
   // Seek position in feature
   function seek() {
    iaudio    = eval(sessionStorage.getItem('audio_track'));
    isubtitle = eval(sessionStorage.getItem('subtitle_track'));     
    playback_sec       = eval(sessionStorage.getItem('playback_sec'));
    feature = document.getElementById('feature');
    feature.currentTime = playback_sec;

    // set full-screen display (WebKit specific)
    // feature.webkitEnterFullScreen();

    // Compatibility check -- don't try to set tracks on browser if it doesn't have tracks
    // (In fact, no browsers support this yet)
    if (feature.textTracks != null)
      {
      // Set audio and subtitle tracks
      SHOWING = 2;
      DISABLED = 0;
      for (i in feature.textTracks) feature.textTracks[i].mode = DISABLED;
      feature.textTracks[isubtitle].mode = SHOWING;
      for (i in feature.audioTracks) feature.audioTracks[i].disable();
      feature.audioTracks[iaudio].enable();
      }
   }
=CODE_END=

This code attempts to set audio and text tracks using the [audioTracks](http://www.whatwg.org/specs/web-apps/current-work/multipage/the-iframe-element.html#dom-media-audiotracks) and ["timed text track"](http://www.whatwg.org/specs/web-apps/current-work/multipage/the-iframe-element.html#timed-text-tracks) APIs defined on the WHATWG [HTML Living Standard](http://www.whatwg.org/specs/web-apps/current-work/multipage/index.html). If you look these up, you'll notice that the proposal dates are quite recent. I hope they won't have changed significantly between the time I write this and when you read it, but the API is not stable yet, so it's certainly possible.

Unsurprisingly, none of these track switching features are implemented in Chromium yet, so I have not been able to test the audio and subtitle track parts of my prototype.

However, the scene seeking behavior _does_ work in this version of Chromium, so the scene menus work as they should.

# Extras and design considerations

Of course, I had to create some "extras" on the disk. This is really easy and doesn't push the envelope at all -- it's just a website on a disk. These pages can have external links though -- the idea is that a simple player can opt not to support the content in the Extra folder or allow external links, while a full desktop or laptop computer environment can browse these pages just as they would any other HTML site. The content is derived from free-licensed material from the Sintel DVD, the Durian site, and Wikipedia.

There are a few design considerations you should keep in mind, though:

* Design for a 10-foot user interface -- use large print and keep the number of links small
* The screen is a fixed size -- 1920x1080, because that's "Full HD" (no support is provided for 720P screens yet)
* Bandwidth is unlimited (big background images and sound loops load fast)
* Rendering time is as slow as ever (unlike an online page, it makes no sense to spend rendering time to save bandwidth)
* Remember to include any web fonts you use in the design on the disk (in the `Menu` folder)

So, as a result, all of my pages for **Sintel** are just big background images with some text and graphics in front of it.

The final disk menu design is illustrated in Figure 7 below.

=IMAGE=fig_disk_menu_structure.jpg=Figure 7: The logical structure of the Sintel Lib-Ray disk menus=

# Evaluating the prototype

This prototype is actually watchable now! Which is a big improvement over my first design. I am disappointed that the audio and subtitle tracks do not work. And I had to fudge a little on the audio tracks because in fact, Chromium does not support FLAC audio on an Ogg video (although it will play it as an audio element). Also, bizarrely, Chromium will not play back an Ogg file with more than 20 streams in it. I have no idea why there should be such a limit, but it clearly screws up my 11-audio track, 40-subtitle-track video!

So I had to create a dumbed-down version of my Ogg video -- I put a stereo Vorbis track as the second stream (the Theora video being the first), and I only put a small number of useful language subtitle tracks embedded in the video file. If you really need the subtitles now, you can view them by loading the media file directly in your video player (at least this will work in VLC, as I showed in my previous column on building the video file).

I made up for this by using the support for external SRT-format subtitle files. I find this to be a very inferior way to handle subtitles compared to the embedded OggKate method -- but without lifting the 20-stream limit on Ogg playback, it seems to be the only way.

These "dumbing down" decisions allowed me to create a prototype that would play reasonably well on the current version of Chromium, which I thought was worth a little sacrifice of the pure design to achieve -- but obviously, I would like to see Chromium lift support FLAC audio and unlimited streams in multiplexed Ogg video streams.

That's the whole prototype. I'm working to finish up a few details and get this prototype online (I will probably upload it to the Internet Archive, and provide linkage on the [Lib-Ray site](http://lib-ray.org/downloads), alongside the Javascript library -- perhaps even by the time you read this). Clearly there's going to be a lot of polishing to do, and I will have to keep a close watch on Chromium development -- especially for the multi-track audio and subtitle tracks support that is currently missing.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=

