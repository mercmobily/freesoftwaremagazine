---
nid: '2940'
title: 'Does anybody still develop Windows applications? Or, the programming world has gone online'
authors: 'Tony Mobily'
published: '2008-07-25 14:23:57'
tags: 'ajax,java,flash,windows,javascript'
license: verbatim_only
section: opinions
listed: 'true'

---
Steve Ballmer has recently sent a memo to every Microsoft employee. [Ballmer's memo](http://blog.seattlepi.nwsource.com/microsoft/archives/144227.asp) leaked really quickly (I wonder if he expected it). After swallowing the corporate-madness part (but that's allowed: he's a "mad" corporate leader after all), one particular passage really grabbed my attention. Taking about Internet applications being popular, he wrote: "But we also need to make sure developers have the .NET skills to write unique Windows applications using Windows Presentation Foundation". Which begs the question: does _anybody_ still develop Microsoft Windows applications? Really?

<!--break-->

# A step back

Before the internet changed the world, around 1995, writing software implied that you'd focus on a specific platform. You could write software for Unix (including GNU/Linux), for Dos, for Mac, or (most likely) for Windows. There were a few attempts to create multi-platform libraries (and one of them was the one created by StarDivision, which eventually made StarOffice, which then became OpenOffice; but that's a different story). However, those multi-platform libraries were often immensely complex, expensive, and... they never really exploited the specific neatness of the platforms they worked on: instead, they had to work with everybody's "common ground". For example if a platform allowed a very cool selector widget, and the others didn't have it, a lot of hard work was required in order to provide that widget. And then, there were the philosophical differences, in terms of UI, between different systems: the user interface of a Mac program would be different to the interface of a Windows application. Most programmers or companies basically didn't bother, and picked a specific platform. (Please note that I concentrated on the Interface side of things, but everything also applies to the differences between the underlying layers while programming. Creating a Windows program will imply calling Windows-specific functions in several cases, which will be different to Unix ones.)

Then, the internet changed everything.



=TEXTBOX_START=A brief history of Java=

The first attempt to change the programming world came with Java. At the time, around 1996, Java was often thought as the only "way out" of Microsoft's monopoly in the desktop market. Keep in mind that this monopoly was really recent! A few years back, there was still a war raging between OS/2 and Windows -- does anybody remember? Java, created by Sun Microsystems, provided a way of creating applications knowing that they would run anywhere. More importantly, those applications would run seamlessly within an internet browser. At the time, everybody thought that every web site would become entrenched with Java "applets" which turned boring pages into something interactive and "alive". Being multi-platform, and having a separation layer between the online application and the computer, was considered absolutely necessary; even though most people browsed the internet using Microsoft Windows, the global wisdom was that allowing native execution of arbitrary code downloaded from a web site would have been an act of insanity -- well, an act which was attempted by Microsoft with their ActiveX "technology", which was basically laughed at and never had the slimmest chance to take off. Java was great because it was basically a computer within the browser: un-hackable (if that's a word), safe, and easy.

And slow. Immensely slow.

