---
nid: '2457'
title: 'Interview with Jeff Starkweather, Chris Buechler and Scott Ullrich'
authors: 'Tony Mobily'
published: '2007-08-14 10:34:50'
tags: 'firewall,pfsense,m0n0wall'
license: verbatim_only
section: interviews
listed: 'true'

---
Centipede Networks has recently entered a partnership with BSD Perimeter to offer commercial support for two important free software projects, pfSense and m0n0wall. I had a chance to talk to Jeff Starkweather (CEO of Centipede Networks), Chris Buechler (BSD Perimiter’s CTO) and Scott Ullrich (Chief Architect at BSD Perimiter).

**TM: Hello everybody, and thank you for answering my questions! Jeff, Chris, Scott please introduce yourselves and your companies to our readers.**


<!--break-->


JS: My name is Jeff Starkweather and I am the CEO of Centipede Networks. Centipede Networks is a dba of S4F, Inc. in Tulsa, OK, U.S.A. The company started out about 10 years ago as an ISP providing dialup access that had content filtering bundled with the service. As time progressed we branched out into products which included an internet security appliance that provides firewall, content filter and spam and virus filtering services.

CB: My name is Chris Buechler and I am the CTO of BSD Perimeter, a co-founder of the pfSense project, and a long time m0n0wall contributor. I’m not a developer on either project, but possess a deep understanding of networks and security that has enabled me to contribute heavily to both projects in project direction, testing, documentation and support.

BSD Perimeter was founded in Louisville, KY, U.S.A. by Chris Buechler and I to provide commercial backing and support for the pfSense and m0n0wall projects.

SU: My name is Scott Ullrich, and I am the Chief Architect of BSD Perimeter, the other co-founder of pfSense, and its primary developer.

**TM: Jeff, what’s the partnership about, in simple terms?**

JS: We started working with the guys from BSD Perimeter about a year ago. Initially we were investigating basing a commercial product off of pfSense. As time progressed, we started helping with funding of some development for pfSense and that developed into a partnership to provide commercial support for both pfSense and for m0n0wall. The partnership is pretty straight forward. Chris and Scott have developed an awesome product but did not have the resources to provide support for the product. Centipede Networks has the resources available to provide top notch support for pfSense and m0n0wall.

I feel both companies have certain core competencies. For us the partnership fills a gap we have with free software development plus gives us access and acceptance into the free software community. Centipede Networks offers quite a few years of experience in dealing with customers, accounting, staff and support systems. The partnership between BSD Perimeter and Centipede Networks was a natural fit.

**TM: Chris, your company did the initial “hard work”. On your web site, you mention that you offer support for m0n0wall and pfSense. Where does this deal position your company? Are you going to stop providing support for m0n0wall and pfSense, and delegating it completely to Centipede Networks?**

CB: Scott is the primary developer, I don’t write any code personally. I’m a network, security, and firewall guru, and am the primary tester of the project. I understand how firewalls, routers, networks, and all the various components work (or should work) extremely well, so I provide a lot of assistance with quantifying problems and helping design features. I also work with a number of commercial firewalls, and that experience helps me provide valuable input on the direction of the project. I started out as a contributor to the m0n0wall project several months before pfSense was founded, and personally wrote a large portion of the m0n0wall documentation available today.

We aren’t delegating all of the support to Centipede Networks. This is a partnership, not an outsourcing agreement. Scott and I will also provide extensive support for our customers. The partnership with Centipede Networks is primarily for phone support, as being able to ensure someone is always available to answer calls requires more than two people. Because the purpose of our endeavor is to support the project, we can’t initially afford to hire people to staff a call center. In our partnership with Centipede Networks, we gain access to a well staffed and qualified call center without having to maintain numerous full time employees. This means when a customer calls, they can be assured to reach an actual person. Scott and I alone could not guarantee this level of service, and we did not want to provide our customers with anything less than this.

