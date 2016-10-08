---
nid: '1866'
title: 'Book review: Embedded Linux Primer by <i>Christopher Hallinan</i>'
authors: 'Alan Berg'
published: '2007-01-18 6:30:00'
tags: 'linux,book-review,embedded'
issue: ''
license: cc-by
section: reviews
listed: 'true'

---
Embedded Linux sits in telephones, cookers, cars, and best of all in my camera and wireless router. I have no real idea of how many pieces of hardware sit under Linux’s careful and motherly control, but it must be quite dominant and I’m sure would easily be in the hundreds of millions and yes, I hear you shout that I underestimate. _Embedded Linux Primer (a practical real-world approach)_ written by Christopher Hallinan and published by Prentice Hall explains in understandable detail the core knowledge required to start productive and meaningful developments in this interesting problem domain.


=IMAGE=cover.jpg=The book’s cover=

First impressions: not for the first time reader, this book is for developers that wish to understand the nuances of embedding Linux into devices. Written by an author whose practical experience flows through the pages, the book is not an unnecessarily theoretical tome. The diagrams are simple, precise and to the point, as is the book’s structure.


=ZOOM=The diagrams are simple, precise and to the point, as is the book’s structure=


# The contents

576 pages, 17 chapters and 6 appendices, Embedded Linux Primer accurately decomposes the knowledge required by a developer to become an embedded developer. Starting with a very brief introduction and then moving on quickly to the first embedded experience, the book does not waste time getting to a well-focused point. Though the author has a mild preference for the AMCC 440EP Evaluation kit (Yosemite board), the book is deliberately generic enough and mentions the most popular hardware platforms (page 61).

From processor basics through to kernel initialization, system initialization and bootloaders, device drivers, the book hits and keeps hitting the sweet point of its purpose. I particularly liked the discussion in chapter 12 of the use of DHCP and NFS in the embedded development environment, and now finally realize the importance of the JFFS2 file system for flash devices (page 225).

Chapter 4 covers the basics of modifying your kernel to compile for a given architecture and was by far my favorite chapter. I enjoyed failing a few times at modifying my local `kconfig` files, but at least in failure I got to understand how the process of compilation works.


# Who’s this book for?

The book’s stated aim is to support developers who wish to become embedded Linux developers. I almost agree with the authors definition; however, I think the net casts wider still to power users looking to sharpen their intellectual teeth. This is where I announce my own interests: as a generic developer for a University and part time hobbyist, I like new gadgets and new ways of thinking. The idea of making my own embedded devices calls to me. I suspect that is true for many other power users. I have a romantic idea that I can pop some flash memory into my cheap embedded environment, building my first spider robot. Okay... deep breath... and back to reality. To achieve such advanced use requires more than any one book and much more time and hardware than I have.


# Relevance to free software

Linux is as free software as you are going to get. However, Linux running on embedded devices may require device drivers that are proprietary and thus tainted. Luckily, Embedded Linux Primer itself mentions only long standing and widely renowned free software tools and avoids any hint of proprietary contamination. Clearly, the author is in good contact with the real world and intuitively understands free software.


# Pros

Embedded Linux Primer communicates enough information to the new developer to help overcome the first barriers that block the learning path to fully utilizing Linux in all kinds of new devices.


# Cons

Christopher Hallinan has clearly written for a target audience of embedded developers and as such, the book is best read while working with a properly configured development environment, for example the AMCC 440EP evaluation kit in combination with a standard PC. This embedded environment may cost a few extra bucks. However, the philosophical question is what is an embedded developer without something in which to embed?


 | |
-|-|
Title | Embedded Linux Primer: A Practical Real-World Approach | 
Author | Christopher Hallinan | 
Publisher | Prentice Hall | 
ISBN | 0131679848 | 
Year | 2006 | 
Pages | 576 | 
CD included | No | 
FS Oriented | 10 | 
Over all score | 8 | 

=TABLE_CAPTION=In short=

