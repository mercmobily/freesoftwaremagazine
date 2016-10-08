---
nid: '1567'
title: 'Book review: Nagios: System and Network Monitoring <i>by Wolfgang Barth</i>'
authors: 'Jeremy Turner'
published: '2006-07-01 16:55:19'
issue: ''
license: cc-by-nc
section: reviews
listed: 'true'

---
There was a commercial on US television a while back that showed a man in an office building, and the man sticks his head into a coworker’s office, and says, “The network’s down, want to go grab a bagel?” The following scenes show each of those coworkers asking other coworkers to step out for a bagel. The final scene of the commercial shows the entire office, several hundred people, all crossing the street down below to grab a bagel, since they couldn’t do their jobs without a computer network. While Nagios can’t prevent network or application outages, it can actively monitor conditions and alert the appropriate people to ensure the network or application functionality can be restored quickly. [Nagios: System and Network Monitoring](http://nostarch.com/nagios.htm) by Wolfgang Barth is an excellent book which addresses installation, basic configuration, and provides an in-depth look into how to configure service checking for multiple platforms for Nagios 2.0.


<!--break-->



=IMAGE=cover.jpg=Nagios: System and Network Monitoring by Wolfgang Barth=

The book is well written from front to back. Configuring Nagios can take a lot of attention, and this book takes the time needed to discuss the configuration of hosts, services, dependencies, alert notifications, and much more. The book includes many screen shots of the Nagios web interface, since most of the post-installation activity takes place on the web interface. Also featured are charts and figures explaining exactly how Nagios kicks off host and service checks.


=ZOOM=_Nagios_ is an excellent book which addresses installation, basic configuration, and provides an in-depth look into how to configure service checking for multiple platforms=


# The contents

The book is split into four main sections, covering 464 pages. The first main section covers installing and configuring Nagios to run. The book takes the approach of first getting the program to run before adding hosts or services. Also given is a good explanation of compiling from source code, configuring Apache for the web interface, and how to get Nagios up and running.

The second main section addresses how Nagios works, with a nice discussion on service and host checks, alerts, and how they all fit together. Two chapters are dedicated to network service plug-ins (FTP, HTTP, POP, IMAP, DNS, DHCP, UPS, and databases), and local resource plug-ins (free space, system load, processes, log files, and more). Also included in this section of the book are: the Nagios Remote Plugin Executor (NRPE), which can run checks locally on remote hosts for UNIX or GNU/Linux clients; SNMP-based plug-ins; the notification system; passive tests; the Nagios Service Check Acceptor (NSCA); monitoring with multiple Nagios servers; the web interface; and, finally, graphical output from Nagios statistics. This section of the book covers 282 pages, well over half of the book.

The third section of _Nagios: System and Network Monitoring_ discusses monitoring Microsoft Windows, as well as SAP systems.

The book concludes with four appendices, flapping states (a host or service that changes state very frequently), event handling, writing your own plug-in (Oracle is used as an example), and finally an overview of configuration parameters.


# Who’s this book for?

System and network administrators would find this book the most useful. Anyone who is responsible for maintaining a high level of network and application services needs to pick up this book. If you’re a current admin who uses Nagios in your environment, you could probably learn a trick or two.


# Relevance to free software

The book promotes software that is released with a free software license and operates on a free operating system. Although, the book does discuss plug-ins that run on or interact with non-free software, including Microsoft Windows, Oracle, and other Unixes.


# Pros

You should buy this book if you are an administrator who needs to monitor your network, applications, and services. Current administrators who use Nagios might find this book as a handy reference, especially the appendix material. The book adds far more detail and background information than any man page could.


# Cons

You should not buy this book if you are not planning on monitoring your network, applications, or services.


 | |
-|-|
Title | _Nagios: System and Network Monitoring_ | 
Author | Wolfgang Barth | 
Publisher | No Starch Press | 
ISBN | 1593270704 | 
Year | 2006 | 
Pages | 464 | 
CD included | No | 
FS Oriented | 9 | 
Over all score | 9 | 

=TABLE_CAPTION=In short=

