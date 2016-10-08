---
nid: '2317'
title: 'Pick your own OOo, there must be one for you!'
authors: 'Mitch Meyran'
published: '2007-05-31 18:30:30'
tags: 'gnu/linux,openoffice.org,windows,mac-os'
license: verbatim_only
section: end_users
listed: 'true'

---
OpenOffice.org is probably the biggest free software project in existence today. It certainly is the biggest single piece of software one can download and compile in one go, with the core package hitting over the 100MB mark (while bzip’d) and the total sources going over 200MB.

It directly competes with Microsoft Office, is a bit more easy to install than KOffice, and is very complete.

But what will you get?


<!--break-->


You don’t usually compile OpenOffice.org (OOo for short) yourself. The first reason: it’s HUGE: it needs 9GB of free disk space to compile successfully with default options. Second, it’s LONG—plan at least a day for the initial build if your system isn’t a powerhouse with a dozen gigabytes of RAM. And third, you probably already have a version compiled for your system.

I will explore the highly active OOo 2.x code line here; the older 1.1.x code line may work on older systems and many UNIXes (IRIX, AIX, Linux/Sparc), but it is too limited to remain interesting.


# Systems


## Supported ports

Right now the following operating systems have supported, native, recent versions:


* Windows NT 5 (2000, XP, Vista)
* GNU/Linux x86 (starting with kernel 2.2.16, glibc2 2.6 and X11R6)
* Solaris 8 on SPARC or on x86
* MacOS X 10.3.5 PowerPC and x86 with Apple’s X11 compatibility layer

The evolution from the original 2.0.0 version to the current 2.2.1rc version is a very good example of free software development at its best. While there was no real breathtaking options and features added, the suite has known an incredible progress stemming essentially from code cleanup and UI refining.

In fact, OOo has a dedicated project for usability, and another project dedicated to performance improvements.

As a matter of fact, the MacOS and x86-64 ports reaped most of the benefits from these cleanups, but the original Windows, GNU/Linux and Solaris ports also saw many refinements added:


* OOo 2.0 was already much faster to load than 1.1.x; current 2.2.1rc is even faster, opening in only a few seconds, parsing files much faster, and is generally more nimble in most cases.
* Stability is without common measure: nowadays, even the untested developer builds seldom crash; the highly efficient recovery wizard sees very little use, and works very well in those rare cases where you crash (or voluntary kill) your OOo session.
* System resources are less taxed: reduced memory leaks, reduced memory footprint, lower CPU use never hurt.
* Reliance upon a Java VM has steadily decreased; you used to need Sun’s JVM for OOo 2.0 to work correctly, now gcj 4.x (and others) works well enough and several effects that required Java before are now native, making OOo highly usable even without a JVM.

Moreover, so as to provide a better user experience, icon sets, toolbars, controls, print panels and file pickers more and more use the OS’s native elements over OOo’s integrated ones.


## Partially working/third-party support/alpha stage ports

The following systems are known to have a working version of a recent OOo revision (2.2 at this time):


