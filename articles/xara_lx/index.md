---
nid: '3089'
title: 'Xara LX and the leading, bleeding edge of free software graphics'
authors: 'Terry Hancock'
published: '2009-01-18 15:49:01'
tags: 'graphics,vector,xaralx'
license: verbatim_only
listed: 'true'
book: free_software_vector_graphics_applications
book_weight: '0'
layout: book.html

---
<!-- Xara LX and the leading, bleeding edge of free software graphics -->

The latest vector graphics package for GNU/Linux is a Linux port of a proprietary Windows application called "Xara Xtreme", which is in the process of being converted to a GPL license. There are a number of sharp broken edges along this path, including non-free library dependencies that need to be free-licensed or replaced with free versions, and support for free graphics standards like SVG in order to interoperate with other packages. As a result, you won't find this new application, called "Xara LX" in the main distributions yet. In Debian, it is filed under "non-free" in the unstable "Sid" distribution. However, this is an opportunity to get a sneak preview of what's coming.

<!--break-->

Vector graphics applications have many different goals to meet, and so it's no surprise that they differ a lot both in what they make _possible_ and in what they make _easy_. Xara Xtreme is targeted at high-end illustrators, so it puts the emphasis on the "possible" side of this balance rather than the "easy".

In practical terms, though, most of the time, vector graphics applications are used to make relatively simple drawings, such as the CUPS filter diagram that I drew with Xara LX for this article, and to make use of existing libraries of graphical assets. This therefore may not be a completely fair test of Xara LX's strengths. After all, the selling point that Xara hits hardest is Xtreme's _rendering speed_: how long it takes to re-draw the image you see on screen each time you make changes to the drawing.

A fair test of the relative rendering speed of Xara is beyond the scope of this article, because of the time it would take to create a drawing complex enough to make rendering speed a problem. I couldn't import a pre-existing large SVG simply because Xara LX's SVG import filter is not yet working well enough to do it. So, for the time being, we'll simply have to take the developers' word on the rendering speed claim (though I have no reason to doubt it, as others have corroborated it).

# Yet another vector graphics application?