Java never made it. When it was clear that nobody wanted to include Java applets/monsters into their web pages (and kill their customers' browsers in the meantime), java morphed itself into a platform to create desktop applications. And, once again, it failed. (The only widespread application everybody knows and mentions seems to be Eclipse.) Java eventually managed to find its niche markets:

* in the server space, Java Server Pages and all those hard-core server-side technologies (apparently used by hard-to-get enterprise server developers) 

* in the client space, the mobile market (Sun managed to get a Java Virtual Machine in a lot of phones)

But it took more than 10 years -- and amazingly enough, never managed to get away from the performance and compatibility problems it has always had (ask any Java mobile application developer). For example Android, the mobile platform used by Google, uses Java to write programs; however, it doesn't use the Java Virtual Machine but the speedy Dalvik virtual machine (the Java source code is compiled into Java bytecode, and then translated into Dalvik bytecode to run on Android).

=TEXTBOX_END=

# The unpredictable winner: AJAX Javascript (!)

It's an immense irony, that the company that made AJAX possible is the same company which now fears it the most: Microsoft. In 2002, Microsoft added the Javascript function `XMLHttpRequest()` to their Internet Explorer  -- with Mozilla and Safari following shortly afterwards.

The release of Google Maps in 2005, Google basically made the world aware of the potential of using Javascript and `XMLHttpRequest()` together. Google Maps really looked like magic, with its ability to endlessly drag with the mouse a neverending map. Since then, the AJAX "technology" has evolved immensely, and countless companies today are developing using AJAX.

At this point, it's important to make a clear distinction between AJAX web sites and applications. This is a confusion that started from the very beginning: Java allows both "desktop" and "browser" applications. In a similar fashion, Flash evolved into something that allowed and encouraged (through Flex) desktop applications. Javascript started as a humble scripting language that ran within the browser. It is still used today to enrich web pages and create nice effects, menus, and so on (an example is Google Maps). However, that's not it. Just like Java and Flash/Flex, Javascript has evolved into something that can be used to create applications that really do "escape" the browser. Google Documents is a fine example: you can now open, edit and save documents and spreadsheets using applications which don't even pretend to be running in a browser's window. The last step towards this is Google Gears, which effectively give AJAX applications a way of storing information on the local hard disk through a powerful SQL-like server (SQLite). It also comes with a Desktop Module, which (surprise surprise) allows AJAX applications to interact "more naturally" with the desktop.
Today, most people realise that the best way to create ubiquitous  applications is through the use of Javascript and AJAX. Java is out of the game, Flash/Flex has limited use and it's tightly tied to one specific vendor. Silverlight might end up eating up Flash's limited market. Javascript and AJAX are there; they always work; and, more importantly, there are megabytes and megabytes of ready-to-use libraries which make the programmers' lives easier.

# Programming has fully shifted online

So, here we are. It's 2008. You decide to start a company that writes software. What are you going to write?

The answer is, "it depends". While there is always a need for stand alone applications, this market is shrinking -- fast. Today, very few people will create development teams specialised in Visual Basic, Visual Studio, even GTK programming. Today, the money is online. On the internet. Native applications are truly becoming "a thing of the past". (I must add that games deserve to be treated as a exception, although specialised consoles are eroding the market of PC gaming).
Looking at recruiting agency in Australia, for example, you will notice that most programming jobs are for server side scripting, with Javascript/AJAX becoming more and more of a requirement.
By reading Steve Ballmer's memo, you will feel that he lives, eats and defecates Microsoft culture. It's hard to see what's really happening around you, when you live in a Microsoft world. (Yes, the same can be said about myself, the Editor In Chief of Free Software Magazine. I humbly admit it. But, at the same time, I can say that I am at least _attempting_ to see things from a wider perspective). Microsoft will never release the leading visual development tool to create multi-platform AJAX applications. They decided to aim at the limited (but more visible) Flash market instead. They managed to miss that fact that people today are developing web sites using PHP, Ruby or Java rather than ASP. People are using Apache rather than Microsoft IIS. People are developing applications using AJAX rather than desktop software.
Google released an office suite based on AJAX, while the operating system becoming less and less important (and the importance is shifting towards the browser, something that Microsoft hasn't managed to get right just yet). And yes, I have just mentioned Microsoft's two cash cows.

The computer world started changing rapidly when the internet came along. I believe this is the tipping point where the changes have actually turned the market into something that is hardly recognisable, compared to what it was before the revolution. Development is exciting again (although it _is_ a little raw and hacky). The operating system has become a commodity, only necessary to run the browser. Programs are becoming tools that interact with online data. The browser, Javascript and AJAX are quickly becoming the new stars.

I wouldn't want to be the person in charge of turning the development of stand alone, mono-platform applications exciting. Would you?


=TEXTBOX_START=A brief history of Flash=

Macromedia, a company which created a development tool to create CDROMs, saw the rise of the Internet (and the decline of the CDROM market) and did something amazingly smart: created a "Flash player" which could be embedded into internet browsers. (Note: this is a simplification. Macromedia actually _bought_ a company that made the player. But that's again a different story). Flash was somehow comparable to Java: its player was a program able to execute bytecode. There was a major difference: it was immensely easier to create Flash applications, compared to Java. Java was hardcore programming, whereas creating a Flash program was more like creating a movie. While Java-rich web sites (thankfully) never really happened, web designers started creating entire sites which required the Flash plugin in order to do _anything_. Amazingly enough today, in 2008, there are still some (highly criticised) sites which are basically Flash applications. However, luckily Flash's penetration remained very shallow. Adobe eventually bought Macromedia, and tried to capitalise on the sheer number of people who had Flash installed in their browsers. They tried to "open" the Flash format, (very) theoretically allowing anybody to develop a Flash plugin, and released Flex. I was there in Boston, at Adobe's headquarters, when they presented Flex to the press. One thing was clear: their goal was to penetrate the market of desktop applications. They really, really wanted people to write desktop applications in Flex. The advantage was that the same apps could then run on any platform with a Flash player (they were quick to point out that GNU/Linux was one of them), as well as within the browser. Flex also had amazing internet features and articles.

Three years after Flex's release, in 2008, their market share never reached high levels. I have never seen a Flex desktop application in my life (although sometimes I wish I had, for example when I tried to run, unsuccessfully, a guitar course which Wine refused to run properly). Today, Flash is mainly used as a container for Video playback (think of Youtube), as well as some specialised web sites (see: gambling, stock exchanges, and so on).

I believe one of the reasons Flash/Flex never made it was because the computer world wasn't willing to create "another Microsoft". Flash and Flex were (and are) basically proprietary technologies which tie the developers to Adobe. A strong market share would certainly lead to disasters. It has happened once, and we all know that it might happen again, given the chance.

As a passing mention, I will point out that Microsoft's Silverlight is basically an attempt to replace Flash in people's browsers. It won't replace Flash and Flex: some people _might_ end up having both Flash and Silverlight -- and will still use Flash 99.8% of the time (assuming that that 0.2% is when people browse Microsoft-related sites). Besides, even if Silverlight manages to replace Flash completely, we are still talking about a tiny market. 
=TEXTBOX_END=