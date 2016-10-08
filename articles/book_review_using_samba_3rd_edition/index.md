---
nid: '2154'
title: 'Book review: Using Samba, Third Edition by Gerald Carter, Jay Ts and Robert Eckstein'
authors: 'Mitch Meyran'
published: '2007-05-17 6:30:00'
tags: 'book-review,samba'
issue: ''
license: verbatim_only
section: reviews
listed: 'true'

---
Dedicated to UNIX system managers, the book covers all there is to know about Samba (as of version 3.0.22), how it relates to Microsoft’s Active Directory networking (shares, accounts, printing) and to UNIX’s networking.

Samba itself started in 1991 as a reimplementation of SMB by Andrew Tridgell. The project is under the GNU GPL and now allows any POSIX system out there to behave as a Windows machine in pretty much any role it would play on a network: from Active Directory domain controller to simple client, with all kinds of shares: per user, per group, files, printers...


=IMAGE=cover.jpg=Using Samba, 3rd Ed. O’Reilly=


# The contents

450 pages (cover included), with 12 pages of preamble and 13 of index—no, it won’t fit in a pocket.

The book itself is heavy, with a classic paperback-type cover, and monochromatic—even the hornbill’s cover picture—and follows usual O’Reilly pagination. Another note, it’s big!

It’s an administrator’s handbook as well as a commentary on how things stand on the POSIX side of things and how they should evolve. The writing is done to make you use as much hands-on practice as you can. It assumes you’re running on a GNU/Linux system; however, it should be usable by anybody running a BSD clone or any other UNIX.


=ZOOM=Using Samba, 3rd Ed., contains pretty much everything you need to download, configure, compile, set up and manage a Samba client or server=

Using Samba, 3rd Ed., contains pretty much everything you need to download, configure, compile, set up and manage a Samba client or server.

It starts with a brief history of Samba and of the evolution of CIFS to SMB to Active Directory, and how they relate to equivalent POSIX systems.

Then, it gets you started on downloading and installing Samba, with a choice of getting your distribution’s precompiled packages or compiling your own. The install process from sources described as example is voluntary light, but it gives you some advice to make it into a lasting implementation if you so desire. Some light introduction to config files and log rotation is given.

A small part is dedicated to describing to the hapless UNIX guru what strange beasts those “Windows” machines are. Most versions and revisions of Windows clients are also examined to understand their quirks and default behaviours, and how they impact Samba.

The book then moves on to exploring Samba’s daemons, config files and settings, including user management (and how they relate to UNIX users), normal and special shares, user groups and privileges, then filesystems, name resolution and network browsing in much finer detail.

Once those are covered, heavy practical stuff arrives: Printer sharing, configuring a Samba-based Primary Domain Controller, using Winbind...

More details are then given on specific Samba implementations: the Linux smbfs and cifs modules, FreeBSD’s smbfs, Mac OS X’s client, and then the all-around useful _smbclient_ command gets a part. The Windows-based _net_ command usage comes then.

Problems? An in-depth description of Samba log files is provided, as well as a Fault Tree and some Troubleshooting.

Appendices cover Samba daemons and commands, how to download Samba through Subversion, and compile-time options.


# Who’s this book for?

Anybody who needs to use Samba would find this book very useful. If you need to create a simple share, provide backup systems on a Windows-dominated domain, or merge UNIX and Windows networks together, then this is the book for you. The book would also be useful for those who need to create a UNIX-based network with an Active Directory-shaped structure.

The book can be used as a self-teaching manual and as a technical reference in a lesser measure (it’s too big to be hauled around much, and isn’t THAT resilient).

However, you’ll do well familiarising yourself with TCP/IP basics, and with the command-line. A text editor will also come in handy. Please note that no distribution-specific configurations are taken into account, so don’t use this book to experiment on a running or production system, you’re likely to screw up somewhere. While the solution is somewhere in the book, Samba is not an easy beast to play with!


# Relevance to free software

Well, since the book describes the inner workings of a GPLed major product, of very high profile, and is aimed at replacing a proprietary set of features in networking, I’d say it is very pro-FOSS. Although, not overtly so. I would say it is very pro-standards and uses FOSS when most relevant (that is, pretty much all the time).

Use of Windows machines is minimized: most are used as clients and to illustrate how transparently a Samba server behaves from a Windows user’s point of view. The Mac OS X part is extremely bare.


# Pros


=ZOOM=This book, an up-to-date GNU/Linux (or BSD) system and some free time would allow you to duplicate the functionalities of a much pricier proprietary product, without user licences limitations and with recognised durability=


* This book, an up-to-date GNU/Linux (or BSD) system and some free time would allow you to duplicate the functionalities of a much pricier proprietary product, without user licences limitations and with recognised durability.
* It is also the best way to put your GNU/Linux machine in network with other (kinds of) computers transparently.
* Methodology is good enough for most readers. Subject is covered in a very thorough manner, with useful screen captures at key points.


# Cons


* The book suffers from some typos, strange text inserts, and some unnecessary repetitions. These make reading the book difficult sometimes, and may leave the reader a bit puzzled.
* The progressive methodology is not compartmented enough to allow experienced users to jump through the book rapidly when looking for specific information—use man instead. The book’s exterior markings are bare (only the index stands out). I would have appreciated clearer external marking of parts.


 | |
-|-|
Title | Using Samba—3rd Edition | 
Authors | Gerald Carter, Jay Ts & Robert Eckstein | 
Publisher | O’Reilly | 
ISBN | 0596007698 | 
Year | 2007 | 
Pages | 450 | 
CD included | No | 
FS Oriented | 9 | 
Over all score | 8 | 

=TABLE_CAPTION=In short=

