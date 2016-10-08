---
nid: '1689'
title: 'Connector/NET Revamp'
authors: 'Martin Brown'
published: '2006-07-21 10:10:40'
tags: 'documentation,mysql,connectors'
license: verbatim_only
section: hacking
listed: 'true'

---
Earlier this week I released the revamped Connector/NET documentation. This is part of the wider Connectors chapter rework, which I'm currently finishing by doing the Connector/J and Connector/MXJ documentation.

Connector/NET provides a full ADO.NET compatible interface to MySQL and is compatible both the Windows .NET and [Mono](http://www.mono-project.com/) installations.

The key part to the update was to incorporate the documentation that had previously only been available within the Connector/NET package. There were two components to this, a suite of examples of each of the major classes and methods, and the automatically generated documentation that is created by the Windows Visual Studio build process.

To get this information into the main documentation, I used the source files (in a sort of XML format) with Perl and the PerlSAX XML parser which then turns all of the information into DocBook XML for inclusion straight into the manual. This is a change to the usual methods, where we usually hand write everything, but it seemed foolish not to use information that was already readily available into the docs, with some intelligence to make the documentation fit in with our existing structure.

The result is impressive - I was able to regenerate IDs, so that information could be cross referenced, and the Connector/NET section now contains the most comprehensive guide to the classes and methods because, simply, it comes straight from the code. 

In addition to the automatic work, I incorporated a new installation guide, reorganized the information to match the layout of Connector/ODBC (MyODBC) and incorporated all the existing bug reports for the docs. 

You can read the new [Connector/NET section](http://dev.mysql.com/doc/refman/5.1/en/connector-net.html) online.

