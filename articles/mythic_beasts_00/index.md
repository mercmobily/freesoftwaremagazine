---
nid: '1091'
title: 'Case study: Mythic Beasts'
authors: 'Tony Mobily'
published: '2004-11-04 10:59:11'
tags: 'interview,mythic-beasts,chris-lightfoot'
issue: issue_00
license: verbatim_only
section: opinions
listed: 'true'

---
Mythic Beasts is a UK company that provides Unix shells to their users. They offer fantastic service to people who need a shell account on a very fast server, and don’t want to fork out silly amounts of money. Let’s talk to Chris Lightfoot, one of the company’s owners.

**TM: Who is behind “Mythic Beasts”? How did everything start?**

CL: There are six of us involved: Paul (see the photo), Richard, Pete, Tom, James and myself. Back in February 2000, I had the idea of setting up a colocated machine for our own use. I’ve dug out the original mail I sent inviting the others to get involved; it began,


* Plan: to host a computer somewhere, in order to have a decent platform to do web hosting, email, etc.
* Problem: cost.

At that time colocation was a bit more expensive than it is now! The first server itself cost us about £500.

Once we’d set things up for ourselves and our friends, we discovered that there was quite a lot of demand for Linux shell accounts, so (in August 2000) we registered as a UK limited company and Mythic Beasts Ltd. was born.

**TM: Why the name “Mythic Beasts”?**

CL: The name “Mythic Beasts” is a complete accident. Our first server was called “mythic”, because my convention is to name machines after adjectives and I thought the word “mythic” sounded good. That suggested the domain name “beasts”; when we came to set up the company—and remember that this was the tail-end of the dot.com era and lots of companies had _much_ sillier names—we just recycled the name.

**TM: Do you all work in the same office? Or do you normally work from home?**

CL: No, we work all over the place, mostly communicating by email and now IRC.

**TM: Did you have a specific philosophy behind your idea? Did you decide your target market before hand?**

CL: The way the company started was, as I’ve said, a bit of an accident—we spotted demand for something and were in a position to supply it. The reason we originally set up the services for our own use was that we’d all had bad experiences with shared hosting providers before, and wanted something better.


=ZOOM=The way the company started was a bit of an accident—we spotted demand for something and were in a position to supply it=

We don’t have an official company philosophy or a mission statement which we engrave on paperweights (we don’t even have a pointy-haired boss!) but I think the closest thing we can come up with is that we’re all interested in selling services which we wouldn’t be ashamed to use ourselves.


=IMAGE=chris.jpg=Chris Lightfoot=

**TM: What operating system (or systems?) do you run on those servers? How many people actively work on the server for maintenance?**

CL: At the moment everything runs Linux, mostly Debian but with some older (and heavily customised) RedHat installs. We’re not zealots about operating systems (well, not much, anyway). But Linux does everything we need at the moment.

Most of the server maintenance is done by Paul, Pete and me, but unless we’re installing new hardware, there isn’t all that much to do.  Modern PC hardware seems to be pretty reliable as long as (a) you pay enough for it to start with, and (b) you can hot-swap hard disks in your RAID arrays, since those are the components that fail most often.

**TM: Who is your average customer? Do you ever have problems such as people getting an account to install an IRC bot, or to crack other servers?**

CL: Our typical shell account customer is interested in hosting one or several websites; we offer more flexibility than most hosting providers—for instance, our customers can write CGI scripts in more-or-less any language they want, can run web sites under FastCGI, etc.—and that’s attractive for people who want a service which isn’t going to get in their way too much.


<!--pagebreak-->


We also have quite a few customers who use our services as an email service. Having a reliable shell account where you can run mutt or pine or whatever from anywhere in the world is a lot more convenient than running a desktop mail client and using web mail away from home (though obviously we support both of those options too). We also host some software developers who use our anonymous CVS services.


=ZOOM=Our typical shell account customer is interested in hosting one or several websites; we offer more flexibility than most hosting providers=

For users who want more sophistication we now offer a “virtual dedicated server” option, which is based on user-mode Linux; that’s been quite popular for customers who want even more choice in what they can do, but don’t want the hassle of owning and running their own hardware.

We’ve had occasional trouble with people buying accounts for IRC bots (which we prohibit, because this activity can be disruptive to our other customers), and also occasional individuals who try to buy accounts with stolen credit card numbers (apparently because this is a way for them to verify the numbers they’ve got). It’s almost always easy to spot these kinds of account applications ahead of time.

**TM: How do you organise your customer support?**

CL: Mail to support gets dropped into a home-brew ticketing system written by Paul (we used to use RT, but it was slow and overcomplicated). From there mail is distributed to a support list, which currently consists of five of the original investors. The ticketing system keeps track of who “owns” each support issue, and reminds us every morning about which tickets are still open.


=IMAGE=paul.jpg=Paul Warren=

**TM: Is there a lot of custom software involved?**

CL: Yes, quite a bit, mostly written by Paul and me. You can see some of it on our software page at [http://www.mythic-beasts.com/software.html]( http://www.mythic-beasts.com/software.html) and more on our personal home pages. Some of the software we’ve written has found quite wide use: my POP3 server, tpop3d, is used by quite a few sites (some much larger than Mythic Beasts Ltd), along with our virtual mail configuration tool, vmail-sql. Both of those were written back in 2000 because there weren’t any suitable alternatives.

Paul wrote an excellent little tool called iftop for monitoring network performance in real-time, which I think is now in Debian and the *BSD ports.

**TM: Do you release everything you wrote for Mythic Beasts as free software?**

CL: We don’t always have the time to release things we’ve written—especially when they’re very specific to our setup and therefore not likely to be of general interest.

**TM: How important is free software for your company?**

CL: Companies like Mythic Beasts (not to say the internet as a whole) are only really viable because so much Free software is available, and we’re glad to contribute what we can to the community.

**TM: How much “politics” is involved in running a service like yours? For example, are you criticised for not having any Windows machines? Or for only having Linux? Have you lost any customers because of the SCO legal challenges?**

CL: We’ve encountered surprisingly little politics in running Mythic Beasts. As most of our users are familiar with Linux, and often have a strong preference for it, it is quite unusual for us to get requests for other operating systems. Almost all the services we run are based on open standards in any case, so we don’t put any barriers in the way of people who use Windows on the desktop (which is probably the majority of our customer base).


=ZOOM=Some of the software we’ve written has found quite wide use : my POP3 server, tpop3d, is used by quite a few sites (some much larger than Mythic Beasts Ltd)=

We do have colocation customers who use a variety of operating systems.

As to SCO’s recent legal challenges, we have not lost any customers due to this, and, if anything, have had more new customers since the challenges. We do not presently regard the whole SCO fiasco as a threat to our business (or to anyone else who uses Linux).

**TM: What systems do you have in place for backup and disaster recovery?**

CL: On-site and off-site backups.  All our customer-facing servers are hot-swap hardware RAID, backed by a support contract with our suppliers. The VDS servers back each other up, allowing us to restore a VDS on a different host within a few minutes—much better than most dedicated server arrangements.

**TM: What are your plans for the future? I see that you are expanding your offer. Are you planning on growing considerably in the medium and long term?**

CL: Our plan is for steady growth with customer demand rather than significant expansion.  We’ve invested a fair amount in new hardware this year and now have plenty of capacity for new customers.


=ZOOM=Our plan is for steady growth with customer demand rather than significant expansion=

We launched our VDS service which is proving very popular for a wide variety of applications that can’t be handled easily in a shared hosting environment such as Java servlets and Subversion repositories, and for people who just want absolute control over the hosting of their website and email.

**TM: Thank you very much for answering my questions!**

