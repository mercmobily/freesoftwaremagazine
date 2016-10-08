---
nid: '3073'
title: 'Book Review: Beginning Ubuntu LTS Server Administration: From Novice to  Professional, Second Edition by <i>Sander van Vugt</i>'
authors: 'Ken Leyba'
published: '2009-04-14 1:56:29'
tags: 'administration,sysadmin'
issue: ''
license: cc-by-nc
section: reviews
listed: 'true'

---
Ubuntu Server Edition, built on Debian GNU/Linux, has established itself as one of the most popular and well documented GNU/Linux server distributions.  The Long Term Support (LTS) version of Ubuntu Server is provided with security updates for five years from the release date.  This long term commitment ensures a stable base for deployment.  Beginning Ubuntu LTS Server Administration From Novice to Professional aims to teach all you need to know to begin administering Ubuntu Server.  The book covers installing, configuring and the systems administration tasks for Ubuntu Server Edition.

=IMAGE=cover.jpg=The book's cover =

From the outset, I began to have my doubts that this would be an ideal reference work for someone new to GNU/Linux system administration.  Confusing sentences like, “An Apache web server at home does have some other requirements – as a corporate database server, for example.”, seem to permeate the book.  The phrase, “the most important”, occurs so often that it became a game to see when it would come up next.

Covering basic installation, the author suggests no less than three different types of filesystems for a general server: ext2, ext3 and XFS.  XFS is a high performance filesystem for handling large files and smooth data transfers, not an ideal choice for a file and print server.  Perhaps a section on which filesystem types are best for specific server roles would be more informative for someone new to GNU/Linux filesystems.

Advancing through the chapters, there are minor technical errors as well as some unusual descriptions of GNU/Linux terms and concepts. For example, the book correctly indicates that most system scripts are executed with the dash shell; more correctly described as a POSIX-compliant implementation of the Bourne shell (/bin/sh).  The author incorrectly states that dash is the default shell for all users.  The Bourne-Again Shell (bash) is the default shell for users, which is correctly reported in later chapters.

=ZOOM=The overview on updating and maintaining packages doesn't clearly explain the relationship of the dpkg package management program and APT...=

The overview on updating and maintaining packages doesn't explain clearly the relationship of the dpkg package management program and APT, the Advanced Package Tool, and how APT relies on and works with dpkg. When explaining how to compile and install software from sources, the author explains how to install the GNU Compiler Collection (gcc), which on its own will not be sufficient. In practice the recommendation is to install the build-essential packages, which include tools and utilities (as well as gcc) needed to compile programs.

There are numerous other examples of concepts, origins and practices that I disagree with. I was disappointed, as I had hoped this would be a book I could refer others to for system administration.  Despite the errors and explanations, the topics covered offer a good overview of Ubuntu server administration. I would use this book as a supplement to other resources and not as a primary source of information.

# The contents

The book is four hundred and twenty four pages long in thirteen chapters. "Setting the System to Your Hand" is an unusual title for a chapter on system customization, tuning and monitoring. Likewise, "Running It Any Way You Like" is a confusing title for an introduction to Bash shell scripting. The remaining chapters deal with basic system services provided by a server. Some chapters cover their topic in sufficient detail, others only touch them briefly.

# Who is this book for?

This book is aimed at novice Ubuntu Server administrators. With the technical errors, unclear explanation of system administration concepts and uncommon practices, it falls short of its aims.  Although there is good information for a system administrator, someone with a knowledge of GNU/Linux concepts will notice the shortcomings. I have university students or colleagues consistently request recommendations for GNU/Linux system administration books but I could not recommend this one to them.

# Relevance to free software

Ubuntu Server is currently a very popular GNU/Linux distribution. The book covers a version of Ubuntu Server with an extended support cycle. Since Ubuntu is Debian GNU/Linux based, a significant amount of information also applies to it.

=ZOOM=While not an ideal book, there is some good information contained inside=

# Pros

While not an ideal book, there is nevertheless some useful information in it. There is overall coverage of system administration, from installation to Internet services. So I would suggest it as a reference work for a somewhat more experienced system administrator.

# Cons

There is very little coverage of backing up a server.  The chapter on virtualization could have been eliminated and more emphasis placed on backups or other administration tools. The shortcomings of the book and my general misgivings on how concepts are presented prevents me from making it one of my recommended reads.  

Book          |                                                                                          |
--------------|------------------------------------------------------------------------------------------|
Title         | Beginning Ubuntu LTS Server Administration: From Novice to Professional, Second Edition  |
Author        | Sander van Vugt                                                                          |
Publisher     | Apress                                                                                   |
ISBN          | 1430210826                                                                               |
Year          | 2008                                                                                     |
Pages         | 424                                                                                      |
CD included   | No                                                                                       |
FS Oriented   | 9                                                                                        |
Overall score | 5.5                                                                                        |
=TABLE_CAPTION=In short=