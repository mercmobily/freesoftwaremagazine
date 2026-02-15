---
nid: '3481'
title: 'Creating a Storyboard Animatic with Blender'
authors: 'Terry Hancock'
published: '2011-01-19 10:10:07'
tags: 'movies,blender,audacity,lunatics,cinelerra'
license: verbatim_only
section: end_users
listed: 'true'
book: making_free_movies_with_free_software
book_weight: '0'
layout: book
---
<!-- Creating a Storyboard Animatic with Blender -->

Previously, I demonstrated creating an animatic using Kino. That was an interesting exercise, but Kino is not really up to that kind of job. Blender, on the other hand, has a very nice "video sequence editor" built into it, and it turns out to be very well adapted for this kind of task.

<!--break-->

=TEXTBOX_START=Making Movies with Free Software=
This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies, _Marya Morevna_, through the [Morevna Project](http://www.morevnaproject.org) and [Lunatics](http://lunatics.tv), which we are working on as Anansi Spaceworks.
=TEXTBOX_END=

Although [my experience with Kino](/articles/creating_animatic_using_audacity_and_kino/) proved that it was possible to create an animatic with it, it was no picnic. Also, as it happens, Kino stopped working for me on the computers I use, so it would've been quite difficult to continue with it even if I had wanted to.

=ZOOM=Although my experience with Kino proved that it was possible to create an animatic with it, it was no picnic=

I was clearly looking for something more sophisticated, that would provide finer control over the editing process, and make it easier or more intuitive. By now, of course, I've already decided to go with 3D animation on this project, and Blender is the obvious free software choice for doing that. So, it's only natural that I try out the Non-Linear Editor (NLE) built into it.

Since I'm already comfortable with Blender's interface, there are few interface problems. Blender's VSE is quite stable. And of course, it will be convenient to be able to include Blender 3D scenes and compositor operations directly into my video sequences. So, I've essentially already decided to use Blender. I may review Cinelerra at some point for completeness, but it's unlikely to displace Blender on _Lunatics_.

# Soundtrack, storyboard, and animatic

For the pilot episode of _Lunatics_, "No Children In Space", I've been working very closely with the soundtrack. Quite a bit of the film will be essentially visual compositions cut to fit the music I've chosen. This episode serves as a kind of prologue for the series, and it requires a fairly large amount of time contraction, which is done in a lot of different ways, ranging from montage to time-lapse.

=IMAGE=fig_blender_animatic.jpg=Blender's "Video Sequence Editor" (VSE) provides a simple interface based on "strips" representing different sound and video elements to be combined. This shows the arrangement of windows I've been using for creating storyboard animatics=

So, it's natural that I'll be working "sound first" as I build up the animatic. I created a number of audio tracks in Audacity, mixing music tracks, sound-effects, and ambient sound recordings to create a rough soundtrack for the story. This is divided up into several smaller pieces, with some transitional material between each block.

=ZOOM=I'll be working "sound first" as I build up the animatic=

I discussed the creation of the storyboard images in an [earlier column](/articles/storyboards_film_flickr_openclipart_inkscape_gimp_and_imagemagick/). They were created with various techniques ranging from using found images from [Flickr](http://www.flickr.com) to sketching on 3×5 index cards and scanning them into the computer. By these various means, I've accumulated most (although not quite all) of the storyboards for the film. At some points, I discovered problems with the shots or with the story and made changes, or at least anticipate making changes, and I created a "NOT YET WRITTEN" title card to cover those parts in the animatic (this is why you make an animatic -- It's much easier to change!). I also created some moving shots by panning and zooming background plates, as I explained in a recent column (earlier versions of the animatic simply used multiple storyboards and dissolve transitions to simulate moving shots, although this was not entirely satisfactory).

I collected all of these storyboards into a directory as PNG image files, each with an appropriate numbered filename, like this: `NCIS-0020-train-010.png`.  Both scenes and shots are numbered by tens, so it would be easy to insert additional shots or scenes if necessary.

So I have these raw materials to work with:

* Audio tracks (music, sound effects, and ambiance)
* PNG images to represent storyboards (static shots)
* Videos of a few complex moving shots

# Loading elements

There are multiple channels available, which behave like layers in a drawing. An element is loaded into the edit by adding a "strip". When I add a strip, I drag it to a time position (horizontal) and a channel (vertical), then left-click to drop it there. With audio, multiple tracks blend. With images, the highest channel is the one that is displayed. The resulting video can be played back through the interface, or rendered to a video file.

=ZOOM=There are multiple channels available, which behave like layers in a drawing. An element is loaded into the edit by adding a "strip"=

I start by adding audio tracks. I use WAV format for these, because Blender can "look inside" these files and map the audio envelope in the strip (WAV format can be exported from Audacity). This is useful, because most audio cues can be recognized visually on the strip making it easier to locate them.

To load these, I click "Add"→"Audio (RAM)"; I browse to the file and select it; and then I click "Select Audio (RAM)". The audio data appears as a green strip in the editor, with the audio envelope painted onto it. I can then move it to the desired location and left-click to drop it into place.

=IMAGE=fig_add_wav.jpg=Adding a WAV sound file=

Adding a single image can be done in the same way. The image is repeated for a default number of frames (the default in my Blender installation is 50 frames. I'm not sure if that can be changed). This is not needed very much, though, because it's easier to add images in blocks.

=IMAGE=fig_add_one_image.jpg=Adding a single image as a strip=

To use a moving video, it's easiest to render to individual images in a directory (there are some compatibility problems with some video formats -- perhaps most oddly, the "AVI RAW" format that Blender itself can render to). In any case, though, loading from images is the safest way to do frame-accurate editing, since some video compression methods interfere with accurate frame timing. 

=IMAGE=fig_add_image_sequence.jpg=The easiest way to include video is to simply load an array of images from a folder=

Using the same technique as for a load of video frames, you can instead load a series of storyboard images. Then you can use "Strip"→"Separate Images to Strips" to expand these into a series of shots. A dialog window will pop up to ask how many frames they should be. You can figure this out approximately if you know the length you want the sequence to be and the number of storyboards -- just divide to get the correct frame count. Or you can just pick a convenient number and stretch them to fit afterwards.

=IMAGE=fig_split_storyboard_images.jpg=You can add a whole lot of storyboards using the same technique, and then split them into individual images=

There are various actions for moving and stretching the strips. For example, you can manipulate the arrow widgets at the end of each strip to stretch the strip. Or you can grab the strip and move it around (the 'G' key will work for this, just as it does in other parts of Blender). 'A' will select all (unlocked) strips. 'B' will allow you to box-select strips. 'Ctrl'+ left-click on an arrow widget will cause the boundary to be moved, including both the edge of the current strip and the whole adjacent strip.

Scrolling around in the sequence is done as in other parts of Blender, by middle-clicking and dragging on the window (this works like other 2D elements of Blender -- in that dragging with the middle mouse button works the same whether 'shift' is pressed or not.

# Effects

Various effects are available, although I made the most use of "Cross" which, with images or video, is simply a "dissolve" (the name used in Blender's menu comes from "cross-fade" which is the same idea applied to sound).

To create an effect, I adjust two strips so that one is in another channel, and the strips overlap. The size of the overlap will be the effect length (however, it's not that important -- once the effect has been created, it can be stretched simply by moving the shot boundaries of the shots being transitioned.

Now, with both strips selected, use "Add"→"Effect"→"Cross" to create a dissolve effect. The effect will appear as a new strip, this time in red.

=IMAGE=fig_add_effect.jpg=In order to create a transition between two shots, I select them, and then add an effect, which then appears in its own channel=

# Seeing your work

The easiest way to look at the animatic while working is simply to use the "play" button on the timeline window. There are controls just like you expect on a video player, and the feedback is instant. You can also sweep the position line (a green vertical line on the timeline window or the Ipo editor) and see the image at each point.

However, at some point, you'll most likely want to save a video rendering. This is just like animating a regular scene in Blender, except that you need to set the "Do Sequence" button under the "ANIM" button before animating. The other settings work just as they do when animating a regular scene file.

=ZOOM=Fair warning: raw video files can be quite large!=

Fair warning: raw video files can be quite large! A forty-minute "AVI Raw" video file at 25% HD size (in other words, 480×270) is around 15 GB. A full size file, would be 16 times larger than that! Without some kind of video compression, a lot of storage space is required.

=IMAGE=fig_render_video.jpg=Rendering video from the Video Sequence Editor is very similar to animating a scene from Blender, except for setting the "Do Sequence" button=

# Assessment

Overall, I found using Blender's VSE to be a huge improvement over a simple editor like Kino. I'm not in a position to make comparisons to proprietary non-linear video editors, although it's worth noting that they are apparently quite expensive. The other major free software competitor for this task is Cinelerra, which I have very little experience with. Based on my own experience and comments from others, though, I see the following reasons to pick Blender's VSE over Cinelerra for my project:

* Learning the Blender interface is a sunk cost (I already use it regularly)
* The Cinelerra interface is complex and quite different (it may resemble proprietary NLE applications, but I'm not sure)
* Available Cinelerra builds have a reputation for instability -- they crash a lot, frequently causing loss of data, whereas Blender 2.49b has been very stable for me (there are some suggestions that the Debian package for Blender 2.53 is still pretty unstable)
* There doesn't seem to be much that Cinelerra can do that Blender can't
* Blender VSE allows tight integration with scene produced in Blender

Having said that, I have to acknowledge that there may be good reasons to use Cinelerra on other projects. Its interface appears to be more traditional (so it may not take as long to learn as Blender's). This is a good reason if you aren't using Blender for anything else on the project (such as on a live-action film).

The stability issues will probably change over time, and although I've found both programs to be resource hogs (of course), I haven't run into serious problems with either program myself (the most annoying problem so far is that Blender and Audacity apparently can't share my audio driver, so I have to shut one down to run the other).

=ZOOM=Overall, I think I have a winner here=

I'm not certain that Blender's facilities for handling longer edits (such as feature-length films) is as good. It's awkward to shift scenes back and forth as the length of earlier scenes changes, though I was able to do it by using block selection (but the markers don't move with the strips, so markers all have to be reset, which is tedious). On the other hand, I haven't done any long-format work in Cinelerra, either, so I don't know if it's any better.

As for the audio mixing capabilities of the Blender VSE, I have to say I'm not impressed. It's not at all easy to work with audio, and so I found it much easier to pre-mix audio tracks in Audacity before using them.

The real selling point, though, is the integration with the rest of Blender. Given that I will be working on each individual scene in Blender, it's going to be very natural to put the pieces together in Blender. Overall, I think I have a winner here.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=