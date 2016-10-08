---
nid: '2085'
title: 'Python conference 2007 starts tomorrow'
authors: 'Terry Hancock'
published: '2007-02-22 14:49:50'
tags: 'free-software,python,events'
license: verbatim_only
section: announcements
listed: 'true'

---
To me, Python represents the quintessential free software programming language: its central design values are the ones that are most import for the free software community—clarity and pragmatism. Yes, I’m sure other people have their own pet languages, but Python is definitely my favorite.

The language derives much of its core syntax from a teaching language (you know the sort of language that is created just for students, so it won't confuse them with real-world problems, but generally never gets out of the classroom?) called “ABC”, but it has acquired so much from the lessons of other language designs that it is also one of the most “pragmatic” and full-featured languages available. This combination of a short learning curve and extreme reach makes Python an ideal language for leveraging the help of users in designing software—because its design features are the ones that make such part-time user/developer programmers more productive. In other words, it’s “of, by, and for free software development”.

It has been maligned as “just a scripting language” by people taking note of its simplicity and ease of development (in fact, it is pretty good for scripting), but missing its real capabilities. It's been dismissed as “interpreted” and therefore “slow”, by people who’ve unfortunately not seen the importance of _selective_ optimization and the real design of modern interpreters.

However, the truth is that Python has most of the might of Java’s object-oriented design model, minus almost all of the baggage. Sure, battles rage between advocates on the mailing lists about whether Python meets the purist definition of an “object-oriented language” (a definition which was created with the specific languages C++ and Java in mind, so can't really be called unbiased). But the truth is that the main difference is that Python recognizes the limits of control that can be placed on programmers.

For example, Java and C++ programmers long ago learned ways to defeat those languages’ strong encapsulation. Python designers figured that such locks should just be privacy locks: you see this in the way that private and public methods and attributes are handled in Python (by obfuscation using Python’s beloved “__” characters, rather than with declarations).

More interestingly, the convention among most Python APIs is that it’s perfectly all right to use attributes directly. None of this “getters and setters” nonsense to clutter up the code. Java programmers typically balk at this because they’ve been taught from day one that that is bad “object-oriented” style. What they apparently weren’t taught is that in fact it’s only bad because of a design problem in C++ and Java: methods can’t be made to look like attributes, so once you use an attribute directly, you can’t adapt to a new implementation where the attribute has to be computed. Python solved this problem at the source, by creating “properties”: a design element which provides a computed-attribute interface. _Voila!_ Encapsulation, without the boilerplate.

The criticism about speed and being “interpreted” is particularly amusing when it comes from Java programmers. It turns out that in almost all import respects, Java and Python are identical in how they are interpreted. Both actually use just-in-time compilation strategies and interpret “bytecode” on a “virtual machine”. There are still various differences in performance, and neither language is right for writing low-level graphics drivers or others things which C is better at anyway. One thing Python does have going for it in that respect, is that it is particularly easy to interface it to C libraries.

The number of such design stories is huge. There are lots of battles over which syntax for representing a certain idea should make it into the language, and occasionally syntax which was “considered harmful” will get pulled. The important thing though, is not the specific design decisions, but rather the _criteria_ used to distinguish them:


*  Do they make the language clearer for the reader to understand?
*  Do they demonstrate a clear “best practice” (“one obvious way to do it”) so that a plethora of competing and confusing alternatives don't get in the reader or programmer’s way?
*  Do they allow you to get the job done, without cluttering up your code or making it harder to understand?
*  Do they avoid encouraging bad coding habits which will get in the way of someone trying to modify your code?

These ideals may well be useful inside of a commercial proprietary software development firm, but it’s obvious where they came from. These are the assumptions of the bazaar development arena, where the methods of choice are “extreme programming” and “design by test” and where users, developers, and user-developers blend smoothly into one another, work closely together, and all for the goal of creating code that they can understand, use, modify, and redistribute their improvements on.

You don’t have to use Python to write free software and you don’t have to write free software to use Python, but in both cases, it sure does help!

In the next few days, I’ll be sharing my experiences from one of the biggest world Python events: [PyCON 2007](http://us.pycon.org/TX2007/HomePage), held conveniently right here in Dallas (which is why I can attend!). And this year, I'm bringing a decent camera!

