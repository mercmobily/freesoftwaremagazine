---
nid: '3218'
title: 'Moving to an IDE for programming (Eclipse with PyDev)'
authors: 'Terry Hancock'
published: '2009-09-30 7:51:55'
tags: 'programming,python,eclipse,pydev,ide'
license: verbatim_only
section: hacking
listed: 'true'

---
<!-- Moving to an IDE for programming (Eclipse with PyDev)-->

In the past, I've always shied away from integrated development environments (IDEs), but I recently had a strong enough motivation to finally learn how to use Eclipse -- one of the most widely-used free software IDEs available today. Eclipse is known mainly as a Java IDE and it does require Java itself, but it is also a powerful and flexible multi-purpose platform, and adaptations exist for programming in many languages, including Java, C/C++, Lisp, and Python. Python support is available with an Eclipse package called "PyDev", and I have found it to be a big step up.

<!--break-->

#Programming through the ages

When I learned "vi", I did not do so by choice in any real sense of the word. At that time, I was using a university Unix computer, and my choices were between vi and what was known as a "line editor".[1] Emacs probably did exist in 1985, but I certainly hadn't heard anything about it and I don't think we had a copy. So, I knuckled under and learned all of vi's bizarre syntax and hot keys, because I _had_ to. I then developed my first professional program in [Fortran 77](http://en.wikipedia.org/wiki/Fortran_77#FORTRAN_77) using it, which was probably about 5000 lines of original code. Needless to say, I learned vi pretty thoroughly.

=IMAGE=fig_vt220_and_vax11780.jpg=I learned to program FORTRAN on a terminal very much like this one. The computers were VAX 11/780 "mini-computers" running either VMS or Unix (roughly the volume of a household washing machine). I spent most of my time on the Unix machine (Photo credits: Adamantios@Wikipedia/CC By-SA 3.0, Public Domain from Wikipedia)=

We didn't have "syntax coloring" back then, because well, the screens were monochrome [VT-220](http://en.wikipedia.org/wiki/VT220) and VT-240 terminals to begin with (we called these "smart terminals" to distinguish them from the older "Adam" ([ADM](http://en.wikipedia.org/wiki/ADM-3A)) "dumb terminals", but they weren't "smart" by any modern standards, I can assure you).

=IMAGE=fig_adm_terminal.jpg=Fortunately, I didn't have to spend much time using terminals like this one. They were already old tech and had been demoted to less demanding tasks, like running telescope instruments at McDonald Observatory (Photo credit: Daniel Sancho/CC By 2.0)=

In the years after that, I developed software for various generations of MS-DOS, Apple Macintosh, and Windows computers, operating in a zoo of different environments, using whatever editor happened to be available on that system. I have even written code in Notepad and (with Zope) through HTML forms in my browser. As a result, I trained myself to be able to read and navigate code without relying on any of those fancy features like "syntax coloring", "folding", syntax-sensitive indexing, "code completion", or context-sensitive help.

=IMAGE=fig_nova_toggles.jpg=It could have been worse: I once saw my advisor key in a program sixteen-bits-at-a-time via toggle switches on a NOVA 2 computer, similar to this one (programs tended to be shorter that way!) (Photo credit: Arnold Rheinhold / CC By-SA 3.0)=

In general, I sneered at the wussies who relied on these crutches, preferring my plain-text, low-tech environment. Because for all its limitations, the plain-text approach has one solid advantage: every system has it! I was, quite frankly, scared of getting hooked on features that might not be available on the next system I needed to develop for.

=IMAGE=fig_9_track_tape.jpg=My programs and research data were usually stored in T(ape) AR(chives) on 9-track tapes. I think I still have one somewhere, though I can't figure out where I put it (Photo credit: Dave Fischer/CC By-SA 3.0)=

So much for the dinosaur show!

# You might find yourself...

The point is that when, in 1999, I first encountered a GNU/Linux system, it was just a little bit like coming home: I had a Unix-style command line interface and some of my old "friends" like vi were there (but _improved_) as "vim". I took to it, not because I especially loved vi's interface, but because I already knew it, so why learn a new one? (I also didn't like the way Emacs is configured initially to "page" forward instead of scroll, which messes up my eidetic memory of the code's structure -- I was used to scanning for a familiar section of text while scrolling to find a remembered passage. I understand this can probably be reconfigured, but that's beside the point).

I _did_ come to learn and love `gvim`, the modernized, GTK-based version of `vim`. It is a really nice improvement, and I still recommend it (indeed, I am using it to write this column). I was disappointed recently, though, by the loss of the Gnome-based file chooser in the recent Debian versions of `gvim`.[2] I had recently started to depend heavily on the bookmark system to keep track of my many different projects. Now, I have to drill down from the top of the file system every time I want to find a file, which is annoying, to say the least.

