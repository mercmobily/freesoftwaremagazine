---
nid: '1664'
title: 'Development tool availability and the rise of GNU/Linux'
authors: 'Martin Brown'
published: '2006-07-06 13:57:22'
tags: 'gnu/linux,development-tools,gcc'
license: verbatim_only
section: opinions
listed: 'true'

---
The issue of open source languages and the availability of development tools is a thought process I was having the other day. One of the key tools in the GNU space is the GNU C compiler. Up until its availability on Unix (long before the Linux kernel came on the scene), developing on Unix was limited to whatever tools were made available by the Unix vendor.

Often a C compiler was part of the standard kit, along with tools like lex and yacc, partially to encourage development, but also because in the early days you were able to recompile your own kernel for your Unix machine, or at least parts of it, before configurable kernel parameters became the norm.

When Solaris 2 first came out, it didn’t come with a C compiler—quite a shock—and getting hold of a C compiler meant buying one from Sun or getting hold of the free GNU tools of gcc, gas and ld. It was no longer included as standard because one wasn’t technically needed to manage and administer the server.

Without gcc, many people would never have otherwise had the ability to write their own C/C++ applications, and that in turn could have had a significant effect of the availability of different software. The requirement to purchase an application to build software to deploy is essentially yet another barrier to entry that affects not only the ability to develop software, but also how your platform and environment are perceived. If it costs me $2000 to buy a machine and another $2000 to get the software that lets me build my own applications, that represents a significant investment.

So returning to my original thought, I was wondering how much of an effect development tool availability has had on the rise of applications in general. For example, Java is free to use (if not open source) and has been popular, but has it been more, or less popular than C/C++ development with gcc?

Java is getting popular because certain tools and environment are becoming popular. Eclipse, for example, is a great Java development environment, but it’s free availability and FOSS roots making it more popular as a solution compared to the proprietary Java environments?

If gcc had never been available, would we have the same proliferation and wide application availability that we have on Unix/Linux, just based on vendor-only tools?

I doubt it, but I’d be interested in what other people think.

