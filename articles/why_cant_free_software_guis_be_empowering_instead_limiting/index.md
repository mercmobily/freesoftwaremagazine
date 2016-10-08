---
nid: '2703'
title: 'Why can''t free software GUIs be empowering instead of limiting?'
authors: 'Terry Hancock'
published: '2008-02-07 4:20:34'
tags: 'free-software,interfaces,cli,gui'
license: verbatim_only
section: opinions
listed: 'true'

---
It's one of the more popular culture wars in the free software community: GUI versus CLI (graphics versus the command-line). Programmers, by selection, inclination, and long experience, understandably are attracted to textual interactions with the computer, but the text interface was imposed originally by technological limitations. The GUI was introduced as a reply to those problems, but has undergone very little evolution from 1973 (when it was invented at Xerox PARC) to today. So why can't we do better than _either_ of these tired old systems?

<!--break-->

# How we got where we are today... the CLI versus the GUI

Back in the early 1980s we did _not_ use command line interfaces 'because we were macho'. We did it because we had no choice. Back then, color was only a property of terminals in the sense of choosing between "amber on black" and "green on black" (I favored the green, even though it was going out of style—to this day I still set my terminal windows to green-on-black for nostalgia's sake).

=ZOOM=We did not use command line interfaces because we were macho. We did it because we had no choice=

But when graphical user interfaces finally did become available, it was a fantastic improvement. With a well-designed GUI, you don't have to memorize a whole micro-language of commands and options to get things done. The trade-off, at least with the classic "Windows-Icons-Menus-Pointers" (WIMP) GUI, however is that it isn't as expressive: it's much easier to say the common things you need to say, but much harder to say things that the programmer didn't expect you to need. The surface simplicity comes at a terrific price in underlying complexity, and that creates practical limits on how flexible the system can be.

=IMAGE=c20080206_typical_gui.jpg=The typical desktop GUI hasn't changed much in 30 years!=

However, _it's been thirty years_! In all this time, there's been a lot of computer science innovation, graphics, programming libraries, and artificial intelligence have all improved drastically. But very little improvement has been made to the most fundamental interaction level between humans and machines. We still have quaint little arguments over "which" is better: the GUI or the CLI. It's become a kind of knee-jerk battle over computer professionalism—the crotchety "geek" versus the clueless "luser" (and who says name-calling and cliquishness ends in high school?). Which conveniently whitewashes the point that, by now, we really ought to have more than just these two choices.

=ZOOM=We still have quaint little arguments over "which" is better: the GUI or the CLI=

We have the [original motivation](http://en.wikipedia.org/wiki/Graphical_user_interface#Command_line_interfaces) behind the GUI concept (as explained on Wikipedia); we have "[Master Foo Discourses on the Graphical User Interface](http://www.catb.org/~esr/writings/unix-koans/gui-programmer.html)"; and we have a recent article claiming that [GUIs are anti-sharing](http://lispmachine.wordpress.com/2008/01/13/the-technical-critique-of-gnewsense/) (a rather poorly-written blog, but with a good point at its core).

I think perhaps the last one gets to the core of the problem for me, especially as regards free software desktop systems: GUI interfaces _as we have hitherto conceived them_ do not provide the same induction into the world of _real power_ over the computer that you get when you are forced to interact with the system in the same was as the people who programmed it.

And yet, it's undeniable that free software would be dead in the water without GUIs to make software accessible to new users. And let's not kid ourselves that newbies are the only ones who benefit: I've edited my share of arcane configuration files, and unless it's something you do everyday, it is never pleasant. GUI configuration is a big improvement.

# Why can't we do better than either?

Which raises a very good question, to which I have yet to see a good answer: why don't we fix it?

If CLIs are so impenetrable, why don't we use some GUI technology to make them less so? Empowered users are supposed to be the life-blood of free software development, so why do we cling so desperately to the barrier created by crusty old text interfaces? Are we _afraid_ that some of the "lusers" might just be able to hack it if only things were a little more inviting?

=ZOOM=Empowered users are supposed to be the life-blood of free software development=

On the other side, if GUIs are so excluding, why don't we re-think them and introduce features to make them invite users into the development experience? Free software is better when it's easy to contribute, right? So let's pull some of the barriers down and build interfaces that _empower_ users rather than wall them in. Or are we really that terrified of knowing all that "geek" stuff about how the system works?

Or are we just insanely conservative, clinging to the way things were for no better reason than that they've always been that way? The present system was designed by proprietary industry professionals. We _know_ they had a stake in protecting their jobs and isolating the developers from the users. Supposedly, we don't have that problem, but for some reason we're still playing the same game. Why? Free software developers are _supposed_ to have more freedom to try out new ideas, right?

# Some ideas of my own...

Well, there's a lot of ideas about improving user interaction. I recommend Wikipedia's [PostWIMP](http://en.wikipedia.org/wiki/Post-WIMP) page for a starting point on that. But I'd like to suggest some very minor ideas that might go some way towards finding a middle ground between the "impenetrable" CLI and the "excluding" GUI.

First of all, let's tackle this from the CLI side. It's been a long time since I used an _actual_ terminal. Most CLI work today is really done through a GUI widget called a "terminal emulator": you know, something like Gnome Terminal (which IMHO is the best available one nowadays). It's not just a plain terminal. It even has "tabbed" terminals, color schemes to keep track of which session you're in, and if you're really into the eye-candy, you can even set the background to an image or set it up with transparency. 

Which is all cool, and I use it pretty heavily. But can't we do more? Terminal interfaces are easier to use, for example, when you have an experienced user nearby. Maybe we could provide an intelligent agent on screen to follow what you're typing and fill in some useful information. I originally had in mind writing something like this for kids, so I'll hope you'll pardon the cuteness (and yes I have heard of the fiasco called [Microsoft Bob](http://en.wikipedia.org/wiki/Microsoft_Bob), but I'm also of the opinion that just because Microsoft can't do something right doesn't mean it can't be done). With appropriate provision of settings and options, it could be set up to provide just the right amount of help so that it is neither incessantly annoying, nor cryptically unhelpful.

=IMAGE=c20080206_guicli_trainerterminal.jpg=A concept for new-user-friendly terminal environment. I original thought of this for kids, but with appropriately flexible settings, it could be useful even for fairly experienced users, as it would keep man pages and other system information at your fingertips. The avatar would probably be optional and changeable=

Most of the data, of course, already exists in the form of man pages, help options, and so on. It wouldn't be hard to write an expert system that "knows" the basic ways to tease help out of your system, and then just provide that in a helper window so you can keep track of, for example, all the picky little options that "ls" can take. Or remember recent commands you typed, or commands you use a lot, or look up which command it was that you were trying to remember (maybe by a keyword search).

And then again, we could come at the problem from the GUI side. One of my biggest pet peeves about GUI applications is that they don't tell you what they are _called_. I mean sure, I call my mail client "Thunderbird", but what you actually have to type to get it to start from the command line is "mozilla-thunderbird". Which is okay once you know, but was a real pain to figure out. I would _so_ like it if every application had a "Help" menu option to show you the command line that actually invoked the program.

There are, of course, some programs that definitely push the envelope with the flexibility of a GUI interface. Blender's interface is absolutely _fearless_ in its innovation. This has cost it some points with new users, but as it is really intended to be optimized for serious "power users", this isn't so much of a problem. The idea behind the Blender interface is definitely empowerment of the user: experienced users can get a lot out of the interface, even if they still rely heavily on hotkeys. The Blender interface isn't really all that unique, but it is huge, and also very consistent internally, which helps the user keep track of the zillions of menus that the program needs.

=IMAGE=c20080206_guicli_blender_fearless2.jpg=Blender, showing the results of my first go at the Gingerbread man tutorial, and a whopping lot of menus and buttons. This is definitely not a "luser" interface, it's designed for power users only=

Of course, it would be nice if the graphical environment provided some of the combinatorial flexibility that the command line gives you. For example, consider the power of Unix "pipes": you can string together a series of applications, combining the output of one program as the input of another. This can lead to some nifty idioms, like this one:

=CODE_START=
# find . -name "*.py" -exec grep "FIXME" {} \;
=CODE_END=

or this

=CODE_START=
# du -sk * | sort -n
=CODE_END=

or this

=CODE_START=
# mpg123 foo.mp3 | oggenc -q 7 > foo.ogg
=CODE_END=

and so on.

But the commandline is depressingly linear. Obviously, with the 2D space of the GUI environment, we ought to be able to express more complex pipe relationships. So how about a "stream/flow" interface concept, where the flow of information is literalized by "pipes" or "wires" on the screen? There have been a couple of programming environments like this, so why not use it as a desktop GUI environment? It should be quite powerful.

=IMAGE=c20080206_guicli_dsp_streamflow_gui.jpg=A GUI based on streams of information and a "component architecture" with pins and wires connecting different applications so that they can be chained to do certain kinds of combined tasks, much as you would with Unix pipes, but with more flexibility=

As a side benefit, such an arrangement would even give you a kind of graphical analog to writing scripts. You'd just group a collection of filter operators into a container object, then you could name and use that container as another GUI object.

=IMAGE=c20080206_guicli_streamflow_script.jpg=A side-benefit of such a system is that there is an obvious way to create script objects using it=

# Let your imagination go

Of course, these are just a couple of goofy ideas off the top of my head. I'm sure there are many other alternative ways that the desktop user environment could work. You could take advantage of new input devices, for example, such as digitizer pens (much more affordable than they used to be), space manipulators, virtual reality input devices (i.e. gloves), and so on. Or, you could just use the good old mouse and keyboard, but in new ways. 

We should be empowered by what has gone before, not limited by it!


