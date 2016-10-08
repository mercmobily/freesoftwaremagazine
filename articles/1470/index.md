---
nid: '1470'
title: 'Interview with Alan Robertson of the Heartbeat project'
authors: 'Maria Winslow'
published: '2006-01-23 17:23:42'
license: verbatim_only
section: interviews
listed: 'true'

---
[Heartbeat](http://www.linux-ha.org/Heartbeat), a free software project, has crashed the price barrier for [Linux high-availablity](http://www.linux-ha.org/). Redundancy has never been so affordable, thanks in part to the efforts of Alan Robertson, project lead. I caught up with Alan to find out more about the history of the project, and future plans.

**MW: How did the Heartbeat project get started?**

AR: The project was started in kind of a funny way. I was working for Bell Labs at the time (1998) and we were looking at new technologies for our development environment. It had become obvious that Linux ought to be considered, and I brought this up to my second line manager, Ken Switzer. Ken asked me what did Linux have for high-availability. I said I didn’t know—while not telling him that I didn’t know what high-availability really was! So I went to research it, and found that there was this mailing list—the linux-ha list, and a document describing high-availability (HA) techniques, but no software. I had an interest in someday participating in an free software project to see how this free software stuff worked, but there were typical legal complications related to who would own the intellectual property. So, I saw this as an opportunity. Ken was a forward looking guy who really loved high-availability. So, when I met with him later, I proposed that I should write some initial software as a sort of seed crystal to help jump start the project, if he would help me get corporate permission to own the copyrights on what I wrote. He agreed, as I knew he would, and I wrote the first “heartbeat” code over a spring break holiday spent with my in-laws.

**MW: What is your role with the project now?**

AR: I’m the project founder, leader, architect, quality control, evangelist, etc. With the community having grown, including some people who more or less report to me, I spend less time coding than I originally did, so I spend a lot of time talking about architecture and design, testing, evangelism and things like that. I consider myself responsible for the quality of the overall result.

**MW: What is the contributor community like?**

AR: We have around 1500 people on our mailing lists. Around a dozen contribute by answering basic questions on the mailing list. In addition, SUSE/Novell has two people on the project at the moment, and IBM has 5 people directly on the project including me, and one person at NCSA whose salary we currently pay. We also have around 3-4 people who are fairly consistent contributors over a long period of time without being paid directly to work on it. It’s complementary to their regular job. Two of them work on ports to other operating systems, and keep us honest in our portability efforts. A total of about 70-80 people have contributed at one time or another.

**MW: Who is the typical user?**

AR: There are about three general classes of user. In general terms, they are the system administrators, consultants, and people who incorporate our software into their products. The system administrators somehow found out about the software and use it for their sites—for every imaginable application. They are from large companies, small companies, universities, government and international organizations—well known and obscure. The consultants install Heartbeat on their clients’ systems. The last category is companies who have products which use Heartbeat. There are several networking products, telecom products and perhaps a file server or two which incorporate it. It’s unfortunate that these companies don’t contribute back, and even more unfortunate that they rarely tell me about their use of Heartbeat. I usually find out from a third party when some product uses Heartbeat. I think this is because they don’t really want their competition to know that they’re doing this—because it would take away their competitive advantage.

**MW: Why do you think it’s important to have a free software failover option?**

AR: Availability is something everyone wants to have more of—no matter how much they have now. Historically, people have limited use of high-availability techniques to extremely critical cases because of the cost and complexity of the technology. Our technology is freely available, and much simpler to use than most other HA software. In fact, we have an entry point where we can basically replace the standard Linux startup system for a single machine with almost no effort. So, high-availability is now becoming basically a commodity, and free software has a good track record for playing very well in commodity spaces. Since we put out release 2, we are basically as capable as any commercial HA system, and significantly more so than some well-known products.

**MW: Is anyone making money from Heartbeat?**

AR: The short answer is “yes”. I suppose you want more details, though ;-)

There are dozens of small consulting companies who have hundreds of very happy clients as a result of Linux-HA. IBM has sold a significant amount of hardware, software, and consulting surrounding Linux-HA. SUSE/Novell has also made it a key part of their enterprise product, and their consulting efforts, and it has proven very worthwhile to them.

**MW: What are your plans for the future?**

AR: For the near future, we’re looking at doing a little more for split-site (disaster recovery) clusters, providing better manageability through things like the WBEM/CIM model, and things like that.

In the longer term, we’re looking at trying to make this as simple to use and install as it possibly can be. We are trying to create a world where world-class high-availability software and techniques are taken for granted.

**MW: Thanks for speaking with me today about the Heartbeat project.**

