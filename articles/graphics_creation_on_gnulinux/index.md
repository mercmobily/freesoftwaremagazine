---
nid: '1930'
title: 'Graphics creation on GNU/Linux: nice stuff and big hurdles'
authors: 'Mitch Meyran'
published: '2006-12-06 8:14:21'
tags: 'gimp,inkscape,scribus,cmyk'
license: verbatim_only
section: opinions
listed: 'true'

---
A great deal of the web is GNU/Linux based: most of it runs on LAMP servers, and some content is created with great tools such as the GIMP, Inkscape and a fancy notepad (or Vi, or Emacs—don’t start). Pen tablets are recognised and used, you have access to effects plug-ins, you can work on bitmaps or vectors (thanks Mr Pierre Bézier! Your name will remain in history). On the other hand, as soon as you want to have your work printed, it’s another matter.


# Creating graphics


## The GNU Image Manipulation Program (GIMP)

It doesn’t need to be introduced. The GIMP is the ultimate software for graphics creation in the free software world. It’s so good all over that its toolkit has been adopted to create the Gnome desktop, it has been ported to most platforms able to support a colour screen, it is very often compared with the proprietary champion Adobe Photoshop... Now in version 2.2 (stable) or 2.3 (development), it makes use of top-notch input hardware (it really likes my Wacom Intuos3 tablet at least), provides clever functionalities and tools, and is getting much easier to use due to an increasingly better layout (version 1.x was often a mess to find the right tool, versions 2.x keep getting better).

Basically bitmap based, it is still able to import and generate paths and vector graphics for better resolution on some pieces of work: its layers manager is basically the same as the one used in Photoshop, apart from some nuances (and even then, that may just depend on the version it’s being compared to).

Version 2.3.12 handles ICC colour profiles, in both RGB and CMYK colour space—but there isn’t much you can do with it yet. More on that later.


## Inkscape

Still not in its final version (0.44.1 at the time of writing), it is much better at managing vectors than the GIMP is; converting a bitmap into a path is a few clicks away, managing the curves and points is easy, creating contents, curve thickness, filling etc. is pretty well done... And it works on a slightly modified Software Vector Graphics (SVG) file format—meaning that you can actually see the result in the GIMP or in recent Mozilla browsers.

While you can define colours based on CMYK values, it doesn’t yet include the profile in the file, and is still RGB based. Yes, more on that later too.


## Scribus

In the proprietary world, most publishers use Quark Xpress to define page layouts—or, sometimes, MS Publisher—but it doesn’t run on POSIX systems (yet). Which left the space open for Scribus, a Postscript-based desktop publishing application. Frankly, it works—pretty well (I must admit not having used it too much yet, I prefer OOo Writer for my simple work).

It can also work with RGB and CMYK colour spaces, and it can manage ICC profiles—but it won’t turn one into the other.


# Of colour spaces and continuous headaches


## RGB

It stands for Red-Green-Blue (it can sometimes be used to refer to ARGB, which is actually not the same), a way to code colour values on the three primary colours used by our eyes to reconstruct the light spectrum. Mixing red and green for example creates yellow, blue and red give magenta, blue and green give cyan... Because light frequencies cumulate (mixing high red, green and blue values of equal values give gray, none means black, all maxed out means pure white).

Given enough resolution (levels per colour channel), you can recreate most of the colour values. If you add a transparency value to this, you have basically recreated the whole range of perceived colours: it’s usually called an Alpha channel, and all four channels together are called an ARGB colour space. More often than not, each channel is coded on 8 bits (meaning 256 levels) which amounts to 4 billion possible values.


## CMYK

Cyan, Magenta, Yellow, blacK are the four basic ink colours used in the printing industry to recreate most photographic content. Mixed on white paper, it allows one to recreate a lot of colours with little hassle—yet it has limitations.

Basically, if you define a printed photo as a series of dots, each would get more or less yellow, blue, magenta, or black ink; a little black and nothing else will appear gray, some yellow and blue, light green, magenta and cyan would make blue or purple (depending on how much magenta you use) and no ink would give... white.

There can be quite a lot of variations with this system, however. And that’s where it gets hard—it is intended to be used on a non luminous media (paper) which makes matching RGB and CMYK quite a hassle.

The price of this system is a lightly moired result on paper (due to all the dots used); when a document has a dominant colour, it may sometimes be much better to add an already mixed ink to the basic colours, so as to get better uniformity. It however adds one more printing pass to the media, thus usually resulting in a 20% printing price increase.

To give you an idea, the Pantone colour range (which covers over a thousand ink colours) when printed on a sampler makes each of those samplers over two thousand bucks apiece! If you get your hands on one (it’s supposed to fit in a big pocket), keep it—even worn down, it’s worth a lot.


## Trouble in Paradise

Web pages are displayed on a screen; as such, web graphics are usually RGB based. So are cameras (snapshot or video) and scanners (they project harsh light on paper, making it “luminous”). Since screens are RGB based too, most graphics editing is done in the RGB space, since it requires little to no translation (at worst, a change in channel resolution).

But as soon as you need to print what you’ve painstakingly edited on paper, you’re in for a rough ride.

Basically, since both colour spaces are so different (one rates grayness on equivalent values of red, green and blue, the other rates grayness on the amount of black it puts in, one has an alpha channel, the other doesn’t...), you need translators; in fact, tables that match some values from one colour space to another. No absolute translation can be used (different inks, different papers, different screens), so you usually “glue” a value table to the source and a value table to the output, and ask the software to mix’n’match. Those tables are the ICC profiles I’ve mentioned previously.

RGB covers many colours that CMYK can’t do (bright white etc.), while CMYK does some stuff RGB can only hint at (hued blacks for example).

Desktop printers usually apply filters to whatever is sent their ways; they result in more vivid images, however they usually strip contrast off the result and don’t make use of the full CMYK capabilities—something a serious printing business can’t afford.

What to do then? Well, basically, values that overlap are kept pretty much as is, but non overlapping values are usually in the extremes, and those are over stretched upon translation.

As such, when converting a RGB image for printing, you need to take into account the discrepancies. And, in fact, you usually create your RGB image so as to make use of the translation process to make use of the broadest results range possible. But, if you don’t know about that, your bright green will look flat, the great yellows will turn greenish and the blues will turn purple. Interestingly, the reds are usually the ones that get the least change (probably because your eyes can’t get them very precisely, thus any corruption will go hardly noticed).


## A brighter future

Now, the last thing that is missing to turn your GNU/Linux desktop into a free desktop publishing station is a tool to convert RGB to CMYK easily without need for too much juggling. And right now, the fine people of the GIMP are implementing just that; until version 2.2, you could use a plugin (called Separate) to artificially convert your RGB flat file into a 4 layers file where you could work on the colour calibration depending on profiles, but it was awkward and required a lot of finger crossing.

In version 2.3.12, you can now specify your RGB ICC profile, a CMYK ICC profile (download Adobe’s, they are freely available) and do some basic work on CMYK separated layers.

Too bad though, I still don’t know how to save or proof the result before I send it to printing... My colour printer has a crappy driver which doesn’t accept alternate colour profiles.

Now, if anyone has any knowledge on the Pantone colour range values, it would be terrific for the next phase: multi coloured printed media (much more precise than CMYK).

