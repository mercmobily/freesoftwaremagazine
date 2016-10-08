---
nid: '3339'
title: 'Extracting and Using a Recorded Sound Effect with VLC and Audacity'
authors: 'Terry Hancock'
published: '2010-06-23 8:22:13'
tags: 'movies,audio,editing,audacity,vlc,remix,lunatics'
license: verbatim_only
section: end_users
listed: 'true'
book: making_free_movies_with_free_software
book_weight: '0'
layout: book.html

---
<!-- Extracting and Using a Recorded Sound Effect with VLC and Audacity -->

I found a useful sound effect in an online video from NASA which replaces an earlier temporary sound I used in a scene soundtrack for the _Lunatics_ pilot, "No Children in Space." I'm going to extract the sound from the video (with VLC), cut out the sound I need, clean it up, and insert it into an existing sound mix (all with Audacity). This should give you some insight into using Audacity and a VLC on a real project.

<!--break-->

=TEXTBOX_START=Making Movies with Free Software=
This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies, _Marya Morevna_, through the [Morevna Project](http://www.morevnaproject.org) and [Lunatics](http://lunatics.tv), which we are working on as Anansi Spaceworks.
=TEXTBOX_END=

I needed the sound of a particular type of hatch (namely the docking hatch used by Soyuz at the International Space Station) being opened. I originally had only my best guess at what this would sound like, and I conjured something up by mixing sounds from an ordinary house door, a washing-machine door, and a hissing steam sound to create something artificially. I didn't think I'd be able to find the real sound, but then -- there it was.

In doing the research for this part of the film, I came across a NASA video which included the actual hatch being opened. It's almost hard to tell -- the hatch doesn't make a very loud sound (it's quieter than my fake version was). There's a lot of other sounds going on in that scene (people talking, a commentator, other movement noises), but by a stroke of good luck, the hatch sound itself is well-isolated for the fraction of a second that it lasts.

So now I want to replace this sound in my already-mixed scene soundtrack to make a new version (and I'm also making a few other minor changes).

# Extracting Sound from a YouTube Video

One nice thing about a space-themed project like mine: most NASA media is under a very permissive license -- effectively "public domain" or "attribution", depending on how you define the terms. It's technically called "copyright free." The terms say that you should credit NASA as the source; that it violates a federal law to attempt to place a copyright on the work after you get it (is that a copyleft?); and that no personality or endorsement rights are conveyed at all.

=ZOOM=One nice thing about a space-themed project like mine: most NASA media is under a very permissive license=

So that takes care of the legal bit. Technically, I get the video in Flash Video (FLV) format by simply copying the temporary file in `/tmp` that the flash plugin in SeaMonkey or IceWeasel uses. I am told that there are other ways (using browser extensions), but I've been too lazy to find that out since my way works.

After that, though, things are a little more interesting. I view flash videos outside of my browser using [VLC](http://www.videolan.org) (VideoLAN Client). VLC works very well with this format -- in fact, so well that I usually view internet videos this way rather than watching through my browser, just because it's smoother.

But VLC can do more than just view videos. Here I used it to strip out the audio track by itself.

## Converting Video With VLC

First, I start VLC from the desktop menu (it's not necessary to "open" the video). Then I select "`Media→Convert/Save...`". In the ensuing dialog, I tell where to find the video file, provide a location to save the `.ogg` audio file as output, and what codec to use for the audio output (Figure 1).

=IMAGE=fig01_vlc_conversion.jpg=Figure 1: Extracting the audio from a flash video with VLC=

A progress bar appears, and the file is converted. On my computer, this takes about the same time as playing the video, so be prepared to wait a couple of minutes.

The resulting file is just an Ogg Vorbis audio file, which I load directly into [Audacity](http://audacity.sourceforge.net/).

# Getting a Sound Effect out of a Raw Recording

First of course, I need to start an Audacity project and import the new audio track. I believe you can also use "`File→Open`" to do this. (Figure 2).

=IMAGE=fig02_loading_audio.jpg=Figure 2: Loading the audio file=

One small brief sound in a long noisy video can be a little hard to find. I find the easiest way is to play the video (in VLC) to find the correct time, then look around that region in Audacity (Figure 3).

=IMAGE=fig03_use_video_to_find.jpg=Figure 3: Using the original video helps to locate the desired sound effect in the file=

I select the region around the sound and expand that (there's a toolbar button for this in Audacity). Using the "Trim" operator from the "`Edit`" menu gets rid of the rest of the audio, and then I zoom back out and use the time-shifting tool to move the sound over to the zero point (Figure 4). There's another toolbar button to snap the view to the full length of the track, which was very short at that point.

=IMAGE=fig04_trim_and_shift.jpg=Figure 4: Trim the sound (leaving some margin) and shift to the beginning of the track=

Next, I use the "`Amplify...`" plugin to increase the volume level. By default, this plugin rescales the audio so that the greatest amplitude in the selection has the maximum representable value (i.e. the largest integer value that the digital representation allows). 

=IMAGE=fig05_amplify.jpg=Figure 5: Amplify the sound to full saturation (normalize)=

This is fairly convenient, so I do follow this convention (Figure 5). However, it does mean that you always need to diminish the volume with the track fader when you use the sound effect in a mix (otherwise, the mix will get "clipped", since any additional sound will push it over the limit). This will make more sense when I describe using the track below.

=IMAGE=fig06_noise_removal.jpg=Figure 6: Filtering out background noise=

I leave a little extra sound on the ends, as you can see in Figures 5 and 6. This is useful, because I can then use the "`Noise Removal...`" plugin to clean up the sound. I have to say this is an awesome filter -- it can't be a simple job to profile and remove background noise, but this filter has worked wonderfully for me in the past. Here, I just sample some sound from right after the hatch opening (select this sound; open the plugin dialog; and select the "`Get Noise Profile`" button). Then I select the region surrounding the hatch sound itself, and use the plugin filter on it (Figure 6).

=IMAGE=fig07_trim_again.jpg=Figure 7: I trim again to get just the effect=

I worried a little that there might be a problem because the background ambience changes after the hatch is open (because of the acoustics of the module being opened up), but this doesn't seem to cause any trouble (perhaps because the track is just very quiet before the door is opened).

=IMAGE=fig08_envelope_shaping.jpg=Figure 8: Minimal shaping to taper off the ends=

After that, I trim again and then shape the ends of the effect with the envelope tool (this tapers off the ends so no annoying clicks or "ringing" are generated when the sound is mixed). This leaves me with just the isolated, re-normalized, noise-filtered hatch sound effect, which I then export to an Ogg Vorbis file in my "FX" directory (Figure 9).

=IMAGE=fig09_exporting_to_ogg.jpg=Figure 9: Exporting the audio file to Ogg Vorbis format=

At that point, I'm ready to use the effect in my scene soundtrack mix.

# Using the Sound Effect

The original effect was used in a complex mix as a transition point between two music tracks. Together, these elements constrain the timing of the scene. Here I need to open a pre-existing sound mix in Audacity, import the new sound effect, and remove the old one. I also need to get rid of some chickens, due to a minor re-write ("no chickens in space").

For some reason I've not been able to understand, I get a lot of error messages about leftover "blocks" of sound when I re-open heavily-edited mixes. I can only assume this means that Audacity loses track of them somehow, and doesn't do a consistency check until it loads up. However, this seems to be harmless. Apparently the blocks are for sounds that were already cut out, so I just follow the default cleanup procedure (Figure 10).

=IMAGE=fig10_opening_project.jpg=Figure 10: Opening the project. For some reason, I always get this warning about stray blockfiles, but it seems to be harmless. I think it's deleting audio data that is no longer in use in the project=

To get a better view of the mix, it's a good idea to use "`View→Fit Vertically`" to squeeze the tracks up into the window. This does have the disadvantage that the controls for each track (including the fade and pan sliders) are hidden (Figure 11). So I also usually expand the particular tracks I'm working on again.

=IMAGE=fig11_zooming.jpg=Figure 11: Zooming the view to an overview of the project=

To get my new sound effect, I just use "`File→Import...→Audio...`" and select the appropriate file (Figure 12). This creates a new track at the bottom, which I then need to move up (Figure 13). I could also have selected the track and dragged it up into position. This saves a few clicks when you have to move tracks several positions up or down.

=IMAGE=fig12_importing_fx.jpg=Figure 12: Importing a sound creates a new track=

Once the tracks are together, it's easy to use the old track for alignment guidance on where to put the new one (using the "timeshift" tool, Figure 13). I can do this visually, but also by using the "Solo" buttons to listen to just these two tracks.

After this, while still zoomed in on the area of interest, I listen to the full mix (which includes music) for that segment. From this, I realize that the visual match to the timing is not so good, and I should move the new effect (which is shorter) to a little bit earlier point. So the new track is positioned. You might notice that the fader has been adjusted. This is necessary for the reasons I mentioned earlier -- the effect track is saturated, so the volume needs to be reduced in order to avoid clipping. Also, the hatch is not very loud in real life, so we don't want the effect to be overpowering.

=IMAGE=fig13_positioning_fx.jpg=Figure 13: Using visual cues and the "Solo" buttons to line the new sound up in the right place, using the old one. I also set the volume using the fader (inset)=

Rather than deleting the old sound effect (who knows? I might want it later), I just use the "Mute" button on that track. I do the same with the offending chickens (it's a shame though, they were a funny touch -- but the goat will just have to carry the humor). This gives me my new version of the soundtrack mix.

=IMAGE=fig14_muting.jpg=Figure 14: Using the "Mute" buttons to select which tracks will be used. I muted the old hatch effect and also some other sound effects and music I had decided to omit from this mix=

Then I export the mixed track, just as I did with the sound effect (though I have these in different directories). The result is the track I needed. And that's it for today!

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=

