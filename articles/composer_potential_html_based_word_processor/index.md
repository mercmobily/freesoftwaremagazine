---
nid: '2815'
title: 'Composer, a potential HTML based word processor'
authors: 'Maurice Cepeda'
published: '2008-06-03 3:07:56'
issue: issue_22
license: cc-by-nc-sa
section: end_users
listed: 'true'

---
[Rosalyn Hunter][] writes about using Composer as a [stand-in word processor][]. I too, have used it in this fashion on OS X. I like it for various reasons. For instance, I'm quite familiar with it, as I've used it for website authoring numerous times. It creates HTML files. I've come to the conclusion that HTML is not a bad “language” to use for a word processor, considering that it already allows for basic editing features--and then some. If it isn't obvious, Composer is an HTML editor that was part of the old Mozilla suite.

<!--break-->

Although the suite development officially ended a while ago, a resurrection project called SeaMonkey continues in its place, which includes Composer. There are also the stand-alone [Nvu][], and its fix called [KompoZer][]. Both of the latter projects are at a standstill: Nvu's main developer, Daniel Glazman, will eventually finish the next generation Composer (don't hold your breath).  

# Composer features

The following are reasons why Composer makes a decent stand-in word processor. Keep in mind that these features are not revolutionary, but the point is that users don't need to resort to overblown word processors to get these features: Composer really can be used as a temporary replacement word processor, and that it makes a good basis upon which to develop a full fledged one.  Here are its features:

* supports basic formatting (indenting, paragraphs, bulleting);
* supports a variety of fonts;
* supports tables;
* supports images;
* has a spell checker (dictionary);
* supports hyper-links.
* real time spell checker (if configured)- it’s instant rather than having to run the cursor over every word before it kicks in.


As far as HTML goes:

* it supports multiple character encodings, the near universal UTF-8 and my past favourite ISO-8859-3 for southern European languages. It even allows for a quick and simple conversion from one encoding to another;
* HTML is a markup language that’s humanly understandable, if you want to read it. It allows low level hacking under the source tab. Don’t try to read any other word processor source after opening it up in a text editor;
* supports FTP, allowing the transferring/saving of documents onto ftp servers;
* documents created in Composer can easily be integrated into HTML-based emails. Just copy and paste;
* lastly and perhaps most importantly, HTML files can be viewed by any browser on any operating system. Imagine putting a stop to friends and colleagues saying, “I can’t open your file. Can you send it to me using (the latest and expensive) Word?”.

=ZOOM=HTML files are viewable in any browser (even text based ones), giving you a powerful format for communication=

To elaborate on the economical size of HTML files, as with [Scribus][], Composer does not save images within the HTML files it produces. This allows you to create small documents. File size savings can be leveraged by placing images--meant to be viewed in documents--on ftp servers to have documents link to them for viewing. Pathways from HTML documents to images need to remain constant, though. Otherwise, images will not be found to be where expected and consequently not shown.

=IMAGE=Composer.jpg=Figure 1: Composer at work writing this article=

# Reasons why composer is not ordinarily used as a word processor

So why hasn’t Composer been extended into a word processor? I'm not sure. Maybe it’s because Microsoft Word won the most mind share.  Also, [OpenOffice.org][] (OOo) and even [Abiword][] are well established as FLOSS alternatives. There is also [NeoOffice][] (NeoO) for OS X, a Java based porting of OpenOffice.org. In the end, I usually find these slow (NeoO), to be huge file downloads (NeoO and OOo), and buggy (NeoO). Unlike free counterparts, Word on Windows starts quickly, but I recall that the trick to this is that Windows keeps big portions of Word in ram at all times --a wasteful and inefficient use of resources. This is not to say that Composer doesn’t have its own issues, but given the slow start-up times, overall sluggishness, viewing problems (Abiword for OS X), and memory use of the established programs, why not use Composer?

On the other hand, a Composer shortcoming is that it misses layout capability. That is, it’s difficult to see what is going to hard-print beforehand. Another short-coming is that it prints a pathway header, which is undesirable and unsightly. A work around (on OS X) is to print from a PDF obtained from [Shiira][] 2.0 b2, which doesn’t insert the header. If I recall, the print options for SeaMonkey stable but not KompoZer, Nvu, nor suiterunner (Seamonkey unstable) also allow to opt-out this header. The selecting of paper size and WYSIWYG implementation would bring Composer to a respectable basic processor status.  

=TEXTBOX_START=What about LaTeX?=

There is another reason why no one has taken this HTML processor idea up. There already is a markup based writer’s program and its been around for decades, although accompanied with a steep learning curve. It’s called [LaTeX][], and it provides professional quality results. Unfortunately, it’s limited to academia because it has never won avid support among laymen. It’s also a nuisance to install, with numerous and sizeable files coming from various sources with various licenses. For instance, to get a working install, you must have a front-end, but front-ends do not provide the plethora of back-ends needed for a simple run of the mill install. Another problem again is interoperability; common programs, such as internet browsers, are not able to render LaTeX files. On the other hand, I don’t think HTML renders mathematical equations or is entirely WYSIWYG compliant as LaTeX. But then again, most of us don’t need to display equations, nor do we need ultra-high WYSIWYG fidelity.

