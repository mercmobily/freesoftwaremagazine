---
nid: '3139'
title: 'Inkscape: one essential vector graphics application'
authors: 'Terry Hancock'
published: '2009-04-11 12:10:31'
tags: 'inkscape,cups,vector-drawing'
license: verbatim_only
listed: 'true'
book: free_software_vector_graphics_applications
book_weight: '0'
layout: book
---
<!--Inkscape: a modern vector graphics workhorse application-->

Inkscape is my vector graphics application of choice. It can do a wide variety of vector drawing tasks with relatively little effort. It uses the now-standard SVG vector format as its native format, and it has become very extensible through a simple "stream-based", language-agnostic scripting system. On modern systems, it is reasonably responsive (though not the fastest), and the interface layout is well-balanced and fairly intuitive.

<!--break-->

Since I use Inkscape every day and it's clearly my favorite vector graphics tool, there's really no way my review of it can be unbiased. So I won't pretend to be. Instead, I'll just try to be as complete as I can about the more unique features of the program.

I was wooed into using Inkscape by its slick interface and responsive drawing, relative to the somewhat clunkier-feeling Skencil (which was called "Sketch" at that time). It also handled multi-line text far-and-away better than Skencil (or Xfig or Dia).
Being a Python scripter, I was a little disappointed at the poorer scripting interface (Skencil, being written in Python, has a tighter, more capable Python binding which allows both script-invocation from the program and program-invocation from the script, while Inkscape essentially allows only the former). Sadly, Skencil's scripting interface also offered some frustrations (such as non-serializable drawing objects), and so I was sort of stuck in the middle for awhile on my scripting ideas.

One might imagine using Skencil as a drawing engine within Inkscape scripts, and this has been done, but today, the library of choice for this kind of scripting is probably Cairo, which has bindings for many languages, including Python.

Inkscape has accumulated quite a few scripts or "extensions" by 2009, and the version in Debian "Lenny", version 0.46, package version 2, is loaded down with them (I've counted 90 "effect" extensions in my installation). I assume that this accounts for the slow load time of the present version. While previous versions (up to 0.45) loaded very quickly on my 1200 MHz system, this one takes about 45 seconds (!) to launch. Fortunately, once it's up, the waiting seems to be over—launching a new window is as fast as before (less than two seconds, anyway).

Still, I like having the extensions, so I tolerate the delay. Maybe I'll get a faster computer someday.

# Tied to SVG

One of the consequences of using the SVG format natively is that Inkscape's logical drawing model is intimately tied to the SVG model. Occasionally, this does introduce some limitations, although the SVG model is very capable. It also introduces some new features (such as "cloning") that were not very common in previous drawing programs that I have used.

# Symbol libraries

Until recently, Inkscape had no specific support for symbol or clipart libraries, although it had a good "import" facility which could be used with a collection of clipart on your filesystem.

=IMAGE=fig_openclipart_widget.jpg=Figure 1: A widget for searching the online Open Clipart project is new in version 0.46 of Inkscape=

Today, however, Inkscape has a special "Import From Open Clip Art Library" tool, which searches the online [Open Clipart Project](http://www.openclipart.org) site for artwork, using keyword-based queries (figure 1). Obviously you need to be connected to the internet for this, and its performance will depend on your network speed. I found the Inkscape tool superior to using the browser-based search engine provided by the Open Clipart website itself.

The importer will sometimes retrieve image files and sometimes SVG. I have not yet found an effective way to limit searches to one or the other, nor any indication of which is which in the search window. I hope some later version of the tool will introduce these capabilities.

# Text

Inkscape has excellent native multi-line text support, and that is indeed one of the reasons I switched to using it.

Unlike Xara LX, you cannot format text separately within a text object, but you do have full control over the style of any given text object. Inkscape also has a text-flowing tool (which allows text to be automatically line-wrapped within a given box).

New in the 0.46 version of Inkscape is a graphical font selector widget which displays a sample of each font in a pull-down menu. This is a great idea. Unfortunately, it is apparently very poorly implemented—I frequently get freeze-ups of my entire X server environment when using it. It appears to have the effect of locking my display until the menu is closed (this might be by design?) but sometimes it simply locks everything up for some period of time, regardless of what I do. It does not usually cause X to crash, at least, although I have given up and killed Inkscape because of it more than once. The severity of the problem may relate to the very large number of fonts that I have installed.

=IMAGE=fig_inkscape_font_selector.jpg=Figure 2: The new visual font selector is a good idea. It looks great, but doesn't work all that well as yet=

I have found that in practice, it is better to simply create a sample text object and use the (older) text editing widget to select a font and apply it. This is much faster and more robust on my system, although the lack of any kind of font organization (other than alphabetical) is still a problem.

# Boxes and grids

Laying out box diagrams like the one for the CUPS filter diagram is fairly trivial in Inkscape, using the standard "rectangle" tool. It is not quite as trivial as in Xfig, due to the fact that grid-snapping is not on by default.

In fact, Inkscape has very sophisticated grid-snapping tools, with fine-grained control and a lot of flexibility for both "flat" and "isometric" drawings, but by the same token, they are somewhat harder to understand and use. For a simple drawing like the CUPS diagram, they are probably overkill, and so I will demonstrate the method of getting the simple snapping behavior you need for this type of diagram.

Grid snapping behavior in Inkscape is dependent upon the zoom magnification, because snapping is determined by distance from the cursor to the nearest grid point in _pixels_. Also, when you zoom out far enough so that the minor grid cells disappear, they are no longer active, and only the major grid cells will support snapping. Therefore, making a drawing with the grid snapping feature can involve some rather delicate twiddling with the zoom to find the right scale at which to draw.

# Connectors

Inkscape 0.46 does have a "connectors" tool, although this is strictly of the center-point to center-point type, and so I won't be using it on the example diagram. Obviously, however, if you need a simple node-and-link diagram, Inkscape's connectors will do nicely.

# File formats

Inkscape's native format is the interchange standard SVG format. This is an extremely versatile format in itself, and is probably what you want, anyway.

However, Inkscape provides both import and export filters for a wide variety of other drawing standards, due partly to the fact that import and export are extensible with scripts (see table 1).


Format   | Import            | Export
---------|-------------------|-----------------
.svg     | Inkscape, Plain   | Inkscape, Plain
.svgz    | Compressed SVG    | Compressed SVG
.zip     | -                 | Inkscape SVG
         |                   |   with Images
.ai.svg  | Adobe Ill. SVG    | -
.ps      | pstoedit          | Native, Cairo
.eps     | pstoedit          | Native
.epsi    | pstoedit          | Native
.pdf     | Adobe             | Cairo
.ai      | Adobe Ill. 9.0+   | Adobe Illustrator
.xaml    | Microsoft         | Microsoft
.odg     | -                 | OpenDocument
.tex     | -                 | LaTeX+PSTricks
.xcf     | -                 | Gimp (Keeps Layers)
.dxf     | -                 | AutoCAD, Cutters
.gpl     | -                 | Gimp Palette
.ggr     | -                 | Gimp Gradient
.wpg     | Word Perfect      | -
.fig     | Xfig              | -
.outline | Text Outline      | -
.dia     | Dia               | -
.txt     | Plain Text        | -
.sk      | Sketch/Skencil    | -
.wmf     | Windows Metafile  | -
.tiff    | Image             | -
.jpg     | Image             | -
.gif     | Image             | -
.png     | Image             | Via "Export Bitmap"

=TABLE_CAPTION=Table 1: Import/Export Support. Some filters are lossy.=


# Example drawing

I started by selecting graphics from the Open Clipart library for the computers and printers. I found that some of the images I was looking for were not available from the online site, so I also just imported a couple of SVG drawings from my on-disk collection (from the Debian "openclipart-svg" package).

I then set up the grid (see figure 3). First, I selected File->Document Properties, and set the paper size to US letter and all of the units to "inches". I then went to the "Grid" tab; started a new "rectangular" grid; and specified minor spacings of 0.05" with major grid lines for every 20 minor lines (which puts the major grid lines on 1" intervals). I then set the colors to something visible enough. Finally, I went to the "Snap" tab; enabled snapping to the grid; and set the sensitivity to the maximum (50 pixels).

=IMAGE=fig_inkscape_grid_setting.jpg=Figure 3: Setting up a grid. A) Set the page size and units; B) Create a rectangular grid; C) Define the grid spacings for minor and major grids; and D) Enable snapping to grid and set the pixel radius to maximum=

