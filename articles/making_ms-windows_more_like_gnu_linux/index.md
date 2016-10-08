---
nid: '2218'
title: 'Windows by necessity: making MS-Windows more like GNU/Linux'
authors: 'Anthony Taylor'
published: '2007-04-23 23:56:39'
tags: 'windows,cygwin'
license: verbatim_only
section: end_users
listed: 'true'

---
MS-Windows can be a good operating system.

Okay, that’s probably overstating it. There is a nugget of good code in there, somewhere, the bit that Dave Cutler originally designed back around 1989. There’s been so much cruft added on, MS-Windows seems more like a large tank designed by committee; powered by a very fast, very solid, very small sports car engine; and painted a very soothing shade of blue. It’s not really pretty, and it’s not really fun, but it does move, mostly.

But, if you must use MS-Windows, there _is_ a way to make it a tolerable operating system. Just make it more like GNU/Linux.


<!--break-->


Unfortunately, I must use MS-Windows at work. Coding PostgreSQL applications on GNU/Linux takes up most of my work responsibilities, but occasionally, I  have to code C# clients on MS-Windows. I feel a little dirty every time I do. It’s not even that I despise Microsoft for its dirty tricks and outright lying. I just hate using a system I can’t control.

I’m a control freak. Big deal.

After I install most of [TheOpenCD](http://www.freesoftwaremagazine.com/blogs/windows_by_necessity_theopencd), I go straight to [Cygwin](http://cygwin.com/), and download the installer. Yes, I install everything. That way, I have the X Window system, and rxvt, and a whole slew of other things I need, right there in MS-Windows.

Cygwin is a set of portability libraries, and a collection of essential and not-so-essential applications and support libraries. Basically, it provides a GNU environment on MS-Windows, similar to the GNU environment on most Linux distributions. Mostly, I use the standard GNU utilities, like bash and find and grep and secure shell and the like. You know, the standard, necessary utilities any command-line freak requires.

The X Window system implementation is good enough to run applications on other machines, and display to the local MS-Windows machine. I wouldn’t call it snappy, but it’s sufficient for day-to-day use. I especially enjoy launching EMACS on a remote machine, and displaying it locally. It’s freeing, really, knowing MS-Windows can do some of the things I take for granted, like real network transparency in my GUI. You just have to give it a free software helping hand.

Cygwin. The ease-of-use of command-line GNU/Linux, with the stability and security of MS-Windows. How can you resist?

