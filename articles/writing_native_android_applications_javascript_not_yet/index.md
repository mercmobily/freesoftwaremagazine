---
nid: '3733'
title: 'Writing native Android applications with Javascript? Not yet.'
authors: 'Tony Mobily'
published: '2012-03-15 8:28:11'
tags: 'android,jail'
license: verbatim_only
section: opinions
main_image: main.jpg
listed: 'true'

---
The number of people using Linux (and I mean Linux the kernel) and free software in general has exploded in the last 2 years thanks to Android and Google. Even if you want to discard phones and only count the tablets (which are starting to get _very_ close to laptops in terms of what you can do with them), the number of new users is _huge_. And yet, we are all hostage of a choice -- a bad choice, in my humble opinion -- that Google made: Java.

<!--break-->

# Why Java?

**Reason #1**: Android came with Java! To be fair, it wasn't Google's choice as such: Google _bought_ Android in 2005, and I can only suspect that Android was well entrenched in Java at that point. 

**Reason #2**: In 2005, Java was still pretty much your only choice if you wanted to write applications once, and expect them to run regardless of what CPU you used.

**Reason #3**: Java was (and is) well known and widely used.

# It's all about timing

In 2005, it probably made a lot of sense using Java. So, what has changed? Two words: 1) Chrome 2) Javascript I am convinced that Chrome and Javascript changed the whole IT landscape radically. Mind you, Chrome _beta_ was released in September 2008. The first version of Android would be released a couple of months later (!). While Android was being created, Chrome simply wasn't around.

What's so important about Chrome?

Chrome came with the v8 Javascript engine. V8 is a monster of a virtual machine, able to get Javascript code and make it spin really, really fast -- faster than the speed of light. With Chrome, Javascript turned: it went from being a sluggish scripting language, to being something that could be used for real applications.
Google was interested in a browser that people could use to run their emerging online applications (Google Docs was around in 2006). I am not sure they realised that they could push Javascript to run _that_ fast -- maybe it caught Google itself by surprise.

In the end, if Google had to decide how to build Android in 2008 rather than 2005, I have little doubt that they would have picked Javascript as their language of choice. Instead, Android has fully embraced Java  -- although they tried to bypass some of the patents and issues with Java by using [Dalvik](http://en.wikipedia.org/wiki/Dalvik_(software)). At the moment, to develop an Android application you write Java code, compile it into a .class file (Java's compiled code), and then convert that .class file into a Dalvik file (which will be then interpreted by Android's internal Dalvik virtual machine).

# Is it too late?

At the moment, if you want to write an application for Android you are pretty much stuck with Java. There _are_ ways around I must say: one of them is [Phonegap](http://en.wikipedia.org/wiki/PhoneGap) which is released under a free license and is indeed very exciting. PhoneGap is essentially a browser application that will contain your code, written as HTML/CSS/Javascript. Whatever you create is _not_ native: it's a custom browser that has access to the device's hardware, and that runs your web-like code.

What about native Applications? 

You _could_ convert Javascript code into a Java class using [Rhino](http://en.wikipedia.org/wiki/Rhino_(JavaScript_engine)). However, things are not easy: the Dalvik virtual machine [doesn't work nicely](http://stackoverflow.com/questions/1994703/which-programming-languages-can-i-use-on-android-dalvik) with [dynamic languages](http://stackoverflow.com/questions/973386/android-adverse-to-dynamic-languages) . It's a pretty messy business.

# The possible solutions

Since Google is about to include V8 into Android 4 (or so it seems), we would have a situation where your phone would include two very fast virtual machines (Dalvik for Java and V8 for Javascript), but you can only write native applications for one of them.

My idea is that Google should provide, natively, a bridge between the Dalvik world and the Javascript world, so that it is finally possible to write _native_ Android applications using Javascript.
This can be done two ways: the obvious way is to make Dalvik work with Javascript code. To me, it's looking less and less likely that this will ever happen.

The other option is quite involved: it would require Google to make it possible to have native applications written in Javascript, and allow them to access the system libraries (System C library, Media Libraries, Surface Manager, SGL, LibWebCore, 3D libraries, FreeType, SQLite) from Javascript. You will also need the `Java.hardware` classes (in Javascript). This way, Native Javascript applications wouldn't come with an overhead as big as a _full browser_ for a start (there would be no need, since all you are using is the V8 virtual machine, like Node.JS did).

Am I dreaming? Maybe. I wonder if I am the only one who thinks that being locked to Java deserves a solution -- a real one.
