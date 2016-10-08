---
nid: '3755'
title: 'A MediaWiki workflow for screenplay development using Labeled Section Transclusion'
authors: 'Terry Hancock'
published: '2012-04-30 9:48:00'
tags: 'movies,screenplays,writing,lunatics'
license: cc-by-sa
section: end_users
main_image: mediawiki_script_lst.png
listed: 'true'

---
We use a common extension for MediaWiki for managing our script-development process on "Lunatics". It works quite well, and it might not be obvious, so I thought I'd explain it here. The idea is to make it possible for the writer to work on the script in a single page while allowing the director to add shooting notes, storyboards, and other material to each scene -- and to keep everything synchronized so that we don't have two versions of the script.

<!--break-->

=TEXTBOX_START=Making Movies with Free Software=
This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies, _Marya Morevna_, through the [Morevna Project](http://www.morevnaproject.org) and [Lunatics](http://lunatics.tv), which we are working on as Anansi Spaceworks.
=TEXTBOX_END=

I'm sure you've visited Wikipedia pages where a section of the page has been pulled in from another article by a macro. This is called "transclusion" and it's a basic part of [MediaWiki](http://www.mediawiki.org/wiki/MediaWiki). But there is a common extension, called ["Labeled Section Transclusion"](http://www.mediawiki.org/wiki/Extension:Labeled_Section_Transclusion) that lets you go a step or two further. With this extension, you can pull in just the relevant section of a wiki page (identified by the hierarchical header).

We use this in a variety of places on our pre-production wiki. For example, we have a single page that talks about military uniforms, and that page has sections which are transcluded into the description pages for the military characters in the story (because that's what they wear).

"Labeled Section Transclusion" being a lot of characters to type, I'll call it "LST" from now on.

# The script

For the script, we have a much more well-defined system, as you can see in the figure below.

=IMG=fig-mediawiki_script_lst.png=Synchronized script development system using MediaWiki and Labeled Section Transclusion=

First of all, the process starts with the script or screenplay document. This is a single document, and it's actually the "writing screenplay", which has the material relevant to the screenwriter, but doesn't have much information on particular shots or what the camera is doing.

In the script, we use MediaWiki headings to mark each scene or sequence that we want to handle separately for directing purposes (this isn't really standard script format, by the way, but it works for us).

Then at the end of each scene, we add a wiki link and create a new "Scene" page for that scene. 

# Scene pages

In each scene page, we follow a strict naming scheme, with sections titled "Screenplay", "Direction", "Storyboards", and "Sound".

The "Screenplay" section shows the writing script for that scene, and is filled in using an LST macro. Here, for example, is the code for the first scene:

=CODE_START=
==Screenplay==
{{#lsth:NCIS Screenplay|Introduction}}
=CODE_END=

The other sections are original on the scene page. The storyboards are represented using the "image gallery feature" (which represents a lot of images at the same time in a grid)":

=CODE_START=
==Storyboards==

<gallery widths="180px" heights="120px" perrow="4">
Image:NCIS-005-suitingup-01.png
Image:NCIS-005-suitingup-02.png
Image:NCIS-005-suitingup-03.png
Image:NCIS-005-suitingup-04.png
Image:NCIS-005-suitingup-05.png
Image:NCIS-005-suitingup-06.png
Image:NCIS-005-suitingup-07.png
Image:NCIS-005-suitingup-08.png
Image:NCIS-005-suitingup-09.png
Image:NCIS-005-suitingup-10.png
Image:NCIS-005-suitingup-11.png
Image:NCIS-005-suitingup-12.png
Image:NCIS-005-suitingup-13.png
Image:NCIS-005-suitingup-14A.png
Image:NCIS-005-suitingup-14B.png 
</gallery>
=CODE_END=

The other two sections are just normal wiki text.

# Other pages

We also have a separate page for the soundtrack that helps me keep track of all the music tracks we're using, who created them, and some information for later profit-sharing (I discussed this in a [previous article](http://www.freesoftwaremagazine.com/articles/artists_should_be_paid_part_2_whats_fair) ).

On that page, I also use LST to bring in all of the sound notes from the scene pages.

We have an additional "Storyboards" page which uses LST to collect all of the scene storyboards into one long storyboard for the entire episode, and another which collects the "Screenplay" and "Direction" sections to create a script for use in creating the animation (we'd call it a "shooting script" if we were doing live action).

There are specialized tools for managing script development, and some of them are even free software, but we're finding that MediaWiki works pretty well and it's easy to adapt it to our development needs.