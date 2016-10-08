---
nid: '2101'
title: 'Wrapping up PyCON 2007'
authors: 'Terry Hancock'
published: '2007-02-27 8:04:10'
tags: 'free-software,python,events,packaging,conference,science,plotting'
license: verbatim_only
section: opinions
listed: 'true'

---
Well, I didn't quite make it to all of day 3 of PyCON, but I got a good piece of it, starting with some very nice presentations of scientific software from Enthought and finishing with some questions about the future of Python packaging for GNU/Linux distributions.

I first heard about Chaco when I was working at Caltech, supporting scientific software there. We were extremely far in arrears on our payments to RSI for the many seat licenses of IDL that the Caltech/JPL IPAC needed. So, converting scientists over to using a suite of free software packages in a Python-based environment seemed like a very attractive idea.

Space Telescope Science Institute in Baltimore was really taking the initiative on this. Enthought was essentially on contract to produce the necessary astronomy plotting package, which would be named “Chaco” after the famous Anasazi archeological site (though probably a principally religious site, the ruins at Chaco Canyon include a wide range of astronomical markers).

Chaco was meant both to modernize and replace existing plotting packages like Mongo and SuperMongo, which were not only rather kludgy, but also had extremely awkward and uncertain licensing terms.

However, at the time, Chaco was in its infancy and we couldn't really use it. Fast forward four years, however, and Chaco is looking pretty amazing! It combines the ideas of plot scripting (which has been of use in the scientific community for publication quality graphics as well as exploratory visualization) and interactive graphics manipulation (which may be more familiar to users of “business graphics” tools). In Chaco, you script your data, which then launches a plot browser application to interact with your data. Far better for exploration, of course.

I didn't actually see how Chaco produces publication graphics, but I’m fairly sure they wouldn’t have overlooked this.

Chaco is part of a larger suite of scientific data reduction and analysis tools called “scipy”. Though not part of scipy, NumPy (the inheritor of both the Numeric and Numarray packages, which have been unified) is the expected way to handle image and spectral array data within scipy.

I’ve been out of astronomical research for many years now, so I haven’t really had any data to analyze, and so I haven’t personally tried these packages out—but I sure wish I had had them back when I was doing active research. They really do look nice.


=IMAGE=chaco_demo.jpg=In another open space talk, Peter Wang of Enthought gives a presentation on Chaco, a free software scientific plotting package.=

Immediately afterwards, we had another talk about a package which was not itself free, but demonstrated an application of Enthought’s free-licensed application framework, “Envisage”. The package is (I’m told) not much different from Eclipse, except of course for being written in Python.

Enthought has a plugin/component architecture system, which, if I understood correctly, is called “traits”. Installing all of this stuff is now on my to-do list, I can definitely tell you.

Unfortunately, although the 3D visualization widget is apparently free, the CAD system Enthought used to create the models apparently is not. However, I'm very intrigued by the possibilities of using these tools and extending them. It seems like Envisage might make a very nice start on a CASE tool of some kind.


=IMAGE=toothpaste_demo.jpg=Dave Peterson presents a talk on “Making Toothpaste with Python”. To be more precise, the package is a computational fluid dynamics environment used by process engineers to model the behavior of mixing machines used to blend all kinds of things like medicines, food products, and of course, toothpaste.=

There was also a very handy talk by Sean Reifschneider about the `vim` Python module, as well as vim scripts for handling Python code: syntax handling, block jumps, re-tabbing and so forth. This was personally interesting to me as a vim user, of course.

Following that was a very edifying if not exactly exciting presentation from Anita Ewing and David Hancock of ARINC Direct. Their company sells a service for business air traffic, which has to aggregate an enormous amount of information from various web services to produce flight plan reports for pilots on demand. This lets a pilot know, for example, what sort of winds to expect on his planned course, and how long it will take him to arrive.

Their problem was that this huge and complex system had to be accurately tested, and they went from a very laborious manual process to an almost fully automated system using Python test scripting based on Fitnesse, twill, buildbot, Selenium, and nose.

Fitnesse is a web-based testing technology that resembles doctest, but with the test strings embedded in a Wiki. Twill automates web browsers, including forms. Buildbot of course, runs tests automatically, and Selenium is a tool for capturing web-based test runs and recording the information. The ARINC folks automated the process so that Selenium would generate the necessary test scripts automatically, base on an interactive test session.

They reported that their biggest problem was getting their programmers to use the automated testing approach, but also that they had managed to get everyone using it—by recruiting one programmer to work on the sysem full time, and another to spend time evangelizing about the benefits of test-driven development. The company has apparently seen this succeed very well.

Afterwards, Titus Brown followed up with a presentation of his various testing packages: twill (automated web browsing and form-filling), scotch (it records and replays WSGI—this is a bad pun on one of the popular alternatives for pronouncing “WSGI”), and figleaf which is a code coverage tool (code coverage tools test how much of a program has been executed during testing to determine whether you've tested everything).

A presentation by Dr. Roberto de Almeida returned to the scientific programming theme with a talk on serving and reading “Data Access Protocol” (DAP) data. He has some fairly clever hacks to allow your python program to essentially pretend that it has the dataset on disk, even though it’s really being served by a remote file server. His package is “PyDAP”.

At the end of the day I wavered a bit. There was a talk about the status of Women in IT which interested me as a journalist. But in the same time slot was a talk about packaging Python applications for use by GNU/Linux distributions, and that has definite practical utility to me, so I decided to go pragmatic.

I will say though that my subjective impression is that the number of women attending this conference, though still a small minority, was probably twice what it was last year. There were certainly a lot more women giving presentations, as well. We must be doing _something_ right.

The package talk raised some interesting issues. Python has a newly maturing package format specifically for Python programs, called “Eggs” (to go alongside Java “Beans” and Ruby “Gems”—Perl has some kind of package format at CPAN. Probably just “modules” without the kitschy names).

However, the major GNU/Linux distributions have language-neutral package formats like DEB and RPM. Creating a Python Egg is (apparently—I haven’t tried it yet) quite easy, because the mechanism is built into Python's “setuptools” package. However, the process for producing RPMs, let alone DEBs, is fairly complicated and not well documented. Also, Debian exercises a great deal of gate control, keeping out packages that they don't like. Depending on your purposes, that can be very good or very bad.

So, the question arises: should programmers worry about distribution-significant packages or should they simply produce Eggs? There are pros and cons on both sides.

After that last talk, I was pretty worn out, so I went home. There was a closing address which I’m sorry to have missed, but overall it was a great conference. Next years' is not expected to be in Dallas (at this point, I’m thinking that Chicago is most likely). I do plan to find out, PyCON has been a great conference for two years running.


## License

Copyright ©2007 Terry Hancock / Creative Commons Attribution-ShareAlike License ([http://creativecommons.org/licenses/by-sa/2.5](http://creativecommons.org/licenses/by-sa/2.5))

Originally published at [www.FreeSoftwareMagazine.com](http://www.freesoftwaremagazine.com).

You must retain this notice if you reprint this article.

Unless otherwise noted, the photos in this piece are by me, and under the same terms.

