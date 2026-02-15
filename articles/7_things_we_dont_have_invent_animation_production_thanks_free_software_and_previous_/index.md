---
nid: '3428'
title: '7 Things We Don''t Have to Invent for Animation Production (Thanks to Free Software and Previous Free Culture Productions)'
authors: 'Terry Hancock'
published: '2010-10-27 16:14:02'
tags: 'free-software,free-culture,movies,business-models,lunatics'
license: verbatim_only
section: end_users
listed: 'true'
book: making_free_movies_with_free_software
book_weight: '1'
layout: book
---
Counting your blessings is good for the soul -- not to mention for convincing yourself and any investors that your project will succeed. Free culture is highly conservative, because it's possible to simply reuse ideas (and sometimes actual artifacts) with little to no cost. Here's seven things I'm really glad I _don't_ have to worry about in designing the production model for our free culture animated series _Lunatics_.

<!--break-->

=TEXTBOX_START=Making Movies with Free Software=
This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies, _Marya Morevna_, through the [Morevna Project](http://www.morevnaproject.org) and [Lunatics](http://lunatics.tv), which we are working on as Anansi Spaceworks.
=TEXTBOX_END=


# 1) Business Models

What artist wants to innovate new business models? For that matter, what entrepreneur does? Business models are generally not worked out from first principles -- instead a successful model is observed and imitated. The really "innovative" models are the ones that are perturbed just a little -- some extra "twist" is added to the model.

=ZOOM=Business models are generally not worked out from first principles -- instead a successful model is observed and imitated=

So when a really paradigm-shifting concept is suggested -- such as giving up on enforcement of "intellectual property" rights and embracing "intellectual freedom" instead; such as _trusting_ fans instead of mis-trusting fans -- just about anybody is going to be shaking in their boots.

At least until they see it working. And for this, I am truly grateful. Two major successful examples of this have gone before -- the Blender Open Movie series (consisting so far of "Elephants Dream", "Big Buck Bunny", and "Sintel") being one, and "Sita Sings the Blues" being the other. The models are a little different, but there are ideas in both that suit our project.

=IMAGE=fig_four_movies.jpg=Previous animated productions have pioneered a lot of the tools, techniques, and tricks for making and marketing free culture productions=

The Blender movies were done largely with foundation funding and a pre-sale model. This makes a lot of sense because they were self-consciously created as free culture products, _and_ because the spinoff of supporting development of the Blender program was an important part of their conception.

"Sita Sings the Blues", on the other hand, was not originally intended to be released under a free-license, so it's model is a little different -- relying entirely on sales _after_ release (and for that reason, much more obviously dependent on the goodwill of fans). This is probably closer to how we will market _Lunatics_, though we may need to seek foundation funding or commercial sponsors to support initial production on the pilot.

# 2) Software

Early on, free software was all about programming, command line tools, and text editors. But over the last few years, the options for multimedia authoring tools have blossomed impressively. I can't make a full list here, but here's some tools we will absolutely be using in our animation project:

* Gimp - Image editing: for textures, UV painting, backdrops, flat art in the project, matting and so on
* CinePaint - Image editing: Has a number of features specifically for working with movies, and high color depth capabilities
* Inkscape - Vector graphics editing: planning for sets, displays and other flat art
* Audacity - Sound-mixing tool: extracting effects sounds from recordings; mixing music, effects, and dialog; filtering and levelling effects
* Synfig - 2D Animation and In-betweening: animating flat-art elements, "cheating" some shots in the pilot. The main tool for Morevna Project
* Blender - 3D Modelling, Animation, and Editing: Characters, props, sets, vehicles, etc. Tools for the whole 3D animation process. It's also one of our best options for scene editing
* Cinelerra - Advanced Non-linear Video Editing: if we don't use Blender for editing, we'll probably use this tool instead
* QDVDAuthor - DVD mastering tool: when we create DVD versions for direct sale, the masters will probably be made by this very flexible package

=IMAGE=fig_software_tools_collage.jpg=A few of the many software tools being used on production for Lunatics=

Far from being starved for options, we are spoiled by choice: there are _so many_ free software multimedia tools that our real problem is choosing which are the best for our project. Fortunately, in this too, we have precedents to follow.

# 3) Animation Toolchain and Project Structure

Even with the right tools, organizing a big project is complicated, and it's easy to get bogged down in details. One nice thing to come from the Blender Open Movies is a fairly evolved set of "best practice" examples for how to lay out a complex 3D animation project.

=IMAGE=fig_bbb_production.jpg=The "Big Buck Bunny" production DVD contains documentation on how the project was organized on disk -- a big help to would-be Blender animators=

Each of the Blender Open Movies has been released with a disk containing not merely the movie, but also the production filetree with all of its organization (and also a lot of documentation). This is clearly the example to follow.

Of course, we'll make a few changes. Lunatics will be divided into episodes, with frequently used elements in a series development directory. But otherwise, most of the experience garnered from the Blender movies will apply nicely.

# 4) Many Vehicle Models

One blessing from a possibly unexpected direction is the example set by the National Aeronautics and Space Administration (NASA) and US Federal policy about information works created by employees of the US government. With very exceptions, these works may be treated as "public domain", and so there is a tremendous amount of source material on space.

=IMAGE=fig_nasa_space_models.jpg=Another blessing is the large amount of free material produced by space agencies, such as this highly-detailed 3DS model of the International Space Station as it exists today=

In addition to imagery obtained of the Moon and the Earth, there are also plenty of images of real spacecraft (some of which will make an appearance in Lunatics, especially in the pilot episode), and 3D models of many NASA spacecraft (they're in 3DS format, but that is easily imported into Blender). Even a few Russian vehicles are represented here.

Also, to some degree, though the policy is not as sweeping, the Russian Federal Space Agency (also known as "RosCosmos" or "FKA") has largely followed suit in making material freely available and reusable.

While many of these will need to be modified and a few entirely replaced, they provide an excellent start on much of the modelling that needs to be done for the project.

# 5) Character Models and Rigging

Another source for models of considerable interest is the OpenGameArt collection. These were created primarily with computer games in mind, so they have an emphasis on "low-poly" models which don't always suit an animation project like ours, but it can save us a lot of trouble. The aircraft pilot in the second figure is simply a posed generic human model created by Clint Bellanger and released via OpenGameArt under a CC By-SA license.

=IMAGE=fig_sintel_style.jpg=The artistic style of the 3D character models in Sintel is similar to what we want for Lunatics. With the material being free licensed, this raises the possibility of simply adapting it to work for us=

I'm particularly looking forward to examining the models and rigs on Sintel, because the character style is sufficiently realistic to fit our needs on Lunatics. I plan to test the idea of simply adapting the existing rigs to fit our characters, and possibly using stretched versions of some of the models. This may or may not work, but even if we have to create new models, these will make excellent study material.

# 6) Sound and Music

Sound is not my strongest area, and it would represent a considerable problem for me, except that a huge amount of material is already available. Much of the music, at least for the pilot, will simply be mixes of existing tracks from online music sharing sites.

=ZOOM=Much of the music, at least for the pilot, will simply be mixes of existing tracks from online music sharing sites=

Although we will probably have to record or generate some sound effects, many will be mixed from real recordings. We have lots of NASA footage of Soyuz launches and some of activity aboard the international space station. The soundtracks from these can be extracted and mined as a free source of accurate sound effects for space hardware.

Additionally, there is a nice collection of location recordings published online under a Creative Commons Attribution-ShareAlike license by Sound Transit. These recordings are mostly of very high quality, and are the source for many of the ambient sounds we'll be using, especially at the beginning of the pilot.

# 7) Licensing

Perhaps this is really obvious today, though I remember when it was a very tricky decision, but licensing for free culture works has been well established. 

Since 2002, the Creative Commons has become the definitive choice for free-licensing artistic works from text to films. With such strong precedents, there's no reason to worry over the details of licensing.

# On the Shoulders of Giants

One of the best things about free-licenses is that they unfetter the natural chain of knowledge -- the path that links each new innovation to the next, pulling us up to greater heights without have to re-invent what has already been done in order to do something new. You get to the fun part a lot faster this way. Working on the workflow and tools for Lunatics made me realize just how much of an advantage this is -- there's so much that we _don't_ have to re-invent because we can use what others have laid down the groundwork for us already.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". 
=TEXTBOX_END=