=ZOOM=The flip side of my arrogantly conservative attitude, is that I ignored huge productivity improvements=

Of course, the flip side of my arrogantly conservative attitude, is that I ignored huge productivity improvements, putting serious limits on what I could accomplish. Years later, when I had a family and a lot less time to spend on hacking code (both because I was very busy and because it was no longer a formal part of my job), I found myself struggling to get anything larger than a 100-line shell script running.

In some frustration with the number of projects I had _not_ been able to complete, I decided to dedicate some more time to improving my tools,techniques, and theoretical knowledge. After all, it's probably way past time I did that. So, I decided to start taking the Open Courseware programming sequence at Stanford University, which begins with ["CS106A - Programming Methodology"](http://see.stanford.edu/see/courseinfo.aspx?coll=824a47e1-135f-4508-a5aa-866adcae1111). This class is a little too basic for me in terms of theory, but it is taught in Java, which is a new language for me, and the Eclipse IDE is the standard environment used in the class.

=ZOOM=Sun's Java is no longer "forbidden fruit" having recently been liberated to GPL status=

I decided that it was probably worth it just for that part of the experience, and that I might pick up some basics that I had missed along the way (since I never really took any formal training in computer science). Also, Sun's Java is no longer "forbidden fruit" having recently been liberated to GPL status. This has a number of advantages, including the greater simplicity of setting up your Java environment on Debian.[3] I also knew that Eclipse was one of the most popular programming IDEs, especially in commercial environments.

#Eclipse and PyDev

Finally, my excuses for not learning an IDE were getting pretty thin: I haven't seriously used any computers based on anything except Intel-based Debian GNU/Linux in about nine years ("since last century"). Furthermore, Eclipse runs on just about any modern computer system and is free software. So I'm not going to lose access to it. That leaves only the barrier of the learning curve, but I had already decided to tackle that for class.

=IMAGE=fig_traceback.jpg=One of the coolest features was this simple hyperlink that jumps to the right part of the code directly from the traceback (this was an injected bug, of course)=

Naturally, I wanted to be able to use it for Python development as well, and that meant installing the "PyDev" extension. All of this is easy on Debian, as Eclipse, PyDev, Open JDK, and Python are all available as standard Debian packages:

=CODE_START=
# apt-get install openjdk-6-jre python2.5
...
# apt-get install eclipse eclipse-pydev
...
=CODE_END=

Switching to Eclipse has been a surprisingly painless and natural experience. With PyDev installed, setting up a Python project has become very easy. More importantly, the advantages of developing with an IDE over using separate editors and terminals is clear:

* The project structure remembers where all the files are, so I don't have to, and I'm not dependent on the Gnome file chooser to remember this
* The syntax coloring is just about as good as gvim's, and it adds context-sensitive help and code completion tools
* Interactive interpreter, code editor, and project file tree are all available in one window
* Frequently repeated actions are available via pull-down menus

=IMAGE=fig_run_dialog.jpg=Just "Running the program" sounds simple, but actually there are a lot of variables affecting the runtime environment, and the Eclipse "Run..." dialog lets you set them up the way you want. This can also be used to run alternate code, such as your unit test runner or resource building scripts=

As a Python developer, I found it essential to have ready access to a live interpreter. This is the quick way to remember how a Python library handles edge cases -- just try out a few examples, and see for yourself. So, I was pleased to find that PyDev provides an interpreter -- although I had to download a more recent PyDev than the one included in Debian to get this feature.

=IMAGE=fig_introspection.jpg=Cool! Documentation right on the point of the mouse! The pop-up window here is displaying all of the available objects in the `os.path` namespace. No more hunting through the documentation to remember whether it's "pwd()" or "getcwd()".=

Integrating all of these tasks into one application makes it possible to automate more complex interactions, such as running a program, then following a hyperlinked traceback to find a failing line of code. I found these little optimizations to be the biggest advantage to using an IDE, especially when I realized that I could use the traceback feature not only to jump to the problem in my own code, but also to link to the harder-to-find code of a failing library call. In my old way of doing things, this was an annoyingly time-consuming process: figuring out where the library was stored on my system, tracking down the right module, and scanning it with an editor or (more often) "`less`" on the command line. It was a such pain, that I avoided doing it. Now, it's one of the faster ways to figure out API details I didn't understand from the documentation.

=IMAGE=fig_more_help.jpg=Not only will it tell you what's there, but it will often explain it to you. Because this is based on "doc strings" in Python, it works for my own code as well as the standard library!=

Of course, the star of the show is the editor. With PyDev, Eclipse has all the basic things you'd hope for in a programming editor including such things as syntax coloring and smart folding, sensitive to the structure of Python programs. Several features I didn't expect included:

