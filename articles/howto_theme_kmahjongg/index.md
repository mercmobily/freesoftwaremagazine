---
nid: '3175'
title: 'Howto: A Theme for KMahjongg'
authors: 'Terry Hancock'
published: '2009-07-08 19:50:09'
tags: 'gimp,inkscape,game,kde,mahjongg,skin,theme'
license: verbatim_only
section: hacking
listed: 'true'

---
<!-- Howto: A Theme for KMahjongg -->

There are a number of simple games I like to play when waiting for a package to download or compile. Often the available themes don't really suit me, and in any case I like to make themes or skins when I can. One of the easier packages to create an alternate theme for is KDE Mahjongg (`kmahjongg`), which I will demonstrate here using Inkscape and Gimp. With the 40th anniversary of the Apollo 11 moon landing coming up, a space exploration theme seems appropriate.

<!--break-->

KMahjongg is a simple tile-matching game using Mahjongg tiles (actually, "Mahjongg" is a four-player game, but this is a kind of solitaire game, sometimes called "Taipei", which uses the same tiles).

=IMAGE=kde_mahjongg.jpg=KDE Mahjongg is a simple matching game. Here it's shown with the default tileset and background=

A "theme" for KMahjongg has just two parts: a tileset and a background. The background can be any image you choose, either tiled or scaled, and is trivial to change. The tileset is a single image file in Windows BMP format, although the extension "`.tileset`" is used for it. The KMahjongg package comes with a default tile set based on the traditional Chinese style and a "pirates" set that can give you an idea of what can be done.

=IMAGE=fig-mahjongg_layers-default.jpg=The default tileset for KDE Mahjongg shows the suits and layout of the tiles. Note that in the game, the flower tiles are interchangeable (they all match each other)=

Clearly, you can make this more complex by drawing intricate tile designs -- but be aware that the tiles are only 34x50 pixels, so there is limited detail available. The color depth is full RGB, though, so it's not difficult at all to create a photographic set. The full tileset image is 360x280 pixels in size.

=ZOOM=A "theme" for KMahjongg has just two parts: a tileset and a background=

For this example I'll be using public domain space photos to make a very simple tileset without too much work. I've got quite a collection of these.

First of all, you'll note the layout of the suits in the file: three sets of nine, then the four "seasons"  which are interchangeable (they all match each other in the game), the four "directions", three "dragon" tiles, and finally four "flower" tiles (which are also interchangeable, like the trees). You should probably come up with a scheme that matches this somehow. My choices where:

* The nine traditional planets (in other words, including Pluto)
* Nine space probes and landers, in a rough time sequence
* Nine ham-radio amateur spacecraft
* The four Galilean moons of Jupiter
* Four images from the Apollo moon-landing missions
* The "dragons" are replaced by Luna (our moon), Titan, and Triton, finishing out the remaining large moons in the Solar System
* Lastly, there are four surface photographs of Luna, Mars, Venus, and Titan (the only four worlds which have been photographed from the surface, aside from Earth)

#Creating a template

First, I loaded the default tileset into Gimp, then saved it again as a PNG file. Then I opened the PNG file with Inkscape. Inkscape default behavior when opening a bitmap image is to create a new SVG document with dimensions in pixels and the image as an object in the "root" level of the document. This is almost exactly what we want, except that we want to create a layered document.

=IMAGE=fig-mahjongg_layers-def+guides.jpg=A template drawn on a new layer over the default image provides the model for creating a new tileset=

So, in Inkscape, we need to create a new layer (`Layer->Layers`, then click on the "+" button to create the layer). Name this new layer "Default". Then:

* select the loaded image
* `Edit->Cut`
* select the "Default" layer in the layers dialog
* `Edit->Paste in Place`

This will move the image from the root to the default layer.

#### Creating the guide objects

When working with an unknown skin layout, it's useful to use the "guidelines" to explore how the file is laid out: just click and drag from the rulers on the top and left side of the canvas (drawing area) in Inkscape. A number in the lower right hand corner of the window will read out the location of the guideline, and you can figure out which pixel various elements are supposed to start on.

In this case, the layout is pretty simple: it's a 5x9 grid of 40x55 elements, each representing a tile. Within each element, only the 34x50 pixels in the upper right of each cell is used to draw the tile for all the tile tops. In the lower right hand corner, two extra tiles use the full cell space to draw the normal and highlighted appearances of the tiles (these show the sides of the tile as well as the top).

=ZOOM=You will notice that Inkscape will let you enter the pixel-exact size and position in the tool bar, which is quite useful for this kind of precision drawing=

In order to hold this information, we want to create a "Guide" layer, above the "Default" layer. Here we'll draw a model of the image layout we need. Lock the "Default" layer (click on the little padlock in the "Layers" dialog) so you don't accidentally disturb it.

Using the rectangle tool in Inkscape, I simply drew a typical tile rectangle. I like to set the rectangle's color to a bright contrasting color, then reduce its opacity to about 50%. This way you can see behind the rectangle as needed, but it will still be clear where it is. To do this, you can use the widget on the lower left of the screen, or you can go straight to the `Object->Fill and Stroke...` menu.

You will notice that Inkscape will let you enter the pixel-exact size and position in the tool bar, which is quite useful for this kind of precision drawing. Next, I duplicated this tile to create an entire row. Using the alignment dialog (`Object->Align and Distribute`), it's not hard to get a nice neat line by aligning the end two elements and then distributing the others evenly between. Then I grouped this into one object and repeated the process to get the rows aligned correctly. Afterwards, you can ungroup them all.

Those elements are now our guides.

=IMAGE=fig-mahjongg_layers-guides.jpg=The completed guide drawing, with the "Default" layer hidden=

