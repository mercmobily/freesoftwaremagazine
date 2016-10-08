---
nid: '2376'
title: 'History of glibc and Linux libc'
authors: 'Ciaran O’Riordan'
published: '2007-06-19 13:05:09'
tags: history
license: verbatim_only
section: opinions
listed: 'true'

---
The “Linux libc” fork of the [GNU C Library](http://www.gnu.org/software/libc/libc.html) is now a mostly forgotten event. The fork lived from 1994 to 1997/8—just before my time—but I’ve found interesting accounts of it by others.

The main sources of information are:


* Elliot Lee’s essay: [A Technical Comparison of glibc 2.x With Legacy System Libraries](http://web.archive.org/web/20040411191201/http://people.redhat.com/~sopwith/old/glibc-vs-libc5.html)—the original page is gone but archive.org has a copy
* Rick Moen’s essay: [Fear of Forking](http://linuxmafia.com/faq/Licensing_and_Law/forking.html) section 6 discusses this fork
* David A. Wheelers’s footnote: [Forking](http://www.dwheeler.com/oss_fs_why.html#forking) from his “Look at the numbers!” essay


## Reasons

According to Wheeler’s appendix, the fork occurred just after February 1994, and the motivations were procedural/organisational: “_the Linux kernel developers thought that the FSF’s development process for the C library was too slow and not responding to their needs_”. This ties in with Bruce Perens’ comment in 2000 that the Linux libc fork “_went on for years while Linux stabilized_” (from the article [Forking: it could even happen to you](http://www.newsforge.com/article.pl?sid=00/10/24/0211204)).

Moen’s article says the reason was technical: “_they decided that FSF’s library (then at version 1-point-something) could/should best be adapted for the Linux kernel as a separately-maintained project_”. Both reasons could have contributed.


## During the fork

H. J. Lu is mentioned by a few people as being the maintainer or main contributor to Linux libc.

Elliot Lee’s article says that while the Linux kernel developers were using their fork, glibc development stalled for a time. This coincides with the time that FSF spent working on version 2.0, during which there were no official releases for two years. The development progress during this time is noted in the twice-annual [GNU’s bulletins](http://www.gnu.org/bulletins/) that FSF published throughout the 90s.

From [the NEWS files](http://sources.redhat.com/cgi-bin/cvsweb.cgi/~checkout~/libc/NEWS?rev=1.147.2.22&content-type=text/plain&cvsroot=glibc), it seems Cygnus Solutions hired Ulrich Drepper to work on it from late 1995 onwards [since the January 1996 GNU’s bulletin](http://www.gnu.org/bulletins/bull20.html#SEC24) mentions that Drepper has contributed a lot “in the last few months”.


## Glibc 2.0

It looks like glibc 2.0 was released in January or February 1997 (from the dates in [the GNU ftp site](http://ftp.gnu.org/gnu/glibc/), from [the January 1997 GNU’s bulletin](http://www.gnu.org/bulletins/bull22.html#SEC21), and from some mailing list discussion archives).

By all accounts, glibc-2.0 surpassed Linux libc on features, standards, and code cleanliness. Elliot Lee’s article goes into most detail on this, citing features such as POSIX compliance, internationalisation support, multithreaded support, IPv6, and 64-bit data access, and library version migration support.

There is an 1998 interview with [H.J. Lu about libc5 and glibc](http://linuxgazette.net/issue32/tag_libc5.html). The interview mostly focuses on technical differences and the transition. H.J. is quite positive about glibc 2.0.


## Ending

Bruce Perens’ one line comment about the aftermath is that the projects “re-merged”, however, while the communities and contributors may have merged, according to Stallman, little or no code did. According to Stallman, the Linux libc had insufficient records of authorship or copyright ownership for the code they distributed (something the GNU project has always been very strict about), and the Linux libc maintainers were unwilling to sort this out.

In 1997 through 1998 nearly all [GNU/Linux](http://www.gnu.org/gnu/the-gnu-project.html) systems switched from libc back to glibc. Red Hat migrated in December 1997, and Debian was planning their migration at that time too, according to Lee. And so ended a story that is now rarely mentioned.

[Ciarán O’Riordan](http://ciaran.compsoc.com/),—[Support free software: Join FSFE’s Fellowship](http://fsfe.org/join)

