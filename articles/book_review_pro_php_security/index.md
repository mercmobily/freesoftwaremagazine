---
nid: '1735'
title: 'Book review: Pro PHP Security by <i>Chris Snyder and Michael Southwell</i>'
authors: 'Alan Berg'
published: '2006-09-28 8:09:29'
tags: 'php,book-review,security'
issue: ''
license: cc-by
section: reviews
listed: 'true'

---
Good security is the basis of any viable website. With the internet being the most public of places, broken systems cost—money, reputations and possibly customer identities are the currency. _Pro PHP Security_, published by [Apress](http://www.apress.com) and written by Chris Snyder and Michael Southwell, is a detailed and authoritive account of the security details that effect a successful deployment of a PHP website. The book ranges from the almost theoretical to the highly practical such as SQL injection attack hardening and validating user input. If you are a newbie programmer or a serious practitioner, you may still find highly relevant comfort and detail in the book. There may be monsters waiting in the dark.


=IMAGE=cover.jpg=The book’s cover=

Security is not a thin line. Securing infrastructure with potentially complex relationships absolutely requires defense in depth. Under Linux, which is the traditional deployment operating system of choice for the majority of PHP web applications, you need to understand the file system, the use of temporary files, `.htaccess` encryption and many of the associated attack vectors such as cross site scripting. Any book that wishes to discuss PHP Security needs to be dense enough and broad enough. Luckily, Pro PHP Security has such attributes. This book was fun to read and, despite the fact that in a previous incarnation I was a security officer as well as developer, I learnt more than a few new details.


=ZOOM=Securing infrastructure with potentially complex relationships absolutely requires defense in depth=


# The contents

Chris Snyder and Michael Southwell have divided their 500 or so page book into four parts and twenty-four accurate and to-the-point chapters. Part 1 is the shortest containing only information on why we need to secure programs in the first place. Part 2 explains how to maintain a secure environment and discusses operating system and transport issues.

The most fun section is part 3 Practicing Secure PHP Programming. Different attack vectors are mentioned, one major theme per chapter. The attacks include SQL injection, Remote Execution and, my favorite, Session hijacking. With so many potential crackers out there with so many freely downloadable kits, if you are a newbie PHP programmer, here is where you may save your site(s), read on.

Part 4 Practicing Secure Operations ends with mentioning peer reviewing of code. From personal experience, I strongly thumbs up the advice given.

Looking back at the whole book, I am glad to see apparently mundane advice included such as setting your database permissions aggressively and backing up your databases. This may seem obvious, but it costs energy to follow and thus on many occasions is avoided. Any newbie reading this review please follow the advice and don’t be lazy or you may pay more later. I have seen this short-term thinking a number of times before.


# Who’s this book for?

This book is especially useful for the newbie programmer that is starting out with PHP for the first time or old reactionaries that have not had any hard security training.


# Relevance to free software

Linux has a rock solid reputation for stable and secure running. Many Linux deployments are solely for running PHP web applications. PHP has as its rival JSP and ASP. If enough PHP sites are hacked, both PHP and Linux will be tarred with a negative brush and JSP or worst still ASP will profit. Therefore, it is vital for core free software projects that programmers understand where the main security surfaces lie.

One of the delightful properties of the PHP programming language is how quickly you can become productive. One could imagine active websites being built from day one and from day one being insecure. Pro PHP Security is broad enough and well rounded enough a book to give the day one builders a thorough jumpstart in the security arena. This fact is also true for the older reactionaries that have learnt to program in the trenches but have had no meaningful security related experience.


=ZOOM=It is vital for core free software projects that programmers understand where security surfaces lie=


# Pros

A great book with a lot of detail. This book is excellent for quickly building up a critical mass of relevant security related concepts and practical defensive strategies.


# Cons

Although Pro PHP security mentions general issues, if you are not running PHP I would advise you to look elsewhere for more generic security related books.


 | |
-|-|
Title | Pro PHP Security | 
Author | Chris Snyder, Michael Southwell | 
Publisher | Apress | 
ISBN | 1590595084 | 
Year | 2005 | 
Pages | 528 | 
CD included | No | 
FS Oriented | 9 | 
Over all score | 9 | 

=TABLE_CAPTION=In short=

