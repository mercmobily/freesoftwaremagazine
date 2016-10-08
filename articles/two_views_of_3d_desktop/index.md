---
nid: '1966'
title: 'Two views of the 3D desktop'
authors: 'Anthony Taylor'
published: '2006-12-28 15:57:45'
tags: 'future,desktop,3d'
license: verbatim_only
section: end_users
listed: 'true'

---
Since my first exposure to an Apple ][ in sixth grade, I haveinteracted with computers primarily through a text-basedinterface. From my first `PR#6' command to this little journal entry(I tend to use Emacs for writing), I eschew fancy heavy-weightprograms in favor of the simplest program possible. (I know, I said Iuse Emacs. Within that contradiction is the essence of simplecomplexity. Substitute vi if you wish.)

I admired the Apple //gs, and then the simple interface of the firstMac. But in the end, windowing systems are great for one thing:opening multiple terminals for simultaneous use. Don't misunderstand:I use web browsers, and I sometimes fire up [the Gimp](http://gimp.org), and I have beenknown to use [Blender](http://blender.org). I've playedwith the eye-candy of [Enlightenment](http://enlightenment.org) since DR7. I evenrather enjoy the absurdity of [Beryl](http://beryl-project.org/) and [Compiz](http://go-compiz.org/). So I _understand_ theappeal of the WIMP (windows, icons, menus, and pointing device)-typeinterface.

But, as an old-timer who remembers learning about the basis ofcomputing from the ROM listings in the back of the Apple ][ manual, Ithink all of you youngsters have it too easy these days, with yourfancy candy-like interfaces that really haven't progressed much beyondthe old four-bit grays of the original NeXT. There's no realchallenge, and no real progress.

The only interface I want to see replace the command line is nointerface at all. I want computers to understand the context of aconversation, and to respond instantly with the information I require,or to perform the tasks I request. They should listen and record andsynthesize information, and interact as if they wereintelligent. (Actual intelligence is optional.)

However.

Over the last couple of weeks, I have been exploring two available 3Denvironments: [Croquet](http://www.opencroquet.org/) and [Project Looking Glass](https://lg3d-core.dev.java.net/). Thetwo projects take distinctly different approaches to their 3Denvironments.


# Alice in Javaland

Project Looking Glass is fairly straightforward, and is the moremature of the two projects. Sponsored by Sun Microsystems and releasedunder the GPL, Project Looking Glass takes a minimalist approach to3D. 

The Project Looking Glass (PLG, from here on out) environment isessentially an evolution of the current WIMP environment we all knowand love. If run as the primary X11 session, regular X11 applicationsappear as usual, with a title bar and standard buttons andwhatnot. The launcher at the bottom of the screen is a variation ofthe standard launcher such as those found in KDE, GNOME,Enlightenment, and just about every other desktop environment.

PLG provides some nice eye candy, such as parking windows on theirsides, which is really the same as using "window shade" features ofmany window managers. The best feature so far is the ability to attachnotes to the back of a window. This feature is driven by the titlebar, so you can add unique notes to anything with a unique title bar,such as web sites in Firefox, directories in terminal apps that setthe title bar to the current directory, documents in OpenOffice, andso on.

PLG native applications may float without the standard windowdecorations. For instance, the background chooser is a circular queueof images. You rotate through the queue until you find a pleasingbackground, and click a small floating checkmark button to select.

All-in-all, PLG is a pleasing, familiar environment without much toset it apart from other pseudo-3D environments like Compiz orBeryl. Unlike Beryl and Compiz, PLG provides a complete infrastructurefor building 3D applications, as long as you code in Java. (C++bindings are promised in the near future, for those masochists whoenjoy C++.)


# Virtual croquet, anyone?

Croquet is [a](http://www.opencroquet.org/about_croquet/screenshots/slideshow3.html)[completely](http://www.opencroquet.org/about_croquet/screenshots/slideshow10.html)[different](http://www.opencroquet.org/about_croquet/screenshots/slideshow15.html)[beast](http://www.opencroquet.org/about_croquet/screenshots/slideshow29.html).Foregoing the standard WIMP-style interface, Croquet focuses on animmersive 3D networked environment. A direct descendant of the MMORPGaesthetic, Croquet replaces the desktop metaphor with an immersiveworld. The mouse pointer becomes an [avatar](http://www.opencroquet.org/about_croquet/screenshots/slideshow6.html).Applications become interactive objects. Even "legacy" X11applications are transformed into collaborative environments, allowingmultiple people to work or play simultaneously.

Your computer becomes your on-line world. You can grant individualspermissions to enter and interact with your world. Moving from worldto world is as simple as moving your avatar through a [portal](http://www.opencroquet.org/about_croquet/screenshots/slideshow17.html).Your world can be a simple plane, or an elaborate [simulation](http://www.opencroquet.org/about_croquet/screenshots/slideshow9.html).

The break from the traditional desktop is astonishing. By discardingthe old metaphors entirely, the Croquet team has opened up an entirelynew realm of computer interaction. Most promising is the peer-to-peersharing of environments. This transforms a network of computers into agiant on-line world, ready to explore and transform in a mannernatural to those who grew up on MMORPGs and file sharing programs likeGnutella.

Just as the PLG environment is tied to Java, Croquet is built onSqueak, a Smalltalk-derived language with a fun name.


# My computer cries

Both Project Looking Glass and Croquet are promising looks at thefuture of computer interaction. PLG extends the desktop into thepsuedo-third dimension. Croquet demolishes the desktop metaphorentirely.

Both environments require a bit of processing clout. My poor littlelaptop cries every time I fire up either one. Strangely, thefully-immersive Croquet performs better, at least for the demoenvironments. I kept losing track of the pointer in PLG. In Croquet, Ikept losing track of my world.

On slightly beefier machines with better accelerated 3D support, moreRAM, and faster hard drives, both environments are responsive andclean.

As you can probably tell, I prefer the game-like approach of Croquetover the rather conservative Project Looking Glass. However, thisradical departure from entrenched environments may be too unwieldy tocatch on. As in the real world, traveling through the world may beprohibitively expensive, time-wise.

Either way, both environments are impressive first steps toward thefuture. With them, I still have to intentionally interact with thecomputer, but at least it's a lot more fun.

