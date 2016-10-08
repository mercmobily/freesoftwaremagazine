---
nid: '1867'
title: 'Book review: Self service Linux by <i>Mark Wilding, Dan Behman</i>'
authors: 'Alan Berg'
published: '2007-01-12 10:00:00'
tags: 'linux,book-review,administration'
issue: ''
license: cc-by
section: reviews
listed: 'true'

---
Linux is by reputation and in reality a highly stable platform. Being free software means that you can see its inner actions without the lead coat of proprietary license shielding. Problem determination with transparent source, if mastered within the Linux environment, enables the problem solver to focus efficiently on the issues at hand. New administrators tend to take longer to solve the more horribly tricky and very infrequent issues than those that have burnt their wizened fingers on the obtuse over the course of long years. _Self-Service Linux: Mastering the Art of Problem Determination_ by Mark Wilding and Dan Behman and published by [Prentice Hall](http://vig.prenhall.com/) may help you avoid some of the pain and burden of such a normal, infrequent, but extended learning.


=IMAGE=cover.jpg=The book’s cover=

My first impression of the book was that the authors have accumulated much detailed experience. Under the unusual situation that the Linux environment is badly misbehaving, then Linux problem determination requires much learning of the sprawling underlying details. Mark Wildings and Dan Behmans writing starts with a deceptively simple chapter on best practices and then hits you full in the face with chapter after chapter of technological Linux environment related skill development.


=ZOOM=Linux problem determination requires much learning of the sprawling underlying details=


# The contents

Published by Prentice Hall and being part of the Bruce Perens’ Open Source Series, this book fulfills my expectations of technical mastery. Not a thin or unnecessarily easy read the book’s 456 pages contain the sort of detail you are happy with when you need to get down to debugging of issues in user land or the Linux kernel itself.

Quickly moving from the conceptual to the highly detailed practical with nine concrete and well-written chapters, I had the feeling that, although the book cost me some concentration effort to read, the knowledge gained made it, in all, a worthy effort.

The book delivers a mountainous but scenic tour of problem determination from best practices and how to conduct an initial investigation through system call tracing, the `/proc` file system, compiling, the stack, debugging, the difference between crashing and hanging and yet more. If you are not acquainted with the in and outs of development proper, then by the end of the book you surely will be.


=ZOOM=The book delivers a mountainous but scenic tour of problem determination=

My favorite chapter and by no coincidence the most straightforward was chapter 3 on the subject of the `/proc` file system. The file system is a window into the Linux kernel and the running processes. Under the bonnet many tools use the `/proc` file system to modify kernel behaviour or to list information. For example, by running more `/proc/modules` you will generate a listing of all the currently running modules.

A close second choice was chapter 5 on the subject of the Stack. I thought the explanations were clear and the small source code examples accurate and thoroughly to the point


# Who’s this book for?

Due to the gritty details contained within the Self-Service Linux content; Linux developers, administrators, and support professionals are the natural audience. If you are a power user who is keen to learn the finer details of debugging then perhaps you should consider the book as well.


# Relevance to free software

Mastering the art of problem determination within a Linux environment is the goal of Self-Service Linux book. Emphasis on the `/proc` file system, Kernel Debugging with KDB, strace, the GNU debugger GDB, the compiler GCC implies that the tools mentioned are 100% free software. Further, the problem solving tactics mentioned within in this book are obviously not proprietary in nature and open to the free software world to use.


# Pros

Mark Wilding and Dan Behman have many years of experience within the software industry. They write consistently without avoiding the inevitably difficult background information, giving you very solid content to place your metaphorical feet on.


=ZOOM=Very solid content to place your metaphorical feet on=


# Cons

The art of problem solving when associated with Kernel crashes or hangs can be anything but simple. Therefore, this detailed book by its very nature is difficult to read casually.


 | |
-|-|
Title | Self-Service Linux®: Mastering the Art of Problem Determination | 
Authors | Mark Wilding, Dan Behman | 
Publisher | Prentice Hall | 
ISBN | 013147751X | 
Year | 2005 | 
Pages | 456 | 
CD included | No | 
FS Oriented | 10 | 
Over all score | 8 | 

=TABLE_CAPTION=In short=

