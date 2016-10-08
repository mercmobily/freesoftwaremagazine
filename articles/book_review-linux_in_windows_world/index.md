---
nid: '1154'
title: 'Book review: Linux in a Windows World <i>by Roderick Smith</i>'
authors: 'Martin Brown'
published: '2005-07-06 11:00:48'
tags: 'linux,book-review,windows'
issue: issue_05
license: cc-by-nc-nd
section: reviews
listed: 'true'

---
Linux in Windows World aims to solve the problems experienced by many system administrators when it comes to using Linux servers (and to a lesser extent clients) within an existing Windows environment. Overall the book is meaty and a quick flick through shows an amazing amount of information has been crammed between the covers. There are though some immediately obvious omissions, given the books title and description, but I’m hoping this won’t detract from the rest of the content. 


=IMAGE=Cover.jpg=The book’s cover =


# The contents

The book starts off with a look at where Linux fits into a Windows network, covering its use both as a server and desktop platform. Roderick makes some salient points and arguments here, primarily for, rather than against, Linux but he’s not afraid to point out the limitations either. This first section leads on to a more in depth discussion of deploying a Linux system into your network, promoting Linux in a series of target areas – email serving, databases and so on – as well as some strategies for migrating existing Windows desktops to Linux. 


=ZOOM=It’s great to see the often forgotten issue of backups getting a chapter of its own and the extensive information on authentication solutions are invaluable=

The third chapter and the start of the second section starts to look in detail at the various systems and hurdles faced through using Linux within an existing heavily Windows focused environment. This entire section is primarily devoted to Samba and sharing and using shared files and printers.

Section 3 concentrates on centralized authentication, including using LDAP and Kerberos in place of the started Windows and Linux solutions. 

Remote login, including information on SSH, Telnet and VNC make up content of the fourth section. Most useful among the chapters is the one on Remote X Access which provides vital information on X server options for Windows, and information on configuring XDMCP for session management. 

The final section covers the installation and configuration of Linux based servers for well-known technologies such as email, backups and network manage (DNS, DHCP etc). 


# Who’s this book for?

Overall, the tone of the book is geared almost entirely towards administrators deploying Linux as a server solution and migrating your Windows clients to using the Linux server. The “integration” focus of the book concentrates on replacing Windows servers with Linux equivalents, rather than integrating Linux servers and clients into an existing Windows installation. 

All these gaps make the book a “Converting your Windows World to Run on Linux Servers” title, rather than what the book’s title (and cover description) suggests. If you are looking for a book that shows you how to integrate your Linux machines into your Windows network, this book won’t help as much as you might have hoped. 

On the other hand, if you are a system administrator and you are looking for a Windows to Linux server migration title then this book will prove invaluable. There are gaps, and the book requires you to have a reasonable amount of Linux knowledge before you start, but the information provided is excellent and will certainly solve the problems faced by many people moving from the Windows to a Linux platform. 


# Pros

There’s good coverage here of a wide range of topics. The information on installing and configuring Linux equivalents of popular Windows technologies is very nice to see, although I would have preferred some more comparative information between the way Windows and the Linux counterparts work and operate these solutions. 

Some surprising chapters and topics also shine through. It’s great to see the often forgotten issue of backups getting a chapter of its own and the extensive information on authentication solutions are invaluable. 


# Cons

I found the organization slightly confusing. For example, Chapter 3 is about using Samba, but only to configure Linux as a server for sharing files. Chapter 4 then covers sharing your Linux printers to Windows clients. Chapter 6 then covers the use of Linux as a client to Windows for both printer and file shares. Similarly, there is a chapter devoted to Linux Thin Client configurations, but the use of _rdesktop_, which interfaces to the Windows Terminal Services system, has been tacked on to the end of a chapter on using VNC. 

There are also numerous examples of missed opportunities and also occasionally misleading information. Windows Server 2003 for example has a built in Telnet server and incorporates an extensive command line environment and suite of administration tools, but the book fails to acknowledge this. There’s also very little information on integrating application level software, or the client-specific integration between a Linux desktop and Windows server environment. A good example here is the configuration of Linux mail clients to work with an existing Exchange Server, which is quite happy to work with standard IMAP clients. Instead, the book suggests you replace Exchange with a Linux-based alternative, and even includes solutions for configuring this solution. 

Finally, there are quite a few obvious errors and typos – many of which are in the diagrams that accompany the text. 


 | |
-|-|
Title | Linux in a Windows World | 
Author | Roderick W Smith | 
Publisher | O’Reilly | 
ISBN | 0596007582 | 
Year | 2005 | 
Pages | 478 | 
CD included | No | 
Mark | 8 | 

=TABLE_CAPTION=In short=

