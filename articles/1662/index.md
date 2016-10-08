---
nid: '1662'
title: 'Extending the documentation toolkit'
authors: 'Martin Brown'
published: '2006-07-05 13:47:12'
tags: 'documentation,mysql'
license: verbatim_only
section: opinions
listed: 'true'

---
I noticed this piece from Johan Andersson on [Writing NDBAPI programs—connecting to MySQL Cluster](http://johanandersson.blogspot.com/2006/06/writing-ndbapi-programs-connecting-to.html) last week, which shows you how to use the NDBAPI—the programming interface to the MySQL Cluster system. By coincidence, we enabled the [NDBAPI documentation](http://dev.mysql.com/doc/ndbapi/en/index.html) today. It consists of two elements:


* The NDB API is an object-oriented application programming interface for the MySQL Cluster. The API provides ACID-compliant transactions, table and row scans that are similar in many ways to SQL cursors, and event handling. It also features object-oriented error-handling facilities.
* The other API is the MySQL Cluster Management API (MCM API), a programming interface intended to provide administrative services for the cluster, such as starting and stopping Cluster nodes, Cluster logging, backups, and restoration from backups.

Jon Stephens has spent the last three months completely redeveloping the NDBAPI documentation, and he’s been busy and productive (trust me, I’ve been watching the commits!)

Behind the scenes, he’s been using a number of different tools to generate the information that formed the basis of the documentation. For example, the UML diagrams were generated using [Umbrello](http://uml.sourceforge.net/), and much of the core class information and [Doxygen](http://www.stack.nl/~dimitri/doxygen/) to help document the classes and other information.

Both are free software tools, and they fit in with the rest of the free software technology we use to build the documentation. Hopefully you will agree that the results are quite impressive—across NDB and the rest of the manuals—which just goes to show that you don’t need the complexities of proprietary tools like Framemaker, Quark or even lowlier tools like Word to produce great looking documentation.

