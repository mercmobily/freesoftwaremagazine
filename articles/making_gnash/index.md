---
nid: '2398'
title: 'Making Gnash: a well-deserved name?'
authors: 'Mitch Meyran'
published: '2007-07-02 16:15:58'
tags: 'linux,fsf,gnash,make'
license: verbatim_only
section: opinions
listed: 'true'

---
Gnash is the Free Software Foundation’s alternative Adobe Flash player. Version 0.8 is the third alpha release, and frankly, it rocks! It is also one of the first projects to be covered by the GPLv3.


<!--break-->



# About Gnash


## Some history

Originally based on GameSWF, it is a reimplementation of Macromedia/Adobe Flash version 7, with some stuff from Flash 8/9 added. It is, right now, the most advanced free software implementation of Flash. And, as a matter of fact, it actually works well in many cases.

GNASH 0.8 is out. It is officially the third alpha release of the GNU Flash player. What’s cool about it:


* x86-32, x86-64, PPC (and others) systems are supported
* Mozilla and Konqueror browsers both have a plugin (it follows the Netscape plugin specification, so it should work with any other compatible browser)
* an integrated debugger has appeared in this version; you can see its output with the -v command line option for the standalone player
* OpenGL is the preferred rendering platform (hardware acceleration supported) for desktop systems
* it has close to full support for Flash 1 to 7, and lots of support for Flash 8.5 (Flash 9, actually)


## About version 0.8 (overall, alpha 3 of Gnash)

What’s new over Gnash 0.7.2 (alpha 2):


* it can be compiled with ffmpeg+SDL support
* many Flash 8.5 (now called Flash 9) methods have been added (better compatibility)
* Cygnal: a media server that can handle Flash streams (however, I can’t see if it is actually developed)

What does it mean? Well, basically, users of PPC Debian can now watch YouTube without a virtual machine :D

Jokes aside, Gnash is, right now, the best third-party Flash player and debugger one can get. Coupled with Adobe Flash’s tentative opening (the ActiveScript Virtual Machine 2.0 has actually been freed by Adobe and is now hosted by Mozilla as an ECMAScript 4.0 ongoing implementation, which should come final for Firefox 4.0) this may bring some renewal for Flash, which it needs now that Microsoft is getting serious about hijacking the Web vector authoring market with Silverlight.


=IMAGE=gnash08.jpg=Figure 1: Mozinor's 007 hijacking on YouTube on Firefox 64-bit, Sambakza's Cake Dance on the standalone player, version information in terminal window: Gnash is compiled to use OpenGL and Gtk=


# What you need


## Get the source

Download the latest Gnash tarball in [here](http://ftp.gnu.org/gnu/gnash/0.8.0/) or you can try a CVS extract if you want the very latest version of the code (but then you probably won’t need this article) with

`export CVS_RSH="ssh"`

`cvs -z3 -d:pserver:anonymous@cvs.sv.gnu.org:/sources/gnash`

`co gnash`

Be aware that in that case you’ll need to create `./configure` yourself. I won’t cover that in this article though!


## The dependencies

The following libraries and headers (more may be necessary, but those are the ones I’ve noticed as missing from my build machine) are needed; for a more complete list, merely run `./configure` and check its output, missing/wrong dependencies are explicitly given with their consequences.

The most prominent dependencies are here:


* boost 1.32+ - **essential**, as Gnash relies heavily on Boost
* A media decoder’s development files: either ffmpeg + SDL 1.2 or libMAD
* A renderer’s development files: either OpenGL, AGG (2.4+) or Cairo

What decoder should you use?


* ffmpeg+SDL can decode both audio (mp3) and video (flv, On2) in a Flash file
* libMAD decodes MP3 (and other formats) audio only, but it is lighter than ffmpeg

What renderer should you use?


* OpenGL is default and hardware-accelerated (use it for casual browsing with little CPU use) - requires SDL
* AGG is software only but more correct (best for authoring and tests, but heavy on CPU) - may use SDL or FLTK
* Cairo can do either hardware or software rendering, but isn’t well supported (useful for integrating Gnash in Cairo applications)

And about the GUI...?


* Gtk - required if you use Cairo, best supported option
* GtkGlExt - required if you want to use OpenGL with Gtk. If you build with AGG or Cairo, it is unnecessary
* SDL- recommended for sound support, and to provide a GUI (not the best option though)
* FLTK - Fast Light ToolKit for Cairo and AGG renderers
* KDE - may be used in place of Gtk, is required for Konqueror plugin

Other dependencies are ([complete list](http://www.gnu.org/software/gnash/manual/gnash.html#codedepend)):


* libxml
* wxGtkwidgets
* atk
* JPEG
* Glib
* curl
* pango
* libcurl
* dejagnu (for debugging)
* Ming (for test suite)
* MTASC (for test suite)
* swfmill (for test suite)

Since I want to meet a very selfish goal, that of having a standalone player and a video-enabled Firefox plugin without debugger, I built the player with the following options:

`./configure --disable-debugger --enable-media=ffmpeg`

However, due to my use of a Mandriva 64-bit system, it choked on the 32/64 bit OpenGL dual installation. Thus I first tried pointing configure towards `/usr/lib64` with

`--with-opengl-lib=/usr/lib64`

without success. Then I tried

`LDFLAGS="-L/usr/lib64"`

which should force `ld` into looking for all libraries and headers in a single directory. It didn’t work either.

So I moved those offending files away and restarted make which resumed from the point it choked on before.

The next step is building Gnash; when `configure` is successful, it requires a simple `make`.

The build takes a little while, depending on how fast your system is. If you want to build the test suite too, type: `make test`

You’d better enable the debugger for such a build. Once all is done, just type (as root) `make install`.

Please note that this will put the Firefox plugin in an invalid location (such as root's local Firefox directory); you may prefer putting it somewhere else, so that every account on your system can reach it, or merely create symbolic links in user accounts’ local firefox settings.

Personally I put it in `/usr/lib64/mozilla/plugins`.


# Conclusion

Rejoice AMD64 and PPC owners! If you didn’t want to switch to GNU/Linux full-time because you missed your daily shot of YouTube, now you can have your cake and eat it too.


## Bibliography

[GNASH Development site](http://www.gnashdev.org/wiki/index.php)

[GNASH at GNU’s Savannah](http://savannah.gnu.org/projects/gnash/)

[GNASH at the GNU project](http://www.gnu.org/software/gnash/)

