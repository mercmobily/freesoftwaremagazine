---
nid: '1333'
title: 'IBM: Open source and open standards technical briefing'
authors: 'Edward Macnaghten'
published: '2006-03-20 11:17:27'
issue: ''
license: gfdl
section: hacking
listed: 'true'

---
On the 9th of March, IBM DeveloperWorks held a technical meeting at their Bedfont Lakes office in London. I was sent an invitation and—due to the fact it sounded interesting, was free, and they were supplying lunch—I decided to tag along.


# The day starts

After a 5:00 AM start, and following several hectic train journeys, I arrived at Bedfont Lakes in time to register for the briefing and got a pass badge for my troubles. I was then ushered down the hallway where some coffee and danishes were awaiting us. Once I had suitably refueled, I marched into a lecture room, where other attendees were already seated, and waited in eager anticipation for the events to come.

The briefing was started by Kate Fairbrother from IBM Software Marketing. She gave as a welcome, some health and safety information for the day, and an apology for the main speakers having not arrived yet. However, Kevin Czap and Randy Powell soon arrived, who both currently reside in Texas, USA. They had also just arrived in the UK from Milan, Italy, the previous day. Because of that, they were unfamiliar with the London transport system; and so were a little late and disheveled.

So, having been force fed some coffee, and seeing that Kate had made sure we were welcome, healthy and safe, they dived into action.


=IMAGE=ibmrankev.jpg=Kevin and Randy, the heroes of the day=

The audience seemed to be largely made up of, what I would call, “Outside IBMers”. That is, people who work with IBM technologies, but are not from IBM itself. There were only a few (if any) actual IBM employees present; however, there were a number of IBM VARs, and other third party representatives. The presentation was tuned to introduce concepts of open standards and Open Source to the guests and to inform everyone of IBM’s stance on the issue.

