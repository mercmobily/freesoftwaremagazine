---
nid: '2354'
title: 'Book review: Qmail Quickstarter by <i>Kyle Wheeler</i>'
authors: 'Alan Berg'
published: '2007-07-06 6:27:11'
tags: 'book-review,qmail'
issue: ''
license: cc-by-nc-sa
section: reviews
listed: 'true'

---
Qmail is an old, well-written, reliable security friendly email server that has proudly stood the test of time and corrosive use. Architecturally solid, with its components divided across workflow with numerous configuration files, the beginner system administrator needs a gentle push up the slopes of learning. _Qmail Quickstarter: Install, Set Up, and Run your own Email Server_ by Kyle Wheeler and published by PACKT has been concisely written for the learning task at hand.


=IMAGE=cover.jpg=The book’s cover=

PACKT books, in general, have a very well defined and practical purpose, tailored for specificity. This is also true for Kyle Wheelers accurate tome. Removing the index and table of content leaves you with approximately 130 pages of content. The thinness of the book believe me is a good thing. Everything that you need to know the author explains, and, for the difficult to visualize architectures, there are understandable and clutter free diagrams.


=ZOOM=For the difficult to visualize architectures there are understandable and clutter free diagrams=


# The contents

System administrators often use qmail as a drop in replacement for Sendmail. The software is intelligently broken into modules each configured via text files to fulfill specific tasks such as queuing, cleaning up, speaking SMTP protocol, etc. The author recognizes the segmented nature and divides the book up accordingly. The modular software division allows different parts to run as different users and limits through this approach the extent and value of an outside attack.

Within eight chapters, the book explores all the basics and more. Kyle Wheeler explains much: such as getting email into a queue, storing and retrieving email, and the important commercial ISP subjects of virtualization and filtering of email and advanced features such as SSL and the somewhat boring but necessary subject of logging.

I liked many parts of the book: firstly, the diagrams dividing down the underlying responsibilities in a crisp no nonsense approach as exampled by the queuing diagram on page 39. Secondly, the book is not verbose and does what it has to do with no extra embellishments. For a busy system administrator the book is thus more viable than a 500-page manual. Thirdly, I enjoyed the discussion of the Sender Policy Framework (SPF) and also DomainKeys contained within the pages 93-97. Finally, the mentioning of Silly Qmail Syndrome (page 132) and a patch solution should for some of you short cut a degree of pain and potential embarrassment.


# Who’s this book for?

This book is for qmail System Administrators or for those who wish to become a better one. In fact, the modular approach and text driven configuration is an old trusted methodology architects may also wish to review via reading this book.


# Relevance to free software

The creator of qmail Dan [Bernstein](http://cr.yp.to/djb.html) holds copyright over his software, therefore qmail is not free software within the full definition of free software. That said, qmail has wide market penetration and the source code is free to view and thus a developer can learn from or measure the codes quality. You will need Dan Bernstein’s [approval](http://cr.yp.to/qmail/dist.html) to any modification to the code base. I suspect his actions are purely paternal and possibly related to the highly secure nature and reputation of qmail.


=ZOOM=qmail is not free software within the full definition of free software=


# Pros

If you want to configure qmail this book quickly guides you through the minefield of potential configuration permutations enabling a newbie administrator the opportunity to deploy a viable qmail infrastructure.

Further, an architect wishing to understand a viable and stable divide and conquer approach to building software will learn from well-designed software here.


# Cons

If you looking for a comprehensive manual on all things qmail, then one suspects that this book is a little too thin for the collective bookshelf.

The book itself is excellent and fit for purpose, however qmail does not currently appear to be fully free software


 | |
-|-|
Title | Qmail Quickstarter: Install, Set Up and Run your own Email Server | 
Author | Kyle Wheeler | 
Publisher | PACKT | 
ISBN | 1847191150 | 
Year | 2007 | 
Pages | 152 | 
CD included | No | 
FS Oriented | 6 | 
Over all score | 9 | 

=TABLE_CAPTION=In short=

