---
nid: '2180'
title: 'Towards Wengophone 2.1 - an interview with Philippe Bernery and Dave Neary of the OpenWengo project'
authors: 'Marco Marongiu'
published: '2007-04-02 10:21:53'
tags: 'voip,wengophone,openwengo'
license: verbatim_only
section: interviews
listed: 'true'

---
On March 23rd the [OpenWengo project](http://www.openwengo.org/) released the [second release candidate](http://download.wengo.com/releases/WengoPhone-2.1/RC2/) of their Wengophone, a free software VoIP client with integrated support for SMS, video calls, conferencing, and Instant Messaging for many protocols. So, while they are steadily moving towards the final 2.1 release and I am filing bugs on their trouble ticket system, I had the pleasure of interviewing two of their “frontmen”: Philippe Bernery and Dave Neary.


<!--break-->


**MM: First thing: the 2.0 stable release. It was expected for the summer 2006 and went out in December, with a lot of bugs. Unfortunately, it misses many things you expect from a stable release: it isn’t stable and sometimes crashes randomly, it isn’t easy to install, it’s even less easy to share an installation between users, there’s no prepackaged version for any GNU/Linux distribution. So, what went wrong in the process? And, if something went wrong, what were the lessons learnt that you are applying in the 2.1 release development?**

PB: About crashes, there are a lot of threading issues. We’ve learnt on this point and lots of these issues has been fixed in 2.1. But some of them are placed in code parts that need to be refactored. Next release should include this refactoring.

DN: We know that 2.0 wasn’t ideal. As a team, and as a company, we learned a lot. I was hired to solve some of the problems identified during the 2.0 release cycle, and so far I’ve made progress. There is a lot more to do, but we’re getting there.

**MM: Your main competitor, Skype, has a GNU/Linux client that has less features than Wengophone, and even if not as reliable as a production release should be (e.g.: it’s easy to get low quality audio after you place the first call of a session) it could be compared to a release-candidate; Wengophone 2.0 looks more like a beta than a production release: will 2.1 be at least as stable as an RC? If not, what’s the focus of the 2.1 release?**

PB: One of the goals of 2.1 release is to improve support for GNU/Linux and Mac OS X.

DN: The 2.1 release is focussed primarily on stability—there are hundreds of bug fixes. The 2.1 release will come up to the bar I expect of a free software project. Afterwards, we will start working on the 3.0 release integrating the CoIP manager, and will continue maintaining the 2.1 branch. I would like to see some major performance improvements in the Wengophone rapidly after that release.

**MM: Last June I wrote an [article about the 2.0 release](http://www.freesoftwaremagazine.com/articles/wengo_phone). Two missing features stand tall in the article’s comments: centralized contacts and encryption. The first one is surely missing in 2.0 (will we have them in 2.1? in other releases? Ever?); what about the second? If not, what about the 2.1?**

PB: The first is not yet ready to be integrated. However, encryption is now included and activated by default.

DN: Encryption is there—we have the possibility to do SRTP for calls, thanks to a partnership with Everbee

**MM: What are the main new features in Wengophone 2.1?**

DN: As I mentioned before, the stability and function of the application has improved a lot over this release cycle. We have also focused on a small number of important features—call encryption via SRTP using 128 bit AES encryption is one major feature included in this release, and the ability to configure a SIP server other than Wengo’s platform is another long-awaited feature. You can now configure the WengoPhone to connect to your local Asterisk, or any of a number of public SIP platforms.

One other area in which we have made progress is in usability—the application is now easier to use in many ways, as well as prettier :)

**MM: I tried some file transfers, and got a lot of problems while trying to traverse firewalls and/or NATs. Are you aware of that? Is something that will be improved in version 2.1?**

PB: You should send a bug report... :-) Seriously, we fixed some bugs on file tranfers in this release. Also Nat/Firewall traversal is not an easy task and WengoPhone may not be able to detect some network configuration. In this case, you should send a bug report with your network configuration. This will help to improve network configuration detection code.

**MM: Phillipe, Dave. Thanks for answering my questions and good luck with the project.**

