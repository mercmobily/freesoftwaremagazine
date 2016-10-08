---
nid: '1167'
title: 'Book review: Practical Subversion <i>by Garrett Rooney</i>'
authors: 'Martin Brown'
published: '2005-07-20 11:01:09'
issue: issue_06
license: cc-by-nc-nd
section: reviews
listed: 'true'

---
Version control is—or at least should be—a critical part of thedevelopment process. As Garrett Rooney explains right at the beginning of PracticalSubversion (published by Apress), using version control can help you recover that fileyou accidentally deleted, or put your code base back into the position it was in, whenit worked, before you introduced that latest bug. For those not familiar with the topic,version control allows you to control and track the changes in textdocuments—typically development projects—so that you can monitorversions, create a static set of documents attributed to a global version number, and tolog and synchronize changes to a project across a team. 


=IMAGE=Cover.jpg=The book’s cover =

Garrett is a Subversion expert. As well as his writings on the topic, he’salso spoken at OSCON and contributed code and material to the project. That makes him anideal candidate for writing a book on what is a complicated topic; at least whenperformed correctly. 

Practical Subversion is a good combination of step-by-step instruction on the Subversionsystems, a migration guide for users of other version control systems and an in-depthguide to more advanced techniques when using the Subversion libraries and API. 


=ZOOM=The book is not an introduction to version control techniques per-se; you are going toneed to know the benefits of version control=


# The contents

Practical Subversion is split into two main sections, the usage guide and the programmingguides. The first part of the book is dedicated to using the Subversion system. Thisstarts with a “crash course” on using Subversion for checking inand working with Subversion as your version control system. There’s a lot ofdetail here in a comparatively short chapter, but anybody familiar with the basics ofversion control is not going to be phased by the terminology used here. 

This first section then moves to more detailed investigations of specific topics,including administration, best practices and the integration of Subversion with othertools. Along the way, key chapters are those which offer advice on migrating from otherversion control systems (Perforce, CVS, RCS) and the extensive integration availablewith Apache.

The latter third of the book concentrates on the API—the programming interfaceto the Subversion system that enables you to build custom tools to use with the versioncontrol mechanism. 


# Who’s this book for?

Developers are obviously the key audience for this title, but within this group, it isobviously those developers who are already using a version control system who will mostbenefit from the book. Without existing version control knowledge and experience, muchof the content will be unintelligible to most developers. The book is not anintroduction to version control techniques per-se; you are going to need to know thebenefits of version control.

With the combination of the administration functionality, and integration with grouplevel tools such as Apache, IDEs and the comprehensive API content, I can see the bookappealing to users within an existing team development environment where they arealready using CVS or similar and have their own custom toolset for making the most ofthe Subversion system. 


# Pros

Subversion is rapidly becoming the preferred solution for developers who have becomedisenchanted with RCS and CVS, tools which have for a long time had their own range ofproblems and issues. 

As a guide to using Subversion the book is simple and straightforward and you should beable to pick up the basics quickly and easy. It’s also nice to find acomprehensive guide on some of the more advanced techniques with Subversion, like theintegration with Apache, and development tools such as emacs, Ant and even OS X toolslike Interface Builder.

The API guide will also be useful to those people developing interfaces to Subversion inother environments and systems where developers are willing to develop their own tools. 


# Cons

Although the book is aimed for users of previous version control systems, thereisn’t much in the way of practical advice of migrating from one system toanother—there are tables of comparative tools and commands, but I would haveappreciated a walk through of a typical project in CVS and the same process and sequencein Subversion. 

I also found the enormous section—almost a third of the book—on theAPI to Subversion to be a little excessive. While it’s nice to see thequalities of the extensive API, the amount of content felt out of place and proportionto the rest of the book. I would certainly have preferred to see more simple andstraightforward content on using Subversion itself. 

I also felt that some sections were skipped over when I would have liked moreinformation. For example, hooks in subversion allow you to execute a script when aproject is committed: to email the development group with the changes, or automaticallyrun a build. However, the Hook Scripts section lasts little more than a page, with noreal examples of the scripts themselves, just pointers to those in the distribution. 


 | |
-|-|
Title | Practical Subversion | 
Author | Garrett Rooney | 
Publisher | Apress | 
ISBN | 1590592905 | 
Year | 2005 | 
Pages | 316 | 
CD included | No | 
Mark (out of 10) | 8 | 

=TABLE_CAPTION=In short=

