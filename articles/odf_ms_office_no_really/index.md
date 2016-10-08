---
nid: '2878'
title: 'ODF in MS Office? No, really!'
authors: 'Mitch Meyran'
published: '2008-05-22 9:40:24'
tags: 'odf,ooxml'
license: verbatim_only
section: end_users
listed: 'true'

---
Microsoft declared yesterday (May 21st, 2008) that Microsoft Office 2007 SP2 would include (among others such as PDF 1.5, PDF/A and some more) built-in support for OASIS OpenDocument Format version 1.1 (finalized, submitted to ISO, supported by OpenOffice.org, Kofffice, GNOME office apps and their forks) while ISO-submitted OOXML support would wait for Office 14.

<!--break-->

# The end of the format War?

## Some external reasons

Now, this should come as hardly more than a small surprise since:

* Microsoft is under scrutiny from the EU;
* Microsoft is harshly criticized for hijacking the ISO process;
* Microsoft's OOXML "standard" was mocked all around for its technical failings;
* Microsoft was competing against growing OpenOffice.org/StarOffice and Google Docs, which use ISO-certified and much less controversial ODF;
* Microsoft was asked by several governments to implement ODF first and foremost.

Microsoft had little choice but to change its stance and do something better than sponsor a half-baked OOXML-ODF converter based on XSLT, especially now that Sun has revised its ODF plug-in (which will still be supported).

## ...but also some internal pressuring?

This may have been a long time in coming, but several accounts from various players in both the F/OSS world and private companies show that, if Microsoft's upper management still would like nothing better than to eradicate any and all GPL material, at least a few programmers and project managers at MS do want some openness, especially after experiencing it (Silverlight/Moonlight is an interesting example here).
Maybe, having to look up the existing ISO standards for page formats, date formats etc. to get OOXML accepted by ISO made some of them realize how disconnected they are from reality... A reality check, if you want.

## Don't drop your guard

ODF support is one thing; however, ODF can be extended through "proprietary extensions" (as defined in the format itself); while it gives the format some non negligible flexibility, it may also be abused, and Microsoft may be tempted to use and abuse ODF in an "embrace, extend, extinguish" fashion. I think there is a covenant and a patent protection somewhere (from Sun and IBM) that may be used to mitigate this, but ye be warned.

# Questions still up in the air

## Backward compatibility

However, don't expect everything to go smoothly: OOXML, being an "XML dump" of the older binary formats, has much better backward compatibility with them; in fact, converting complex/badly hacked together older documents to ODF is almost guaranteed to cause some loss in formatting, and in some rare cases, loss of data.

For example, you can be certain to wreak havoc upon those documents formatted with blank spaces and carriage returns all over the place if you convert them to ODF without cleaning them up first. That was already the case in OOo, but now we'll actually see the point behind OOXML (that's its only reasonable justification).

## Macro support

ODF 1.0 and 1.1 don't define a macro language: it was touted to not fall under the responsibility of a file format description to define a programming language, like we saw in HTML vs. Javascript. As such, competing products often implement their own, when they don't support several:

* Starbasic;
* Python;
* Java;
* Visual Basic for Applications (VBA);
* Applescript;
* ECMA/Javascript;
* etc.

ODF itself merely provides a Document Object Model, which can be manipulated with any DOM-aware language.

You can thus expect still some incompatibilities there: Mac Office 2008 doesn't support VBA, but supports Applescript; OpenOffice.org supports a subset of VBA, Starbasic, Python and Beanshell, with Java too when a JVM is here; MS Office currently supports only VBA, and may support Jscript one day as it's already part of all supported versions of Windows; with IronPython getting traction, Python may also be supported one day under MS Office...

It's not pretty. However, at least you won't have to worry about loss of content or formatting anymore when creating a new ODF document and sending it to someone who doesn't have the same office suite.

## Formula support

Formulas will be part of ODF 1.2; Microsoft announced that it would join OASIS (again), probably to work on that matter among others. The OpenOffice.org formula format takes into account quite a lot of Microsoft idiosyncrasies (CEILING() and FLOOR(), for example), but nobody's perfect--and the more eyes on the matter, the better.

# Conclusion

It's good news, all around: you can now store your documents in ODF, and be sure to open them with MS Office when SP2 comes out. Beware though: it's still too early to say how much is actual goodwill, lip service, or strategy of conquest in this announcement.

# Bibliography

[Doug Mahugh's blog post](http://blogs.msdn.com/dmahugh/archive/2008/05/21/office-support-for-document-format-standards.aspx) announcing ODF support in a pre-release version of MS Office 2007 SP2
[Microsoft's original press release](http://www.microsoft.com/Presspass/press/2008/may08/05-21ExpandedFormatsPR.mspx)
[Sophie Gautier's announcement on the French OOo mailing list](http://fr.openoffice.org/servlets/ReadMsg?list=discuss&msgNo=9515), referencing an Herald Tribune article
