---
nid: '1653'
title: 'Deep in the Docs'
authors: 'Martin Brown'
published: '2006-07-01 10:26:17'
tags: 'documentation,mysql'
license: verbatim_only
section: opinions
listed: 'true'

---
This week, and specifically today, marks a minor milestone in my employment at MySQL—I’m finally a full time employee, no longer on probation. It has also been probably the busiest week since I started at MySQL, except for the week spent at the developers’ conference in Sorrento.

Why so busy?

Because I’ve spent many hours deep in the build process that actually generates the documentation, partly to address some existing errors, but also to improve the documentation after some new content was added. In summary, the following major steps were made this week:


* Added a new [Chinese, Japanese, Korean FAQ](http://dev.mysql.com/doc/refman/5.1/en/cjk-faq.html), written by our resident languages guru Peter Gulutzan
* Changed the documentation build so that it now includes a font to display the characters introduced by Peter’s new section
* Fixed the CHM build process, so that the website now includes up to date versions of the manual in CHM format. These also now include images, and the past problems where some versions of the CHM would not display anything have also been addressed.
* Fixed the Texinfo/Info builds so that they now include all sections of the manual. Previously we had to disable the Connectors section because the build would fail.

As part of that entire process, I’ve also addressed a number of other build failure issues, and created some new scripts to check the documentation so that hopefully these won’t happen again.

Of course, such short descriptions don’t really do the process any justice. Developing and deploying the manuals in the different versions, and languages, that we support is no easy matter. This week, many of the issues were actually triggered by some failures in the way the documentation is built.

Well, first of all on Sunday a complete block of our documentation—namely the online version of our manual—completely disappeared. My initial investigations lead me to believe it wasn’t a fault with the files that build the manual, and these were borne out when Eric, head of the web team, worked his magic and determined that a missing file during a recent update had caused the problem.

Back in the Docs source code, however, and there were other problems. Two of them had appeared over the weekend. First, PDFs of the manual were failing to build, and then the CHM (Compiled HTML) formats also stopped building and some of the existing files had stopped working altogether.

All MySQL documentation, even the manual pages, internal help tables, and all of the various formats we generate, come from a single source using the standard DocBook XML format. Every destination format but one (CHM) are then built using open source tools. Using a single source for all of this information is obviously a massive benefit, but it is not entirely without its own problems. DocBook XML is great, but there are certain areas where we have had to tweak the format and work around bugs. When it comes to outputting information in specific formats, there are even more issues to consider.

Any time a build fails for any reason, the Docs team get an email. Often the failure can be traced back to a new submission or fix of some description in the XML source. Simple things like validation errors in the XML cause problems, even though we can check most aspects of our edits before they are committed back using SVN.

Other times the error is more obscure. For example, we use [FOP](http://xmlgraphics.apache.org/fop/) to generate PDFs. FOP is a great tool, but it sometimes trips up on funny instances. For example, in the DocBook XML there is no reason why you can’t specify that a table has two columns, but then actually define three in your code. Most XSL transformations—HTML, Texinfo, etc—pay no attention. FOP, however, falls over badly when it sees this and fails to build the PDF at all. If the definition is the other way round (i.e. you suggest there might be three columns but use only two) you could understand it. 

I realize that kind of makes sense, but it would be far more helpful if it generated a warning or error, rather than just falling over.

I spent almost the entire week looking into issues like this to find out why different parts of the building process didn’t work. I’ve now fixed, I think, all the problems, but it required a significant amount of investigation and a lot of waiting for the latest fix to complete while trying out something new. The waiting is necessary because it takes 25 minutes to build a PDF of our docs, and closer to 45 minutes for a build of the CHM documentation.

Another element of the build process that I attempted to fix this week was triggered by the inclusion of the [Chinese, Japanese and Korean FAQ](http://dev.mysql.com/doc/refman/5.1/en/cjk-faq.html). MySQL has supported multiple languages and collation for a while (indeed, I added some information on [how this works internally](http://dev.mysql.com/doc/internals/en/charsets.html) last week).

Peter’s CJK FAQ covers most of the common questions, such as why multi-byte characters don’t work, and the often posed issue with the backslash glyph not existing in many CJK fonts, being replaced by the local currency symbol. That, in itself, added a further dimension to the problems when building.

The HTML version of this works great. Unfortunately, it introduced a few problems for the PDF because of the character sets used in the examples. Without a suitable font (from the standard 13 used by the PDF standard), unknown characters appear as a hash symbol. That was fixed by embedding a suitable font with the missing glyphs into the PDF, coupled with some Perl magic to ensure we only set that font on glyphs we don’t already know about.

The CHM build was more problematic, as the entire process would run fine up until the compilation/compression process when the compiler (Microsoft’s own hhc.exe) would fail with a memory error. A lot of investigation lead to the index file generated by the DocBook XSL transformations which would contain blank references when using <see> and <seealso> elements. At the moment we simply comment them out, and the CHM build is fixed, but I’m working on a longer term solution.

All in all it was a hard week because of the work involved in getting all of this working. Build failures that are straightforward are easy, but the more detailed investigations are complicated, not just because of the time, but because of the multiple steps required to achieve the result.

Using DocBook, FOP and our own extensions and tools enable us to generate a range of docs and formats—probably the most significant part of the user interface beyond the MySQL tools themselves—to support the wide range of users we have.

