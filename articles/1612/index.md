---
nid: '1612'
title: 'A day in the life of a MySQL documentation team member'
authors: 'Martin Brown'
published: '2006-06-15 5:30:25'
tags: 'documentation,mysql'
license: verbatim_only
section: hacking
listed: 'true'

---
As I mentioned [here](http://www.freesoftwaremagazine.com/node/1597), I’m a member of the documentation team at MySQL, a job I started back in April. I’ve just completed a major tranche of documentation, and thought it would be interesting to let you guys know exactly what happens in a typical day for a member of the documentation team.

The docs team here at MySQL is made of five people and we each have our own responsibilities across the MySQL manual. I, for example, am responsible for a combination of the “peripheral” technology—that is, the items on the edge of the MySQL database, such as the API (including services that use it directly, such as Perl’s DBD::mysql module), connectors (for communicating with MySQL), and anything to do with the internals (including the internals documentation) and the programming side of the MySQL environment, such as the extension of MySQL, all the Storage Engines, the new pluggable storage engine API and the even newer plug-in system.

My typical day is generally spent working on a single large project; for example, I’ve just spent the last few weeks completely rewriting and organizing the [Connector/ODBC](http://dev.mysql.com/doc/refman/5.0/en/myodbc-connector.html) section of the Connectors chapter. You can read more about that process through [this post](http://coalface.mcslp.com/?p=18) at Coalface. This is part of a larger process of updating the Connectors chapter (I’ve just started work on Connector/NET) and longer term all of the “peripheral components” documentation.

At least once a day, I also check the list of bug fixes assigned to me to document, the list of documentation fixes and process through any other other requests for updates and enhancements. These items fall into the “unexpected” category of work, since their existence is driven entirely by the requests and work of the rest of the MySQL team. As an example, yesterday I incorporated a new chapter into the MySQL Internals documentation on [Prepared Statements and Stored Routines](http://dev.mysql.com/doc/internals/en/prepared-stored.html).

As a worldwide and very well distributed company, communication is key, and that means email (by default) for nearly everything. Some of us will hang about on an internal IRC server all day (I go through phases, depending on how much I want to concentrate). This is usually the best method for a quick question or longer conversation that would be cumbersome by email. For other conferences, we’ll use Skype or traditional phones.

Unsurprisingly, it is almost impossible to work without communicating with the rest of the MySQL team in some form or another, especially here in documentation. Working in isolation is just not a good way to work when your only source of information for the documentation is the team member who wrote the feature you are documenting.

While the above documents a typical day, there are plenty of atypical days too; yesterday, for example, I worked on solving some issues in the Chinese translation of the documentation. Other days, I’ve done nothing but read material about a new feature or product, or spent hours on the phone in conference. It’s these days that help to break up the longer projects and give you a mental respite.

As it happens, we are currently looking for another team member, you can read about the requirements and your main role and responsibilities on the [MySQL job board](http://www.mysql.com/company/jobs/tech-writer.html).

Meanwhile, if anybody has any questions, feel free to ask :)