* FreeBSD 5.3,6,7 on x86 and x86-64 (supported by the FreeBSD project) pretty much work
* OpenBSD, with [a few system settings](http://www.xs4all.nl/~hanb/documents/openoffice_on_openbsd.html) can run the GNU/Linux x86 version as-is
* GNU/Linux x86-64 is yet unsupported but actively developed by the OOo-build and Porting projects and is highly usable—when you can find a binary
* MacOS X 10.3.9 PowerPC and x86 without X11 has reached pre-alpha stage; testers are required


# Languages

OOo is probably most well-known for its numerous translations; listing them here would eat up a bit too much space, but you can read it here: [OOo l10n matrix](http://l10n.openoffice.org/languages.html). It may be a bit outdated in how it reports localization completeness; however, it is complete.

Too bad, it seems the [Klingon version](http://marc.info/?l=openoffice-discuss&m=111522823544470&w=2) is now abandoned...


# Planned improvements


## Import/export

For a long time now, OOo has supported the execution of very simple Visual Basic for Applications (VBA) macros. This support is getting expanded now at a fast pace, directly supported by Sun, Novell, and the OOo project. It is still far from complete and requires extensive testing with real-world Excel documents (hint: send your macros!), but it is slowly getting there.

Interestingly, it may soon be the only way for Mac users to run VBA macros in OOXML files on their machines, as Microsoft Office 2008 will completely [drop VBA](http://www.macwindows.com/office2008.html) in favor of AppleScript.

Another option which will soon reach fruition is the integration and improvement of the OOXML import/export module in “vanilla” OOo. The original Novell implementation was far from efficient, yet this time the OOo community may get it in just right. The difficulty here is, yet again, the scarcity of OOXML-based files on which to perform tests, on top of the completely different specifications for word processor files, spreadsheet files and presentation files—while ODF makes little difference between the three, sharing as much as is possible from one file type to the other.

A long time of suffering is about to end: those of you who like to extensively use graphs and charts will be happy to learn that a [completely revamped charts module](http://graphics.openoffice.org/chart/whatsnewinchart2.html) is finished and integrated in m213. This module fixes a truckload of charts bugs on top of providing better Excel charts imports and more charts options.

And last, a PDF import module is being evaluated. Don’t hold your breath though, PDF is notoriously difficult to import—just ask the guys of KOffice or of Ghostscript what they think about it...


## Layout

While OOo is very well known for its very strong fonts metrics support and very good style management, the interface is limited: you can’t edit pages side by side or in a mosaics form, which would allow you to optimize screen space. Unfortunately, apart from a little change in default settings, this won’t change before version 3.0 due to some heavy work required on the core of OOo to make it work. Thus, it is planned, but it won’t come any time soon.


# Known forks


## Novell

One of the most notable forks is [Novell’s](http://download.novell.com/Download?buildid=ZniZNNd4mLQ~), which extensively modified OOo 2.0.4 to include an OOXML word processor filter, a VBA compatibility module and a DataPilot editor. Those were unfortunately shoved in in a less than elegant fashion, and required long refactoring before OOo’s QA considered them good enough to include in the main line. Still, it is quite interesting to test, as it is available for both Novell’s openSUSE and for Windows.

Right now it is seen more as a testbed than as a real port, though, and most of these improvements have either been published in a release version of OOo, or are planned for the next version.


## Planamesa’s NeoOffice

Another port, which is MUCH more controversial, is called [NeoOffice](http://www.neooffice.org). Started a few years ago, it aims at running OOo on MacOS X without the need for an X11 compatibility layer. The two developers decided on two things:


* use Java as an interface layer between OOo and Aqua (which is a debatable design decision)
* switch the code from LGPL to GPL, which prevents any backport of NeoOffice code into OOo

The latter decision was voluntary and aimed at preventing Sun from using their code under the SISSL license (at first, OOo was dual licensed; with the OOo 2.0 release, only the LGPL remains—which still allows Sun to redistribute StarOffice as a proprietary product, but which forces direct modification to OOo code LGPL too).

The controversy stems from the fact that not only do Patrick Luby and Edward Peterlin not allow their code to be back-ported to OOo, they seem to defend it rabidly when it can, and are keen to NOT contribute to the native OOo-Aqua port—to the ire of the OOo Mac porting team: don’t EVER mention NeoOffice to them, or they’ll (politely) bite your head off.


## Brazil’s BrOffice.org

Originally a branded Portuguese port of OOo specific to Brazil, and government-sponsored.

The original “fork” served as support for a grammar checker, a thesaurus and an automated document generator. All were progressively merged into OOo, making it no different than mainline, apart from the branding.


## Various GNU/Linux distributions

Mandriva maintains a rebranded OpenOffice version. It used to include a specific icon set and personalized splash/info graphics. Nowadays, most of the branding is gone. However, Mandriva now maintains a working 64-bit port (using gcj 64-bit for Java support), which is regularly updated, usually based on the most recent release CVS extract with some patches thrown in for good measure, in its “backports” repositories. The equivalent 32-bit version is available for x86-32 (and maybe PPC).

Debian provides various versions (1.1.3, 2.0.4, 2.2.1...) depending on architecture and stability.

For openSUSE, see Novell.

I couldn’t find anything specific in other distributions, which leads me to think that they don’t refactor OOo or don’t provide unsupported ports as much as those.


# Conclusion

If you had previously dismissed OpenOffice.org because you found it too slow, too big, too buggy, or because it didn’t work on a Mac, then maybe it is time to reevaluate your opinion. It is a very powerful office productivity suite that you can use seamlessly on pretty much any system in pretty much any language.

It being free doesn’t hurt either, when compared with the competition...


# Bibliography

Most ports and plugins can be monitored through the [OOo wiki](http://wiki.services.openoffice.org)

The latest NeoOffice contribution to OOo-Aqua: [Read the whole thread](http://council.openoffice.org/servlets/ReadMsg?list=discuss&msgNo=1187)

[First BrOffice/OOo meeting](http://www.openoffice.org/editorial/first_broffice_meeting_200606.html)