I then used the rectangle tool to draw all of the boxes for the drawing, lining up all the elements on the grid. Next, I drew all of the connecting lines, being sure to always go from top to bottom. Then I selected all of the connectors and edited their style: setting the color to black, thickness to 0.03", and picking an appropriately-size arrow head for the lower end of each. For the lines which required it, I set a dashed or dotted line style.

=IMAGE=fig_inkscape_drawing_sc1.jpg=Figure 4: Shortly after starting the drawing=

Next, I added the text elements. In fact, for quickest use of consistent style, I created one of each type, then duplicated and placed copies. Then I selected and edited the text on each, pasting the text from the original ASCII art CUPS diagram (which I had open in a gVim window).

=IMAGE=fig_inkscape_fillstroke.jpg=Figure 5: Stroke and fill dialogs in Inkscape=

Finally, I selected the boxes and set their stroke and fill settings with the appropriate dialog box (see figure 5). The final result can be seen below in figure 6.

=IMAGE=fig_inkscape_final_drawing.jpg=Figure 6: Final result of CUPS filter diagram, drawn with Inkscape=

# Final thoughts

Inkscape is probably my favorite GNU/Linux authoring application. I use it for a wide range of drawing tasks, as well as some tasks (such as creating menus or shopping lists) that you might not think of as graphics tasks at all (but for highly-visual layouts, a vector graphic tool can be more intuitive and flexible to use than a word processor). Practically every original illustration I make for Free Software Magazine has been through Inkscape for at least part of its creation (I do also make substantial use of Gimp).

For specific niche applications, I have found other useful tools, but they all have interface issues that make learning them (and remembering how to use them) somewhat harder. Furthermore, even when I use these tools, I almost always convert the result to SVG for post-processing in Inkscape.

So, although other tools have their uses, my recommendation is that if you have to choose just _one_ vector graphics application to learn, Inkscape is the one you should pick.

