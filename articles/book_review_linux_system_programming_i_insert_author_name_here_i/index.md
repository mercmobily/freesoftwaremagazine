---
nid: '2912'
title: 'Book review: Linux System Programming by <i>Robert Love</i>'
authors: 'Gianluca Pignalberi'
published: '2008-11-26 7:58:01'
tags: 'linux,operating-systems'
issue: ''
license: cc-by-sa
section: reviews
listed: 'true'

---
Many people make the mistake of thinking of Linux as just another Unix. Though most system calls are indeed identical, some of them aren’t. Knowing the difference is important. The book Linux System Programming provides complete overview of Linux system calls.

=IMAGE=cover.jpg=The book’s cover=

=ZOOM=Linux System Programming provides us with a complete overview of Linux system calls=

# The contents

Linux System Programming is just 368 page long; it covers most (if not all) crucial topics when using Linux system calls.
In chapter 1 the author introduces some essential concepts, such as system programming, APIs and standards. He also introduces the basic concepts of Linux programming. Chapters 2, 3 and 4 focus on specific I/O topics: basic and advanced file I/O, along with a complete chapter for buffered I/O. Chapters 5 and 6 cover process management, while chapters 7 and 8 give full details of file and memory management; chapter 9 explains Linux signals, highlighting how POSIX provided a common standard to every Unix flavor. The last chapter explains “time”, (both the data structures, and the source code). Appendix 1 covers GCC extensions to the C language.

In order to understand this book, you have to know the C programming language.

Every chapters have plenty of code snippets, programming rules, and examples with explanation. The code quality is excellent: you might improve your programming style just by studying the given examples.
The author makes sure to clarify when a system call is Linux-only, or when the Unix version of the call differs from the Linux one.

# Who’s this book for?

Every “real” Linux system programmer will enjoy this useful book: it’s really well structured, and it’s written in a plain language. A “simple” applications programmer will surely find it useful too: I did.

# Relevance to free software

Linux is probably the most famous piece of free software. Though the book is not focused on kernel programming, it will definitely help people become kernel hackers and Linux experts. So the book, as well as the topic, is very relevant to free software.

=ZOOM=Every chapters have plenty of code snippets, programming rules, and examples with explanation=

# Pros

The book is well structured, well written and focused.

# Cons

You really need to know the C programming language to read and understand this book.

Book | |
--------------|--------|
Title | Linux System Programming
Author | Robert Love
Publisher | O’Reilly
ISBN | 9780596009588
Year | 2007
Pages | 368
CD included | No
FS Oriented | 10
Overall score | 9