To shortly recap the development of word and document processors as I recall their development, word processors format words, while document processors --such as LaTeX-- format documents (the latter are therefore “document orientated”). Early on, word processors (and document processors) differentiated themselves from text editors in that they added styling to the ordinary and basic Roman numerals --that is alpha-numericals, essentially the basic Roman alphabet without diacritical marks. Where the two camps diverged was at which point of the writing process there should be adding of "style" (or markup) to the basic text. Document orientated supporters have always criticised the word processor “edit as you go” idea because it interrupts the writers train of thought with secondary concerns of presentation. All the while, these supporters believe the document oriented approach frees the writer to "just write", preoccupying himself with content and not presentation. 

I could be accused by comparing apples and oranges, and this is a correct assessment. But both concepts are not lost on me; an application such as Composer potentially allows both approaches. That is, while Composer easily allows word processing, the stylisation of individual or groups of words, CSS (Cascading Style Sheets) could allow for a document orientated take. That is, CSS could work as templates, thus freeing the writer from formatting, and perhaps implementing the template afterwards (and thus avoid interruptions of thought); the writer, if if need be, could even implement the template at the same time by simply plugging words into it.

As for the typical critique of HTML presentation inconsistency, CSS increases uniformity. Add the cross platform universality of HTML and the fact that HTML files are viewable in any browser (even curses based ones), and you have a powerful communication format. As should be obvious by now, Composer needs development to make it the word/document processor envisioned herein, but the basis--in terms of both html and program features--already exists.

=TEXTBOX_END=

=ZOOM=CSS could allow for a document orientated take ... as templates ... increasing uniformity of presentation=

# Scribus, an XML markup page layout attempt

Moving away from the envisioned HTML editor, there is a free (as in freedom) program that offers the layout elements missing from Composer. It’s a page layout program called [Scribus][]. An OS X port is available ([Scribus/Aqua][]). It’s fairly easy to install and has just a few dependencies. The learning curve is not steep, just different from word processors. Last I checked, the OS X port was a little rough around the edges (it was slow and the key-bindings didn’t always work) but it’s workable (with occasional crashes). The port is sure to stabilise in the future as work progresses and a native Intel port is eventually released. Even so, the problems are OS X specific (as it flies on GNU/Linux). It produces its own XML based .sla file format, without self-contained images (keep image pathways constant). As you might already have deduced, .sla documents are not viewable with most other programs, but Scribus can convert .sla into universal PDF and EPS files with great resolution (but which are undoubtedly larger than HTML files). Setting aside file size issues, I still prefer the HTML approach because HTML files are easier to edit than PDF or EPS files. Lastly, to the best of my knowledge, you can’t render images remotely with .sla as you can with HTML, either.

# Other HTML word processor attempts

There are and have been a few attempts at a HTML word processor. [FLWriter][] and [EZ editor][] fit the bill (the latter also does equations); and [GWP][] (GNOME Word Processor) may have had similar aspirations (hard to tell as their site is really slow and hasn't been updated since 1998!). It seems that out of this lot, only FLWriter is currently developed --and it's in alpha stage.

On the other hand Composer is mature and is the natural candidate onto which, in my opinion, add page layout capability --and create a dual purpose word and document orientated processor. Most of it is already written after all...

**Composer editors**  

* [SeaMonkey][] (contains Composer)  
* [Nvu][]  
* [KompoZer][]  

**Other editors**  

* [EZ editor][]
* [FLWriter][]  
* [GWP][]
* [Scribus/Aqua][]

**LaTeX Front-ends**  

* [TexShop][]
* [Texmaker][]

**Other LaTeX info or implementations**  

* [Lyx][]
* [LaTeX and Mac][]
* [McTeX][]

[Rosalyn Hunter]: http://www.freesoftwaremagazine.com/user/36
[stand-in word processor]: http://www.freesoftwaremagazine.com/node/1618
[Nvu]: http://www.nvu.com/
[KompoZer]: http://www.kompozer.net/
[Scribus]: http://www.scribus.net/
[OpenOffice.org]: http://www.openoffice.org/
[Abiword]: http://www.abisource.com/%7Efjf/
[NeoOffice]: http://www.neooffice.org/neojava/en/index.php
[Shiira]: http://shiira.jp/en.php
[LaTeX]: http://www.latex-project.org/
[Scribus/Aqua]: http://www.scribus.net/index.php?name=Sections&req=viewarticle&artid=3
[FLWriter]: http://www.whoow.org/people/Jean-Marc.Lienher/xd640.html
[EZ editor]: http://www.hps.com/%7Etpg/toolbox/auis/ez-wp/
[GWP]: http://www.hungry.com/old-hungry/products/gwp/
[SeaMonkey]: http://www.mozilla.org/projects/seamonkey/
[Attribution-NonCommercial-ShareAlike 3.0 Unported Creative Commons License]: http://creativecommons.org/licenses/by-nc-sa/3.0/
[TexShop]: http://www.uoregon.edu/%7Ekoch/texshop/texshop.html
[Texmaker]: http://www.xm1math.net/texmaker/download.html
[Lyx]: http://wiki.lyx.org
[LaTeX and Mac]: http://latex.yauh.de/index_en.html
[McTeX]: http://www.physics.brown.edu/physics/userpages/students/Michael_Abbott/stuff05/mctex.htm
