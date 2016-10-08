---
nid: '2092'
title: 'Thrills, chills, and pictures from PyCON 2007'
authors: 'Terry Hancock'
published: '2007-02-25 13:52:02'
tags: 'free-software,python,events,gui,conference,filesystem,stackless,censorship,ctypes,wsgi'
license: verbatim_only
section: opinions
listed: 'true'

---
I’ve come back from day two of PyCON, exhausted and red-eyed, but also really excited. I’ve learned about several different ways to integrate C libraries into Python, including ctypes which, though an old library, has only entered the standard library in Python 2.5 (released earlier this year). I’ve heard the story of modern cyberpunk heros braving the wrath of the information police, patching code on the fly to evade the notice of the oppressive governments they are exposing for their censorship practices (that is _so_ cool). I’ve heard Guido van Rossum promise to break all of our code with “Python 3000”, which will become an actual Python 3.0 release sometime later this year or next year (for a long a time, it was primarily regarded as a science fictional release—complete with alien code and monster backwards incompatibilities). Seriously, it turns out it’s not going to be that bad. I took a number of nice pictures, which are not the world’s best photography, but far better than last year. And there’s more...

I got so excited about the [One Laptop Per Child](http://laptop.org) presentation on Friday, that I didn’t write about anything else, but in fact, there was a lot of other stuff, so I want to cover that first.

Though it is well sponsored, PyCON is a community volunteer effort. I say well-sponsored, because this year’s conference pack had not one T-shirt, but _four_, featuring some very nice designs by the people who created some very nice Python packages, including scipy (combined with Python, this gives you a scientific programming environment akin to big proprietary environments like Matlab or IDL), chaco (a scientific data visualization package that complements scipy—both frome Enthought), bazaar (a new distributed version control system, brought to you by Canonical, who’s probably better known as the producer of the Ubuntu GNU/Linux distribution), Komodo (an integrated development environment for Python coding, based on Mozilla—the only one of these packages that is proprietary, by the way). Of course, the fourth T was the actual PyCON 2007 shirt. Wow! Goodies.

Among the most prominent of the people who bring us this fantastic production are Andrew Kuchling who was the initial master of ceremonies and Jeff Rush, who just stood there looking proud, so he must be the one who does the real work. For those who don’t already know, Andrew (or A.M.) Kuchling is the amazingly generous soul who captains the maintenance of the official Python development manuals. Without him, the documentation would probably be a mess.


=IMAGE=kuchling_rush.jpg=Andrew Kuchling started off the conference, introducing Ivan Krstić, who I’ve already blogged about. The man on the right, beaming with pride, is Jeff Rush, another organizer. No doubt he’s the gray eminence behind the throne.=

PyCON complements the agile programming tradition with “lightning talks”, which are five minute quick burst talks you can sign up for at the conference, just to get an idea out there. The Friday morning lightning session was dedicated to contributions from conference sponsors. Intriguingly, almost everyone said “I’m hiring! Come work for me!”, except for the guy from CCP Games, who said he wasn’t, then said he was just kidding. Seriously, if you have Python skills, this may be a good time to start floating some resumes. CCP Games, by the way creates the MMORPG Eve Online, which apparently runs on Stackless Python.

Stackless is an exciting new way to multitask without all that tedious mucking about with threads. Instead, it uses cooperatively multitasking “tasklets” which allow you to do “coroutines”. I am told this is fantastic for simulation/agent-oriented programming. I am deeply intrigued, but I haven’t tried it myself. Otherwise, Stackless closely tracks the conventional C Python implementation (“CPython”).

No doubt somewhat due to the resurgence in interest in Java now that Sun is releasing it under a free license, the Java Python implementation, called “Jython” is now seeing a rebirth after a period of relative negligence. It now finally has new style classes and other modern Python features, and will be catching up to 2.5 quite soon now.

As you may have heard, Python has an embarrassment of riches in the area of web application frameworks: Zope, Twisted, Turbogears, Django, Spyce, and Pylon were all represented in a panel discussion this year, along with Pyjamas, which is a client-side toolkit which translates Python to Javascript, providing a way to do client-side programming in Python.

As a bit of a contrast to the situation with web frameworks, Ian Bicking presented a talk on WSGI, a new, super-simple standard API for Python applications, allowing them to map web requests to standard function calls, rather than executing processes. This is a big improvement over CGI, but it retains much of the same design simplicity, allowing for what he called “a series of tubes” (I’ll just assume you know that reference), allowing many different and otherwise incompatible web frameworks and applications to be hooked together with relative ease.


# Saturday!

Saturday’s keynote speaker was Adele Goldberg, who is probably best known as one of the people on the by-now-legendary Xerox PARC project which is credited with the now-ubiquitous Windows-Icons-Mouse-Pointer “WIMP” graphical user interface concept, since embodied in Apple Macintosh, Microsoft Windows, X Windows, and just about every other desktop environment you’ve ever seen.


=IMAGE=adele_goldberg.jpg=Adele Goldberg presented Saturday’s keynote on the problems with eLearning and US Public Schools.=

Her presentation complemented the OLPC approach to education, by asking whether eLearning even belongs in US Public Schools. Surprisingly, her conclusion is that ‘no it really doesn’t’, not so much because eLearning doesn’t work, but because Public Schools will screw it up. She presented a number of horrifying cases, ranging from incompetence with open, self-paced teaching models; to computers locked up in cabinets unused to prevent theft (I can attest to this problem myself—I gave a presentation at a school in Carson, CA, where all of the computer lab computers had been stolen); to censorship over insanely trivial content issues (yes this kind of censorship is a common problem in US schools. I grew up with it. Now my kids are. I am disgusted). These problems, combined with the fact that kids really learn more from computers outside of school suggests that maybe OLPC is quite on track with giving the computers directly to the kids. Then, Goldberg suggests, perhaps the introduction of such devices will change our concepts of “education” and “literacy” enough to where the overly conservative bureaucracy that drives American schools can be brought up to date. I hope so.

While I’m on the subject of censorship...


=IMAGE=citizen_labs.jpg=Michelle Levesque presented her experiences with using the Python based MrTurtle to study censorship practices in 50 countries around the world.=

Last year I covered a number of stories about major US companies complying with the censorship goals of oppressive governments around the world. This year, I heard a story from Michelle Levesque about Citizen Labs, a political science student project which used a Python web crawler, amusingly named “MrTurtle” (apparently this is a comment on how fast it runs, as in “turtles, thundering herd of”). The project required the transparency and rapid prototyping capabilities of Python because:


* It had to be maintained and actually modified by non-programmer political science students to meet rapidly changing study problems
* It had to be totally secure to avoid tripping alarms in the countries it was being operated in—namely places where running a web crawler to expose government censorship is a crime
* Some of the censorship practices would change on timescales of a day or less, causing live modifications to be needed to the code in order to cope with it

If ever there was a justification for hacking and information crimes, this is it folks. The coolness factor here is enough to give you chills. The project should be available at [Citizen Labs](http://citizenlab.org) or the [Open Net Initiative](http://opennetinitiative.org).

The project studied 50 countries, and found not one that was not doing some kind of censorship of the internet: including some obvious culprits like China, Iran, North Korea, Myanmar, Tunisia, Yemen, and Saudi Arabia, but also supposedly enlightened countries like the United States, Canada, Australia, the United Kingdom, and Germany. The United Arab Emirates, Levesque reports, has the entire domain of Israel blocked!

Now it’s true that this program can’t stop internet censorship, it can only expose it for what it is. But even so, MrTurtle is out there fighting the good fight.


## And now for something completely different...

Numeric and numarray have merged into NumPy. NumPy is a package for doing math on large arrays of data. Common applications are things like image processing, though there are ways to use it to speed up many applications—essentially anything that would otherwise need huge, slow iteration loops.

Django developer Jacob Kaplan Moss looked at the process of joining the open source development community, covering a range of topics from selling the concept to management (he found that in his case, working for a small newspaper publisher in Kansas, that the “moral argument” of giving back to the community that provided all the open source software they were already using, was the most compelling. I suppose that’s something of a surprise: but then newspapers are run by journalists, and journalists often have grand ideas about ethics, so maybe that’s why) to how to create a productive and happy community of developers. I may do another piece on his specific advice, but it was an interesting and free software oriented talk.

This year I’m trying to take more advantage of the ad hoc “Open Space Talks” which are set up in empty rooms provided for the purpose at the conference. This is usually a more intimate and informal setting in which you can explore some new technology or observe a demonstration. On Saturday, I attended a demonstration of Enthought’s “small sharp tools” deployed in the Envisage environment, a Python-based environment, focused mainly on scientific applications (because that’s what Enthought does) but somewhat resembling the Java-based Eclipse. Envisage, like all of Enthought’s major tools, is free software. I’ll try to get you a URL in a later blog.


=IMAGE=envisage_openspace.jpg=Open space talks, like this one on Envisage (yes, I know you can’t see a thing on the screen), provide a more intimate conference experience=

Brett Cannon presented a means of embedding Python (as Jython) in a Java FireFox Extension, providing the simplicity of an XPI install for Python-based browser plugins. There was also a presentation on Saturday, regarding rebuilding a secure Python sandbox for running untrusted code. This has been a bit of a sore point for a few years, since Python’s “restricted execution” environment was discovered to be insecure and unmaintainable, resulting in it’s removal from the standard library. The new project is not yet about creating a replacement, but that’s one of the hoped-for goals. In combination with FireFox extensions, this could provide a CPython extension plugin system (but don’t hold your breath, that’s a lot to sort out, still).


=IMAGE=olpc_closelook.jpg=We got a much closer look at the OLPC XO 1 laptop on Saturday. The top photo used a flash, by the way—notice anything unusual about that?[1]=

Finally, I finished off the day with a “small” demonstration of the OLPC XO 1 laptop, which had to be moved into the ballroom because of the large number of interested people. I got to hold the laptop myself and get a much closer look at its design. Well, what can I say, it’s really, really cool. I also got some factual corrections on yesterday’s blog about the system. It turns out “Yellow” is the name of the object store system, and “JFFS2” is the underlying wear-leveling filesystem. Anyway, I’ve made the corrections there now. I am contemplating at this moment what I can contribute to this project (I have a couple of projects in mind!). You should too.

_To be continued..._

[1] Hint: take a flash photo of _your_ laptop. Can you see the screen in the photo?


## License

Copyright ©2007 Terry Hancock / Creative Commons Attribution-ShareAlike License ([http://creativecommons.org/licenses/by-sa/2.5](http://creativecommons.org/licenses/by-sa/2.5))

Originally published at [www.FreeSoftwareMagazine.com](http://www.freesoftwaremagazine.com).

You must retain this notice if you reprint this article.

Unless otherwise notice, the photos in this piece are by me, and under the same terms.

