---
nid: '2786'
title: 'Linux Thin Client Networks Design and Deployment <i>by David Richards</i>'
authors: 'Richard Rothwell'
published: '2008-04-16 6:10:09'
tags: 'linux,thin-clients'
issue: ''
license: cc-by-sa
section: reviews
listed: 'true'

---
Thin client solutions bring together the display features of a personal computer and the low support requirements of dumb terminals. The client machine handles the user interface, while the servers provide the processing power for the applications. Thin clients offer considerable savings in staffing and capital costs. GNU/Linux lends itself to thin clients for reasons that are explored in this book. The book's author, David Richards, clearly has experience of explaining and implementing thin client solutions. _Linux Thin Client Networks - Design and Deployment_, published by [Packt](http://www.packtpub.com), is a short book but contains sound advice on advocating, planning, installing and maintaining systems.  Richards' book would be a worthwhile investment for any system administrator planning to recommend the adoption of GNU/Linux thin client systems.

=IMAGE=cover.jpg=The book's cover =

It is not a heavily technical book, focusing instead on an overview of the technology and deployment.  The content is most appropriate to small to medium sized enterprises with a dedicated IT support team.  This is probably the only book available that covers Linux thin clients in any depth.  

The print is very legible, with plenty of white-space. The print is slightly glossy and the index is good.

=ZOOM=This is probably the only book available that covers Linux thin clients in any depth.=

# The contents

The book is about 180 pages, with 12 pages of credits, details and table of content. It has a preface, 9 chapters, two appendices, and an index totaling 160 pages, and ends with some advertising for other books from the same publisher. The cover is the only piece of colour in the whole book: screenshots are in black and white.

Starting from the technical advantages of GNU/Linux systems for these tasks, Richards moves to review thin client hardware.  The book moves on to present potential cost savings, with enough detail to allow the reader to design a presentation for their situation. Remaining with organisational issues, Richards presents a chapter that condenses his obvious experience in advocating a change to thin clients.  

The design and implementation section of the book starts with solutions for up to 50, 50 to 100, and over 100 concurrent users.  The logic of implementing separate application servers with each increment in size is well presented, along with some advice for providing improved reliability.  There is considerable detail on the configuration of XDMCP for login, and a some detail on other implementation issues.

The choice of software for a GNU/Linux thin client solution is presented in its own chapter, with some possibly (maybe superfluous) screenshots of applications such as Firefox, Evolution and OpenOffice.  The chapter also discusses connection to legacy applications on Unix servers, mainframes and and Microsoft Windows.  There are places in this section where additional technical details could usefully have been provided.  The reader will be left to do research over authentication and passing of environment variables to application servers.

=ZOOM=Any system administrator considering the change to Linux thin client systems will find this book useful.=

In some cases, deploying thin clients is simply a matter of taking them out of the box and plugging them in.  In other cases, the operating system on the clients will need to be replaced.  The installation of thin clients includes coverage of the USB devices and running sound.  Again additional research will be required to find solutions to some of the issues that are identified.

The last chapter explores providing support with GNU/Linux thin client systems. This includes methods for providing remote support to users; advice on logging issues and the construction of FAQs; and options for purchasing external support contracts.  A brief recommendation is made to get involved with the "Open Source Community".

The book concludes with two brief appendices.  The first contain a list of links to relevant web sites. The second is a quick guide to installing OpenSuse.

# Who's this book for?

Any system administrator considering the change to GNU/Linux thin client systems will find this book useful. Those consulting or advocating the use of free software solutions to a range of customers will also find material to this book to add to their tool chest.

Further resources will be required to complete any installations, though at the moment this appears to be the best book available on the subject.

# Relevance to free software

This book focuses on the use of free software, presenting solutions for the majority of an organisations requirements.  It does, however, acknowledge the presence of Microsoft applications and discusses the use of RDP to connect to Microsoft servers.

# Pros

* It is the best--and maybe only--book on the topic.
* It covers the key management and technical issues.
* Is is affordable (less than $40 or £25)

# Cons

* It has gaps on certain technical aspects.
* It fails to cover the ultra-low cost [LTSP](http://www.ltsp.org) option.

Book          | |
--------------|--------|
Title         | Linux Thin Client Networks - Design and Deployment |
Author        | David Richards |
Publisher     | Packt Publishing |
ISBN          | 1847192041 |
Year          | 2007 |
Pages         | 176 |
CD included   | No |
FS Oriented   | 9 |
Overall score | 8.5 |

=TABLE_CAPTION=In short=

