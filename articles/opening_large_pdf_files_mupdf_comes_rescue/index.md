---
nid: '3846'
title: 'Opening large PDF files in GNU/Linux: muPDF comes to the rescue'
authors: 'Tony Mobily'
published: '2015-06-06 8:13:21'
tags: 'graphics,photos,gimp'
license: verbatim_only
section: end_users
main_image: pdf.png
listed: 'true'

---
I was recently given an ebook by a friend. It was a photography book, with tons of hi-res images and very little text. When I opened it with Ubuntu, Evince (the default PDF viewer that comes with Ubuntu) gave in: after a few pages, it slowed to a crawl. I did a bit of research, and found the program that rescued my viewing needs: [MuPDF](http://mupdf.com/). The good news was that I could finally read my book. The bad news was that I found out that the company behind it has in the past misunderstood the terms of the GPL and started a (later withdrawn) litigation against Palm.

<!--break-->

# The good news: it's amazingly fast (and maybe too simple)

Installing MuPDF is as simple as running `sudo apt-get install mupdf` in your Debian-based system. Once installed, you can open PDFs  by right-clicking on a PDF file.

MuPDF is amazingly fast: it opens my _heavy_ photography book without any strain. It's also amazingly basic in terms of interface: no table of contents, no page number, not even a top menu. There is in fact no interface: in order to use it, you can use its keyboard shortcuts listed in `man mupdf` or in [mupdf's man page online](https://www.mankier.com/1/mupdf).

MuPDF is so basic mainly because it's meant only really meant to showcase the speed of the FitZ library (the heart of MuPDF), and show developers how to embed FitZ in their applications.

If you wonder how much faster than evince it is, you can have a look at this [comparison article between MuPDF and "poppler"](http://hzqtc.github.io/2012/04/poppler-vs-mupdf.html) (keeping in mind that Poppler is the PDF rendering library used by Evince).

The fact that Poppler is very slow at rendering some documents is documented in an [open bug in Launchpad](https://bugs.launchpad.net/ubuntu/+source/poppler/+bug/1325899), Things are looking promising: a fix seems to have been released and available in Ubuntu 15.04 "Vivid".

# The ugly part

Researching this issue, made me aware of some issues with Artifex Software (the owner of MuPDF) actually understanding the terms of the GPL (in which they released their software).

Development of MuPDF was actually started by Tor Andersson in 2002. Artifex Software acquired MuPDF: their initial goal was to replace the rendering engine of Ghostscript,  an interpreter for PostScript and PDF files. However, they focused instead on developing MuPDF and the new Fitz library: a lightweight, super-fast rendering engine for PDF files. In 2005 they released it under the GPL.

However, in 2009 Artifex Software sued Palm for "copyright infringement". Reading the [official filing](http://ia600404.us.archive.org/33/items/gov.uscourts.cand.222215/gov.uscourts.cand.222215.1.0.pdf) gives you the impression that the people at Artifex don't actually understand the GPL. The filing reads:

> Consistent with its history and tradition, Artifex offers MuPDF to the public, free of charge, under the GNU General Public License ("GPL") for non-commercial use

Any free software developer knows that releasing under the GPL is _not_ about offering software to the "public" for "non-commercial use".

The case was [unsurprisingly withdrawn by Artifex](http://ia600404.us.archive.org/33/items/gov.uscourts.cand.222215/gov.uscourts.cand.222215.28.0.pdf) (although Palm still had to pay a likely hefty bill from their lawyers).

# It is safe to use!

While Artifex did sue Palm and then, two years later, withdrew the case, MuPDF _is_ released under a free license, and you can use it for your heavy-weight PDF where Evince simply give in.


 

 

