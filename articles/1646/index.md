---
nid: '1646'
title: 'Some comments on the Gartner report on FOSS on Microsoft Windows'
authors: 'David Sugar'
published: '2006-06-27 16:04:08'
tags: 'free-software,microsoft,gartner'
license: verbatim_only
section: opinions
listed: 'true'

---
I had heard about the latest Gartner report claiming that Microsoft Windows will become the dominant platform for "Open Source" (and free) software in the future.  While there are certainly a number of reasons why some FOSS has and will continue to be written that also runs under Microsoft Windows, I think the fundamental premise is wrong.

Since FOSS software is licensed in ways that enable others to modify and port software to other platforms at their choice, it is very natural that such software will migrate to platforms like Microsoft Windows, and tend to become more cross platform in nature overall, over time.  Some software is deliberately designed portable from the start, as this offers technical advantages.  The most important technical advantage is perhaps having different platforms and different compilers expose underlying bugs that might otherwise get missed.  This is just one way that software freedom tends to also result in higher quality code, and one of the more indirect ways that it happens.

Another reason for seeing more FOSS software under Microsoft Windows is the rise of portable and platform neutral runtime environments, starting with Java, and more recently with things like Portable.NET, Mono, etc.  However, the second largest barrier facing Microsoft Windows as a FOSS platform, outside of the proprietary nature of the platform itself, is Microsoft, and the way they build and distribute their development tools.

The best example of this can be found in the way collaborative tools work in Microsoft development environments.  These are designed well to exchange information "within the castle walls" of companies and organizations, but in doing so, they have no vision or active support for the wider notion of community driven development, or even for supporting development over multiple third parties.  Where in any Unix, there is a somewhat universal `/usr[/local]/include` and `/usr[/local]/lib` to drop shared header files and link libraries from arbitrary software components, this concept does not exist at all in Microsoft Windows development tools.

Even for shared development of source, where the FOSS world has fundamental enabling tools like subversion, cvs, etc., Microsoft locks their users into an aptly named source control environment they call "Source Safe", which focuses on the castle wall approach to software collaboration.  They do have hooks which allows third parties to create version control backends by having them behave like they are Source Safe.  This is a self referential culture, and one that is about excluding, rather than including, others in development.

It is for these reasons together (the proprietary nature of Microsoft Windows as a platform, and the limited proprietary nature of collaborate development that Microsoft envisions and promotes through its development suites) that I think will continue to limit Microsoft Windows as a platform where FOSS is usually ported to, rather than one where FOSS originates.

