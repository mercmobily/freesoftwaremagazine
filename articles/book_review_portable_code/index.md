---
nid: '1286'
title: 'Book review: Write Portable Code <i>by Brian Hook</i>'
authors: 'Gianluca Pignalberi'
published: '2005-12-15 11:09:20'
issue: ''
license: cc-by-nc-nd
section: reviews
listed: 'true'

---
How many times do programmers have to port software written to run on one particular architecture into another (or more than one) architecture? Does it always go smoothly? If you answered “yes”, you might not need this book. But if your answer was “no”, then this book is for you.


=IMAGE=cover.jpg=The book’s cover=

Brian Hook is a professional software developer, and has worked primarily in the gaming and entertainment industry. He collected his experiences in this book in order to advise us on how to write portable software.


=ZOOM=The author takes into account all of the aspects of writing portable code that a programmer might face: editing, porting, scalability, internationalization, processors and networking=


# The contents

Despite its physical dimensions (due to the use of recycled paper), “Write Portable Code” is a concise book: it’s only 250 pages, but it’s crammed with examples. This might sound like an exaggeration, but I think of it as a sort of new Kernighan and Ritchie: Hook was clever enough and so well focused, that he wrote precisely the right amount to cover everything he needed to, without rambling.

Hook takes into account all of the aspects of writing portable code that a programmer might face: editing, porting, scalability, internationalization, processors and networking. And he doesn’t forget to explain how portability can be affected by operating systems, floating point management, filesystems, data formats and dynamic libraries. Since he’s chosen C/C++ as the reference programming languages, Hook has devoted some chapters to the compilers and the preprocessor.

Even though Hook has chosen the C/C++ languages, he still advises using other, higher level (scripting) languages, to improve portability. One chapter summarizes some of them.


# Who’s this book for?

This book is for programmers. Full stop.

If you are just starting out as a programmer you probably won’t find this book immediately useful. All the same, I think that reading this book would give beginners an invaluable _forma mentis_.

Intermediate and professional programmers should read this book, either for personal knowledge, or for professional development.


# Relevance to free software

Write Portable Code demonstrates how to write portable code by studying existing source code. This shows that learning how to write portable code is _reliant on_ rather than _relevant to_ free software, but in doing so the book stresses the importance of having source code available to study.

The book also describes pros and cons of free software (OSs, revision control systems, compilers).

The author also presents his own piece of cross-platform software: POSH, which happens to be free software and is often used throughout the book as an example of how to write portable code.


# Pros

This book is packed with information. While the author chooses a programming language to give practical examples, he doesn’t push the readers to only use that particular language. The book thoroughly covers and describes what a programmer needs to take into account when writing portable code and does it in a well focused and effective style. The given examples are always significant. To put it simply, I like this book (I’d like to translate it into Italian!).


# Cons

As Chapter 16 (Internationalization and Localization) has a section named “Strings and Unicode”, I expected there to be something about Unicode. However, I couldn’t find any information about the code itself in the section, even though the author wrote about locales. The related examples involve languages such as English, French and Spanish; for those examples, it would be sufficient to use the “normal” ISO8859-1 charset. Visit [www.nostarch.com/wpc.htm](http://www.nostarch.com/wpc.htm) for updates, errata, and other information.


 | |
-|-|
Title | Write Portable Code | 
Author | Brian Hook | 
Publisher | No Starch Press | 
ISBN | 1593270569 | 
Year | 2005 | 
Pages | 248 | 
CD included | no | 
FS Oriented | 8 | 
Over all score | 9 | 

=TABLE_CAPTION=In short=

