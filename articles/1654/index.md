---
nid: '1654'
title: '.NET?  .Not!'
authors: 'Kirk Strauser'
published: '2006-07-01 20:56:42'
tags: .net
license: verbatim_only
section: opinions
listed: 'true'

---
My office runs on a hodgepodge of Visual Basic, Python, C, and FoxPro. Since we’re a small company with few programmers, this hasn’t been a problem. Each of us simply chose the language that best met our needs for a given project. However, the seemingly exponential growth in the size of those projects, plus the addition of a few new programmers, means that our idyllic little world is coming to an end. We need to standardize on a common development platform before the proliferation of languages and framework libraries makes progress impossible.

So, the obvious next step is to pick a system that we can all live with, even if it’s not our favorite. I’ve been advocating Python, but my coworkers don’t seem entirely sold on the idea. We’ve summarily rejected FoxPro for reasons too numerous to list. We tossed Java around, but its old reputation of slowness still carries a stigma among the powers that be.

Our final remaining option was .NET. Although it first appeared like an ideal solution—cross platform, free of charge, and the heir apparent for Microsoft-based development—we decided against it for reasons I don’t mind listing.

First, despite the content-free hype of a few years ago, .NET is basically a Java clone. That is, it includes a virtual machine, some languages that compile into bytecode that runs on that virtual machine, and an extensive library of classes to accomplish various tasks. The biggest single difference between Java and .NET is that Sun wrote the former and Microsoft wrote the latter.

The second biggest difference is that while Java is truly cross-platform, .NET tries to be but falls short in important areas. The most glaring example is that the `Windows.Forms` class (which is used for almost all .NET GUI development) is only available on Windows itself. In other words, forget writing graphical programs that run on Linux, FreeBSD, or Mac OS X. Although a replacement of that class is being developed for Mono, the free software implementation of .NET, such code treads upon a software patent minefield. You see, although Microsoft explicitly granted permission to the Mono team to their patented methods to write the core language itself, all the nice extras you’d actually want to use are still firmly locked in Microsoft’s patent portfolio.

Next is the fact that .NET brings little new to the table. It’s certainly no more cross platform than other popular languages like Java or Python. It’s class library doesn’t compare in extent with Java’s enormous depth and breadth. It doesn’t cost less, it’s not more popular, and it doesn’t work any better than its competition. Unless you want to develop Windows-only projects, it offers few or no clear advantages over other languages.

Despite all that, .NET and its associated languages, like Visual Basic .NET and C#, aren’t inherently bad. They’re pleasant to use by all accounts, and generally well regarded. The danger behind adopting them, though, is that .NET is inherently single-vendor and its continued existence and development is solely at Microsoft’s whim. Should they decide that its return on investment is too low, that’s effectively the end of it. Think that will never happen? Ask the legions of Visual Basic 6 and FoxPro developers how unlikely that is.

My boss trusts me to make decisions in his company’s best interest. Despite the advertising and breathless endorsements from IT management magazine, there are just not enough compelling reasons for me to recommend .NET technology over the other established alternatives. The approach we’ll probably take instead is to build a core library in a common language, then use connector technologies like SOAP and COM (on Windows) to access it from projects written in other languages.

And if that fails, there’s always Lisp.