As a relative late-comer to free software vector graphics (I'm comparing it to _six_ pre-existing applications in this book), Xara LX has some stiff competition, so it will have to work to distinguish itself.

=IMAGE=cups_diagram-xaralx-sc01.jpg=Where I was in the drawing process when Xara apparently left me stranded with no way to save and load my work. Fortunately, this was a false alarm=

Why do we need another one? Xara has tried to position their product as the first "real" vector graphic editor for Linux, but it's a difficult claim to support. Inkscape has been pretty "real" for a long time now, and it has been expanding by leaps and bounds. Indeed, one of the first things I noticed in reviewing Xara LX is that there's hardly any difference between its feature-set and that of Inkscape at this point. More so than with any of the other packages I tried, I really had to search for the differences.

Therefore, drawing comparisons between the two is inevitable: they really are direct competitors.

# User interfaces

As a frequent Inkscape user myself, I may be biased, but for the most part, moving to Xara LX felt like a step _down_ in usability. The "galleries" (as Xara calls its dialog boxes) are beautiful to look at, but I found their functionality compared to Inkscape counterparts to often be somewhat limited or awkward.

It's possible that I would come to like them better with use, but I found them frustrating to learn: especially when high-use Inkscape features were simply missing (though in some cases, I found an alternate way to acheive the same effect).

For example, in the "Arrange"→"Alignment" dialog box, the display feedback is impressively demonstrative of the function of each of the settings, but there are fewer options provided than with Inkscape's "Align" tool which puts the same information into (much easier to implement and more immediate to interpret) icons.

=IMAGE=fig_inkscape_vs_xara_align.jpg=A comparison of the "align" dialogs in Xara (left) and Inkscape (right)=

Another odd omission is the absence of simple mirroring buttons to flip drawing elements on vertical or horizontal axes. You _can_ mirror objects by holding down the shift key and then pulling the re-sizing object handles across the opposite object boundary (a negative stretch, with the aspect ratio locked). But a simple button would've been nice.

Overall, however, the user interface is very similar. The biggest difference is the use of non-standard terms like "Gallery" for what would normally be called "Dialogs" or "Palettes" in standard user interface terminology. But that's hardly enough to throw you.

# Using clipart

There doesn't appear to be any kind of graphics library management integrated into Xara LX. I was able to use Open Clipart project SVG graphics in my drawing, but the "File"→"Import" menu just gives you file browser with no preview window, so selecting artwork is something of a pain (in the end, I cheated by using a different application to figure out which files I wanted to use).

There does appear to be a built-in tool for managing bitmap images, but I didn't really figure out how to use it, because I didn't use any bitmaps in this drawing. Possibly the feature is incomplete, since nothing happens when you click on the "Help" menu in the dialog, and none the buttons appears to allow for loading images into the "Bitmap Gallery".

Importing drawing objects to use as symbols was particularly irritating because the drawings are not loaded into a "group", you have no control over where they are rendered (right into the middle of your drawing), and they will even be drawn into a layer which is "locked". As a result, the drawing objects get mixed up with your original artwork, and untangling them can be a bit of a mess. This problem probably qualifies as a bug, as it's difficult for me to believe that it is intentional.

# Text

One thing that did throw me was the difference in how text is handled. At first, I thought it was either extremely buggy or just very poorly implemented, but then I realized that what was really going on is that Xara LX's text tool is much more versatile.

In Inkscape, a given block of text has to have all the same font attributes, making it necessary, for example, to use two separate text objects if you want to have a title heading over a block of text.

=IMAGE=cups_diagram-xaralx-sc02.jpg=Screen cap of Xara LX with the nearly completed drawing=

Xara LX, however, allows you to select and format individual pieces of text (down to individual letters), _within_ the text block. You can also individually edit the kerning of the characters (that is to say, their micro-position relative to the characters on either side).

For this particular project, I did not find this fine control helpful, and I missed the ability to select and modify existing blocks of text by simply clicking on them.

This is mostly a question of familiarity, though, and I suspect I would come to really like this feature in time. Clearly, Xara LX's text handling was far and away better than any of the other graphics applications I've tested!

One terrible oversight though, is that there doesn't seem to be any equivalent to the text editing dialog that Inkscape provides. This matters because, without it, there is no way to paste text from another application. This meant that I had to manually re-type all of the labels from the original ASCII art diagram! Xara was the only application that forced me to do this.

# Why they call it the "bleeding edge"

Overall, the strongest impression I got of Xara LX 0.7r1785 as packaged for Debian "Sid" (package version 2), was "simply not ready". The SVG import and export is either extremely buggy or totally non-functional (it produces _something_, but it's not clear to me that it is an SVG, let alone one that represents the drawing I created).

For a few moments I was seriously cursing the package when I saved my drawing in Xara's native ".xar" format, and couldn't even load that. It turned out that Debian's "xaralx" packages does not officially depend on "libxar-dev" even though the program apparently needs it to load its native file format. Installing the library package seemed to fix the problem, however, and I was finally able to load my drawing (which would seem to mean that it doesn't need the library to _write_ its native format, but I'm uncertain about that point, as I can't remember if I installed the library before or after closing the program).

Also, for a program which is supposed to be "fast", Xara LX has an appallingly long startup time, at least on my somewhat antiquated computer (1200MHz CPU, 512 MB RAM). The executable is probably quite large, and this might even be a trade-off to achieve the higher rendering speed.

However, it's definitely one of those application that politely gives you time to go and get some tea while it's loading. Or play solitaire or some other passtime.

All of which is where the phrase "bleeding edge" comes from: when you're this close to the development process, there is unavoidable pain. It's not for the feint of heart.

# Creating the drawing

In the end, I created the drawing much as I would have done in Inkscape: I used Open Clipart graphics for the collection of printers at the bottom and also to represent Linux/Unix clients and Macintosh clients at the top. Most of the rest of the graphics are just boxes with text labels.

Xara provides a grid and grid-snapping as you would expect, although there's something not quite right about the grid-snapping dialog, as it kept trying to read out in "px" (pixels) even after I had set the units to "in" (inches). It did seem to work correctly, though, once I got started.

I used the grid to determine the placement of boxes and also the lines indicating the flow of information in the drawing. The "Line Gallery" gives you the option to add arrow heads and/or arrow tails to lines. This is somewhat less flexible than the equivalent feature in Inkscape, since it seems to insist on which end of a line is the "head" and which end is the "tail" (there are some other options such as "brush stroke" that go beyond what Inkscape gives you, though. These look like they could be quite useful). I imagine that creating a double-ended arrow line would require two separate logical objects rather than just a line with two arrowheads on it.

=IMAGE=cups_diagram-xaralx.jpg=My final version of the CUPS diagram I was adapting. I probably spent about two hours on this, although a good part of that was fighting bugs and figuring out how to use the software. An experienced user could probably have done it in 30 minutes to an hour=

# Final remarks

Xara LX typifies the "bleeding edge": it shows a lot of promise, but it is still struggling with delivering on it. Compared with Inkscape, the interface is decent, but lacking in some severely limiting or annoying ways. I was not able to test the rendering speed, as this drawing came nowhere near the rendering limitations of any of the applications I tested. Assuming that it does render fast, however, that might make Xara a good choice for large artistic graphics projects.

At the moment, though, it's hard for me to imagine using it on such a project, since I'd be at the mercy of any rendering or file input/output bugs in the program as well as locked into the ".xar" file format, which no other application can read. This will be easier to consider when the program's SVG filters are working.

So, for the time being, I'll view Xara LX mostly as a curiosity. Hopefully it will either turn into something genuinely useful with further development, or some of the features that are being released into the free software codebase might find their way into other applications. Either way, it's terrific to see a company releasing their code in this way.


