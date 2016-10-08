---
nid: '3080'
title: 'Making eye candy for GRUB'
authors: 'Terry Hancock'
published: '2009-01-15 10:07:59'
tags: 'gimp,inkscape,graphics,grub,splash'
license: verbatim_only
section: hacking
listed: 'true'

---
One of the cool things about custom distributions of GNU/Linux is that they usually have better "eye-candy". However, it's not really that hard to provide your own. If you are setting up a multiple boot system, the GRUB boot menu will be an important startup step; remarkably enough, it is possible to include some graphics even as early as the boot menu.

<!--break-->

# Special considerations for GRUB splash graphics

## Aesthetics

Obviously, when you are composing a background, you need to consider what's going to appear in front of it: you don't want to create something really busy, and certainly not where the foreground graphics will appear. I always leave some space for the login box when I'm laying out my background for KDM; with GRUB, it's necessary to keep most of the screen relatively smooth because GRUB will put "terminal text" on top of the graphic you create. I found that the way that GRUB handles this text is pretty forgiving, but you still don't want to have a face or busy patterns, especially on the upper left part of the screen where the menu entries will appear.

=IMAGE=c20090107_grub_limitations.jpg= Figure 1: GRUB places certain limits on the graphics you can use=

## Dimensions

GRUB is a small program, and its graphics are handled entirely through the computer's VGA BIOS. As a result, it limits you to a specific size and color range: you must make your graphic 640×480 pixels in size, and it must be an XPM graphic with only 14 colors (presumably GRUB actually uses 16 color graphics, but reserves 2 for its own use). The XPM file can be compressed using `gzip`, as XPM is intrinsically a rather bulky format.

=TEXTBOX_START=The XPM image format=
XPM files are readable as text. You might find it informative to open one in a text editor some time—gvim even has a special syntax mode for this, which quite cleverly visualizes the image in your editor by manipulating the text color attributes.

The format is based on C syntax. This makes it much easier to write and test a parser for XPM, but it is not the most compact way to store an image! Applying `gzip` to the image results in a reasonably compact file, though.
=TEXTBOX_END=

## Aspect ratio and widescreen monitors

