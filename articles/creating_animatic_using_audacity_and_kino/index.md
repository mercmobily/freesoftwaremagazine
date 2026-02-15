---
nid: '3343'
title: 'Creating an Animatic Using Audacity and Kino'
authors: 'Terry Hancock'
published: '2010-06-01 11:16:39'
tags: 'movies,audacity,kino,lunatics'
license: verbatim_only
section: end_users
listed: 'true'
book: making_free_movies_with_free_software
book_weight: '0'
layout: book
---
<!-- Creating an Animatic Using Audacity and Kino -->

An animatic is a kind of a rough sketch for a film. It's not really meant to be an artform in itself (although some reach that point), but it is rather intended to be enough information for the filmmaker to make intelligent production decisions. It also must be cheap and easy, since effort that goes into the animatic will not appear in the final film. I have not yet fully decided what tool is right for doing the animatics for _Lunatics_, so I'm doing some experiments with different tools in order to decide. In this column, I'll create an animatic for a short sequence from the pilot.

<!--break-->

=TEXTBOX_START=Making Movies with Free Software=
This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies, _Marya Morevna_, through the [Morevna Project](http://www.morevnaproject.org) and [Lunatics](http://lunatics.tv), which I am working on as part of Anansi Spaceworks.
=TEXTBOX_END=

The great weakness of storyboards is that they don't move. A still picture most naturally represents a "static" (i.e. unmoving) shot. To represent shots with moving elements, we draw arrows and make notes. But even with those additions, we can't really tell how fast the motion is, or how long the shot is. Are we going to dwell on a static shot, creating a feeling of negative space or impatience? Or is it simply a fast transition or part of a rapid montage of images? The storyboard doesn't do a good job of telling us this. And even if you wrote down these details, you still couldn't "get the feel" for the timing of the sequence.

=ZOOM=The great weakness of storyboards is that they don't move=

So we create an "animatic." At its simplest, an animatic is simply a series of still images presented in sequence -- like a slide show, but with the timing determined for each shot. If available, it's usually also combined with a temporary soundtrack ("temp track") to create a watchable, very-low-budget version of the story. Sometimes, for very dynamic shots, a small amount of "low animation" is added (such as a pan across an image or a figure of a person being pulled across the frame to indicate walking or running).

For complex three-dimensional shots, yet another step is sometimes added, called a "pre-visualization". The pre-vis is simply a quick-and-dirty 3D animation using very basic models. Usually, there is very little attention paid to lighting or textures, which saves a lot of production time. These are often used in combination with simpler elements in animatics for this type of film.

=ZOOM=At its simplest, an animatic is simply a series of still images presented in sequence=

Sometimes, of course, several animatics will be made, with increasing fidelity, as the production concept becomes more finely honed.  Finally, finished-art animations or live-action shots will be created to replace the animatic shots, and the final film is edited together.

# Animatic tools

There are several possible free software tools for making animatics for _Lunatics_, and I haven't really decided which one to use for the animatic of the whole film (so far, I've considered [Kino](http://www.kinodv.org/), [Pencil](http://www.pencil-animation.org/), [Synfig Studio](http://www.synfig.org/), [Blender](http://www.blender.org), and [Cinelerra](http://cinelerra.org/)). I plan to do a few experimental sequences to try out a few different tools and then settle on one. My first attempt, described here, will use Kino. The advantage with Kino, I believe, is that it is very simple and easy to use, even if it is a little limited in what it can do. I previously did a small amount of low animation using the "FX" menu in Kino when I created my [remix](http://www.youtube.com/watch?v=H8JDEsfK6Qs) of Nina Paley's "Copying Is Not Theft" animation (this is how I produced the "ah-ooh" animations that were needed to synchronize the video to Jonathan Mann's vocals).

=ZOOM=I plan to do a few experimental sequences to try out a few different tools and then settle on one=

There is one very annoying problem with using Kino for me, which is that the version in the current Debian "Stable", "Lenny" is not working. Neither is the upgrade in "Testing". It seems that the API for `ffmpeg` changes, and Kino didn't follow suit. So trying to use the FX menu in those versions simply causes Kino to crash. As a result, I actually did the work described in this article on a separate computer which is still running Debian "Sarge". Hopefully the problems will be solved before too long and you'll be able to use the current version.

# Animatic for the "Rollout" Sequence

The sequence I've chosen for this example simply depicts the Soyuz vehicle being rolled out to the pad and erected. The individual shots for this were constructed from NASA or RosCosmos photos taken to document several different Soyuz-TMA launches to support the International Space Station, and are therefore essentially public domain, which is convenient for publication here. It's also a sequence that doesn't include any real spoilers (except that we're going to have a Soyuz launch, and hopefully that won't blow the story for you!).

The first thing to do for this example is to load the soundtrack for the scene into Audacity (Figure 1). For this film, most of the editing is timed to synchronize well with the soundtrack. There's always some give-and-take between the visual and aural presentation of a film, and in this case, I've chosen to follow the music fairly closely at the shot level. I chose the music to fit each scene, shortened it to the right lengths, and so on, but on the fine scale, since I'm not planning to create new music, we'll be matching the shots to the music rather than the other way around.

=IMAGE=fig01_loading_soundtrack.jpg=Figure 1: Loading a scene soundtrack in Audacity. For this project, my timing is based on the music=

We won't actually be using this entire track, but only a section of it that applies to the rollout sequence.

I start by selecting a section of the track that corresponds to the first note (or rising crescendo) of the music. I listen to this note using the "play" button in audacity to make sure I'm in the right spot and that my timing sounds right. I then note the exact length of the selection. You'll note that it's possible to set the readout to show various time units including NTSC time codes -- these are seconds and _frames_ of NTSC video, which runs at 30 frames per second. In this case, I have 2 seconds and 6 frames or just 66 frames. It's also useful to note exactly where this shot ends, for positioning the second shot.

=IMAGE=fig02_1st_shot.jpg=Figure 2: Measuring the length for the first shot (just over 2 seconds)=

In Kino, I then start a new project and go to the FX tab. Here I generate a 66 frame shot using the storyboard image for this shot (Figure 2). Kino will simply print this same image for every frame in the shot.

Now, this is a strong transition from the previous shot which takes place at a location many kilometers away, so I'm using quick fades to and from black to indicate that. I want to fade up right on the rising crescendo at the beginning of this track, so I now measure that in Audacity and find it to be about 25 frames, or just under a second.

=IMAGE=fig03_1st_shot_fade_in.jpg=Figure 3: Measuring the timing for the fade-in. This matches the rising sound of the first note of the music=

I create this effect in Kino also by using the FX tab, but now I'm using the "Overwrite" option instead of "Create", and I'm applying a video effect ("Fade-In") to the existing shot. So I check the "Limit to" option, and set the time to 25 frames. Then on the "Video Filter" selector, I pick "Fade-In" (Figure 3).

One caveat I should note at this point (as I'm making the second shot), is that each shot created from the FX menu will be inserted before the current selection. This means there's no direct way to put the next shot at the end (or at least, if there is, I haven't found it yet). So I just use the mouse to drag the scene to the end. I'll be doing this repeatedly, but I won't bother to mention this step again (Figure 4).

=IMAGE=fig04_fixing_sequence.jpg=Figure 4: I haven't figured out how to get around the fact that the FX menu always generates a scene before the current one, so you have to keep flipping the order. This is a simple click-and-drag step that I'll ignore for the rest of this column=

The second and third shot are just like the first -- short static shots represented by a single storyboard. Shot number 4, though, is meant to be a long dynamic shot as the Soyuz carrier tracks slowly across the frame on its rails. There may also be some people in the foreground. I've represented this in my storyboard with an image in two positions. For the animatic, I'll simply slowly dissolve from one to the other.

As before, I measure the shot length in Audacity, based on the piece of music I want it to match (Figure 5a), which turns out to be 19 seconds. Then I create a 19 second static shot with the first image (Figure 5b) and another with the second image (Figure 5c). Then, I contract both into a single dissolve by selecting the first shot, and using the "Video Transition" menu to select "Dissolve". You'll note that the source is listed as "Frames Following" (Figure 5d). That means it will use the shot after the current one as the destination image of the dissolve (this could be a moving shot, but in this case, it will just be a stationary image repeated for each frame). At the end of this process, I have just one shot which contains the dissolve effect (Figure 5e).

=IMAGE=fig05_4th_shot_w_dissolve.jpg=Figure 5: Shot 4 is really supposed to be a dynamic shot, but it's represented here with a dissolve: a) estimated the shot length at 19 seconds, b) creating the first 19 second shot c) the second 19 second shot is the end position d) replacing with a dissolve effect combining the two e) final result=

After that, I create additional shots at the end. As it happens, I found it easier to create those working backwards from the end of the track rather than forwards. The techniques are exactly as before, so I won't say any more about those.

=IMAGE=fig06_join_scenes.jpg=Figure 6: One weakness of Kino is that you can't overdub multiple shots, so you have to combine them into one first. This is done with the "join scenes" button=

Now I can play the sequence in Kino which gives some feel for it, but of course, it's completely silent. In order to add audio, I'll need to contract the shots into a single combined "shot" (Kino actually calls them "scenes", though this is inaccurate in terms of film jargon) using the "Join Scenes" button (Figure 6).

The need to do this is probably my biggest complaint about using Kino for creating animatics. Once I join these scenes, I've lost information about my editing decisions, so it will be harder to go back and forth between audio and visual decisions in the editing. I'll be interested to find out if other tools make this step easier.

Anyway, at the end of this process, I have a single shot which I can now overdub with audio.

Of course, I need to get the audio, which I do by exporting the appropriate portion of the audio track in Audacity (Figure 7). On my first pass, I did this by simply using the original source music track instead of exporting from this track, but I ran into some problems with that. First of all, the original track has a longer lead-in at the beginning (in this mixed version, that's covered under the fade-out of the previous track (which is actually a sound effect). So I didn't really start exactly at the beginning of the music track (and I don't want to). Also it occurs to me that some future sequences might require the mixed-in sound effects and/or use more than one piece of music or just a part of a track.

=IMAGE=fig07_export_audio.jpg=Figure 7: Here I export the segment of audio that should be dubbed onto this animatic=

All of this means that the original track might not sync properly with my edit. So it's really better to just form the habit of exporting from my mixed audio.

Anyway, to do this, I carefully select the music that matches my edit (just about 50 seconds -- the really critical part is just getting it to start in the right place, Kino will cut off any extra at the end). Then I use the "`Edit->Trim`" option in Audacity to cut out everything but this part of the track. I then switch to the "time-shifting" mode and move the track to start at zero. I then use "`File->Export...`" to save the resulting audio in WAV format (Ogg doesn't work with Kino's dub effect, apparently).

_NOTE WELL_: I don't "Save" the track after this, because I'd be overwriting the original scene soundtrack with this cut-down version! Audacity asks when I close the file, and the default choice is to save, but that would destroy my work.

Next, of course, I dub the audio over the combined shot, using Kino's FX menu (Figure 8). Note that if I had made a small mistake in where the track started, I could fix it by adjusting the "Offset" value.

=IMAGE=fig08_dubbing_sound.jpg=Figure 8: Dubbing the silent video with the appropriate sound from audacity=

Now all I have left to do is to save the video. I can view it in Kino's "Edit" tab to see that it looks and sounds correct (if the timing were wrong, I would go back and repeat the overdub with a modified offset). I first export the video as an MPEG, which is suitable for upload to YouTube (see below), and I then save the Kino project (Figure 9).

=IMAGE=fig09_export_and_save.jpg=Figure 9: Here I create both an MPEG video of the animatic and saving the Kino project file=

# Evaluation

Aesthetically, I'm only so-so happy with this sequence -- that 19 second shot drags a bit. But that's precisely why I'm making an animatic -- to see what I've got and make changes. No doubt I will add some elements there (or possible additional shots) to make the timing feel better. Still, it is really nice to start getting _some_ kind of video representation of this story started.

=VIDEO=YOUTUBE=qZiYlBCQi08=

(The music track is [Cyril Pereira's "Warmachine"](http://www.jamendo.com/en/track/49021), licensed LAL (License Art Libre) at the time of download, although I notice that the licensing has been changed on the Jamendo site).

Kino worked okay for this. I'm unhappy about having to contract the shots together to overdub the audio, but I could live with that. Perhaps more distressing, the shot timing was pretty much by eye -- I couldn't really hang onto exact pointers in Audacity (except by remembering the numbers). It'd be nice to have a single tool which combined the audio and visual elements. It might also have been better to be able to pan across an image rather than substituting a dissolve as I've done here. On the other hand, the combination of Audacity and Kino was extremely easy to use, which is a big win for animatic tool.

So I'll be trying some other options, but I don't count Kino out just yet (at least, provided that the installation problem does get fixed).

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=