Scott and I will personally answer many of the tickets submitted to our customer web site, staff the live chat system after business hours and on holidays and weekends as our schedules permit, and provide second level support as needed. We are very much involved with this endeavor.

Centipede Networks is simply an extension of BSD Perimeter that gives us the resources of a larger company without the salary expenses that we cannot initially afford. Our goal is to support the free software projects, so at least initially we need to keep expenses very minimal yet still provide great customer service. This partnership lets us do just that.

**TM: Scott, can you explain in simple terms what pfSense and m0n0wall are?**


<!--pagebreak-->


SU: pfSense and m0n0wall are free software firewall distributions, based on the FreeBSD operating system. They provide most of the functionality of common commercial firewalls, and many times more. Both have replaced every big name commercial firewall you can imagine in numerous installations around the world, including Check Point, Cisco PIX, Sonicwall, Netgear, Watchguard, Astaro, and more. Both are complete operating systems with custom kernels and include third party free software packages for additional functionality. They both include a web interface for the configuration of all included components. Knowledge of FreeBSD is absolutely not necessary. Unlike some similar GNU/Linux-based firewall distributions, there is no need for any UNIX knowledge, no need to use the command line for anything, and no need to ever manually edit any rule sets. In fact, the majority of pfSense and m0n0wall users have never installed or used a stock FreeBSD system. Users familiar with commercial firewalls catch on to the pfSense and m0n0wall interfaces quickly, though there can be a learning curve for users not familiar with commercial-grade firewalls.

m0n0wall is focused towards embedded systems, which primarily have relatively slow processors, little RAM, and are limited to Compact Flash storage. With Compact Flash, the number of write operations is very limited. As such, m0n0wall’s design is to boot from the CF, but run entirely from RAM. This is a great design for embedded systems, and will run fine on full PC hardware with hard disks, but it does not let you take advantage of the capabilities of more powerful hardware nor the storage capacity of hard drives. Because it’s designed to run entirely from RAM, it can be very difficult to add features to m0n0wall.

pfSense was created as a fork of m0n0wall, focused towards larger hardware with hard disks for a full, “normal” operating system installation. Also, the pf packet filter ported from OpenBSD is used, rather than IPFilter that is used in m0n0wall. Hence the origin of the name pfSense - making sense of pf. The use of pf allows pfSense to provide a number of advanced firewall options, such as simultaneous client connection limits, maximum state entries per host, maximum new connections per second, and numerous other options not possible withIPFilter. In addition, numerous user interface improvements have been made that make pfSense easier to manage.

pfSense also provides a packages system, which includes a number of add on software packages that can be installed if a user chooses. These come complete with additions to the web interface for the use and management of the package. Some of the available packages include Snort, Squid, TinyDNS, and FreeRADIUS, amongst many others.

m0n0wall is still developed, though not as actively as pfSense, and will continue to be. m0n0wall is widely deployed and continues to be used, especially on embedded hardware, by many users. Since we have expertise in both areas, and one of the BSD Perimeter founders (Chris Buechler) is a long time contributor to the project, Manuel Kasper (m0n0wall founder) has rewarded our work on the project with the designation of the sole official provider of commercial support for the project.

**TM: Jeff, does your company have previous experience is security products or in providing commercial support?**

JS: Our company has 10 years of experience in providing support plus we create commercial products based on free software, so the fit was pretty good. I believe that the market, in general, is transitioning to an free software platform. One of the great things about free software projects is the collaboration of a bunch of individuals to create a product that meets or exceeds commercial products. Typically the downfall of many free software products is the support given to end users. We are providing professional support services to fill the support gap for end users of pfSense and for m0n0wall.

**TM: Chris, Jeff, both pfsense and m0n0wall have active support communities (mailing lists, forums, etc.). So, there will still be a choice there - I might decide to ask the forums, rather than paying for professional support. What is your target here?**

