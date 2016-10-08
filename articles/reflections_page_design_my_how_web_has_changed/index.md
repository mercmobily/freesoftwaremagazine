---
nid: '3396'
title: 'Reflections on a page design: my, how the web has changed...'
authors: 'Terry Hancock'
published: '2010-09-08 11:48:21'
tags: 'html,web-design,social-networking,css'
license: verbatim_only
section: opinions
listed: 'true'
book: making_free_movies_with_free_software
book_weight: '0'
layout: book.html

---
<!--Reflections on a Page Design: My, How the Web Has Changed...-->

It's been a long time since I really designed a webpage, and the web -- or rather users' expectations of the web -- has changed a lot. "Craft" web pages constructed largely for fun by individual users, designed from the ground-up in simple HTML, went out sometime in the 1990s. In the early 2000s, the web was all about "content management systems." Later, specific forms of content like forums, wikis, and blogs began to take over. 

=TEXTBOX_START=Try ZenOSS, free monitoring software=
Have you tried [ZenOSS server monitoring](http://www.zenoss.com/in/mi/fsm) yet? It's free software; we have also published a [book on ZenOSS](http://www.freesoftwaremagazine.com/books/network_monitoring_with_zenoss) in this very magazine!
=TEXTBOX_END=


Today, even blogs are too content dense for most viewers, and "microblogging" and "social networking" are the new buzzwords. Static images were replaced by kitschy animation and then by full-motion video as most of the viewers are not only using fast machines that can handle the rendering, but are also connected to the server by "pipes" that would've shamed a university computer center back in the 1980s.

<!--break-->

=TEXTBOX_START=Making Movies with Free Software=
This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies, _Marya Morevna_, through the [Morevna Project](http://www.morevnaproject.org) and [Lunatics](http://lunatics.tv), which we are working on as Anansi Spaceworks.
=TEXTBOX_END=

The time has come for me to start making a real website for [Lunatics](http://lunatics.tv). There are several components to this. Later on, I'll have to address the technical issues of getting Plone and Mediawiki to do what I want. After all, most websites today aren't mere static _documents_, they're _applications_ designed to integrate a lot of different styles of "content management systems".

Right now, though, I'm just thinking about what sort of page a video project like Lunatics should have.

Naturally, I started by looking at sites for similar projects. Figure 1 shows a line-up of several of these sites. I wanted to make sure to meet the expectations of visitors to the site, and I know they have changed a lot since the last time I designed a website.

=IMAGE=fig_the_competition.jpg=Figure 1: Web captures of some of the similar sites out there: "Sita Sings the Blues" has a site based largely on a wiki; the Blender Open Movies all have similar features, though they show a range of stylistic variations; and "The Guild" shows what a similar proprietary project looks like. All of these have things in common with Lunatics=

# The New Zoo of Screen Sizes

The last time I designed a page, the range of common screen sizes went from about 640x480 all the way up to 1024x768. It was a bit of stretch (sorry for the pun), but it was possible to design one layout that would work reasonably well at all of those sizes. Today, however, things are more complicated.

=IMAGE=fig_zoo_of_screen_sizes.jpg=Figure 2: With the simultaneous addition of giant high-definition workstation screens and tiny hand held devices, there is a much bigger range of screen sizes to plan for=

The screen on my desktop is 1280x1024 and I'm thinking seriously about getting a widescreen 1920x1080 display for HD video workstation work. It's rare to expand a web browser to fill a 1920x1080 display, but some people do it (like my mother, whose eyesight can use not only the larger screen, but also larger fonts -- as increasingly, so can I). On the other hand, many of today's young adults want to browse the web on their smartphones -- with displays as small as 240x320 (portrait QVGA). This incredible diversity of screen sizes and shapes (Figure 2) makes for an interesting design challenge. I'm pretty certain that the "single stretchy design" approach isn't going to cut it for this range of devices.

So, I think I will most likely have to come up with a way for my page to adapt to the device's size. I'd like to do this automatically if possible, but in the meantime, I will certainly need some different layouts.

=ZOOM=People think about webpages in a lot of different ways=

# To Scroll or Not To Scroll

People think about webpages in a lot of different ways. Originally they were "documents" which one could scroll through from the beginning to the end. They didn't need explicit page-breaks; you just assumed the breaks would work out if you needed to print it (and if you were just going to read it on the screen, it mattered even less). From this point of view, it's best if the data you want is all on one page so that you download it once and can scroll back and forth at your leisure using your browser controls. It puts the control close to the reader.

Another group tends to view the webpage as a glorified slide show, in which case scrolling is a serious inconvenience. Instead, from this point of view, the page should always be designed to fit in the browser window, with buttons to fetch additional data. In this way, the user is not expected to control the scroll bars.

=IMAGE=fig_concept_drawing.jpg=Figure 3: I started my design process with Inkscape, drawing what I wanted to achieve. The top part is designed as a screen, while the bottom is meant to hold article teasers like a blog -- or indeed, a lot like the front page of Free Software Magazine=

Users who are used to the former method will be frustrated with sites which scatter information over lots of small pages which don't let them access data on their own terms. Users used the latter approach will be annoyed at having to use the scroll bars to navigate, or (worse), they won't notice any content that is off the bottom of the screen when the page first loads.

My solution is to compromise by providing the most-commonly-needed data in the beginning of the page, while large blocks of text are pushed to the end where people who really want to read it can find it easily. So in my mock-up designs, I note an approximate "fold" position. Above the "fold" I treat the layout as if I were working on a fixed screen, while below it, I think of the page as following the older "document" paradigm.

# Cascading Stylesheets

Nobody uses table layout anymore. It was already going out years ago when I did my last major website design, so no surprise there. Still, I was a hold-out. I'd become a real whiz at table-based layout, so it was an incredible pain to suddenly have to learn some totally new system for laying out webpages. Now it's all "Cascading Style Sheets" or "CSS".

And looking back into this now, I have to say it: CSS is full of stupid. It's a huge pile of backward-compatibility compromises and half-measures, designed by committee, which still doesn't quite provide an adequate layout engine.

=IMAGE=fig_stretchy_stylesheet.jpg=Figure 3: A "stretchy" design based on the "float" approach in CSS gave me most of the flexibility I wanted. Note how the right box jumps down to an inline position when the screensize is too narrow=

More importantly, CSS makes web design much less intuitive. Sure, it gives you a "single point of control" for a whole lot of text, which theoretically makes things much easier to change -- _if you know where to find it_. But whereas you always knew exactly where to look in flat HTML (the style code was never far from the text it styled), CSS provides no such simplicity. Often, there is a need to search through many parallel rules (and sometimes through many separate files, because they are _cascading_ stylesheets, and it is possible to have several -- even dozens -- of stylesheets affecting the display of one page).

=ZOOM=CSS makes web design much less intuitive=

Still, there are some nice things about it. I can now remove most of the style code from my HTML, leaving in things like "class" and "id" attributes instead of specific styles. And while there's plenty of firepower in CSS with which to shoot yourself in the foot, most of it can be obviated with a little design discipline.

=IMAGE=fig_widescreen.jpg=Figure 4: The same CSS produces this result on a very widescreen monitor (1440x900). This design brings out the background image, giving the page a spacious feel, without seeming empty=

For my screen size problem, CSS provides a couple of different approaches. One is to create a very "stretchy" page with design elements positioned using a combination of fixed and fractional constraints (though this is not as clear-cut as it should be). Another is to actually create separate stylesheets for different classes of devices.

=ZOOM=While there's plenty of firepower in CSS with which to shoot yourself in the foot, most of it can be obviated with a little design discipline=

In fact, the CSS and HTML standards provide a "media" option that should theoretically make this simpler -- you can specify one style sheet for "screen" devices and one for "handheld" devices. However, from what I've read on the subject, these may not be very reliably supported for anything but "screen" and "print" options.

As a work-around, I found some free-software Javascript which provides simple tests for the screen size. It'd be possible to change the stylesheet based on the browser window size, which would work fine, provided that Javascript is available on the device. I spent some time looking for that, but I found that I could achieve nearly what I wanted with a much simpler "float" layout than with the "position" layout I started with. Figure 3 shows what happens as this "float" design is re-sized to narrower and narrower layouts and Figure 4 shows it on a wide screen. It will work fine on regular browsers, and is probably usable on mobile devices, though I probably will need to provide another stylesheet for those. Figure 5 shows my narrow design -- the same HTML page, but with a different stylesheet.

=IMAGE=fig_handheld_css.jpg=Figure 5: This is the same page, but with a different stylesheet, optimized for narrow displays. Some of the graphic elements have been replaced with narrower or smaller versions (of course it does require scrolling to see all of the features)=

# Getting Social

These days, people use a wide variety of personal networking sites. They allow a lot of different services. This is one of the best ways to promote your site (and whatever it is that your site promotes). For _Lunatics_, we obviously want to get the word out as far as possible. One of the best things we can do, then, is to let people link up using the networks they prefer.

On the other hand, to do this yourself would be a major chore because there are so many services to go through.

=ZOOM=Enter the cloud. Yes. The evil cloud. We rightly fear it, but as long as we don't become too dependent on it, it does provide a lot of convenience=

Enter the cloud. Yes. The evil cloud. We rightly fear it, but as long as we don't become too dependent on it, it does provide a lot of convenience. In particular, I'm using a certain kind of "software as a service" when I set up a "share this" link on my page and import the Javascript from an online provider. Specifically, I plan to use [Add This](http://www.addthis.com) (although the example screenshots here actually show a static placeholder I used for the design work -- just a collection of images).

It's far too early for me to recommend or warn you away from this service, as I am only just learning to use it right now -- so don't take this as an endorsement. But it does look fairly easy to use. I know there are a few different services of this type on the web. If somebody can make a case that one of them is particularly "free software friendly", I may reconsider my choice.

# Video Freedom

Nowadays it seems like everybody has video on their sites, and _Lunatics_, being a video project, obviously requires it. We ideally want people to be able to come to our page and simply watch the show -- as well as extra "featurettes", previews, etc.

So we need to put video on the site. Actually hosting video, though, is a serious pain, and I'm not willing to attempt this on our server (which is a virtual host system -- remember this is a pretty low-budget operation). So the video is clearly going to be hosted on dedicated video hosting services. I haven't decided which one to use, but it won't matter much at this stage -- the important point is to simply allow for embedding video content. For the testing phase, I'll use YouTube, since I already have a few videos up there.

=IMAGE=fig_cloud_based.jpg=Figure 6: Some of the main features on the website, and how they will most likely interact with "the cloud" of outside services. This page is very dependent on external resources to be meaningful=

Of course, free software and free content fans won't like the YouTube feed that much. After all, it actively discourages downloading and viewing the video outside of the browser. So for those users, we'll want to have a direct download link. We'll provide different formats based on the user's preference, so we'll need a small array of buttons to support that.

Figure 6 shows my prototype with notes about the connected services.

# Prototype

That's my prototype for the front page. I've begun to work on the designs for the other pages, and of course, I'm having to think now about how the real content on the site is going to replace the dummy content I'm using here. It's a big shift from the last time I did this, though, and it has been interesting just coming up with a basic design.

Although I'm pleased by the wide range of services that take a lot of the burden off of me in creating a site, I'm a little disturbed at the resulting dependency on third party servers and software.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=

