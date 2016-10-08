---
nid: '1754'
title: 'Extending documentation formats and facilities using the Docbook base'
authors: 'Martin Brown'
published: '2006-09-09 14:59:13'
tags: 'documentation,docbook,mysql,eclipse'
license: verbatim_only
section: hacking
listed: 'true'

---
Back in July, we made an [Eclipse](http://www.eclipse.org) documentation plug-in of the MySQL manuals available for users to download. 

In truth, the Eclipse documentation format is actually just HTML; you have to combine the HTML with a plug-in manifest that details the documentation, version number etc so that the documentation is loaded and identified as a valid plug-in element when Eclipse is started. 


<!--break-->


The result means that you can now access the MySQL reference manual directly within the Eclipse application, which should make working with the MySQL JDBC driver, and MySQL projects in general, much easier, because you don't have to go switching between the different applications to find what you want. 

This part of my own ongoing desire to make the information that we produce in the documentation team available to as wide an audience, and in the format they want, as possible. 

The existing PDF, HTML (online and downloadable), CHM and now Eclipse formats reflect that, and we're working on more formats. As always, you can download the docs from [MySQL Documentation page](http://dev.mysql.com/doc/). If you have a problem with the Eclipse manual, or want our other manuals in Eclipse format, let us know. 

Another part of that process is work I've been doing for the last month to develop a system that will easily enable us to provide sections of the manual without losing the referential elements. The reference manual, like all good reference material, has a lot of internal links and references. There is hardly a chapter in the manual that does not, in some way, refer to another chapter of the manual. For some sections, the list of references numbers in the hundreds. 

Take a single chapter out of the manual and you lose the references and, through DocBook, the ability to easily link to the section you want. I've resolved that by allowing unknown links in an extracted fragment to be redirected to the only known complete source of the material - the online HTML version of the reference manual. 

Better still, because we now produce a 'map' of each file in the documentation, you can now find a section by it's ID (or title) without having to use grep. As with the rest of the tools in our documentation tree, it is based on free software, in this case Perl. 

We already have some idea of the sort of documents and groupings that we might create using this method, but we'd love to hear from our users if there is a specific group of chapters or functionality that you would like to be available within a single document.