CB: It’s primarily a matter of getting guaranteed timely access to qualified individuals for all of a customer’s support needs. While there are free support options available, the need for support is too great for us to answer every question, much less in a timely fashion.The projects combined have more than 4800 forum members and 2500 mailing list subscribers. With free support, there is no guarantee anybody will answer any given question, or that the person who answers is giving good advice, or that we can spend enough time to adequately address the question. This is not sufficient for most businesses, and has been a barrier to free software adoption for these projects and others for many organizations.


<!--pagebreak-->


Both Scott and Chris, as well as Centipede Networks’ employees, spend a significant amount of time on the mailing lists and forums, and will continue to do so. Just as before, it’ll be on a “as time permits” basis. The projects have become so successful that it isn’t possiblefor us to give detailed personal attention to every question. We have to put a roof over our families’ heads and food on the table, so we spend a significant amount of time working on paid projects, and there are only so many hours in the day (the vast majority of which we’reworking on paid or free software projects). This allows us to meet our users’ demands for professional support because it allows us to decrease the amount of other paid work we do. In time, we hope this can be the only paid work we do, and additionally allow us to supportfull time developers on the free software project.

JS: I agree with what Chris said. We encourage the community to keep posting and helping each other with support through free forums. This is just another step that can be taken for individuals and companies that require professional, timely support.

**TM: The most common question in the free software world... do you find it especially challenging, to make money with something that is actually available for free?**

JS: This is a new endeavor for Centipede Networks and for myself. I believe in free software distribution and I feel that value added services are the way to make money with free software. By not forcing people to buy a product you are able to penetrate a market at a greater rate. This method increases acceptance of a new product and gives a company the ability to sell optional services to make money.

CB: We’re providing a professional service that truly has no free equivalent. The fact that the software is free doesn’t necessarily mean users aren’t willing to pay for support, just like they pay for hardware used with these projects. Even after paying for hardware and support, the total cost of ownership of a free software solution is substantially less than comparable commercial solutions, and the level of service we’re providing our customers is much better than the typical large commercial firewall vendor.

**TM: I could wake up one day and decide to create a company that supports pfSense and m0n0wall...**

JS: I don’t think there is anything stopping a person or company fromdoing so... I would have to defer to Chris on this one.

CB: Sure, this is always true, even in the proprietary world. But nobody else that would do this would have the level of control and influence of the projects, nor the knowledge that we have. There isn’t much concern for competition strictly because nobody knows the software as well as us, and the amount of effort required to gain such knowledge essentially eliminates any potential competitors. We are the sole official source of support for both projects. Just having that status alone is enough to largely doom any competitors - users want support from the foremost experts on the software and the people who control its future, not some random company that claims to know about it.

**TM: Are you afraid of somebody forking pfSense and competing with you ? Proprietary software is immune to this tactic. Do you feel at all uncomfortable about this?**

CB: It’s not a concern really. That’s possible, but unlikely. There simply isn’t enough money in it to justify serious competition. We put thousands of hours of effort into this software before we made the first penny. We hope at some point in the future we will make enough for this to become our primary source of income, but it’s nowhere near that point now. There’s too much effort and not enough monetary reward in creating a competing project for the sole sake of commercial competition.

Developers who may have an interest in creating a free software fork likely wouldn’t have a compelling enough reason to dedicate the significant time and resources that would be required. The packages system in pfSense allows developers to create packages to change things within or outside of the base system as they desire, and makes it very hard to justify a fork.

**TM: Scott, What is it like, to work on a piece of software that is so important and, yet, is released for free?**

SU: Honestly, I have not given a lot of thought to this. For me it is business as usual on a daily basis constantly improving pfSense and not really thinking twice about it.

**TM: How would you compare this with other companies where USB keys are not allowed, employees sign absurd NDAs, etc.?**

SU: I honestly would not compare free software to employees signing NDA’s, etc. However, proprietary software has its place and in each case can be useful. I see free software and proprietary software living in peace and harmony in the future giving the end user a choice, which I find to be refreshing.

**TM: Thank you for your time, and all the best with your venture!**

