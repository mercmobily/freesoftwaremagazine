---
nid: '3826'
title: 'A very tiny GIS'
authors: 'Bob Mesibov'
published: '2013-03-05 8:24:50'
tags: mapping-software
license: verbatim_only
section: end_users
main_image: main.png
listed: 'true'

---
[__quickplot__](http://quickplot.sourceforge.net/) is a fast, interactive 2-D plotter. All it needs to do its job is a text file with _x_ and _y_ points in a list. If those points are _longitude_ and _latitude_ in decimal degrees, __quickplot__ works like a simple [GIS](http://en.wikipedia.org/wiki/Geographic_information_system) program, with some surprising capabilities.

This article explains how I set up __quickplot__ to do species mapping for Australia. For most of my mapping work I use [__qgis__](http://qgis.org/) and Google Maps/Earth, but __quickplot__ is handy for quickly making simple maps and zooming in on details. With an executable size of only 453 kb, __quickplot__ is the tiniest and fastest GIS I know.
<!--break-->

#Make a base map

I've been using __quickplot__ 0.8.15, which I found in my Debian 'Squeeze' repository. (The newer version 0.10.3 is the default for 'Wheezy' users.) __quickplot__ is both a  command-line and a GUI program, and I put some basic command-line options in a shell script which I launch with a panel menu item:

=CODE_START=
#!/bin/bash

quickplot \
--canvas-color "#ffffff" \
--geometry=800x800+10+80 \
--grid-color "#888888" \
--no-lines \
--point-size "1" \
--grid-line-width "1" \
--same-scale \
~/Spatial/Quickplot_data/australia.txt
=CODE_END=

The command here is `quickplot`, and the longitude/latitude file it opens is _australia.txt_ (more on that file in a moment). I've chosen seven options for the command: 

- set the map background to white (_canvas-color_)
- make the map window 800 pixels square, and place it where I like it on my desktop (_geometry_)
- color the latitude-longitude grid lines a shade of grey (_grid-color_)
- don't connect any of the latitude-longitude points with lines (_no-lines_)
- make each latitude-longitude point exactly 1 pixel (_point-size_)
- make the latitude-longitude grid lines 1 pixel wide (_grid-line-width_)
- map all plots to the same scale (_same-scale_)

With those basics out of the way, I just click the __quickplot__ menu item, and my base map appears immediately in the __quickplot__ GUI (first screenshot):

=IMG_CLEAR=1.png==

#Understanding the plot

The Australian base map in the first screenshot is actually a collection of about 80,000 points (!). The points are simply listed one after the other in _australia.txt_ as in this snippet:

=CODE_START=
...
146.5884	-43.5408
146.5804	-43.5371
146.5739	-43.5344
146.5577	-43.5284
146.5427	-43.5243
146.5407	-43.5241
146.5373	-43.525
146.5322	-43.5307
146.5295	-43.5307
146.5212	-43.5297
146.5194	-43.5272
146.5147	-43.524
146.5123	-43.5239
...
=CODE_END=

(I got the points in a roundabout way from a freely available shapefile of the Australian coastline. After converting the shapefile to a KML file in __qgis__, I used GNU/Linux text tools to reduce the KML to a tab-separated list of longitude-latitude pairs.)

Note that __quickplot__ not only plots the 80,000 points _very_ fast, but also adds a labelled grid of latitude and longitude lines. It does this rather neatly based on the range of longitude-latitude values it finds in _australia.txt_.

To zoom in on the __quickplot__ map, I draw a rectangle around the smaller area I want using the _right_ mouse button (second screenshot), then release the button:

=IMG_CLEAR=2.png==

__quickplot__ redraws the map to show the zoomed-in portion, and also neatly recalculates and displays an appropriate set of grid lines (third screenshot):

=IMG_CLEAR=3.png==

I can zoom in repeatedly to look at smaller and smaller areas. To go back to the last zoomed view, I draw a rectangle with the right mouse button that finishes outside one edge of the map window, and release the button. Dragging and releasing the rectangle outside two edges of the map window will bring back the unzoomed view.

#Adding and styling layers

From here on in, I use the GUI dialogs, but there are simple keyboard shortcuts. For example, typing 'o' brings up the 'Open File' dialog (fourth screenshot):

=IMG_CLEAR=4.png==

For this demo I'll navigate through the file dialog to _Geijera_parvifolia.txt_. This is a simple text file listing the places (as longitude-latitude pairs) where the beautiful little tree [wilga](http://en.wikipedia.org/wiki/Geijera_parviflora) (_Geijera parvifolia_) has been recorded in Australia. After I choose that file and click 'OK',  __quickplot__ opens a new map tab with a plot of that species distribution. But I want those points _overlaid_ on my base map, so I close the new tab.

Back on the base map tab, I type 'g' to bring up the graphing dialog with its 'Select Fields to Plot' tab, and here you can see __quickplot__ logic (fifth screenshot). The first, 'x' field in a data file is '0' (longitude) and the second, 'y' field is '1' (latitude). Note how these are connected for _australia.txt_ .

=IMG_CLEAR=5.png==

I choose the radio buttons similarly for the species data file (sixth screenshot) so __quickplot__ can plot the data correctly:

=IMG_CLEAR=6.png==

Next, I type 'p' to bring up the plots dialog (seventh screenshot):

=IMG_CLEAR=7.png==

Here I click on 'Configure Plot' for the wilga file, then choose a marker size of 5 pixels and blue colour for that data layer. I'll also change the colour of Australia's coastline to black. And here's the map I wanted (eighth screenshot):

=IMG_CLEAR=8.png==

#GIS capabilities

I can add and style as many layers as I want to the map, and each can be separately deleted or 'unplotted', just as in GIS programs. I can zoom in as much as I like to inspect portions of the map (ninth screenshot), and the grid shows me where I am:

=IMG_CLEAR=9.png==

In this case I've plotted the distributions of two Queensland millipedes which have adjoining but non-overlapping distributions. The cursor in this view is halfway between the closest known approach of the two species, and __quickplot__ gives the latitude-longitude of the cursor in the status bar at lower left. To grab a .png image of the current map view, I just type 'i', and name and save the image file.

For a tiny program, __quickplot__ is impressively fast at loading and displaying large numbers of points. It was written by developer Lance Arsenault in the late 1990s and is still maintained by him. All __quickplot__ versions are freely available under a GNU General Public Licence.