The presentations themselves can be retrieved from the briefing’s [web site](http://www-128.ibm.com/developerworks/offers/techbriefings/details/osds.html). However, I will summarize them here too.


# Open standards and Open Source

The first presentation delivered by the above-mentioned dynamic duo was entitled “Open Standards, Open Source and IBM”. They began by defining what is meant by “open standards”, and emphasising their importance using railway track gauges, amongst other things, as an example. They then went on to describe Open Source as defined by the [OSI](http://www.opensource.org/) and the its merits.

=TEXTBOX_START=Book Competition!=
This week we are giving away a copy of[The Debian System](http://www.freesoftwaremagazine.com/reviews/book_review_debian_system) by Martin F. Krafft.

All you need to do to enter is check out the [latest book competition announcement](http://blog.freesoftwaremagazine.com/users/announcements) on our blogs page.

GOOD LUCK!

_Thanks go to _[No Starch Press](http://www.nostarch.com/)_ for providing this fantastic prize._


=TEXTBOX_END=

<!--pagebreak-->


There was one quote that caught my eye during that presentation, which was: “Standards contribute more to economic growth than patents and licenses”. This is originally a quote from an article entitled "Economic benefits of standardization“, from the Technical University Dresden (TUD) and the Fraunhofer Institute for Systems and Innovations. I find it quite something that IBM, who are one of the largest patent holders in the world, are also advocating this. So much so that I feel it warrants its own paragraph and highlight...


=ZOOM=The IBM briefing advocated that standards contribute more to economic growth than patents and licenses=


# Apache Derby and Geronimo with IBM Cloudscape and WAS

After some questions, and without further ado, the next presentation was given. This was entitled “Open Databases: Apache Derby and IBM Cloudscape”, and dealt with that subject. [Apache Derby](http://db.apache.org/derby/) is an [ACID](http://en.wikipedia.org/wiki/ACID)-compliant [SQL database](http://en.wikipedia.org/wiki/SQL_database) written entirely in Java and maintained by [Apache](http://www.apache.org/). It is primarily an embedded database, which means the data is accessed directly by the client without going through a server process. However, a network layer is supplied and it can also run in the more familiar client-server model in the same way as other SQL databases. [Cloudscape](http://www.ibm.com/developerworks/cloudscape/) is IBM’s snapshot of Apache Derby, which IBM supply in a commercial context and provide appropriate support for. Both Apache Derby and Cloudscape are free software (as in speech as well as cost).

Next, it was break time. We gathered outside the room where we could enjoy another cup of coffee and any of the buns remaining from earlier that morning. Renewed and refreshed, we took our places for the experiences to come.


=IMAGE=ibmcoffee.jpg=The all important session of technical briefings=

The next offering was a presentation with the mammoth title of “Open Application Servers: Apache Geronimo and WebSphere Application Server Community Edition”. [Apache Geronimo](http://geronimo.apache.org/) is an [Application Server](http://en.wikipedia.org/wiki/Application_server) also written in Java. The relationship between it and IBM’s WebSphere Application Server (WAS) Community Edition is similar to that between Apache Derby and IBM Cloudscape. There are, however, other editions of WAS for a more enterprise-oriented solution that are not free. But, the community edition permits development and small implementations with no upfront license costs. Needless to say, IBM will sell you support on WAS community edition if so required.

Our high-flying speakers took great pains to emphasise the use of open standards in both the database (Derby/Cloudscape) and application server (Geronimo/WebSphere) products. They also took the trouble to show this as an example of how IBM were not only embracing open standards and open source, but building a business out of it too. They also explained that, as they have a vested interest in seeing the Apache products being as high quality as possible, they invest heavily in them—they employ developers to contribute top grade code to these projects.


# Application development with Open Source and beyond

There then followed a session entitled “Application Development with Open Source Tools”. This began with what was, in essence, a plug for [Eclipse](http://www.eclipse.org/), and I have to say I was impressed. Eclipse is a Java [Integrated Development Environment](http://en.wikipedia.org/wiki/Integrated_development_environment). It was originally created by IBM, who released it as free/open source software and have also passed development over to the free software community, in the form of the Eclipse Foundation. Its many features are far too numerous to mention here, but, after being shown it, I am in the process of migrating my development environment over to it. I was that impressed.


=ZOOM=I was so impressed with Eclipse that I am migrating my development environment over to it=

The last chapter of the morning was entitled “Beyond Open Source and Open Standards: Next Steps”. This showed that, if open standards are adhered to, free software can be used to develop and implement small solutions, then the enterprise editions can be used in the deployment of the same application in larger and more demanding scenarios. They pointed out that an interface to the small embedded Cloudscape database could be used to access data stored on a large DB2 enterprise database server. We were also shown similar scalable factors concerning this issue that showed how an application can grow as the implementation does with minimal re-work.

An opportunity was taken during the day to inform us of the upcoming DB2 Express Community Edition. This is a free (in cost only, no source code) DB2 database, and, while it doesn’t have the enterprise features included, it has no limitations in regard to number of connections, nor in the size of tables or databases.

The briefing now being officially over we were released to be greeted by a complimentary lunch as we left the room. This consisted of some savory snacks and sandwiches presented to us in a buffet. I have to say I found it delicious and it managed to sustain me for the afternoon. IBM then permitted the two presenters, Randy and Kevin, to enjoy the rest of the day and evening in London, before putting them back on a plane home to Texas. Such is the life of the jet-set.


# Conclusions and an observations

I knew beforehand that IBM was committed to open standards and free software so the main theme of the briefing came to me as no surprise, though encouraging none the less. It was, however, as far as I'm aware, the first time this particular briefing had been given, and I have to say it was a little rough around the edges. But, despite that, it was well worth the effort of attending (the briefing and lunch were free), and it was pleasant to hear IBM reaffirm their community driven strategy.


=ZOOM=The fact that Randy and Kevin used ODF and OpenOffice.org to present the briefing demonstrates their willingness to practice what they preach=

I would like to finish this on an observation I made. Randy and Kevin made a point that the presentations they were giving were kept on their computers in [OpenDocument](http://www.oasis-open.org/committees/tc_home.php?wg_abbrev=office) format, a true and recognised open standard. However, the operating system their laptops ran were MS-Windows, though they did demonstrate some of the applications in a Linux session in VMWare. When I pointed this out they did say they do plan to look at GNU/Linux closer but, amongst other things, their reliance on Lotus Notes causes problems here apparently.

Also, when I came to write this article and downloaded the presentations for reference I discovered that the PDFs of these had a title like “Microsoft PowerPoint - OSDS V1.0 slides 2of6.ppt”. Ho-hum!. Mind you, it is possible that the Web System Administrator converted to MS-PowerPoint and used it to manipulate the presentation prior to publishing. The fact that Randy and Kevin used ODF and [OpenOffice.org](http://www.openoffice.org) to present the briefing demonstrates their willingness to practice what they preach.

