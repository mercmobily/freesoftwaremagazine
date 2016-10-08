---
nid: '1686'
title: 'How to contribute to the MySQL Docs'
authors: 'Martin Brown'
published: '2006-07-20 2:42:29'
tags: 'documentation,mysql'
license: verbatim_only
section: hacking
listed: 'true'

---
We had a great question from a reader yesterday: 


>Is there a todo/nice-to-have list anywhere for MySQL        documentation? Or perhaps a list of Devs who require documentation        support? Or is all documentation a function of the core Documentation        team?


<!--break-->


All documentation is handled by a team of five dedicated technical        writers (of which I am one). Five sounds like a lot, but with 7000 pages        of documentation across various versions of the manual (since we have        separate manuals for the 4.1, 5.0 and 5.1 trees, not to mention the        various other tools we also document) it's a lot of work :) 

We have a list of work to be completed in various areas which is        constantly being updated as new features are added to MySQL, the GUI        tools and elsewhere, and are constantly in contact with the devs on ways        to improve and extend the documentation. Individually each member of the        Docs team is responsible for a specific part of the manual, and some        projects are small (like minor changes to tables or layout) and some are        larger (like my recent work to rewrite the Connectors chapter, which has        so far taken a couple of months). 

We also have the bugs system which contains the user driven bugs and        requests for features and improvements, see below for more info. 

For an idea of what goes on in the Docs team and what is involved in        writing documentation at MySQL, you might want to check my [FSM blog](http://www.freesoftwaremagazine.com/blog/6)         (also available through        [Planet MySQL](http://planetmysql.org)) where I regularly post on the latest things        happening in the Docs team and what goes on behind the scenes. 


>Where would one go to 'volunteer' to help with documentation?

We don't have a direct method to support this, in the same way that we        don't have a direct way for people to provide patches into the MySQL        code, only through contributions that are verified for inclusion. For        the Docs this is to ensure that the documentation is correct, valid for        the appropriate version of the software (or indeed all versions of the        software), and is obviously correct in terms of interactions with other        elements. On that last point, sometimes a change in one place in the        documentation has a domino effect on others and it is not a simple case        of changing one section of the documentation, but many. 

We in the Docs team generally have the benefit of more exclusive access        to the Devs which makes parts of this process sometimes easier, but not        always :) 

As a general rule: 

If you have a specific bug or feature request then the place to suggest        it is in the Bugs system at [http://bugs.mysql.com](http://bugs.mysql.com). There are appropriate        categories for Server, connector and other docs areas. This is the best        place to mention anything that particularly bugs (no pun intended) you        and that needs to be addressed. You'll generally get an initial response        within a few days, and most problems are completed within a couple of        weeks. This is also, obviously, a good place to find out whether the        issue you have is already waiting to be addressed. You can include        suggested text or content in the report if you wish, although for the        reasons given above I can't guarantee that we'll use it verbatim. 

If you want provide additional examples, help or tips then there are two        avenues available. One is the comments system on the appropriate manual        page. The other is to use the [MySQL Forge](http://forge.mysql.com) to        provide the information. This is generally the best place for material        that goes beyond the scope of reference material and into the realm of        examples and implementation details 

Of course, you can always download the DocBook documentation that we create through the Subversion repository of that documentation through the [Resources](http://dev.mysql.com/tech-resources/sources.html) page. There's even a handy README in there to tell you what's what - I'll be producing a post on how to use this, the tools required and how to build your own docs in a forthcoming post.