Regardless of what the actual aspect ratio of your screen is (in other words, whether it's a standard 4:3 screen or a widescreen format such as the 8:5 that mine is, or 16:9), GRUB will still fit exactly 640 pixels horizontally and 480 pixels vertically, which would be 4:3 if the pixels were square. On a widescreen monitor, therefore, the picture you produce will be "squashed" vertically (the pixels will be wider than they are tall, see figure 1). You will need to consider this fact this in your composition.

# Preparing the image

I wanted the GRUB splash to be the same or similar to what I use as a background for my KDM login. So I started by preparing that, which is a full-color (that is, 24-bit RGB color) image at the full resolution for the computers (which happens to be a 1440×900 "widescreen" format). I laid out my graphics at this higher resolution and then modified them to fit GRUB (as general rule-of-thumb, you should always plan to execute graphics at the highest resolution you need, then always scale _down_ to create smaller graphics as needed. This way, your scaling algorithm doesn't have to "invent" information by interpolating).

## Creating with Inkscape

I created my graphics originally in Inkscape and then exported to PNG format. In Inkscape, you can set the document size from the _File → Document Properties_ dialog box. Under "Format", set the size to "Custom", the units to "px" (pixels), and the width and height to what you need for your screen (1440×900 in my case). You may also find it useful to set up a grid.

I like to create a single background rectangle for the image, which I like to match exactly. You can do this with grid-snapping, but at least in Inkscape 0.44 and later, there is an easier way: just create a rectangle anywhere on the screen, switch to the selection tool, then edit the `X`, `Y`, `W`, `H` to (in my case) `0.0`, `0.0`, `1440.0`, and `900.0` (figure 2).

=IMAGE=c20090107_inkscape_bkg_rect.jpg=Figure 2: Creating an exact-fitting background rectangle in Inkscape=

After completing the drawing, you'll need to export to PNG format. There is a tool icon for this on the top bar (figure 3), but it's also available from "File"→"Export bitmap...".

=IMAGE=c20090107_inkscape_export.jpg=Figure 3: Exporting to PNG from Inkscape=

It will be necessary to use GIMP to produce the actual XPM file.

=TEXTBOX_START=Don't use Imagemagick to make the XPMs=
I use Imagemagick for a lot of simple graphics tasks, but occasionally there are formatting issues. When I tried using Imagemagick to make my XPMs for GRUB, I got images with improper palettes which GRUB could not render correctly, which was somewhat frustrating. The simplest solution was to do the reformatting with GIMP.
=TEXTBOX_END=

## Creating with GIMP

Alternatively, depending on the style of image you are creating, it may be simpler to create your graphics directly in GIMP. In this case, start in the _File → New_ dialog, by setting the size to the screen size (figure 4). Then create the image as you normally would in GIMP.

=IMAGE=c20090107_gimp_new.jpg=Figure 4: Creating a new image in GIMP=

=TEXTBOX_START=GIMP menus=
I'm assuming you have used GIMP, but new users are sometimes thrown by finding the right menus, depending on how their GIMP is configured.

Except for starting a new image, I am referring to the pull-down menus that are normally displayed over the working image window. If there are no menus there (GIMP can be configured that way), then you can reach them by _right-clicking_ the mouse on the image window and selecting from the pop-up menu.

Obviously, when you are creating a new image, you have to use the "File" menu that appears over the toolbox window (the only one on the screen at that point).
=TEXTBOX_END=

## Scaling and formatting with GIMP

Either way, you will need to use GIMP to get the image into the correct size and format to use with GRUB. To do this, first use the _Image → Scale image..._ dialog (see figure 5). Click on the "chain link" icon to break the aspect ratio lock (if necessary), then set width and height to 640×480. The interpolation doesn't matter (so long as you do this step first).

=IMAGE=c20090107_gimp_scaling.jpg=Figure 5: Scaling the image in GIMP=

Next, you'll need to reduce the colors by converting to a palette mode. Use the _Image → Mode → Indexed..._ dialog to do this (see figure 6). Select "Generate optimum palette" (it's the default) and set the maximum number of colors to 14.

=IMAGE=c20090107_gimp_reduce_colors.jpg=Figure 6: Reducing to 14 colors in GIMP=

You may want to experiment with dithering. With this particular drawing (which had few colors to start with), I found that "None" was the best option, but for the other computer (where I used a photograph as the basis of the GRUB splash), the default "Floyd-Steinburg" dithering was more pleasing.

Even after being spoiled by years of 24-bit graphics, you may be surprised at how nice a 14 color image can look. One hint to consider if you are having difficulty: if a graphic just won't work in color, try converting to black-and-white (gray-scale) first. It turns out that the human eye can only distinguish about 30 gray levels anyway, so a black-and-white graphic can appear nearly photographic. Save the resulting file to a `.xpm` format, using the _File → Save as..._ dialog.

=TEXTBOX_START=Checking the XPM file=
Saving the graphic was a bit tricky with the version of GIMP I originally used, due to what appeared to be a bug. A full-color XPM would be generated even though the image was converted to 14 colors. This problem is apparently fixed in GIMP 2.2.13 (tested).

However, for those who might be using an older version: my workaround was to save the file first as a PNG file (which should now be an index color image), then re-open that image and save as XPM).

You _can_ use Imagemagick to _check_ the images. Type `identify *.xpm` on the command line to see:

=CODE_START=

grub1_640x480_dir.xpm XPM 640x480 PseudoClass 14c 302kb
=CODE_END=

The `PseudoClass 14c` means that, indeed, this is a 14-color palette graphic, and of course the `640x480` shows that the size is correct.
=TEXTBOX_END=

# Installation

Through some rather nifty use of BIOS disk access, GRUB actually reads its formatting information directly from its configuration files under `/boot/grub` (this is why you need to make sure that it is on an early part of the disk when you install GRUB, and also that you don't use symlinks). One advantage of this is that, by contrast with LILO, you won't have to run any special software to update GRUB when you make changes (including adding your graphic); it will respond to changes immediately.

Use gzip to compress your graphic (creating, in my case, `grub_640x480.xpm.gz`). Then place a copy of this image where grub can get to it. I put mine in `/boot/grub/splashimages`, conforming to Debian policy. Finally you need to modify GRUB's configuration file, which is `/boot/grub/menu.lst` to include a line like this:

=CODE_START=
splashimage /boot/grub/splashimages/grub_640x480.xpm.gz
=CODE_END=

There are supposed to be some other options for modifying the "viewport" into which the GRUB text menu will be drawn, although I was not able to get these to work (you may need to have a later version of GRUB).

=IMAGE=c20090107_grub_bootsplash.jpg=The final splash image as it appears on the screen=

That's it! Reboot the computer, and your new splashimage should appear behind the GRUB boot menu. Isn't eye candy fun?