---
nid: '3258'
title: 'When Javascript became the world''s new CPU'
authors: 'Tony Mobily'
published: '2009-12-09 4:01:26'
tags: 'google,javascript,virtual-machines'
license: verbatim_only
section: opinions
listed: 'true'

---
The computing world is always very unpredictable. That must be why there is a small number of people who make large amounts of money from it: they are in the right (unpredictable) place, at the right (unpredictable) time. Who would have ever guessed that Javascript, a simple scripting language initially thought as a simple means to make web pages "cooler", would become... drum roll... the world's new CPU?

<!--
**(Are you in Japan or Republic Of Korea? Then please take a few minutes to answer this [online survey](http://web5.kinesissurvey.com/idg/html.pro?ID=4&source=27) to help us sell advertising in Free Software Magazine!)**
-->

I doubt anybody expected it. Even after seeing AJAX (which was ironically started by Microsoft...), very few would have bet that Javascript would become quite so important. Javascript is the only really widespread, multiplatform solution the modern IT world has seen. And yet, it made it. Google Documents is an office suite which runs in your browser -- and it's not even the best one. And that's only the beginning: the world is absolutely full of software -- and I am talking about full blown software -- which will run for you wherever you are.

<!--break-->

=TEXTBOX_START=Join us in San Jose, CA, February 23-26, 2010, for USENIX FAST '10=

At FAST '10, explore new directions in the design, implementation, evaluation, and deployment of storage systems. Learn from leaders in the storage industry, beginning Tuesday, February 23, with ground-breaking file and storage tutorials by industry leaders such as Brent Welch, Marc Unangst, Michael Condict, and more. This year's innovative 3-day technical program includes 21 technical papers, as well as two keynote addresses, Work-in-Progress Reports (WiPs), and a Poster Session. Don't miss this unique opportunity to meet with premier storage system researchers and industry practitioners from around the globe.

Register by February 8 and save! Additional discounts are available!

http://www.usenix.org/fast10/fsm

=TEXTBOX_END=

The few readers who were here in the mid 90s will have a very string deja-vu feeling right now: this is precisely what Java tried to do back then, when Windows had just won the "PC operating system war" against OS/2, and Java was proposed by Sun as an emergency exit: a platform where the operating system didn't matter at all; no wonder Microsoft did anything and everything to shoot it down! (Although Sun did a pretty good job itself, by not releasing it under a free license and hanging on to it way too tightly...). 

# So, why should Javascript succeed?

So, what is the difference between Java and Javascript? Why should Javascript succeed where Java failed?

Java programs needed a virtual machine that people had to download and install. It was a big download back then -- and a big install. There were several versions of virtual machines -- Sun's, Microsoft's, and a couple of GPL ones that never seemed to work 100% fine. They were all sort-of compatible one with another, but not quite. Desktop Java programs didn't tend to run well: they seemed to need phenomenal amounts of RAM, especially if you ran them for more than a couple of hours. Java libraries kept on changing -- AWT, then Swing -- and so did the various "editions". When Java finally matured and was released under the GPL, many years too late, it was already obsolete.

Javascript has a very different starting point. First of all, everybody has it -- well, everybody with a browser, which is probably 99.5% of computer users today (if not more). Various version of Javascript are compatible with each other -- or, I should say "compatible enough". Yes, writing programs in Javascript that will run on any browser is tricky at times, but it's also a requirement -- and it's definitely possible. Javascript programs have another advantage: they are actually useful. You can edit your Google documents wherever you are: from an Internet Cafe in Nicaragua, or from your home. Plus, Javascript virtual machines are getting faster and faster -- in fact, they are getting _stupidly fast_, thanks to some very healthy competition happening. While there is browser fragmentation, there are very few and very established browsers: Firefox, Internet Explorer, Chrome, Safari, Opera. 

Today, when somebody thinks about a new piece of software to develop, they don't think about a stand alone application; they think about a web application. They don't think about which operating system it should run under; they know that is going to run in a browser. It might be Flash, it might be Silverlight, but most of the time -- luckily -- it's Javascript.

# Wait, what about Silverlight?

Microsoft realised that the world was going online and got really worried about it. They dodged the Java thread (helped by Sun), but must have realised that the javascript threat was bigger because the world had changed, and was now ready for change. So, they created and released Silverlight.

Silverlight is a typical example of how Microsoft does things: release something; make it "sort of open"; allow a free implementation, but by turning a blind eye more than actually allowing it; make sure the Windows version of it has some specific Windows-specific features, and that crucial software will use those features. There you have it: Silverlight (or Moonlight).

They have no chance. They came late, and the world is largely ignoring it. They will try to push it as much as possible. However, the world has changed under their feet. Developers want to know that they can reach every user they can get to: a semi-proprietary tool won't do that.

Nice try though.

# The irony of Javascript: where are the free applications?

This is an argument that has been raised many times: the world is finally seeing a real liberation from the operating system, thanks to the free, standard-bound, multiplatform browser. And more importantly thanks to an incredibly fast Javascript virtual machine. But... is that really light, at the end of the tunnel?

Maybe not. Right now, at the end of the tunnel there are thousands of online applications that are not free at all. They are sometimes (not always) free as in beer, and definitely not free software. Google Documents is not free software. Zoho is not free software. Basecamp is not free software (and in fact, you pay real money for the right to use it). The list goes on and on.

So, we have these fantastic (and free) toolkits to develop AJAX applications, fantastic (free) Javascript virtual machines... and everything is basically used to create non-free applications. We will never see their source code, will never be able to do much with them.

Maybe free software is shooting itself on the foot?

# The counter-argument: is this really bad?

I am now going to make an argument that probably shouldn't belong here. It's an argument a very smart colleague of mine made once -- and it's stuck ever since.

Did we ever complain if the source code of a web site wasn't available? It's a weak argument, but it's a valid one never the less. To me, even more than the source code, there are two major components that need to be free:

* The data. If I have data stored somewhere, and I can access it from several online applications, then that shouldn't be a problem. Unfortunately, that's not the case right now -- think about Google Documents, where all your files are sort-of locked in a Google world, a sort of file explorer that leaves a lot to be desired. The same applies to most of the other online applications. Yes, it's generally easy to import and export files, but that's just not really quite enough.

* Format is free. This is another really important argument. Luckily, it looks like we managed. We have ODF -- Open Document Format. Most online and offline office suites today, free or non-free, support ODF. Microsoft Office "sort of" does, but that's the usual Microsoft story, nobody is surprised: files don't look right, importing is painful, and so on. So, my point is that if all of your documents are stored in an open, free format, then you shouldn't have a problem.

Note that once these conditions are true, free software alternatives to proprietary online programs are likely to pop up.

# Back to the "world's CPU" argument

All this wouldn't be possible without that little scripting language created some fifteen years ago to spike up web pages. Yes, that's Javascript. Some people hate it, some people love it, but the world definitely needs it.
Google, with Google Chrome OS, is betting a lot on it. Visual Environments like [Lily](http://code.google.com/p/lilyapp/) are starting to pop up -- and you can bet there will be more and more.

We live in an online world, and Javascript is the new world's engine. It's open, it's free, it's powerful, and it's managed to reshape the computer world.

Whoever bet on it was definitely in the right place at the right time. Would you have ever imagined?




