---
nid: '2520'
title: 'Book review: Learning PHP Data Objects by <i>Dennis Poppel</i>'
authors: 'Mitch Meyran'
published: '2007-12-14 4:05:08'
tags: 'php,programming'
issue: ''
license: verbatim_only
section: reviews
listed: 'true'

---
_Learning PHP Data Objects_ by Dennis Popel (Packt Publishing, 2007) introduces the PHP5 extension PDO. If you've ever worked on a LAMP server, you must know how tedious it is to go through the results of an SQL query, and to manage the connection--even worse, if you happen to change database, your work is pretty much lost: PostgreSQL, MySQL and SQLite don't have the same driver nor functions! Not so with PDO.

Get your classes and objects ready: PDO will make using a database under PHP5 a snap.

<!--break-->

=IMAGE=cover.jpg=The book's cover=

The book is a short introductory manual of approximately 200 pages. Although it's not small print, the non-justified font, "greasy" printing and the absence of line spacing make it slightly uncomfortable to read and sometimes a bit confusing. It's fine to read, but it's also not as good as Eyrolle's or O'Reilly's books.

Most of the code in the book is available through the editor's website.

=ZOOM=It is still quite readable, but not as good as Eyrolle's or O'Reilly's books.=

# The contents

The book is 200 pages, with 10 pages of credits, details and table of content. It has a preamble, 7 chapters and an appendix spanning in total 180 pages, and ends with an index and some advertising for other books from the same publisher. The cover is the only piece of colour in the whole book. Screen captions are black and white, made on Firefox.

As it is a beginner's book, it starts with explaining how data is traditionally handled under PHP; other PHP libraries are presented, some more powerful than PDO; however, PDO is especially interesting due to the fact that it's compiled C++, and therefore faster than script-based PHP libraries. After presenting PDO, it uses small examples depicting how to perform the same operation on PostgreSQL, MySQL and SQLite--and then the equivalent on PDO.

PDO is entirely object oriented, and knowledge of Object-Oriented Programming (OOP) soon becomes a requirement. If you're not familiar with OOP, the book gives you as its annex a quick introduction to PHP5's OOP philosophy and syntax--you may want to start here, otherwise the rest of the book won't make much sense past the initial database connection.

While dealing with databases, establishing a connection is only the first step: you also need to handle errors. PDO can use exceptions to signal an error (which are handled though `try... catch` statements). To explain how to handle errors the book provides first a simple example, and then a glimpse of how it would look on a "real" application. You can also use exception handlers for uncaught exceptions, although this should not be used as the main error handling mechanism: you should secure sensitive parts of your application with try...catch statements, and use exception handler to catch "impossible" errors. Along the way, you also get an explanation of meta-data management through PDO.

Prepared statements are the next big thing. If you've ever dealt with regular expressions, you know that they are much faster when pre-compiled; the same applies to SQL queries. Simply put, prepared statements are functions (turned into object methods) that can alter an SQL query without having to generate it completely on each and every run.

Next the book explains how to handle data blobs (encoded images to be stored in databases, for example) and row sets. This is not rocket science, but it's used often enough that detailed coverage is welcome. The book ends with "advanced" performance and management tricks such as configuration file auto-loading and pre-buffered queries, and an advanced example.

# Who’s this book for?

All those other part-time PHP programmers out there who got started under PHP4 and want to make their web sites more powerful and more flexible database-wide should read this book. Things like prepared statements are as important as MySQL 5's stored procedures; meta-data management is just too nice to pass up, and object-oriented data management makes it just that much less awkward to manage datasets along with the rest of the application's data.

=ZOOM=object-oriented data management makes it just that much less awkward to manage datasets along with the rest of the application's data=

This book may also help advanced PHP programmers change the habits they acquired under PHP4, but a more advanced book would serve them well if they intend to spend a lot of time on PDO. _Learning PHP Data Objects_ is too fast a read and not enough "power-user oriented" to be of much use for that crowd.

# Relevance to free software

This book uses only free software, both for programming and for screen capture; you can use it on a 100% free system without any problems.

# Pros

The time you will save while working on a web site will be make the time spent reading this book well worthwhile. It's also very affordable (less than $40 or £25). 

# Cons

If you're a power PHP user, it won't hold your attention for more than a couple hours. You'd be better off borrowing it, and then get an "advanced" equivalent.

 | |
-|-|
Title | Learning PHP Data Objects | 
Author | Dennis Popel | 
Publisher | Packt Publishing | 
ISBN | 9781847192660 | 
Year | 2007 | 
Pages | 200 | 
CD included | No | 
FS Oriented | 10 | 
Over all score | 8.5 | 

=TABLE_CAPTION=In short=


