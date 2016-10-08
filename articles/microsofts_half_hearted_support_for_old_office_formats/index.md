---
nid: '2643'
title: 'Microsoft''s half-hearted support for old office formats'
authors: 'Mitch Meyran'
published: '2008-01-11 13:17:18'
tags: 'openoffice.org,ooxml,office'
license: verbatim_only
section: opinions
listed: 'true'

---
Are you still using Microsoft Office 2003? If so, get ready to have problems opening older file formats with it once SP3 is applied: Microsoft has decided to disable file parsers for the older file types (Word 95 and older, Wordperfect, Lotus etc.) by default. Why? Security reasons.

<!--break-->

Of course, the parsers are merely disabled. As it stands, that is the default behaviour under Office 2007 too. You can re-enable them using registry edits.

But why would you go through such trouble?

# Documents and security

More often than not, security in documents is decried when it comes to macro management; Office 97 SR-1 was the first Microsoft Office suite to mandate disabling macros on load. Subsequent versions added the ability to sign macros and locations, so as to create/store "trusted" documents.

On the free side, OpenOffice.org does allow the signing of macros and documents, and can also disable macros (some bugs found in version 2.0.1 were gradually corrected).

But this is not the only way to send a program in a loop and create a vulnerability: you could potentially crash or compromise any office suite with a plain text file, by hitting a bug in the text file parser: then, you'll get, for example, a buffer overflow, and thus potential code execution.

## Method 1: the easy way out

This is the solution Microsoft has chosen, telling everybody the excuse that the file formats in question are old, and some were not created by them: it is thus considered too hard to support and fix this "old" code; so they merely disable it. They don't want to correct their old binary file parsers, and don't even think about reverse engineering other formats: if this area of code falls prey to bit-rot while there are still people interested in using them, no matter how much the suite costs, they'll merely amputate it.

It's like cutting off your left hand because you easily hurt your left pinky, and you don't use it often anyway.

## Method 2: the hard solution

This solution is the one retained by most other office suites authors, both proprietary and open: reverse-engineer older formats better, rewrite parsers to make them more efficient, cleaner and less prone to crashing (in the case of OpenOffice.org and its forks, filters may crash but not hang the rest of the application because they run as different processes, and rendering starts only when the document has been parsed and converted: it's a slower solution, but it's also safer).

For example, Wordperfect's import filters (versions 4 to latest) are still being developed and better supported under OOo, Abiword and Koffice, through libwpd.

This is like training to become ambidextrous: it's slow going, but ends up being more efficient, and with the extra training, your left pinky is less prone to get hurt anyway.

# Office suites to open document formats - rant ahead

I don't know about you, but I wonder how a company like Microsoft can boast about "maintaining backwards compatibility" when it uses such cheap tricks: I mean, they created OOXML to "properly support and convert legacy file formats to XML", and at the same time, under the only suites that are supposed to natively support this "newer" format, you can't open legacy formats!

On the other hand, you can still open those legacy formats under a flavour of OOo (or Koffice, or <insert name of preferred free suite here>), and convert them into ODF only losing a fraction of the formatting--a loss you'd get even when forcefully enabling the import filters under MS Office (something Microsoft says will lower backward compatibility).

Right now, it seems that on the matter of document formats, Microsoft thinks that backward compatibility can be summed up by "support only our 10-year old formats, and dump them into a pseudo-XML file", while the competition seems to think that backwards compatibility means being able to open older files the best one can, if possible also output files in those formats, and port them to a file format geared towards storing as many different types of data as possible (if you look at what existing standards ODF 1.2 will support, then compare with OOXML's reuse of existing standards--or lack thereof; it's no wonder ODF, although 'only' 1000 pages long, is better appreciated than OOXML's 7000 page long specification!).

## Bibliography

* [Blog post from David LeBlanc, MS Office developer, on MSO's blocking older file formats](http://blogs.msdn.com/david_leblanc/archive/2008/01/04/office-sp3-and-file-formats.aspx)
* [Web site for libwpd, free parser for Wordperfect files](http://libwpd.sourceforge.net/)
* [go-oo's website, a 'preview' version of future 'vanilla' OOo features](http://go-oo.org/discover/)