* Immediate access to APIs via the code-completion feature. A window pops up with a list of the available methods when you type a dot after a class or object name. PyDev is surprisingly smart about finding this information, not only figuring it out when the class or object is named explicitly, but also remembering what class a variable represents
* Syntax checking and error-reporting via icons along the left of the editing window. These are also surprisingly smart, as they can catch rather subtle errors
* Access to "`PyLint`", a utility for scanning Python modules for evaluating code quality and style problems
* Automatically generated "table of contents" for a module, including links to each major class or function in it

Each of these features provides a small boost in productivity. Together, they make the experience of writing code vastly easier and more comfortable.

=IMAGE=fig_outliner.jpg=Now this is a nice way to look up a function. The outliner lists all the classes and methods in my file, as well as key features, such as where attributes are first created=

Although I did find the learning curve to be a bit of an obstacle, I feel I've more than earned back the lost time in the two weeks or so that I've been using Eclipse. It's not totally comfortable to me yet, but I'm quickly realizing just how much I've been depriving myself by not moving to a more modern IDE environment.

# External tools

Naturally, even the best IDE won't have _everything_ you want integrated into it, so it's important to see how you integrate external tools into Eclipse. The External tools dialog makes this quite simple.

=IMAGE=fig_external_tools.jpg=Of course no system is totally integrated out of the box, but Eclipse has a sophisticated interface for configuring and launching other applications that you need (such as Epydoc and Inkscape, which I use for creating documentation)=

The first thing I set up was my documentation system, which is based on [Epydoc](http://epydoc.sourceforge.net/). I've been using Epydoc for some time, because I like the markup language, but I wasn't even aware that it came with a GUI application (I used to run it from a script). The GUI seems like the more appropriate way to launch it from Eclipse, so I set it up that way.

=IMAGE=fig_epydoc.jpg=I didn't even know epydoc had a GUI shell, but it does, and I set Eclipse up to launch it for building my API documentation (Does it surprise you that I document and write test code before coding a module? "Crazy writer" -- that's me)=

This particular project uses SVG a lot, and I often use vector graphics to illustrate my software documentation, so I set up Inkscape to run as an external tool as well. The Eclipse external tools dialog gives me plenty of flexibility, so I can set it up to run with the project documentation directory as its working directory and to automatically launch with an illustration template so my illustrations will be created at a consistent size and aspect.

=IMAGE=fig_inkscape.jpg=With the "external tools" hook I can set up Inkscape not only to launch from within Eclipse, but also to retain a particular running directory and to open a particular template file for illustrating the documentation. This makes it particularly easy and consistent to use=

The only problem with using Inkscape in this way is that Inkscape 0.46 in Debian Lenny launches unusually slowly (this is a relatively new problem, though I have little idea why it is happening, or why 0.46 is so much slower than 0.45). That isn't Eclipse's fault of course, but it does give me a useful option, which is to run the program "in the background" (in other words, as a separate, non-blocking process). This way, you can leave the program open for the next time you need it, and don't have to go through the long wait every time you need to edit something (just on the first call).

# Is it better? Yes!

Programming interfaces have come a long way from the binary toggle switches on the front of that NOVA!

After using Eclipse for just over two weeks, I am beginning to feel that sticking with my old separate editor and terminal approach was almost as silly of me as sticking with the toggle switches or the dumb terminals would've been. I've really been slowing myself down.

Going from a plain editor to a full IDE like Eclipse feels like the difference between driving a tractor and driving a luxury automobile with an automatic transmission. It's just a whole lot easier to drive (although harder to plow fields with).

There will always be times when I'd rather reach for the simpler tool (as when writing articles like this one), but when it comes to programming, I'm convinced that an IDE is the way to go.

# Notes

[1] A line editor allows you to edit one line of a file at time, by specifying the line you want, and then making the changes. It was an improvement over punch cards, but is really a technology best left forgotten!

[2] For those who are interested, there appears to be a bug associated with a minor API change in GTK and the "unexpected" way in which `gvim` uses the library. In any case, the fix was to use the dumbed-down interface which lacks any bookmark features.

[3] On Debian, the recently-released Sun Java is known as [`openjdk`](http://openjdk.java.net/). The build system is based on a project called [Iced Tea](http://icedtea.classpath.org/wiki/Main_Page).

### Versions of software:
* Eclipse 3.2.2 (`eclipse` package in Debian/Ubuntu)
* PyDev 1.4.8 (I had to install this using the "Window"→"Software Updates"→"Find and Install..." option in Eclipse. The version in Debian Sid is 1.2.5, and is missing some key features, like the interactive interpreter window).
* Python 2.5 (`python2.5` package in Debian/Ubuntu)
* Epydoc 3.0.1 (`python-epydoc` package in Debian/Ubuntu)
* Inkscape 0.46 (`inkscape` package in Debian/Ubuntu)

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=

