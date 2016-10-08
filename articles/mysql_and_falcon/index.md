---
nid: '1984'
title: 'MySQL and Falcon'
authors: 'Martin Brown'
published: '2007-01-04 6:16:27'
tags: 'mysql,falcon,storage-engine'
license: verbatim_only
section: hacking
listed: 'true'

---
One of the unique elements of MySQL is the ability to use a different storage engine to store your data. You can even mix and match storage engines within the same database. 

For example, imagine you have a web store application. For transactions purposes you'd probably use [InnoDB](http://dev.mysql.com/doc/refman/5.1/en/innodb.html), but for high speed recovery you might resort to [MyISAM](http://dev.mysql.com/doc/refman/5.1/en/myisam-storage-engine.html), while storing log data that you don't ever want to edit in [Archive](http://dev.mysql.com/doc/refman/5.1/en/archive-storage-engine.html) tables. 

All of these engines are provided with the MySQL server as standard, but there are also third party engines coming on stream, such as [PBXT](http://forge.mysql.com/projects/view.php?id=43) or [SolidDB](http://forge.mysql.com/projects/view.php?id=139). You can find the list I've included into the MySQL documentation [Other Storage Engines](http://dev.mysql.com/doc/refman/5.1/en/storage-engines-other.html). 

This week, the [Falcon](http://dev.mysql.com/doc/refman/5.1/en/se-falcon.html) documentation went live and started to get publicity after the release of Falcon. Falcon is a new storage engine that we are developing in house using the expertise of Jim Starkey. Falcon is designed with computing environments in mind, including high memory and multi-core CPUs and multi-threaded operating systems. It still provides all the functionality you would expect, including full ACID compliant transactions, but is designed with the kind of high-volume environments that we see regularly today in Web 2.0 applications. 

Falcon, unfortunately, isn't available yet in the MySQL tree, but is available as a separate, forked, download of the main MySQL 5.1 tree (see [mysq.bkbits.com](http://mysql.bkbits.com/). I've been privileged enough to be able to try it already, and to have a lot of information on how the engine works internally to see where the performance and functionality comes from. I've tried to include as much of that information as possible in the Falcon docs we released this week, and I'm working hard to keep that updated as more information becomes available. 

Perhaps the most interesting feature of Falcon is that for all the functionality it provides, there's actually very little configuration required. Falcon takes care of all the optimization for you, which means your considerations are based around the tables and indexes you create, rather than worrying about specific index, buffer and cache considerations. 

