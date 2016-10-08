---
nid: '2252'
title: 'Book review: The Definitive Guide to SQLite by <i>Michael Owens</i>'
authors: 'Raymond Burke'
published: '2007-06-28 8:00:00'
tags: 'book-review,database,sqlite'
issue: ''
license: cc-by-nc-nd
section: reviews
listed: 'true'

---
With so many database engine choices, it’s not easy to choose one. For those that choose SQLite, Michael Owens makes it easy to configure and operate. As the original creator of PySQLite, he knows a thing or two about this free and powerful database engine.


=IMAGE=cover.jpg=The book’s cover =

The title of _The Definitive Guide to SQLite_ may lead you to believe it’s just a reference to D. Richard Hipp’s insanely popular database. But Michael Owens does a great job of showing you it’s more than just another bit of free software. His first chapter is a good introduction into the world of SQLite. As he explains, SQLite is versatile enough for developers and administrators, as well as those who are fairly new to databases and SQL. He jumps right in, discussing some of the technical points of its architecture. Since databases vary in abilities, Owens isn’t afraid to tell you where SQLite isn’t the best choice. For instance, he explains that you cannot enforce foreign key constraints. 


=ZOOM=Michael Owens does a great job of showing you SQLite is more than just another bit of free software.=


# The contents

Since SQLite is in fact free software, Owens starts you off by telling you how to get the source code and binaries for the various packages available. Since SQLite is not just for POSIX systems, there are instructions for Windows (both command-line program and the DLL are available). Once you have everything installed, you’re walked through a quick tutorial of how to use SQLite in your shell. You’re shown how to create and open databases and tables, how to get information on your databases, and more. In case you’re not a huge fan of the command line, you’re pointed to a few graphical tools.

As with anything in life, you’re going to have to learn some of the boring parts of databases. Owens spends a chapter on the relational model. He explains all the necessary evils of how and why databases work, including constraints, keys, and normalization. It’s not his fault; every administrator has to learn all that. But he makes it easier to follow along.

Once you’re done with that fun, you’re introduced to SQL itself. The SQL tutorial is worth the price of the book. You can learn SQL anywhere, but in his words, you need to learn it well. Geeks like me will enjoy this section. You delve deep into databases, learning as much as he could fit without writing an entire book on SQL alone. And if you’re a Seinfeld fan, you’re going to love this book. Most of the data in his examples comes from that television show. (The necessary data is available from the book’s companion site.)

A database is no good without anything to use it for. You can learn SQL, but you wouldn’t be buying this unless you had a specific purpose. The language of choice for this text is C, and Owens walks you through the core C API and its extension. There are two chapters for the C API, and then you read about how to use SQLite with Perl, Python, Ruby, Java, Tcl (via the extension created by SQLite’s creator), and PHP. If you’re using something not listed, Owens points you to a useful wiki that will guide you to an interface.


# Who’s this book for?

Anyone interested in learning about SQLite should definitely buy this. It’s been updated to cover the newest version 3 changes. Although the book is geared for beginner to intermediate users, even longtime experts will gain some useful information. Some of the very technical data is interesting for die hard database geeks. If all you’re looking for is an SQL reference, this is still a great book. It’s not just a SQLite-specific guide; it’s good for learning SQL in general.


# Who’s this book not for?

Anyone who’s not willing to invest the time to read about SQL won’t like this book. This isn’t something you learn in a few quick steps. Keeping that in mind, if you’ve installed SQLite, more than likely you have a goal in mind for a database.


# Relevance to free software

_The Definitive Guide to SQLite_ is all about free software. From SQLite itself, to C, Perl, Python, and so on, Owens shows you a strong database without shelling out hundreds for proprietary solutions.


# Pros

I highly recommend this book for anyone interested in databases. If you’re looking for a free software database, buy this book, install SQLite, and spend the time to learn it. You’ll be on your way to working with some of the best free software and one of the best books on databases.


# Cons

While most of the developers will be using C, I felt the book was nearly completely geared for that language. Knowing that the author was the original creator of PySQLite, I thought he’d have a lot more about it. Furthermore, I wish he had included a few more examples for the language extensions. I wish he had created an appendix for SQLite, as he did with SQL and the C API. That’s not a con, just an idle wish.


 | |
-|-|
Title | The Definitive Guide to SQLite | 
Author | Michael Owens | 
Publisher | Apress, Inc. | 
ISBN | 1590596730 | 
Year | 2006 | 
Pages | 440 | 
CD included | No | 
FS Oriented | 10 | 
Over all score | 9 | 

=TABLE_CAPTION=In short=

