---
nid: '3571'
title: 'Three Real-Time Animation Methods: Machinima, Digital Puppetry, and Motion Capture'
authors: 'Terry Hancock'
published: '2011-08-02 15:15:57'
tags: 'free-software,movies,blender,animation,lunatics'
license: verbatim_only
section: opinions
listed: 'true'
book: making_free_movies_with_free_software
book_weight: '1'
layout: book
---
<!-- Three Real-Time Animation Methods: Machinima, Digital Puppetry, and Motion Capture -->

In planning the production of the Lunatics series, the most obvious challenge is simply how to do that much animation on such a low budget. Conventional "key frame" animation (which is what Blender excels at and is what familiar 3D movie studios like Pixar use to create their blockbuster films) is beautiful, but it's also painstakingly slow work. Animators live for this stuff, but for me, it's a mountain that just might crush my project. Fortunately, it's not the only way. There are methods for making animation more like acting -- creating a performance in real-time and capturing it in a simulated world. These can be broken down into three basic methods (although they can be used together, creating many overlapping variations): "machinima", "digital puppetry", and "motion capture". Each is a "bleeding edge" area for free software development, but tools do exist. 

<!--break-->

=TEXTBOX_START=Making Movies with Free Software=
This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies, _Marya Morevna_, through the [Morevna Project](http://www.morevnaproject.org) and [Lunatics](http://lunatics.tv), which we are working on as Anansi Spaceworks.
=TEXTBOX_END=

It was obvious from the beginning that if we're going to produce [Lunatics](http://lunatics.tv) as a video series, it _has_ to be 3D animated. Even had we decided to make it "live action", there would be so many 3D animated special-effects shots that it would practically qualify as animation anyway. Obviously, going with a completely animated production has advantages over that kind of hybrid production, and it probably won't seem as "cheesy" as combining dollar-store-based sets with computer graphics would have.

But good 3D animation isn't that easy to do, either. Estimates for commercial movie and television animation tend to be made in terms of "dollars per minute of animation" -- and the values range from around $10,000/minute (for extremely low-animated 2D "computer cel" animation) to over a $1 million/minute for big-budget Disney/Pixar 3D animated films ([Tangled](http://en.wikipedia.org/wiki/Tangled) cost about $2.6 million per minute, for example).

Even [Sintel](http://www.sintel.org), which was made on an extreme shoestring budget by the [Blender Foundation](http://www.blender.org), cost about [$36,000/minute](http://en.wikipedia.org/wiki/Sintel) (assuming a 2009 exchange rate of around $1.35 per euro).

The pilot for Lunatics will be about 60 minutes long -- at $36,000 a minute, that would be about _$2.1 million_. Once we get going, we hope to produce 18 half-hour episodes per year. That would rack up over _$19 million_ per year. That would certainly break records as a [Kickstarter](http://www.kickstarter.com) project. But seriously, that's probably at least a hundred times the amount of money we could raise for our "no budget" free culture online production. Faced with those numbers, it'd be very easy to get depressed and give up on the whole project.

=ZOOM=Faced with those numbers, it'd be very easy to get depressed and give up on the whole project=

But then, at the other extreme there are fully-automated animation tools like [Xtranormal](http://www.xtranormal.com/) (not a free software app -- it's a web application and presumably proprietary). This site actually turns typed dialogue into an animation, using a number of stock characters. You've probably seen some videos produced with this tool on YouTube. This is animation so cheap you can throw it together in a few minutes using an online web application.

Now clearly, that's going too far for "Lunatics". But surely there must be some middle ground?

That's a question I've been researching for awhile now. Here, I'm just going to give a very brief introduction to the three major techniques, and some linkage to free software projects which can be integrated with [Blender 3D](http://www.blender.org) to capture real-time performances as animation.

=ZOOM=But surely there must be some middle ground?=

There are three basic techniques (and of course a spectrum of combinations) to consider: "machinima", "digital puppetry", and "motion capture".

# Machinima

[Machinima](http://en.wikipedia.org/wiki/Machinima) (the name comes from "Machine" and "Cinema" -- despite the odd spelling). Machinima is largely a computer game fan phenomenon. It started out with fans inter-cutting and over-dubbing screen captures from popular PC games. As the games themselves became more flexible, greater amounts of customization became possible -- some online game environments, like "World of Warcraft" or "Second Life", provide highly-configurable environments.

Since machinima has become more popular, there have been a number of "games" created specifically for creating machinima (so that they're not really "games" in a strict sense, anymore).

Most machinima, based on commercial proprietary games, with proprietary art and simulation models, are actually in violation of copyright laws. For fans, this is generally overlooked, but it's easy to see that a commercial project making extensive use of this kind of machinima might run into legal problems or have to negotiate for the rights to the game materials.

If you really want to pursue this kind of machinima with free software, a good start is ["WoWModelViewer"](http://www.wowmodelviewer.org/). I also came across a reference to the MMORPG game ["Ryzom"](http://www.ryzom.com) having gone to a [free license](http://dev.ryzom.com/news/13) last May (2010).

=ZOOM=In machinima, the animation is the result of the computer simulating the motion of characters and props based on a simulation of the physics, and on the application of artificially intelligent character models=

For my project though, I'm not interested in that kind of game-centric machinima culture. Rather, I'm interested in the fundamental concept behind it -- which is to use a simple _simulation_ engine (like those used in games) to automate significant amounts of animation. And this is what I see as the defining quality of machinima: it lets the machine do the work.

By this definition, machinima would also include such sophisticated animation techniques as ["Massive"](http://en.wikipedia.org/wiki/Massive_%28software%29) -- the software which made those huge battle scenes in Peter Jackson's "The Lord of the Rings" possible. So, machinima doesn't necessarily equate to cheesy low-quality projects.

In other words: in machinima, the animation is the result of the computer simulating the motion of characters and props based on a simulation of the physics, and on the application of artificially intelligent character models.

Fortunately for Blender fans, the Blender application includes a game engine. And the engine has received quite a bit more care in the last few years with the Apricot ["Yo, Frankie!"](http://www.yofrankie.org/) project that followed ["Big Buck Bunny"](http://www.bigbuckbunny.org/).

Here's an example of a machinima technique presented by [Thomas Eldredge](http://www.funkboxing.com) using the [Blender Game Engine](http://en.wikipedia.org/wiki/Game_Blender) which is an integral part of the [Blender](http://www.blender.org) application. The motion was simulated using the game engine, with only a few minor inputs from the artist. Then the motion was captured to armatures in Blender and animated in the usual way, along with some more sophisticated, non-real-time simulation (such as the cloth cape and path-animated camera movements):

=VIDEO=YOUTUBE=duIhI4Ae8aM=
=TABLE_CAPTION=A really violent demonstration of "physics-based" animation using the Blender Game Engine=

See ["Progranimation - A study in physics based animation"](http://www.funkboxing.com/wordpress/?p=267) for Eldredge's explanation of the demo, some references, and downloadable blend files containing the software (which makes this my software lead on this section).

In general, machinima is probably the easiest of these techniques for the "animator" -- it's much like playing a video game. On the other hand, it involves a lot of effort to create the simulation in the first place, and the results are often somewhat mechanical in appearance. It's a clear win for characters and other objects in the background. It's probably an excellent way to control things like vehicles that are _supposed_ to look mechanical, and may well be acceptable for foreground animation, depending on style and other concerns (especially if that's all your budget will allow).

# Digital Puppetry

While machinima relies heavily on simulations of physics and character planning with artificial intelligence, another game-like technique is to totally control a character or other object with game controllers or other input devices. A reasonably-skilled operator can then control the character on screen just like a puppet or a marionet. With some practice, a real-time performance can be delivered. Jim Henson's muppets demonstrated technology for this many years ago, and others have tried it since.

=ZOOM=In digital puppetry, the character is controlled completely by a relatively simple mapping between a hardware controller and the character's 3D animation armature=

In digital puppetry, the character is controlled completely by a relatively simple mapping between a hardware controller (such as a gamepad, a wiimote, a custom puppet controller, or even your body with a kinect-based system) and the character's 3D animation armature. There is typically no need for physics simulation, and unlike true motion capture, there's no attempt for the control process to be "natural motion" -- you learn to operate a digital puppet, just as you would a real puppet.

In the course of my research, I found a couple of good examples. The most interesting is [Pyppet](http://pyppet.blogspot.com/), which was used some time ago to make this very cool demo of a singing dog in Blender:

=VIDEO=YOUTUBE=P3g63sdYtig=
=TABLE_CAPTION=A digital puppetry performance. There's some behind-the-scenes info after the song in this video=

Unfortunately, Pyppet has succumbed to a bit of bitrot since then, falling behind Blender development, but the author (who goes by "goathead" online), has recently uploaded some new Blender 2.5 based code towards a new release at the [Pyppet Project](http://code.google.com/p/pyppet/) on Google Code. We might be looking at raising some money to support future development on Pyppet.

# Motion Capture

You're probably familiar with "motion capture" if you watch any "making of" extras on your DVD videos. This technique is popular even with big budget productions, because while it can be used to bring down costs, it can also be used to raise the level of realism. The realistic motion acquired from motion-capture systems is extremely compelling visually, and it can be used to capture even very expressive acting performances and map them onto a CG character.

What defines motion capture is that you are converting an actor's natural movements into equivalents for the virtual character. In fact, though, there are many different mechanisms which can be used, ranging from direct measurements through sensors placed on the actor's body to optical methods which use passive markers and cameras. There are even a few "markerless" motion capture systems which can track an actor's movements without any special markers. Microsoft's kinect game controller is a very affordable markerless system, although it cannot detect very subtle motions.

=VIDEO=YOUTUBE=wc00tvc8u5k=
=TABLE_CAPTION=Video created from archival BVH data from Carnegie Mellon. Toolchain is entirely free software. The MakeHuman model may be a little too realistic here=

Perhaps the watershed moment for this technology was the performance of Andy Serkis as "Gollum" in Peter Jackson's "Lord of the Rings" series -- this animation proved that an animated character driven by motion capture technology could be convincing enough to work next to live action characters. Of course, that wasn't the first use of motion capture in big budget films, and it has been followed by lots of others.

On the other extreme, though, motion capture can provide a way to get a more conventional performance out of more stylized characters -- even fairly wooden-looking character models seem much more alive when their motion is driven in this way.

=ZOOM=What defines motion capture is that you are converting an actor's natural movements into equivalents for the virtual character=

Motion capture is also how most of those pre-recording game character movements are created by the game companies. So when people are creating machinima films, they are often making use of large libraries of motion capture data, even if this is not obvious to the filmmaker. For free software/free culture users like us, there are even some collections of such canned motion data available online under free licenses -- such as [Animazoo](http://www.animazoo.com/) and [Carnegie Mellon University's Graphics Lab](http://mocap.cs.cmu.edu/).

Motion capture usually involves some very expensive equipment and some very proprietary software, but there was a development project a few years ago, called [CheapMoCap](http://motion.capture.free.fr) that aimed to produce motion capture results using low-budget web cams and free software. That code is available for download, and would be a starting place for new projects.

=VIDEO=YOUTUBE=1Yb7wy3WCSc=
=TABLE_CAPTION=Realistic motions can add a lot of personality to a less realistic model. This often looks even better than with a realistic model=

Motion capture can be further sub-divided into "body motion capture", "facial capture", and "hand capture" or "hand over" -- these are all just special applications of the same basic concept. It's not uncommon to capture the fine motions of hands or face as a separate process and then combine these with previously-capture body movements. The term "hand over" specifically applies to this technique for applying hand motions.

[Monet](http://www.youtube.com/redirect?q=http%3A%2F%2Fwww.shadowndacorner.com%2Fdownloads%2Fmonet.zip&session_token=IvTOVQchJFtTVixFPVawmKXSg7Z8MTMwNzY3MzM0MEAxMzA3NTg2OTQw) (ZIP file download, I was not able to find a project site) is a Blender script for facial capture, although it doesn't work in real-time. Here's video by its creator, Mark Kane, showing it in action:

=VIDEO=YOUTUBE=09oEfXyUQkA=
=TABLE_CAPTION=A facial-capture script written in Blender's python interpreter is too slow to work in real time, but could still be very useful=

It appears that Monet is Windows-specific, although it is a Blender script, so some porting might be in order if we wanted to use it.

# Mix and Match

Of course, it won't be necessary to strictly choose one or the other of these techniques. In many situations they can be used together. Machinima engines often draw from databases of motion capture data to generate character motion; most machinima involves some direct character control (as in digital puppetry), so that the results are a combination of simulation and puppetry; and even conventional frame-by-frame animation techniques can be combined with these methods to give final polish to an animation project.

The trick will be to find working open source code, get everything working together, working with the same character models, and to finally integrate it all into the rest of our tool chain. That will be an on-going project, and I expect to visit each of these techniques again in future columns as I learn how to do that.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=
