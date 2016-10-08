---
nid: '1521'
title: 'Book review: User Mode Linux <i>by Jeff Dike</i>'
authors: 'Alan Berg'
published: '2006-05-18 0:00:00'
issue: ''
license: cc-by-nc
section: reviews
listed: 'true'

---
“User Mode Linux” by Jeff Dike discusses a specific form of virtualization. UML is a Linux virtual machine contained within the GNU/Linux operating environment. The technique allows you to run multiple sandboxed virtual instances of Linux from one machine under a master Linux operating system. This is always good for server consolidation, security and development. In this book, a potentially complex subject area has been tamed and discussed with well grounded commonsense and practical examples by the original creator and current maintainer of the software. Virtualization is a hot topic. In the oncoming world of dual processor, quad processor desktop environments and beyond, the subject area will surely evolve into a more generally valuable technique for a much wider audience who wish to fully use the capacity of their systems.


=IMAGE=cover.jpg=A solid basis for those interested in enacting a UML environment=

The author’s knowledge permeates the pages. For those considering applying this particular technology to our specific environments, the book will act as a good and solid starting point. I was particularly encouraged by the author’s problem setting and solving approach to configuration. The man obviously knows his subject and has definitely spent restless nights solving subtle and elusive bugs.


=ZOOM=Virtualization is a hot topic=


# The contents

The book is a mid sized 378 pager, split over thirteen chapters. The first few chapters quickly introduce the bare essentials. By the end of the second chapter you should have gained enough knowledge to understand if the technology is applicable to your infrastructure or not. The following chapters zoom in on specific issues from the file system to networking, security, deployment and compiling. I particularly liked the description of COW files in chapter four. This is a neat technique for enabling multiple virtual machines to share the same file system and thus avoid the unnecessary disk space and memory costs of full multiple instances. Chapter Seven describes in detail how to configure a networked set of virtual instances. Playing about on my Ubuntu/Debian machine at home I found this chapter to be the most reread and necessary section. I definitely saved hours of futile attempts here. Chapter thirteen the last describes the future and hints at fun developments to come. If you don’t need the tool now then perhaps this chapter will motivate you to revisit the product in the years to come.


# Who’s this book for?

This book is for doing people. People that are wondering is UML applicable in our environment? What are the benefits of multiple Linux virtual machines on top of a real GNU/Linux OS? How do we get things done? The author Jeff Dike is obviously the best voice to communicate the knowledge required for reaching practical goals.


=ZOOM=This book is for those of us that wish for a practical understanding of deploying UML within a realistic environment=


# Relevance to free software

UML is pure free software. A patch on the Linux kernel that enhances the kernels functionality in ways not initially considered. Being a clear community effect with industrial support I expect UML will pop up in all kinds of packages in unexpected and diverse ways. With the power of computers doubling every eighteen months (Moore’s law) and the CPU heat problems of desktop machines now tamed by multiple core processors one can expect virtualization to be of wider interest than just for server park deployments. If the free software community wishes to compete against products such as VMware then tools such as UML need to be created, tested and polished.

**Note:** Jeff Dike’s book being part of Bruce Perens’ Open Source series is licensed under the Open Publication License ([www.opencontent.org](http://www.opencontent.org)) which means that electronic versions are made available six months after print. I personally gain more pleasure from the paper versions and find it much easier to absorb knowledge than reading from a screen. So unless it is 3 am and systems are failing I would recommend supporting the author and ordering the book.


# Pros

If you want a readable book to help you deliver a working UML environment or need to make quick deployment decisions I would recommend this book as a good basis to build upon.


# Cons

Jeff Dike’s book is not deeply theoretical. You will not gain a great oversight into general virtualization techniques or a market survey of tools that sit in competition.


 | |
-|-|
User Mode Linux |  | 
Jeff Dike |  | 
Prentice hall—Pearson Education |  | 
ISBN | 0131865056 | 
Year | 2006 | 
Pages | 326 | 
CD included | No | 
FS Oriented | 8 | 
Over all score | 8 | 

=TABLE_CAPTION=Book details=

