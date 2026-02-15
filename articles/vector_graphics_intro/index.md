---
nid: '3104'
title: 'Text is not enough!'
authors: 'Terry Hancock'
published: '2009-03-04 15:15:51'
tags: 'inkscape,dia,vector-drawing,xfig,ascii-art'
license: verbatim_only
listed: 'true'
book: free_software_vector_graphics_applications
book_weight: '-1'
layout: book
---
<!-- Text is not enough! -->

In the dawn of modern computing, there was only text. And the text was good. You can do a lot with text: write equations or sonnets, describe intricate computer subsystems or a fine spring day. But people are visual as well as verbal creatures, and there is simply no substitute for graphical communications.

<!--break-->

Early on, people figured out that you could cheat some graphic content out of even the earliest computer terminal systems by exploiting either the _shapes_ or the _shade_ of characters intended to represent text. From that came what we later called "ASCII art", although it already shows the signs of the first fundamental split in computer graphics.[1]

=ZOOM=Early on, people figured out that you could cheat some graphic content out of even the earliest computer terminal systems by exploiting either the shapes or the shade of characters intended to represent text=

That split is the difference between "raster graphics" (more commonly, though somewhat inaccurately, known as "bitmap graphics") and "vector graphics". Raster graphics try to capture an image by sampling the light at regular intervals. They are computationally the simplest, and therefore usually the first to be implemented. No matter what program you use to create graphics with, for example, it's pretty much guaranteed that you will actually be viewing it with a _raster_ graphic screen.[2]

=IMAGE=vg_raster_graphic_representation.jpg=A raster or "bitmap" graphic stores "pixels" which sample the light at regular intervals in space, but has no direct encoding of the drawing process. On the left is the XPM raster encoding for the image on the right.=

But if raster graphics are so simple, you might ask, why do we need anything else? The answer is as simple as _source code_. If you think of a computer graphic as an intellectual product analogous to a program, then raster graphics are a lot like object code: easy to run, directly interpretable by the computer, and _very hard to meaningfully edit_. Oh, you can patch it: paste on some additional graphics, mess with the color tables, or re-crop it. But fundamentally, you're pretty much stuck with what the original artist created.

=ZOOM=A vector graphic preserves the drawing process, just like program source code preserves the programming process=

But a vector graphic preserves the drawing _process_, just like program source code preserves the _programming_ process. With a vector graphic, it is often possible to make fundamental _conceptual_ changes to the drawing. What's more, you can borrow the talent of the original artist instead of having to compete with her, by simply moving around the elements that she created. The result is a more editable and more _free_ form of visual communication.

In certain areas, such as 3D graphics and animation, this is so essential that there is essentially no alternative vector graphics (though it _has_ been used: look up "voxel" if you really want to know about it).  But even with 2D graphics, there is great utility in vector graphics.

=IMAGE=vg_vector_graphic_representation.jpg=A vector graphic is an conceptual description of the shapes and colors in an image and it is much easier to edit, scale, and understand than a raster graphic. On the left is the SVG encoding for the drawing on the right=

Another reason to like vector graphics, besides improved editing and collaboration, is that they usually can be created by people with less artistic skill. Since vector graphics tools are essentially assisted drawing tools (not unlike a drafting kit), which help you to make straight lines, smooth bevels, and other geometric shapes, the quality of a vector graphic drawing depends less on your hand-eye coordination and artistic skill than does the typical raster graphic.

All of these factors are good reasons why free art for free software really should be made primarily as vector graphics: doing so makes the work freer.

# CUPS filter diagram

I was inspired to write this article largely because of an enormous and well-executed ASCII art drawing of the Common Unix Printing System which I came across while working on my LAN printer installation (see Figure 1).

=IMAGE=cups_diagram-ascii_art.jpg=Diagram of the CUPS filter system, created as ASCII art by Kurt Pfeifle (relicensed with permission to CC By-SA 3.0)=

This drawing, created by Kurt Pfeifle, is a beautiful piece of ASCII art and it probably represents a _lot_ of work, but it also illustrates the futility of ASCII art in technical communications. After all, for all that effort, it's still not very clear to read. It would've taken less time to create this drawing in any of the applications I'm going to show you in this book, and any of them would've been much more clear to the reader.

Certainly graphics programs are used by artists, but vector graphics programs are particularly useful for this sort of technical illustration, and it is this use that I'm going to emphasize here.

I've set out to re-execute this drawing in each of seven popular free software vector graphics applications available for GNU/Linux: Dia, Xfig, Skencil, Inkscape, OpenOffice.org-Draw, Karbon14, and Xara LX (though not necessarily in this order). My goal here is to get to know each application well enough to compare and contrast them in a fairly unbiased way.

Of course, there's no escaping my personal experience with vector graphics: I started with Xfig, learned Skencil, and then later adopted Inkscape as my primary tool of choice, which it still is. I've found Dia to be very useful in certain niche applications (but diagrams like this are in that niche). I will talk about my reasons for these decisions as I go, but this particular drawing project provides a useful benchmark for comparing them. It represents what I would consider a "typical" vector drawing task: neither too complicated nor too trivial.

### Notes

[1] ASCII art is fascinating as a craft unto itself, though I'm not going to talk about it much here. I can recommend [Christopher Johnson's ASCII Art Collection](http://www.chris.com/ASCII/) as an impressive online gallery to explore.

[2] Although, maybe there's some oddball out there reading the internet with a vector graphic display. These _did_ exist, by the way. And if you are old enough to remember the earliest incarnation of the "Asteroids" arcade game, then you've probably used one yourself. These early graphics CRTs actually used the electron beam like a plotting pen, drawing out line graphics directly on the phosphor, just like the trace on an oscilloscope. They are pretty much unheard of in modern computer graphics, however.


=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=

