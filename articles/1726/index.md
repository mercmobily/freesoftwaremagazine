---
nid: '1726'
title: 'MySQL Connectors chapter rework completed'
authors: 'Martin Brown'
published: '2006-08-19 6:57:36'
tags: 'documentation,mysql'
license: verbatim_only
section: hacking
listed: 'true'

---
Well, it's been completed a few weeks now, but I've finally reworked the Connector/MXJ and Connector/J sections of the MySQL Reference Manual, which in turn means the Connectors chapter has been completed. 

[Connector/J](http://dev.mysql.com/doc/refman/5.1/en/connector-j.html) is the JDBC 3.0 Type 4 driver (i..e. written in Pure Java) and it works by talking directly to the MySQL server over the network protocol. The Connector/J package is very comprehensive, and includes support for standard queries, stored procedures, prepared statements and character sets. There's full support for transactions (including distributed transactions (XA)) too. 

Almost hidden away inside the connector is [com.mysql.jdbc.ReplicationDriver](http://dev.mysql.com/doc/refman/5.1/en/connector-j-reference-replication-connection.html). This isn't a tool for performing replication through JDBC, but a method for connecting to a pool of a MySQL servers that are set up in the replication environment. Read/write connections go to the Master within the replication set-up, while reads will go to one of the replicated slaves.

This provides a form of automatic load balancing, and means that you can spread the load of queries among your MySQL servers automatically performing reads from slaves and writes to the master. 

While in Sorrento at the developer's conference, I was fortunate enough to meet up with Eric Hermann, the developer behind Connector/MXJ. Connector/MXJ is one of those products that first makes you go 'Wow', then makes you want to use it, and finally then makes you curse 'so simple, why didn't I think of that?'!

[Connector/MXJ](http://dev.mysql.com/doc/refman/5.1/en/connector-mxj.html) embeds a MySQL server (mysqld) into a Java package, and automatically extracts, initializes and starts the right mysqld for your platform. This isn't an emulation, or a redevelopment of the MySQL engine in Java, it is a simple wrapper around a standard mysqld binary. The result is a single package that can be deployed to Java servers and environments, along with Connector/J, to provide a Java based applications using a genuine MySQL server, but without the requirement to separately install MySQL. 

For the documentation, I extended the information on Connector/MXJ so that it included details on how to add your own custom mysqld binaries to the Connector/MXJ package, and how to bundle an existing database into the package too. Using a combination of these two techniques you can create a Connector/MXJ jar file that contains all the databases you want, and the binaries you need, to deploy an embedded MySQL server that is ready to run. You could use this either on web servers, or within a more isolated environment, such as a CD-ROM, and all without ever changing your Java code or application. 

Of course, three months of modifications later and I can hardly say that the Connectors chapter is complete. We have numerous examples to expand upon and write, and new versions of Connector/ODBC and Connector/NET are in alpha/beta testing as we speak. 

For the moment though, I've moved on to Storage Engines.

