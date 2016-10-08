---
nid: '2946'
title: 'Why did Javascript/AJAX mop the floor with Java, Flash and Silverlight? Or, why open standards eventually win'
authors: 'Tony Mobily'
published: '2008-07-30 15:18:03'
tags: 'ajax,java,flash,mono,web-development,javascript'
license: verbatim_only
section: opinions
listed: 'true'

---
It's not always true that the neatest, most advanced technology ends up winning most of the market share. There are other reasons which get in the way. Sometimes, the less advanced solutions end up winning -- and evolve in order to _become_ more solid and established. An example of this is Javascript/AJAX, which has conquered most of the web-based client programming -- despite the fact that there were competing technologies which could (and maybe _should_) have easily won, purely based on technical merits. How did that happen?

<!--break-->

=TEXTBOX_START=What is a web application?=

By "web applications", I mean interactive programs which run on any platform, and use, process or (often) display data available on a server. One important characteristic of such applications is that they run _within the browser_. Doing so has several important implications -- most of them security related. Web applications can only connect to the server they came from. If that weren't the case, I could create a web page with the "small" side effect of getting unaware visiting users to launch Denial Of Service attacks against anybody. Also, an application that runs within the browser can't access directly the local hardware and file system in order to prevent viruses and spyware.
=TEXTBOX_END=

# Loser #1: Java

Java was created by Sun Microsystems, and -- most importantly -- was included in Netscape Navigator in 1995. That's 13 years ago!
Java uses a virtual machine; this means that Java programs will run anywhere as long as a Java virtual machine is available. Java allows developers to create "Java applets" and "Java applications". The main difference is security (see the textbox): Java applets are expected to be found embedded in web pages, rather than installed, and therefore don't have full access to the underlying hardware. In 2008, I don't remember having seen a web page which included a Java applet for at least 5 years.
Java has its niche markets: Java Server Pages (to create web applications ala PHP) and mobile devices (to create small applications). Android will probably push Java further (although it only uses Java as a language, rather than using the Java Virtual Machine). However, again, Java is nowhere to be seen in web pages.

Why? Because for the first 12 years of its life, Java's been proprietary. (Things are changing now. "Too little, too late".) Courageous people tried to write free, competing virtual machines, and managed. However, the problem was in the important Java libraries which Sun kept under a closed license for years and years and years. I am convinced that this problem also had technical repercussions on Java as a platform: Java applet were famous for crashing people's browsers in 1995 -- and they are still famous today for being immensely heavy and memory-hungry. I can only wonder how much better Java would be if the whole community were able to improve it and its libraries. Many also argue that the Java Virtual Machine -- and Java as a language -- is hardly fixable: the post [I hate Java](http://warp.povusers.org/grrr/java.html) summarises some of the problems. (But, it _is_ biased!)
So, Java had _all_ of the ingredients to become king in the web application domain: it was first, it was available in Windows and GNU/Linux, and it was ready. And yet, it was a closed platform and it had arguably big technical problems.

# Loser #2: Flash

Just like Java, Flash was available very early, in 1997. Web authors could develop nice animations and more. It was better than Java (it didn't kill your browser) and it was easier to program.
Fast-forward 11 years: Flash's main use is in video playing, and very little more. Adobe (which owns Flash) realised the potential of internet applications, and (about three years ago) released Flex. Flex, in oversimplifying terms, can be seen as a way for _developers_ to create Flash files, using advanced libraries and advanced tools. Flex is absolutely fantastic.

The problem is that while the Flash player is "free" (that is, it doesn't cost anything although its source code is not available), Flex is outrageously expensive. And proprietary. **[UPDATE: no, it's not expensive. It's been open sourced, and you don't need a Flex server to deploy Flex applications -- thanks Ben Forta!]** And it creates applications running in a proprietary player (Flash).
I have seen Flex. I have met some of the programmers who worked on it. They knew what they were doing. They were smart. They knew the internet -- I considered them internet magicians. However, nobody likes to fork out large sums of money in order to buy (or deploy) the development tools **[UPDATE: this is no longer an issue]**, and nobody likes the idea of depending completely on the financial health and ethical principles of a single company. I think Flash and Flex are way superior to anything I have ever seen. If the Flash player were released under the GPL, its specifications fully documented **[Note: this is still absolutely crucial]**, and Flex was released under a free license (maybe BSD-like?), then there could be a big chance of a huge market shift towards Adobe's technologies. Trouble is, it's not going to happen -- and it might even be too late.

# Loser #3: Silverlight

.NET is Microsoft's answer to Java: it compiles things into bytecode, it's multi-platform, etc. Technically, many argue that it's "Java as it should have been". .NET isn't free: while the virtual machine and the language itself are ECMA standards, Microsoft's GUI libraries and other key components aren't. This means (surprise surprise) that you can't write a .NET program for Microsoft Windows, and run it under GNU/Linux, even though there is a .NET virtual machine for GNU/Linux (called "Mono").
If .NET is Microsoft's answer to Java, Silverlight is Microsoft's answer to Flash. Silverlight allows you to run .NET applications within your browser. The site silverlight.net is Silverlight's official web page. Although it's defined "Multi platform" by Microsoft itself, GNU/Linux is completely ignored (there are Windows and Apple downloads).

Silverlight might erode Flash's tiny market. I don't think there's any difference between Flash and Silverlight: two competing products which are losing the Web Application race.

# The winner: Javascript + AJAX + XHTML + CSS

Javascript was available with the very first version of Netscape Navigator, as a way to add "special effects" to web pages. Nobody would have thought that it would eventually evolve into something that could be used to create applications like Google Documents. 
Established libraries like Yahoo's YUI (as well as many others) simplify immensely the creation of web applications. Most people who work online are already familiar with XHTML and CSS. So, the learning curve to master Javascript and AJAX is not too steep -- new developers join the Javascript/AJAX crowd every day.
Technically, the combination of Javascript, AJAX, XHTML and CSS is something that has needed some love for a long time. Things are getting better now, but even today while developing a more complex web application using AJAX, you feel that they are all pieces of a large puzzle, and sometimes it's a bit of a struggle to make every piece fit neatly.

Why did such an unlikely combination win such an important war? Because it's based on available, open, free technologies. People don't have to spend thousands of dollars to write Flex applications. People don't have to install Microsoft Visual Studio for Silverlight. And don't have to battle the technical difficulties of Java (if it were still an option).

AJAX developers run their browsers, install Firebug, and voila: they are ready to go. They need to know XHTML, CSS, Javascript, some XML, how to use the AJAX calls, and they are good to go. Yes, they are projected into a world that feels hacky at times, and they might end up battling the eternal enemy, namely Internet Explorer. However, it's a small price to pay. And, things are only getting better.

Welcome to 2008.
