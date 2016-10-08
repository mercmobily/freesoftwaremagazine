---
nid: '2874'
title: 'Report from the Texas Open Source Symposium'
authors: 'Terry Hancock'
published: '2008-05-16 23:53:26'
tags: 'free-software,open-source,conference,texas'
license: verbatim_only
section: opinions
listed: 'true'

---
Recently, I attended a small symposium here in Texas, with just over 70 people attending: the inaugural "Texas Open Source Symposium" (TexasOSS). Although small, it was a pleasant conference. Topics ranged from 3D applications to business models, to introductions into the inner workings of the free software community process.

<!--break-->

I received an email invite to this conference through a mailing list for my local Python interest group. This was a lucky chance for me, because this conference was free to attend, only one full day long, and close enough for me to make a day trip of it (just!). The conference was held on the campus of [Angelo State University](http://www.angelo.edu)(ASU). San Angelo is an interesting city. It is, I suspect, the largest city in Texas which does not have an interstate highway going through it. As such, it's a quiet, somewhat off-the-beaten-path place, and is a popular retirement city. I personally thought it was an excellent place to have a low-key local open source conference, and that pretty much describes [TexasOSS](http://www.texasoss.org).

=IMAGE=texas_road_flat_straight.jpg=Sadly, I took few photos at the conference itself. Here's what the road looks like, though. Flat, isn't it?=

TexasOSS was the idea of Jeremy Fluhmann, who started the project with a co-worker at ASU, Slade Cozart. This year's symposium was the first, and Fluhmann hopes to make it an annual event. Sponsors for this year's conference included O'Reilly, Pearson Education (both also sponsors of Free Software Magazine), and Enthought (a scientific software company in Texas that releases a fairly large amount of Python code under free licenses).

# Talks

## Joomla and Moodle in K-12 education

Presented by _Ken Task_.

There is a proprietary online class software system called Blackboard, which is very popular at the college level. However, Blackboard, while very popular with administrators, is often frustrating to the teachers and students who have to use it. More importantly for K-12 schools, Blackboard is pretty expensive. Fortunately, there are some excellent free software tools for creating web portals ([Joomla](http://www.joomla.org)) and online classes ([Moodle](http://moodle.org)), so Ken Task has been introducing these tools into a number of rural Texas school districts (of which Texas has a lot), allowing them to offer educational opportunities that would otherwise be prohibitively expensive due to a lack of teacher availability and materials costs.

=ZOOM=Blackboard is pretty expensive. Fortunately, there are some excellent free software tools for creating web portals (Joomla) and online classes (Moodle)=

Task also addressed the importance of standards, and of avoiding forced-upgrades, which, in a cost-driven environment like that at most poor public school districts, often results in resources being scarce and therefore of limited availability to the students who need them the most. Thus, old computers go unused, while the district has to migrate to new computers which they can't afford to buy enough of.

I also learned that "Moodle" is an acronym for "Multiuser Object Oriented Distributed Learning Environment". And here I thought it was just a silly word. Or maybe that it had [super-cow powers](http://www.freesoftwaremagazine.com/articles/free_software_easter_eggs).

## Non-programming contributions to free software projects

Presented by _Janet Swisher_.

Janet Swisher is the entire technical writing department for Enthought, a company which produces Python-based scientific software. I know them mainly from their contributions a few years ago to _Chaco_, a free-software scientific plotting package that they produced on a contract with Space Telescope Science Institute, but most of their clients are probably in the geophysical exploration industry, considering their location here in Texas.

Not everything produced by Enthought is free software, but they do have a very good record for releasing the tools and libraries that they use for their paying contracts into the pool of free software. Some of them are quite impressive, as I saw at last year's Python Convention.

=IMAGE=texasoss_green_dragon.jpg=This green dragon caught my eye on the way out to conference, so I snapped a picture on the way back. There are a lot of small rural metal work businesses involved in things like welding and machining in Texas. This shop is one by-product, and a broad interest in do-it-yourself technology projects is another. That's probably the best cultural in-road for free software and open hardware in this region.=

At this conference, though, Swisher was talking about something a bit more general, which is how to participate in free software if you aren't a programmer. As a technical writer, of course, Swisher has done this, and I could really relate to this talk. Since many of the people in the audience _were_ programmers, though, she also presented the talk in terms of how to make a project friendly to non-programmer contributions.

=ZOOM=Swisher emphasized the importance of simply asking and answering questions on the project's forum or mailing list=

Some of these were obvious things like helping with documentation and filing bug reports, but some were more interesting. For example, Swisher emphasized the importance of simply asking and answering questions on the project's forum or mailing list:

* To build community
* To identify problems with either the software or the documentation
* To indicate new uses or directions for the software
* To draw out informative answers from other posters

Finally, she noted the value of marketing the project, a task programmers generally hate almost as much as writing documentation. This can involve using graphical design skills (which are fairly rare in the free software community, as I've noticed myself), and also simply describing your experiences with using the software, encouraging other early-adopters to try it as well.

## TopMod and 3D topological modelling

Presented by _David Morris_.

Morris is a recent graduate from [Texas A & M](http://www.tamu.edu). His thesis project was to re-write the GUI front-end for a fascinating, if somewhat non-utilitarian, 3D software package called [TopMod](http://www.topmod3d.org). "TopMod" stands for "topological modeler", and it creates some amazingly mind-bending 3D manifold mesh models.

=IMAGE=texasoss_3dprinter_object.jpg=My only decent picture from the conference itself was this 3D printer object that David Morris brought. It has little practical use, but I couldn't stop staring at it, because it's a fascinating shape. Many TopMod models are like that.=

Morris also brought the output in physical form: a peculiar-looking piece of plastic, produced by a [3D printer](http://www.dimensionprinting.com), a new kind of rapid-prototyping tool that is find more an more uses these days, although they remain very expensive (I understand this model cost about $200 to "print").

=ZOOM=Morris is currently looking for people to volunteer to package the TopMod software for different distributions=

Morris' new GUI design is written using the [Qt](http://trolltech.com/products/qt/) toolkit, and the TopMod program has been released under a free license. He is currently looking for people to volunteer to package the software for different distributions, by the way, so if you think you might want to help, be sure to [check it out]().

## Playing with a net

Presented by _Jeffrey L. Taylor_.

This talk was right after lunch, and not one I had originally intended to attend, partly because I had totally misunderstood the title. This was _not_ a talk about managing computer networks. It was about having a safety net when programming, by which Taylor meant a unit-testing framework.

The center of this show was [RSpec](http://rspec.info/), a testing framework for Ruby which is based on "user stories" and "scenarios". The special thing about this framework is that it allows you to write very concrete human-centered stories about how you expect a piece of software should work, and then convert that into a list of tests to run on your code. In this way, you can very tangibly see your progress in meeting the design objects.

=ZOOM=Rapid gratification through fine-grained rewards is one of the reasons why test-based coding works so well=

This rapid gratification through fine-grained rewards is one of the reasons why test-based coding works so well. Naturally, it's easier to work when you can sense your progress -- one of the worst things about programming on large projects is that it can sometimes seem like an endless amount of work with no reward or apparent progress. But unit test centered development makes things more fun by giving you lots of intermediate successes.

## Business models for open source

Presented by _John Wohn_.

This talk disturbed me a little bit, for two reasons. One was that there was basically nothing in it that wasn't in Eric Raymond's "Cathedral and the Bazaar" series ("The Cathedral and the Bazaar", "Homesteading the Noosphere", and "The Magic Cauldron"), which unfortunately suggests that we are running out of new ideas for commercializing free software. No offense to Mr. Wohn, of course, it's not like he was claiming this was original material, it was _meant_ to be a review, and his presentation was good.

The second was that the strongest of these models is probably the "service and support" model (like that used by Red Hat, Ubuntu, Zope Corporation, and others). Yet, as far as I know, there are no examples of companies which have:

* Raised venture capital
* Paid for software development
* Released the software under a free license
* Made money from service and support
* Provided a return-on-investment to their entrepreneurial investors

There are a lot of near-misses: companies that invested in collecting or deploying pre-existing free software or proprietary companies that have moved to a free license after making back their initial investment through proprietary sales. But I'm still looking for the genuine "capitalist free software project": I'd be really interested to hear of one!

=ZOOM=I'm still looking for the genuine "capitalist free software project"=

Why should that bother me? After all, the most important free software packages in existence were either started and mostly written (at least in their early versions) by a single person working alone (examples include Linux, Emacs, Perl, and Python), or they were developed in a proprietary company and only release under a free license after having recouping investments through commercial proprietary sales (like Mozilla, Zope, or OpenOffice.org).

Well, that's fine if you don't think there's anything wrong with proprietary software sales, but if you want a world in which all software is free software, that's just not adequate. Because if we can't create big packages like OpenOffice.org or Mozilla using the bazaar development process, and commercial approaches aren't viable for free software development, then there are some things we can't do with free software (and that means conceding that some software must be proprietary).

## Digital humanities

Presented by _James Smith_.

The final talk I attended was about "digital humanities", which I must say was a refreshingly different way to look at the world from what I'm used to. Smith started by drawing a comparison between "computer science" and "humanities":

_Computer Science_

* Seeks to understand computers
* Creates narratives meant to program computers (programs)
* Learn from open source software
* Test-driven development

_Humanities_

* Seeks to understand humans
* Narratives for people to learn from
* Learn from literature
* Behavior-driven conversation

From this, he derives a concept of [Digital Humanities](http://dh.tamu.edu):

* Blend computer science and humanities
* The literature is open source
* Computer-aided study of humans
* Human-aided study of computers

And he finally drew a connection to the "semantic web", which honestly, I'm still trying to connect, so I can't help much with that part.

=ZOOM="Digital humanities" was a refreshingly different way to look at the world from what I'm used to=

Some examples projects of digital humanities projects that Smith presented included: the [Valley of the Shadow](http://valley.vcdh.virginia.edu/) which studies two counties on either side of the Mason-Dixon line during the US Civil War and looks at demographics and changes in people's lives; and [The Internet Speculative Fiction Database](http://isfdb.org), a concordance of science-fiction literature.

He also presented two projects which are attempting to make the job easier for humanities scholars: [Project Bamboo](http://ProjectBamboo.org) and the [Digital Resources Workbench](http://dh.tamu.edu/drw).

# Thoughts on 3D

I did something I rarely do at this conference -- I socialized! I had lunch with David Morris, Janet Swisher, and a couple of other people whose names I unfortunately didn't write down. Probably the most interesting lunch topic was what can be done about creating a free software CAD (Computer Aided Design) system. I'm not sure I know the answer about that: the consensus was that nothing really satisfactory has yet emerged (I mentioned BRL-CAD, but as I haven't really tried to use it, I couldn't really offer an opinion. Morris seemed to think it was "not ready for prime time").

There are a number of different initiatives to write CAD programs for different kinds of applications. And of course, each discipline has its own requirements, so it might even make sense for there to be a lot of small tools, rather than one massive application. After all, that is the tendency of free software projects when compared to proprietary applications (which often become monolithic monstrosities—which is probably an apt description of AutoCAD, the market-leading proprietary CAD package).

=IMAGE=texasoss_road_back_home.jpg=I had a lot to think about on the road back home, and no shortage of time to think about it, as it was about a five hour drive from home=

But unlike software tools, which work with fairly well-defined data formats, representations of CAD data are very non-standard, not just at the serialization level, but in deeper ways, such as the mathematical models used to represent 3D data. Existing attempts to standardize this process such as X3D are very immature, and the industry standards like STEP are rather unapproachable, both because of their size and the bureaucracy surrounding them.

Liberating CAD won't be an easy task, and I personally think it will take an organized "cathedral" approach to get the ball rolling: someone is going to have invest time and money into a project to make it happen (which is one reason why I wonder about the viability of a true capitalist free software enterprise).

# Free software in Texas

This conference was small and not as well-organized as some, but it was not a bad show for a first attempt, and I hope to be involved next year. Texas is not exactly center stage in the development of free software, but it's good to see what is happening here.

