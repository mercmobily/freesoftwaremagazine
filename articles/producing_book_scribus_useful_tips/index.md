---
nid: '3190'
title: 'Producing a book with Scribus: useful tips'
authors: 'Daniel James'
published: '2009-08-14 14:00:36'
tags: 'gnu/linux,scribus,design,publishing,dtp'
license: verbatim_only
section: end_users
listed: 'true'

---
While working on my own book for Apress, [Free Software for Creative People](http://www.freesoftwarecreative.com), I've also been typesetting a 240 page poetry book by Richard McKane using [Scribus](http://www.scribus.net/), for the publisher [Hearing Eye](http://www.torriano.org/hearing_eye/). Years ago I used to use Quark Xpress for this sort of project, so I was pleased to find out that free software can now do the same job.

<!--break-->

I used the Free Software font [Deja Vu Serif Book](http://dejavu-fonts.org/wiki/index.php?title=Main_Page) because of its support for the Turkish characters used in the manuscript, which used to be a real typesetting challenge on proprietary software. Modern Turkish has all kinds of characters that aren't used in the standard Latin alphabet -- the letter i with no dot, for instance. Fonts left these characters out, and importing documents often failed to recognise them, leaving the pages to be manually corrected. Fortunately, Scribus and GNU/Linux have much better support for internationalisation than the System 7 and System 8 Macs that I learned typesetting on.
 
These are my tips for book production with Scribus:

1. Use the latest upstream stable version of Scribus. The GNU/Linux distribution packages are often a release or two behind, and you really don't want that.

2. Unless you have a very fast CPU in your computer, break the book document up into sections or chapters - it will make the editing process much more bearable. It also keeps the sections separate at the proofing and corrections stage.

3. Import master pages from one section to another to maintain consistency, such as margin and page number formatting.

4. Export each section as an individual PDF file. Then use [pdftk](www.accesspdf.com/pdftk) to stitch the section together into a single inside pages PDF for your litho platemaker or print-on-demand digital press. No doubt the cover will be required as a separate PDF.
