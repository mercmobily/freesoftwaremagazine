---
nid: '2489'
title: 'Book review: Pro Tomcat 6 by <i>Matthew Moodie</i>'
authors: 'Alan Berg'
published: '2007-12-13 6:30:00'
tags: 'administration,apache,tomcat'
issue: ''
license: cc-by-nc-sa
section: reviews
listed: 'true'

---
The Apache Tomcat server is the most well known and deployed Servlet container for dynamic Java based web applications. _Pro Apache Tomcat 6_ by Matthhew Moodie (edited by Kunal Mittal and published by Apress) explains in exacting, systematic and well covered detail how to manage the latest version of this high quality, popular free software product.

<!--break-->

=IMAGE=cover.jpg=The book’s cover=

My first impression of the book was that the book enacts the required effort of explaining configuration and administration consistently and without thrills, getting immediately right down to the point.

This medium sized tome is, by design, much more an integrated book for the server administrator than a programming support for the web application builder. If you wish to understand the difference between JSP 2.1 or Servlet 2.5 and previous versions supported by older versions of Tomcat, then another more Java-orientated book is required.

=ZOOM=This book has an effective and well targeted range of content covering all the areas one is likely to encounter in a typical enterprise environment=

# The contents

_Pro Apache Tomcat 6_ contains 335 pages of no-nonsense, honest, accurate content. The book is split into fourteen chapters. Details range from installation, configuration, and authentication, securing and connecting with other web servers. Basically, step by step, inch by inch, the book covers the full range of activities a system administrator will, through the rampant course of application deployment, get their hands dirty with. This book has an effective and well targeted range of content covering all the areas one is likely to encounter in a typical enterprise environment.

As a part-time programmer of web applications, I particularly enjoyed chapter 8 ("Understanding class loaders"). A number of issues I have had in the past were associated with class loader order and/or Java security policies. Once past the basic structure of a WAR file, this is the laser guided line that a realistic and deployment-scared programmer or application troubleshooter needs to learn quickly.

Chapter 12 on the highly specific subject of security was also a delight to read; on a number of occasions I have personally been bitten by SSL/TLS server certificate issues and the clear recipe included is one route to avoidance of one’s own latenight stupidities.

An obvious must for admins working at internet service providers or data centers is Chapter 13, implementing shared Tomcat hosting the chapter describes one plausible recipe that if correctly followed creates a basic and effective virtual hosting environment.

# Who’s this book for?

The Apress book is for server administrators that wish to systematically understand the global details of realistically instancing and administration of Tomcat 6.

To a much lesser extent the content is also an enabler for programmers that wish to understand the finer nuances of their deployment landscape.

# Relevance to free software

Tomcat with Apache connected through `mod_jk` or as part of the Jboss application infrastructure is an overwhelmingly positive advert for why anyone would want to buy into free software. This excellent server is stable, scalable, evolving with a dedicated community and better than or competitive with indirectly expensive proprietary products.

Unavoidably, and fairly, Windows is mentioned as well as GNU/Linux for the installation instructions.

Matthew Moodie’s book systematically emphasizes the technologies involved with administration, discussing mainly Tomcat and briefly mentioning other free software products such as Jmeter a stress testing tool, MySQL and certificate manipulation via openSSL libraries and the Java included keytool.

=ZOOM=Tomcat is an overwhelmingly positive advert for why anyone would want to buy into free software=

# Pros

This book is Tomcat administration made clear: if you wish to set up a properly configured instance or set of instances of Tomcat, and understand the best practices for linking code to via XML configuration to databases, this book is for you.

=ZOOM=This book is Tomcat level administration made clear=

# Cons

If you are a Java developer wishing for more on the latest value added from JSP 2.1 or Servlet 2.5, then a book purely focused on administration misses your goals.

 | |
-|-|
Title | Pro Apache Tomcat 6 | 
Author | Matthew Moodie | 
Publisher | APRESS | 
ISBN | 1590597859 | 
Year | 2007 | 
Pages | 325 | 
CD included | No | 
FS Oriented | 9 | 
Over all score | 8 | 

=TABLE_CAPTION=In short=