#Starting the drawing

Now that the guides are available, we'll start a new "Drawing" layer, locking both the "Default" and "Guides" layers -- except that first, we want to copy all of the tile rectangles from the "Guides" layer to the "Drawing" layer. To do this easily, select all of the rectangles (it helps to group), then follow the same procedure we used to move the starting image to the "Default" layer (select, cut, change layers, paste-in-place).

=IMAGE=fig-mahjongg_layers-drawing.jpg=Starting the drawing on a new layer, over the "Guides" and "Default" layers=

With the Default and Guides layers locked, and the tile rectangles in the drawing, we are ready to start selecting images and creating individual tiles.

The main way to do this is to:

* Load an image into the document (using the icon on the top tool bar, or `File->Import...`)
* Position and scale it under the appropriate rectangle
* Use `Object->Clip->Set` to clip it to the rectangle's shape

In a few cases, the image won't quite reach the edge of the rectangle (especially in the image includes transparency). In those cases, you can duplicate the rectangle (select, then press `_Ctrl_+D`, or `Edit->Duplicate`), and use one copy as a single-color background element and the other for the clipping rectangle:

* Select the rectangle
* Duplicate it (`_Ctrl_-D`) (the new rectangle will appear on top)
* Select the new rectangle and set it to the correct fill color and opacity (`Object->Fill and Stroke...`)
* Send the rectangle to the bottom (`Object->Lower to Bottom`)
* Select the original rectangle (for clipping)
* Send this clipping rectangle to the top (`Object->Raise to Top`)
* Select the clipping rectangle and the image, and clip (`Object->Clip->Set`)

=IMAGE=fig-setting_clip_region.jpg=The clipping tool is extremely useful for making sets of this type: you just draw the shape you need, then use it to clip the image you want to use=

####The tile backing

The two tiles on the lower left will require some kind of tile drawing. You can use any effect you want here, but the default "block" look is easy to obtain using rectangles. 

Start with the same rectangle as used for the tile tops, then duplicate. Use the arrow tool to move and stretch this to match the 5-pixel side and bottom edges of the tile. Click again with the same tool to get the rotate and skew handles. The skew handle will allow you to fairly easily match the slant of the sides of the tile. Note that you don't really need too much precision here, as this will all get rounded off when it is rasterized.

=IMAGE=fig-eye_candy_mahjongg-partial_set_in_gimp.jpg=Looking at the tileset in Gimp (at a 1:1 size on screen) allows you to check that you can see enough detail in the tiles as you work (simply export the file from Inkscape, then view the resulting PNG in Gimp)=

####Background

It's useful to make a rectangle fitting the "page" which appears behind your drawing. This will get rid of the transparent areas in the image. To do this:

* Select the "Default" layer in the Layers dialog
* Click the "+" button to start a new layer
* Select "Below current"
* Name the layer "Background"

On this layer, simply draw a rectangle with the rectangle tool (don't worry about the size). This will leave you in an editing mode, with the position and size of the rectangle on the toolbar at the top of the canvas. Set both `X` and `Y` to `0.00`, then set `W` to `360.00 px` and `H` to `280.00 px`. Choose the color you want from the color palette at the bottom or via `Object->Fill and Stroke...`.

=IMAGE=fig-mahjongg_space-final_ink.jpg=Final appearance of the new tileset in Inkscape=

#Converting and loading the design

Once you have a complete design, you'll want to load it into KDE Mahjongg to play. This is fairly simple:

* Save your original SVG document (you may want to make changes to it later)
* Use the Layers dialog to set the "Drawing" and "Background" layers to visible (the "Default" and "Guides" layers should be hidden)
* `File->Export Bitmap` to get the export dialog
* Set the DPI to `90` (I'm not sure why, but Inkscape always assumes 90dpi when converting between physical and pixel units -- we of course want 1 px = 1 pixel)
* Make sure "Page" is selected for export (not "Drawing" or "Selection")
* Check the export file name. It will have to be a PNG file
* Click on the "Export" button
* Close the dialog and save your drawing again (this will retain the export settings for later use)

Load this file in GIMP to see just how it will look. Of course, a lot of detail may be lost when the image is exported to such a small bitmap. However, you may be surprised at how recognizable many photos are, even when reduced so far.

=IMAGE=mahjongg_space_tileset.jpg=The completed tileset=

Now you will save the file in the correct form for KDE Mahjongg. In GIMP, select `File->Save As`. In the save dialog, use the drop-down menu to select "Windows BMP format" (do _not_ use the automatic according to extension option), but set the actual file extension to "`.tileset`". Click "Save".

=IMAGE=fig-gimp_save_dialog.jpg=The extended save dialog in Gimp will let you save a file in a given format without using the normal extension. This is how you save a file in BMP format, but with the "`.tileset`" extension (alternatively, you could rename the file after saving it)=

To see this set in action, start KDE Mahjongg, then use `Game->Open Tileset...` to get a file browser and find your new tileset. Set it and go back to the game, you should now see your new tiles.

As for a background, KDE Mahjongg can use many different image formats. Just browse for an appropriate image, and load that one. Once you've chosen both, you can save a "Theme" which consists simply of the tileset, background, and layout to be used:

=CODE_START=
kmahjongg-theme-v1.0
/path/to/tileset/file/mahjongg_space.tileset
/path/to/background/file/epimetheus_smoon_pj_Cassini.src.jpg
/usr/share/apps:default.layout
terry@samwise:/project/terry$           
=CODE_END=

That's it! Now you can create your own tilesets for Mahjongg.

=IMAGE=fig-mahjongg_space_theme.jpg=Playing KDE Mahjongg with the new tileset and an appropriate background image=

