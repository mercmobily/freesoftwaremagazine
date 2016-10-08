---
nid: '2058'
title: 'Making PDFs with free software'
authors: 'Jon Peck'
published: '2007-02-09 4:18:00'
tags: 'pdfcreator,pdf,cups-pdf,authoring'
license: verbatim_only
section: opinions
listed: 'true'

---
Portable Document Format (PDF) files have become somewhat of a de-facto standard for representing fixed layout 2D documents, and their use and versatility have grown over the past decade. Recently, [Adobe announced](http://www.adobe.com/aboutadobe/pressroom/pressreleases/200701/012907OpenPDFAIIM.html) that it intends to release the PDF 1.7 specification for publication by the International Organization for Standardization (ISO). As demand increases for this format, many are wondering, what tools can be used to create PDFs with free software?

Fortunately, there are a variety of free software that is available to author PDF files. I'll specifically highlight two packages that are easier to use and require less configuration. While the advantages of the uniform presentation are usually advantageous, I feel that the emphasis should be on the content, not the container.


## PDFCreator

[PDFCreator](http://www.bestsoftware4download.com/software/t-free-pdfcreator-download-ieslscyz.html)is a GNU/GPL printer capture driver that creates PDFs from any Windows program. All you need to do is select PDFCreator as a printer from whatever application you're using, and it'll take the output and save it as a PDF. In addition, it also allows for the setting ofpermissions and encryption, which makes it favorably comparable to Adobe Acrobat.

Recently, an optional Internet Explorer toolbar has been added to the installation. There has [some controversy](http://sourceforge.net/forum/forum.php?thread_id=1526338&forum_id=194223) about whether the included toolbar can be considered spyware; the developers maintain the toolbar is not, and back up their claims with a [100% Clean award from Softpedia](http://www.softpedia.com/progClean/PDFCreator-Clean-28111.html). The developers have also included a deployment package that doesn't include the toolbar.


## CUPS-PDF

From a Unix-like environment, you can use the Common Unix Printing System(CUPS) to create PDF files by installing [CUPS-PDF, a GPL virtual printer](http://www.physik.uni-wuerzburg.de/%7Evrbehr/cups-pdf/). While not as versatile asPDFCreator, it provides the base functionality needed to be effective. Check out the [Print to PDF using cups-pdf blog entry](http://ubuntu.wordpress.com/2006/03/23/print-to-pdf-using-cups-pdf/) for installation and usage tips; read through the comments for some additional use scenarios and other updates.


## OtherOptions

The [OpenOffice.org Writer](http://www.openoffice.org/product/writer.html) includes the ability to export to PDF without installing any additional packages. Another technique is to send a document to a PostScript virtual printer, then use [GNUGhostscript](http://www.gnu.org/software/ghostscript/ghostscript.html) to convert the result to a PDF or by using the *nix command  ps2pdfwr, but that's unnecessarily unwieldy and impractical for everyday use. [CutePDFWriter](http://www.cutepdf.com/products/cutepdf/Writer.asp), a no-cost but proprietary product for Windows, utilizes Ghostscript to generate PDFs. Finally, [MacOS X](http://www.apple.com/macosx/features/pdf/) provides the ability for all applications to directly create PDF documents as long as they support the "print" command.


## Conclusion

The packages I've described should help take the emphasis off the tools and allow you to concentrate on what's actually in the document. One should consider who the target audience is and the justification ofa particular container format. Sharing a fixed layout document intended for collaboration defeats the purpose, and some people are unfamiliar with the PDF format and don't have the necessary viewer. Remember, just because you've packaged material as a PDF doesn't make the content any better.

