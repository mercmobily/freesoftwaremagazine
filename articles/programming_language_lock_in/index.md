---
nid: '2822'
title: 'Programming languages and "lock-in"'
authors: 'Terry Hancock'
published: '2008-04-18 3:30:04'
tags: 'programming,development,applications,competition'
license: verbatim_only
section: opinions
listed: 'true'

---
### Language and lock-in

One of the favorite arguments for free software is that it avoids lock-in to a particular manufacturer's products. Something similar happens due to choice of programming language, though, which accounts for the sometimes-baffling project rivalries in the free software world. While this may be a surprising result to end users, it makes a lot of sense if you think about how developers—especially free-software developers—work. Occasionally, you hear complaints about these "divisions" of the free software world, but is this really a bad thing?

<!--break-->

# Drupal and Plone

"Under the hood", Free Software Magazine runs on a software package called "[Drupal](http://drupal.org)", which has been heavily extended into the site you see today. Drupal is part of a category called a "CMS" or "[Content Management System](http://en.wikipedia.org/wiki/Content_management_system)". There are a [lot](http://www.cmsmatrix.org) of CMS, most of which you probably have never heard of. Yet, there are a few that keep popping up.

Two of the best known today are Drupal and [Plone](http://plone.org). Both simplify managing a variety of content types and dynamic web applications with an integrated appearance to the end user. However, they remain distinct, primarily because they are written in very different programming languages ([PHP](http://www.php.net) versus [Python](http://python.org)) and based on different data models (file system storage versus a pluggable object database).

=IMAGE=c20080409_pluggable_cms_apps.jpg=The main difference between Drupal and Plone isn't what they do, but how they were created: although they are essentially the same thing from a user's point of view, they are very different to developers=

If you are simply going to install the program, this doesn't really matter to you, except in the availability of software for one or the other. But as a developer, I feel a strong pull towards the system written in the language I know (Plone, written in Python): because if it doesn't do what I need yet, I know how to fix it.

=ZOOM=While both systems theoretically give me the power to "modify and improve" the software to satisfy my needs, only Plone practically gives me that power=

In other words, while both systems _theoretically_ give me the power to "modify and improve" the software to satisfy my needs, only Plone _practically_ gives me that power (because I have the skill to make use of it). Even if I knew PHP as well as I know Python, I might decide to use Plone because of a preference for the object model, libraries, or ease-of-maintenance of Python. These are matters of taste: another developer might just as readily prefer PHP on exactly the same grounds.

In this way, each program attracts its own "developer culture" of programmers who are familiar with and/or prefer a particular set of programming language, libraries, and development tools.

None of these distinctions is particularly meaningful to a true "end user", who doesn't care how the software works internally. And yet, they are important. Because many "users" are _not_ pure end users. In fact, in deploying a CMS-based website, it's very likely that you plan to do some development.

# Libraries, not programs

Developers don't really look at the world in terms of separate programs to do each task, but rather in terms of libraries which solve the major problems of each task, and (occasionally) frameworks to tie them together. If you're trying to do something new, you don't look for an already built solution, you look for the tools you need.

=ZOOM=Developers don't really look at the world in terms of separate programs to do each task, but rather in terms of libraries=

And just like any other artisan, you look for the tools you prefer to use and the ones you know how to use in order to do the job. Some extremely expert artisans can use essentially any tools to do their work, while others are more specialized. You have to balance the time you spend learning new tools against the time you have available to actually use the tools to do creative work.

# Skencil and Inkscape

Among 2D vector graphics programs, there are two that rate special discussion here: [Skencil](http://www.skencil.org) (which used to be called "Sketch") and [Inkscape](http://inkscape.org). Both implement a similar set of features, but Skencil is a Python-based application built around a small set of Python extension modules written in [C](http://en.wikipedia.org/wiki/C_%28programming_language%29), while Inkscape is fundamentally a C/[C++](http://en.wikipedia.org/wiki/C%2B%2B) application with bindings for extensions in several languages (including Python).

Naturally, since the two are evolving separately, there are some end-user differences between the packages, and overall, Inkscape is more mature due to the larger developer community surrounding it. However, when it comes to extensions, plugins, and scripts, Inkscape is a bit weaker because it does not (as yet) provide a means of scripting the application itself from the plugin. Thus, if you have to do anything complicated you either have to write the code from scratch, or use a third-party graphics manipulation library, like [Cairo](http://cairographics.org), rather than using your existing knowledge of Inkscape (Cairo is a library only, there is no associated application program).

=IMAGE=c20080409_vector_graphics_apps.jpg=Once again, Skencil and Inkscape are very similar applications from the point of view of a user, but very differently constructed underneath=

Skencil, on the other hand, provides complete control of the application's own graphics manipulation functionality. On the other hand, saving intermediate data to disk is hard, because Skencil uses its own internal data representation, which is based on extension classes, not all of which provide a means of serialization. So, in order to write data, you have to wrap it as a "drawing object", which is awkward.

=ZOOM=Although these may look like very similar applications to an end user, they are internally very different=

It's even conceivable that you might write a plugin for Inkscape and load Skencil as a library to do the drawing manipulations within the plugin (but it's a dependency nightmare). Fortunately, there are [python bindings](http://www.tortall.net/mu/wiki/CairoTutorial) for Cairo, so this is probably avoidable.

The point, though, is that although these may look like very similar applications to an end user, they are internally very different. So, when developers look at these applications, they see different programs with a lot of different options for further development.

# KDE and Gnome

Perhaps the most obvious such rift to end users is the choice of [KDE](http://kde.org) and [Gnome](http://www.gnome.org). This has largely been characterized as an ideological division, since KDE chose to work with the Qt library, which used to have an incompatible license. However, that problem was solved years ago, and both KDE and Gnome are equally free software applications.

However, Gnome is written mostly in [C](http://en.wikipedia.org/wiki/C_%28programming_language%29), using the [GTK+](http://www.gtk.org) library, while KDE is written in [C++](http://en.wikipedia.org/wiki/C%2B%2B), using the [Qt](http://trolltech.com/products/qt) library. This distinction, more than any cultural or ideological differences, is probably what keeps these two development groups separate. It would be extremely difficult to merge the two packages, because of these differences, even though _ideas_ are exchanged pretty freely between the two.

# The cost of choice

Regrettably, choice comes at a price. If you make two different choices of application programs, you're going to need twice the development effort as required for just one. On the other hand, if you were to force everyone to work on the same system, you'd be building in a kind of brittleness: a single way of looking at things that might not be appropriate for all situations.

Of course, in reality, we don't have a choice about that when it comes to free software: the whole point is that developers are free to develop whatever they want, and users are free to use it or not. But with a diverse group of developers, a diverse approach to different problems, and a diverse group of middleware developers and end user needs, the free software community is really more robust.

=ZOOM=We can make things even stronger with smart engineering: by creating interfaces with standard messaging protocols, APIs, foreign function interfaces, and plugin or extension architectures=

On the other hand, we can make things even stronger with smart engineering: by creating interfaces with standard messaging protocols, APIs, foreign function interfaces, and plugin or extension architectures. And indeed, a lot of work has gone into making that happen. Inkscape is working on a "document object model" that should give more control over the application from extensions; Skencil has improved its SVG support; and there are now [libraries](http://portland.freedesktop.org/wiki) which allow applications to be built so that they work equally well on both Gnome and KDE.

The fit will never be perfect any more than software will ever be bug free. So there will always be splits and mergers of projects, and there will be different development trees based on differing underlying languages, libraries, and architectures. But it's all part of the fun.

