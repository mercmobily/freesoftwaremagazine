---
nid: '2824'
title: 'Book Review: Building a Server with FreeBSD 7 by <i>Bryan J. Hong</i>'
authors: 'Ken Leyba'
published: '2008-07-07 0:22:43'
tags: freebsd
issue: ''
license: cc-by-nd
section: reviews
listed: 'true'

---
My first exposure to Unix was ULTRIX from the Digital Equipment Corporation, a former employer. ULTRIX was Digital's version of the Berkeley Software Distribution (BSD, Unix) that ran on VAX computers. FreeBSD, also descended from BSD, is a robust operating system for x86 and other architectures.  What Bryan J. Hong attempts to do in _Building a Server with FreeBSD 7_ is to create a guide to installing FreeBSD, its applications and services--in short order and without fuss. Hong does this successfully and in great detail.

<!--break-->

The sub-title of the book, _A Modular Approach_, is an apt description of the layout of the book. Hong has documented everything from the first boot of the FreeBSD CDROM to the final configuration of additional software. It is an ideal guide in getting a FreeBSD-based server up and running without having to research installation, package managers or dependencies issues. My approach to testing the contents was to download the latest image of FreeBSD 7 and dive in. Starting with the first section I performed an install of the base operating system. Each well-documented step created a bootable base system ready for customization.  

=IMAGE=cover.jpg= The book's cover=

The first step was to use FreeBSD's ports collection to install the software in a simple-to-manage way. The next step was to install the MediaWiki server, an open-source wiki implementation, using (again) the ports collection. After a short introduction to MediaWiki, the pre-requisites (Apache, MySQL and PHP) were shown. After going through each pre-requisite, installation and configuration, a working MediaWiki server was up and running. As an additional test, I decided to install the Drupal content management system alongside the wiki server. Using the same approach, and with no conflicts, Drupal was up and running in parallel.

=ZOOM=The sub-title of the book, A Modular Approach, aptly describes the layout=

#The contents

Weighing in at 288 pages, _Building a Server with FreeBSD 7_ is broken down into two sections. The minimalist Part One, "The Base System", describes the steps in getting the FreeBSD base operating system installed and configured. The base system includes networking and Secure Shell (SSH) configuration. The ports collection configuration is also covered in this section.

Part Two, "Third-Party Applications", makes up the bulk of the book. Each chapter details the installation and configuration of server applications and their dependencies. The structure of the chapters is unique. Each chapter begins with a short summary of the application followed by URL references for more information and the applications' dependencies. Depending on the application, the chapter continues with preparation, installation and configuration, amongst other sections. References to application-specific files (log and configuration), and any additional notes needed for the application are included.

The preface of the book details all of the sections chapters contain, along with an excellent diagram on setting up a web and mail servers. The appendices detail, for those unfamiliar with Unix-like systems, the basics of commands, system backup, user management and protocols used by FreeBSD.

It's difficult to find fault with _Building a Server with FreeBSD 7_, though there are downsides. Other operating-system books are also version specific. With this book, being very specific and detailed, one slight change in FreeBSD 7, while not making the book unusable, will outdate it sooner than others. In the same vein, if a referenced link is changed, the readers will need to search for an alternative resource. Some of the referenced application links are version specific and several subdirectories are deep, leading them to become outdated sooner. A lot of the "how" is covered but sometimes not enough of the "why". For those unfamiliar with FreeBSD or GNU/Linux configurations, it is easy to get lost or miss important details on security and updates and these  are only lightly touched on.

In spite of the criticisms, this will turn out to be a well-thumbed reference work for anyone deploying FreeBSD servers. Admittedly, in the past, I've attempted to install FreeBSD with limited success,  but this book made the steps in configuring a running system clear and concise. Other cookbook-type books for GNU/Linux exist, but none are as detailed and well laid out as this one.  

# Who's this book for?

This book is for system administrators familiar with Unix or GNU/Linux in general, but not with FreeBSD in particular. I would not recommend this book for someone with little or no system administration experience. It is a fine reference work for the system administrator that wants to get a FreeBSD server up and running without having to search through other books or the internet for help. It is a dedicated one-stop reference for installing FreeBSD servers -but not for maintaining them.

# Relevance to free software

GNU/Linux isn't the only free and open operating system. While it is maybe not as visible as GNU/Linux, FreeBSD is nevertheless a mature, stable, well supported and well documented operating system.  FreeBSD and its BSD cousins are suitable, and often, superior alternatives to many GNU/Linux distributions.

=ZOOM=GNU/Linux isn't the only free and open operating system available=

# Pros

* Excellent self-contained reference work
* Well laid out chapters
* Pointers to additional on-line resources
* Detailed howtos 

# Cons

* Very version specific
* Big on "how", small on "why"
* Not for inexperienced system administrators
* Short on security and updates

Book          | |
--------------|--------
Title         | Building a Server with FreeBSD 7 |
Author        | Bryan J. Hong |
Publisher     | No Starch Press |
ISBN          | 9781593271459 |
Year          | 2008 |
Pages         | 288 |
CD included   | No |
FS Oriented   | 10 |
Overall score | 10 |

=TABLE_CAPTION=In short=

