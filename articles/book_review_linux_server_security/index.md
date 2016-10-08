---
nid: '1186'
title: 'Book review: Linux Server Security <i>by Michael D Bauer</i>'
authors: 'Martin Brown'
published: '2005-09-24 11:01:41'
issue: issue_07
license: cc-by-nc-nd
section: reviews
listed: 'true'

---
While developed and supported with the best of intentions, Linux is still based on a widerange of different applications and systems working together. From the free softwareperspective this is its power; many people working together to produce a top qualityoperating system. 


=IMAGE=0596006705.jpg=The book’s cover =

From a security stand point it can also be a curse. Although with full access to thesource code you know exactly what different components are doing, the disparate natureof the applications can mean that securing all of the applications and services in Linuxis significantly more difficult. For example, securing a web server may involveconfiguring Apache, transport layer security tools and OpenLDAP. Knowing how tocorrectly configure each of these units for security, rather than straightforwardoperation, can be difficult at worst and time consuming at best. 

Michael D Bauer addresses this problem in Linux Server Security (O’Reilly), aconcise, and yet somehow extensive, guide to configuring your Linux server for security.The book covers everything from network security and firewalling through to specificapplications, such as web serving, or email. 


=ZOOM=Knowing how to correctly configure each of these units for security, rather thanstraightforward operation, can be difficult at worst and time consuming at best=


# The contents

Linux Server Security is organized into what I can only describe as aspiral—it starts by examining the outer layers of your Linux installation andmoves further inwards towards protocol and application level security, such as sendmail,OpenLDAP and file sharing. 

We start off with a simple look at the mechanics of security with threat modelling andrisk management. These are vital steps to take if you are going to secure the rest ofyour systems. Without knowing the potential for security problems in your systems, howare you going to secure them? 

On the way through the rest of the book we go through layer upon layer of security,through DMZs and perimeter networks, iptables and firewalls, remote administration(SSH), transport level security (through OpenSSL and Stunnel) and finally onto theprotocol and application techniques such as Email, web servers, databases and filesharing. The book then wraps up with a look at logging and intrusion detectiontechniques. 

Throughout, the book contains full information on the various theoretical and technicaldetails of the steps required. The major difference from some guides is that the book isa practical guide to the steps required to reach the security goals; it is not a bookbased on pure theory. 

It is also very succinct; the book instructs you on how to reach security goals inspecific areas, and is therefore a more practical guide to what needs to be done, ratherthan concentrating on possibilities and theories. 


# Who’s this book for?

I’d be tempted to say that everybody using Linux should read the book, but therealities are that much of the content really applies only to administrators. If you arein this group though, this book should be required reading, regardless of what serversor services you are managing. 

Getting your security right at all levels is tricky and this book covers many differentaspects. You can use the book in two ways; either use it as a step by step guide toconfigure and lock down your server or servers, if that’s what you wanted.You can also use it as a dip-in guide to securing specific elements of your server. 

What I found most useful—as an administrator of Linux—was theability to use individual chapters of the guide to cover the practical details ofexactly what I needed. The theoretical information is useful, and while many of us knowthe principles well, we just need the mental reminders for specific utilities, commandline options and configuration options that enable us to do exactly what we need. 

It’s also worth mentioning that although the book is Linux focused, many ofthe principles and much of the content of the book would be just as valid to anyUnix-based administrator


# Pros

The best aspect of the book is its scope. It covers the whole gamut from simple networksecurity through firewalls down to protocol and application specific systems. I liked,for example, the specific chapters on securing DNS, email, database and web services,along with the more traditional file systems and other systems common in books of thistype. 

The last two chapters also helped to fill in another commonly ignoredarea—monitoring and detecting security issues. Setting up the security isoften relatively simple compared to actually tracking and detecting unwanted activity.These two chapters do an excellent job of wrapping up the content of the book. 


# Cons

The focus on security means that some of the simpler steps are skipped. For example, inthe OpenLDAP chapter there is all the information you need to set the system up forsecurity, and for securing LDAP transactions using Transport Layer Security, but you areexpected to get OpenLDAP up and running by yourself first. This is not a majorcomplaint, this isn’t, afterall, a beginners book, but OpenLDAP is not theeasiest of systems to get working, and as a major component of many securityinstallations it would have been nice to have a bit more detail on the process.


 | |
-|-|
Title | Linux Server Security | 
Author | Michael D Bauer | 
Publisher | O’Reilly | 
ISBN | 0596006705 | 
Year | 2005 | 
Pages | 522 | 
CD included | No | 
Mark | 9 | 

=TABLE_CAPTION=In short=

