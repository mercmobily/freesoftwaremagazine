---
nid: '3335'
title: 'MediaWiki and Script Translation for the Morevna Project'
authors: 'Terry Hancock'
published: '2010-07-07 3:47:05'
tags: 'movies,wordprocessing,text-editor,morevna,lunatics,mediawiki'
license: verbatim_only
section: hacking
listed: 'true'
book: making_free_movies_with_free_software
book_weight: '0'
layout: book.html

---
<!-- MediaWiki and Script Translation for the Morevna Project -->

We are getting very close to wrapping up the English translation of the script for "The Beautiful Queen Marya Morevna: Underground" (which is the working title of the film being produced by the Morevna Project). So it seems like a good time to talk about the software we've been using, which is MediaWiki.

<!--break-->

=TEXTBOX_START=Making Movies with Free Software=
This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies, _Marya Morevna_, through the [Morevna Project](http://www.morevnaproject.org) and [Lunatics](http://lunatics.tv), which we are working on as Anansi Spaceworks.
=TEXTBOX_END=

Putting together a collaborative film production involves a lot of bits and pieces. Workflow is unclear at the beginning, and has to be developed organically. That argues against putting too much structure into the software that you use -- otherwise it would straightjacket you. Furthermore, when you're working on an artistic project, you don't want to waste time developing (or fixing) software that doesn't work like you need it to. So it makes sense to use something that is well-tested.

=ZOOM=If you know how to contribute to Wikipedia, you know how to contribute to Morevna Project!=

So, really, [MediaWiki](http://www.mediawiki.org/wiki/MediaWiki) is a no-brainer.

After years of development, [Wikipedia](http://en.wikipedia.org/wiki/Wikipedia) has hammered out most of the problems with MediaWiki, so that it's a _very_ robust piece of software (with as many people as use Wikipedia, it has to be).

Another advantage of MediaWiki is that (also because of Wikipedia), many, _many_ people know how to use its markup language. So, if you know how to contribute to Wikipedia, you know how to contribute to [Morevna Project](http://morevnaproject.org/wiki/)!

# "Spec Script" format and Wiki Markup

Over the years, Hollywood has developed a traditional standard format for unsolicited scripts (so-called "spec scripts") that has become the _de facto_ standard for writing screenplays in or out of Hollywood. It was originally based on typewriter technology, and it shows -- it's really a very primitive format. But it's what people are used to reading, so it makes sense to keep using it.

A number of different free software word processing packages support this "spec script" format, including [LyX](http://www.lyx.org/), which I've used for the purpose. For Morevna's original Russian script, Konstantin Dmitriev used [OpenOffice](http://www.openoffice.org/) 2.3 (I can tell, because the exported PDF retains the "producer" tag that identifies the software that made the PDF).

=IMAGE=ru_script_ooo.jpg=A sample of the original Russian script, created in OpenOffice and exported to PDF=

However, the English translation, for which Konstantin knew he would need help, was started on the project's MediaWiki site.

I found it interesting to see how the format works out in MediaWiki format. First of all, the script is presented as one very long wiki page, broken into scenes (with a top-level header for each scene), just as the original script is. This is very convenient in MediaWiki, because the interface allows you to edit just one scene at a time, without having to download the whole page at once.

=IMAGE=en_script_browser.jpg=The same part of the script, translated into English on the project's MediaWiki site, as it appears in Seamonkey=

I was a little surprised at the formatting used to represent spoken parts, since the spec script format calls for a rather odd indentation patter, but it's not really hard at all. Here's a sample (this is the code that produces the section of script shown above in the figures):

=CODE_START=
Pause.

:::: IVAN:
:: Home?
::: (to himself at first, then to MAN-IN-BLACK)
:: I don't have a home anymore... I'm all... Now I'm just like him. I can't let Marya Morevna see me this way... Like some undead thing... 

As IVAN speaks, he looks at his mechanical arm. There is a flashback to the shot of the DOCTOR-SISTER thrown to the ground.

:::: MAN-IN-BLACK:
:: You see this hammer?
:: It's possible to drive nails with it and build a house. But it can also break a man's head. This is a tool. The tool is only an extension of the body and soul. Not evil; not good. It all depends on the man using it.
=CODE_END=

The main feature we use is just the ":" which indicates tab stops for each paragraph. Simulating "spec script" format in MediaWiki requires little else, so you can see it's a pretty low-maintenance solution.

# Discussing the translation

Probably the greatest source of ambiguity for me, was in whether or not we should use MediaWiki's "Discussion" pages. On Wikipedia, of course, the pages are meant for public consumption, so it's very undesirable to have lots of administrivia showing on every page -- such as editorial discussions on which bits to leave in, or how to word them.

So MediaWiki is designed with a "wiki behind the wiki" consisting of one "discussion" page for every presented page. This is clearly useful there.

=ZOOM=MediaWiki is designed with a "wiki behind the wiki" consisting of one "discussion" page for every presented page=

It's less clear with a collaborative script project like this. With so much detail in one page, it's desirable to keep most comments close to the text they reference. So, in the end, we seem to have chosen to mostly leave our comments on the main page, using brackets, like this:

=CODE_START=
:::: MAN-IN-BLACK:
:: Well, just look at you! Die now, you evil, filthy thing!

Suddenly, the figure of the MAN-IN-BLACK is replaced by MOREVNA, [http://morevnaproject.org/wiki/Image:Demo03-10.png exactly as she appeared when they first met].

:::: MOREVNA:
:: What's your name?

:::: IVAN:
:: I'm Ivan. Ivan Tsarevich.

[Presumably this should be matched to the exact dialog in that scene [[User:Digitante|Digitante]] 17:02, 5 March 2010 (UTC)]

: [Yes. --[[User:KonstantinDmitriev|KonstantinDmitriev]] 09:05, 6 March 2010 (UTC)]
=CODE_END=

The "User" section is actually generated by the wiki. When I type it in, all I have to type is "`~~~~`", and the wiki will expand that to a notice indicating my username ("Digitante") and the time and date.

I suppose, as we become more confident with our choices, we might move the comments to the discussion page so we don't have so much clutter in the main script, but for now, this approach seems to work pretty well.

# More than just the script

MediaWiki, of course, provides more than just text features, so it can be used for a _lot_ of the resource management for a multimedia project like a film, and -- also due to the Wikipedia legacy -- it has built-in support for managing licenses and attributions on each contribution. That will be extremely useful when it comes time to draw up the credits for the projects.

=ZOOM=Right now, we are able to upload image files like JPG or PNG, SVG drawings, Blender 3D models, and MediaWiki even provides support for audio and video files with playback=

Right now, we are able to upload image files like JPG or PNG, SVG drawings, Blender 3D models, and MediaWiki even provides support for audio and video files with playback (although in fact, most of the videos are being served through YouTube so we don't have to manage the burden on the project's servers).

So it pretty much fills all of our needs for "resource management".

# The right choice? Yes

I'll have to make these decisions for my own project, [Lunatics](http://lunatics.tv) soon enough (that page is just a stub now, but I will soon need to put some kind of collaborative site up for production needs, just as Morevna Project has done). In the past, I've relied heavily on [Zope](http://zope.org) for my web application needs, because I like having something written in Python (on the theory that it will be easier for me to do development if I need to). MediaWiki is _not_ Zope or Python based, but requires PHP and MySQL (the traditional "LAMP" platform). So it will _not_ be easy for me to modify. But then again, it doesn't look like I need to. So the technical problem is really just one of making it work with my existing Zope website. 

After seeing what Morevna Project has been able to do with MediaWiki, though, it's clear to me that this is the way to go for managing resources on a film project. So, I'll just have to solve any issues that come up with using two very different web application systems. However, both are mature software now, so I have a pretty high level of confidence that it will work out fine -- and a lot of gratitude to Morevna Project for demonstrating the software in use.