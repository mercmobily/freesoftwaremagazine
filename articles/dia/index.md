---
nid: '3103'
title: 'Dia: A useful, though flawed, solution for simple diagrams'
authors: 'Terry Hancock'
published: '2009-03-02 9:06:57'
tags: 'dia,diagramming,vector-drawing'
license: verbatim_only
listed: 'true'
book: free_software_vector_graphics_applications
book_weight: '0'
layout: book.html

---
<!--Dia: A useful, though flawed, solution for simple diagrams-->

Including Dia in this series is just a bit of a stretch, because it is not a conventional "vector graphic editor". Instead, Dia operates at a somewhat higher level of abstraction. But since that abstraction is very appropriate for dataflow diagrams (such as the one I picked as a comparison project), I think it's important to note what it can do. Dia is very useful, but it's sometimes frustrating, because the idea of it suggests expectations well beyond what it can actually do. Furthermore, there are bugs in parts of the program. Still, for what it can do, it is indispensable.


# A diagram editor

Dia is specifically billed as a "diagram editor", which is of course where the name comes from. Though I've never used Visio, I have heard Dia compared to it. The main features of Dia are a deeply-integrate system of symbol libraries and a small set of primitive graphics tools which provide text, boxes, ellipses, polylines, and bezier curves. In principle, you can create vector graphics "from scratch" in Dia, but the interface favors using the built-in symbols and simply connecting them using "zig-zag lines" (or "connectors").

=ZOOM=Dia is specifically billed as a "diagram editor"=

The coolest thing about this is the system of anchors which allows connector lines to stay attached to the anchor points on symbols even as you move the symbols around. There is even an "auto-routing" mode which can be used with the connectors. This means that Dia is an excellent tool for "sketching" a diagram before you are fully sure how you want to arrange it on the page (a very useful feature, even though I don't really need it for this CUPS filter diagram project, because I'm working from an original prototype of the drawing).

All of the graphics objects have "properties" which are highly specific to each graphic element type, and it is largely by manipulating these that you can customize the appearance of your drawing. One irritation that I have with the object properties is that for some reason, you cannot select multiple objects and apply the same properties all at once, even when they are all of the same type. It's necessary to select each object in turn, right click to select "Object→Properties" and then set the properties for it. This can become quite tedious!

However, the program saves me a lot of time in other areas, so it's often worth it.

The interface is somewhat minimalist, which makes Dia very quick to learn, and it's not hard at all to get started on a simple diagram with it, even if you've never used it before.

# Symbol libraries

Since the key aspect of Dia is the use of symbol libraries, it's important to consider which are available, and which might suit the task you are working on. There are 34 "sheets" of symbols in my installation of Dia (Version 0.96.1, as packaged for Debian "Lenny"). Of these, most are not much use to me, but I do get a lot of use out of the "UML" sheet for doing object-oriented design of software.

=ZOOM=Since the key aspect of Dia is the use of symbol libraries, it's important to consider which are available=

For this project, we mostly don't need anything more than the primitive rectangular box, so we won't really get much use from the symbol libraries. However I did pick symbols for the GNU/Linux/Unix PC, the Macintosh, and the printers.

# Text handling

Text is pretty simple in Dia. There is no text-editing dialog as such, but right-clicking and selecting "Edit" on a text object gives you options to do things like "Paste Text" from the clipboard into the object. This was very useful for transferring labels from the ASCII art original into my drawing.

Object properties for text include the size, a small selection of fonts (there is apparently an extended font dialog, although attempting to use it causes Dia to freeze up on my system. I'm not sure why this is), and of course, color.

# Connectors

The star of the show are the "zig-zag" connectors. These lines follow the familiar straight-line vertical or horizontal pattern that I'm sure you've seen in many diagrams. Handles on the connector allow you to change the endpoints and also the location of the "zig-zag".

When a connector endpoint lines up with an anchor node on a symbol or graphics primitive object, the object is highlighted to indicate the connection. Dropping the connector endpoint there causes a connection to be made. Once connected, moving the object will drag the connector along with it, keeping the semantic content of the diagram unaltered.

=ZOOM=The star of the show are the "zig-zag" connectors=

It is possible to label the connectors themselves, but I opted for a simpler approach in this drawing, leaving the nature of the connections implied (they all represent data format conversions or message-passing of some kind).

# State of the software

Unfortunately, I can't say that Dia is especially well kept-up. There are a number of bugs, especially in export filters, and occasionally I'll try a feature which freezes up my system.

The main frustration, though, is that the symbol libraries, although good, are just not extensive enough. The best thing would be for them to be easy to edit, but it's apparently not that simple to do. In the past you had to code extensions in C. Today there is supposedly a Python scripting environment in Dia, but I've never figured out how to use it, so I don't get much benefit from it.

=ZOOM=There are a number of bugs, especially in export filters=

It is this disappointment, more than anything else, that limits my use of Dia. In practice, I use it only for UML diagrams (a popular kind of diagram used in object-oriented programming) and data flow diagrams (where the simple graphic boxes will usually do, without any need for symbol libraries—just as with this project). There are libraries as diverse as networking, discrete analog and digital electronics, and so on, but I usually use other tools for such projects when they arise.

The best thing would be if new symbols could be created right in the Dia interface, but if this is possible, I've never figured out how to do it.

# Creating the CUPS filter diagram

Working from the original ASCII-art diagram, I was able to quickly lay out a set of boxes representing the flow of information in the CUPS system. I decided to take advantage of the connectors, and used a slightly different way of expressing the flow in the diagram, rather than relying on straight vertical arrows. This made labeling each transition a bit awkward, but in my opinion many of the transition labels in the original were not very useful anyway (if the source is PDF and the destination is Postscript, do you really need a label that says "pdf to postscript"? Surely the arrow pointing from one to the other communicates the same information).

Figure 1 shows the work in progress, along with the Dia interface.

=IMAGE=fig-dia-cups-in_progress-sc.jpg=Figure 1: Dia interface, and the CUPS diagram in process=

Later, I filled in the text by copying and pasting the labels from the original ASCII-art drawing, although this took some editing to get right. I also altered the object properties to control colors and fonts of the drawing elements. In the end, I wound up with the drawing in Figure 2. This is somewhat minimalist compared to the original drawing, but conveys the relevant information, and exercises the main benefit of Dia: it's quick and easy for making diagrams, if you aren't too picky about customizing the final drawing.

=IMAGE=fig-dia-final_drawing.jpg=Figure 2: CUPS filter diagram, as completed with Dia=

I'm not sure I would consider this result "publication quality". There are a lot of things I'd like to tweak. For this, Dia is not necessarily the best choice. One idea is to export the result to SVG and then tweak it in another vector graphics program. However, the SVG export filter is a little buggy: Figure 3 shows what happened to one I exported (perhaps the units were wrong on the text objects?).

=IMAGE=fig-dia-svg_export_bug-sc.jpg=Figure 3: The SVG export filter in Dia doesn't work quite right, apparently=

# Final remarks

For output that you want to publish, Dia often falls short, and hand-drafting the diagram you want in a "real" vector graphics editor is probably a better idea. On the other hand, it's just the thing for all kinds of internal documentation—the kind of documentation you use to help yourself complete a task and to organize your own thoughts on a design.

I'm often frustrated by the existing symbol libraries, but I have not yet learned how to extend them. Possibly I will make a project of learning that someday.

Overall, I find Dia a useful, everyday tool. But, I know I would use it a whole lot more if it were just a bit more polished, and I find that a bit frustrating.

