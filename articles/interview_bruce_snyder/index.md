---
nid: '1327'
title: 'A conversation with Bruce Snyder of the Geronimo project'
authors: 'Maria Winslow'
published: '2005-10-31 11:17:18'
issue: ''
license: verbatim_only
section: interviews
listed: 'true'

---
[Geronimo](http://geronimo.apache.org), the open source Java application server sponsored by the Apache Software Foundation, has been picking up steam lately. Hard core developers are experimenting with it as a potential replacement for proprietary application servers like IBM Websphere.

_(Editor’s note: In this article, the term “open source” is used rather than “free software”. In this case, they are intended to be synonymous.)_

I caught up with Bruce Snyder, founder and core developer of the Geronimo project, to ask him more about how the project got started and their plans for the future.

**MW: You were a founding member of the Geronimo project. Tell us how it got started.**

BS: Back in the Summer of 2003, a bunch of the original founders were loosely discussing ideas for building a new open source Java application server. The two other open source Java application servers were (and still are) licensed with the GPL. We felt that one should exist with an Apache License and the more we asked, the more we found out that many others agreed with us, including many companies. We also found that all of the other Java application servers offered their own stack of software. We all were in agreement that this new idea should allow any piece of software to be easily plugged in, allowing anyone to construct their flavor of application server using their software of choice. In addition, Geronimo was the first open source Java application server to be granted the J2EE 1.4 TCK from Sun.


=IMAGE=snyder.jpg=Bruce Snyder of the Geronimo project=

Eventually we were approached by the Apache Software Foundation (ASF) about the interest it had in sponsoring just such a project. Soon after that we put together the proposal for Geronimo to enter the Incubator and the rest, as they say, is history.


=ZOOM=Back in the Summer of 2003, a bunch of the original founders were loosely discussing ideas for building a new open source Java application server=

=TEXTBOX_START=YOU CAN WIN BOOKS!!!=
You can win books in Free Software Magazine's new book give away.

Each week we are giving away a book that has recently appeared in our [reviews page](http://www.freesoftwaremagazine.com/reviews).

Click [here](http://blog.freesoftwaremagazine.com/users/announcements) to find out what you can win and how to enter.


=TEXTBOX_END=
**MW: What’s it like working with the Apache Software Foundation?**

BS: I’ve certainly met many incredibly smart and talented people. The ASF is a very eclectic organization comprised of people from many cultures from all over the world—and this is my favorite part. Not only is the organization constructed this way, but so are the vast majority of the communities whose home is at the ASF. I have a saying I’ve used for years that I think sums it up: “With open source, we come for the code, but we stay for the people”. I firmly believe that it’s the relationships between people within the project communities that is the lifeblood of any successful project as well as the overal organization.


=ZOOM=I have a saying I’ve used for years that I think sums it up: “With open source, we come for the code, but we stay for the people”=

**MW: Why do you think it is important to have an open source Java application server?**

BS: I think it’s pretty important for Geronimo to exist, especially as open source, because all of the alternatives are proprietary stacks. By proprietary I mean that the purpose of each vendor is to convince users to deploy their stack of software whereas with Geronimo, the intent is to certify as many assemblies of custom components as possible and still allow users to choose what components they prefer. And let me be very clear here—J2EE is only one such assembly. Geronimo provides the capability to construct any kind of container necessary. No matter whether it’s as simple as a web container and a messaging container or as complex as an enterprise service bus coupled with an Inversion of Control container and beyond, the architecture in the Geronimo kernel has been built to support this wiring of various containers.


=IMAGE=geronimo-logo.jpg=The Geronimo project is under the Apache umbrella=

**MW: Tell us what’s different about the Geronimo architecture.**

BS: Geronimo provides a very unique architecture in that it supports the assembly of custom components so anyone can build their own application server using whatever components they choose. Through the use of this architecture, every component within Geronimo is customizable and virtually any piece of software can be integrated into Geronimo to make its lifecycle part of the Geronimo kernel. This powerful architecture allows an unparallelled level of customization within the app server.

In addition to the architecture, the Geronimo community is incredibly unique. The Geronimo community is a mix of individuals and organizations whose business is either J2EE or a component thereof. This means that Geronimo has brought together some of the most experienced J2EE minds in the industry and all in the name of open source. We’re beginning to see a much larger interest in the project from businesses, both large and small. Not only are these businesses interested in supporting Geronimo, but they’re also interested in contributing to the project in a long-term sense.

**MW: What are your plans for Geronimo over the next year?**

BS: The next year is difficult to predict—the Geronimo community will make those decisions. However, our next set of goals include improving Geronimo’s usability and focusing on enterprise scalability. There are still many problems to solve including full clusterability, large scale deployment and much more. While we’ve laid the groundwork for many of these items, I’m sure there are many more items that the community will help us identify and address.


=ZOOM=Our next set of goals include improving Geronimo’s usability and focusing on enterprise scalability=

In terms of the community, we need to focus on making it grow even more. This includes individuals and business who are interested in furthering Geronimo and contributing to the effort in some way. There are many different levels of contribution including code, documentation, testing, articles and conference sessions just to name a few.

**MW: In your day job, you’re an Open Source Practice Leader with **[Virtuas](http://virtuas.com)**. Tell us what kind of work you’re doing there.**

BS: At Virtuas, we help clients adopt open source in a manner that suits their business needs. Just about every company is already using open source in some way, no matter whether management knows this or not. So the first step is to perform an assessment of the client’s use of open source. This assessment tells us exactly what they’re using and how they’re using it. Only then can we proceed to discuss why certain tools are needed and which tools may be the best fit for the client.

Once were into this stage of the engagement, we’re able to provide advice and direction on evaluating open source projects to determine how best to meet the business needs—this is critical. We certainly don’t want to see a client select an open source project that doesn’t fit their needs and may not be around in, say, two or four years. Beyond this stage we often provide architectural analysis, mentoring and consulting in an ongoing capacity to help the client best execute the new set of strategies we’ve helped them to develop.

**MW: Thanks Bruce for taking the time to keep us updated on Geronimo, and good luck with the project.**

BS: Thank you. We welcome anyone to join the community and to begin to contribute.

