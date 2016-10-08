---
nid: '3524'
title: 'Book Review: Invent Your Own Computer Games with Python, 2nd Edition by Al Sweigart'
authors: 'Terry Hancock'
published: '2011-03-05 12:01:35'
tags: 'book-review,python,games,learning'
license: verbatim_only
section: reviews
listed: 'true'

---
<!-- Review: Invent Your Own Computer Games with Python, 2nd Edition -->
<!-- by Al Sweigart -->

The best recommendation I can give for this book is simply this: just a few days after I gave a copy to my 13-year-old son for his birthday, and without any more intervention from me, he showed me his first completed game program. It was a simple numbers guessing game -- the first major exercise from this book. Since then, he's been following along and tinkering with Python. The book has kept him motivated and built up his confidence in his own skills, which is a tricky thing to achieve (something I've tried myself with mixed success).

=IMAGE=cover.jpg=Invent Your Own Computer Games with Python, 2nd Edition=

The book is written with younger readers in mind, although it appears quite readable for adults learning the language as well. All of the examples are games of one kind or another -- starting out with text games and ending with some basic sprite-based graphics games using PyGame. This Second Edition has been updated for [Python 3.1](http://www.python.org/download/releases/3.1.3/).

=ZOOM=This Second Edition has been updated for Python 3=

# The contents

The book is organized into a series of tutorials with increasing skill level required to finish each one. The first is a simple "guess the number" game, not unlike the ones I wrote when learning BASIC in the 1980s. Gradually, the programs become more interesting, covering everything from drawing game boards with ASCII art to simple artificial intelligence for creating a software opponent in games.

In later chapters, the PyGame library is introduced, and this supports a final, sprite-based game example which finishes up the book.

# Who’s this book for?

The book is really for anyone trying to learn to program for the first time. It's also targeted mostly at a younger audience (pre-teen to teenager), partly through the focus on games, and partly through the lightweight structure of the text.

# Relevance to free software

Conveniently, this book deals exclusively with free software Python packages. I was mostly able to install packages to support this book by using Debian GNU/Linux's APT package system and the Debian repository. The only major exception is the version of PyGame (1.9.1) needed for use with Python 3.1 is not yet packaged. This means that it's necessary to either shift back to Python 2 for the graphical chapters, or to install outside the package system, using the upstream packages from the [PyGame website](http://www.pygame.org).

=ZOOM=This book deals exclusively with free software Python packages=


# Pros

It provides a simple introduction both to programming, and to Python. The book and examples are also available online at the [book's website](http://inventwithpython.com) under a Creative Commons Attribution-NonCommercial-ShareAlike license, so you're also supporting free culture business models by buying this book. The examples are both fun and informative.

This book is particularly effective at getting you started, and so if you've tried to learn programming before and failed or gotten stalled, I highly recommend this as the approach for you.

# Cons

There isn't a lot of pedagogical depth in this book. You won't learn a lot of internal theory or "best practices" for organizing serious programming projects. So it's not really the right book to achieve mastery of Python nor of elegant programming style.

The situation with the packaging of PyGame for Python 3 is awkward, which interferes a little with the last few chapters. Of course, this is not really a fault in the book.

In short...     |   ` `
----------------|-------------
Title           |   Invent Your Own Computer Games with Python, 2nd Edition
Author          |   Al Sweigart
Publisher       |   Self-Published
ISBN            |   978-0-9821060-1-3
Year            |   2010
Pages           |   400
CD included     |   No
FS Oriented     |   10/10
Over all score  |   8/10

