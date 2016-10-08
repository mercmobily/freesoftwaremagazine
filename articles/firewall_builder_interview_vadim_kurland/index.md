---
nid: '3138'
title: 'Firewall Builder: an interview with Vadim Kurland'
authors: 'Marco Marongiu'
published: '2009-04-13 15:56:59'
tags: 'interview,firewall,iptables,firewall-builder'
license: verbatim_only
section: interviews
listed: 'true'

---
About two years ago I published an article about [Firewall Builder](http://www.freesoftwaremagazine.com/articles/firewall_builder). Now that the version 3.0 is out I had a catch-up interview with its creator, Vadim Kurland, and I discovered a number of new interesting features.


**﻿MM: Hi Vadim, and thanks for answering my questions. You are the main author of Firewall Builder (FWB), but your name seldom appears even on the website www.fwbuilder.org. So, just before we start diving deep in FWB, would you like to briefly introduce yourself?**

<!--break-->

I've been working in the network operations organizations of different companies in Silicon Valley since 1996. Before then, I was involved in software development and ISP operation. All this together provided for an interesting mix of skills that allowed me to launch a project like Firewall Builder, which requires both good C++ knowledge and an in-depth understanding of network protocols, network security and operational procedures. 

**MM: When did you start working on FWB, and why?**

I started the project in 1999, and our SourceForge project page was registered in 2000. The project started as many other Open Source projects do, from a realization that I needed a tool to help me configure a Linux firewall. At the same time, I wanted to develop something that could match the quality of the user interface of commercial products such as CheckPoint Firewall-1. I had been working a lot with Firewall-1 back then. 

**MM: It often happens in free software projects that someone starts working on a project and publishes his work; if the project is interesting enough, shortly after he starts getting bug reports, patches, code and contributions of all sorts (even money). I guess FWB is no exception. Bug reports apart, how many people contributed to FWB?**

Actually I try to maintain a list in the Credits file (which is part of the package), but it is a difficult task, since contributions come in different ways. Some people submit patches using the SourceForge project page, some just send e-mail to me. The Credits file currently lists about twenty people who contributed patches, translations, icons and other things at various times to the project. This does not include those who filed bug reports, since there are just too many of them. We have had over 1,200 bug reports since the beginning. 

**MM: You recently released the third major version of FWB, and you are currently distributing the 3.0.3 release. Now, when one puts a major version out, a lot of improvements and changes are expected. Since the graphical interface of the program didn't change that much, I expect that the biggest changes are under the hood. What are the improvements that make FWB3 a step forward from FWB2?**

That's correct, v3.0 did not change a whole lot in the GUI. However, it comes with significant improvements and additions "under the hood". Here are the highlights: 

* this version comes with support for IPv6. It adds several new object types, such as IPv6 address and IPv6 network. Firewall Builder can generate an IPv6 configuration for iptables, pf and Cisco IOS access lists; 
* an administrator can manually put IPv4 and IPv6 rules in separate rulesets and configure each ruleset to generate firewall configurations for the corresponding address family. Another option is to mix IPv4 and IPv6 objects in the same ruleset. In the latter case Firewall Builder automatically splits them and generates separate correct IPv4 and IPv6 configurations; 
* firewall objects can now have multiple policy and NAT rulesets. Each ruleset has a name and can be used in multiple rules by using the action "Chain". Using a branching rule of this type, one can even use a block of rules that belong to one firewall to pass control in the policy of another. If a firewall object has several policy rulesets, they can be configured to produce iptables commands in the user-defined chains with the same names. This also works for PF, where they produce rules in corresponding anchors, and Cisco IOS access lists where they create new extended access lists; 
* netmasks can be entered as bit length everywhere; 
* a user can now open multiple data files at once in the GUI and move objects between them; 
* the graphical interface is now more friendly to a small screen, such as a laptop's. A user can change the font and choose between two icon sizes for objects in the tree and policy rules; 
* this new version supports rule grouping: the user can now group several rules, assign a name to the group and then collapse or expand it; 
* this new version comes with support for iptables features that were requested by users, such as user ID matching (module "owner"), a new format for parameters of the "time" module, support for TOS and DSCP matching, and improved support for hashlimit module parameters; user ID, TOS and DSCP matching are also supported in PF; 
* this version is built with QT4. Since QT4 is not backwards compatible with QT3, this required a significant rewrite of a large portion of the user interface code ; 
* this version delivers at least a 2x speed up in policy compilers in the shadowing detection algorithm; this is especially visible when processing very large policies; 
* the command line tool "fwbedit" has been redesigned and now supports an extended set of functions that allow for scriptable manipulations of a data file. An administrator can write scripts to add, list and modify objects of all types, assemble them in groups and do other operations. 

**MM: You named CheckPoint Firewall-1 as the commercial product that inspired you at the time you started working on FWB. Are there any commercial products that can be considered as competitors to FWB?**

Well, this depends on what we consider competition. Checkpoint VPN-1 is firewall software that has been around for very long time and is in fact industry standard in terms of features, user interface and performance. They are a very strong player in the enterprise security market. The price tag is significant however and Checkpoint is itself a firewall platform so there is no option of migration to another one once you invest in it. The same can be said about Cisco firewall appliances (ASA), they also lock the user into one vendor setup, creating barriers for migration to other firewalls. 

**MM: And what about other free software projects: are there any that you would consider as "competitors"?**

There are many Open Source projects out there that help configure iptables but none of them are as integrated as Firewall Builder, and only a few of them support different firewall platforms. For example, one of the most popular iptables GUI out there is Firestarter. It is ubiquitous, it ships with all major Linux distributions. Firestarter is nice simple GUI and it does the job right. However it is not very well suited for complex iptables policies because it can generate only very basic iptables rules. Also Firestarter can only manage the iptables policy on the same machine where it is running. As you can see, even though there is overlap in the functions between Firestarter and Firewall Builder, these tools are really intended for different audiences.

There are also several Open Source projects that aim to provide a universal multi-platform firewall configuration language. One example is HLFH (High Level Firewall Language). The administrator can define firewall policy rules in terms of this abstract language and then translate them into a configuration of the target firewall. Generally, this is the same concept that Firewall Builder is based on, but with HLFH the user needs to learn yet another language and manage the firewall in a cycle similar to software development, where you write the code, compile it and then test and debug it. 

Firewall Builder generally uses the same approach. It defines a high level abstract system of objects that are independent of the actual firewall configuration the user works with and provides a way to translate rules defined in terms of these objects into an actual configuration language of choice. Nevertheless, it makes it easier than languages such as HLFL because it provides a easy-to-use modern GUI, supports an object-oriented model, and can catch many errors early. Finally, it is an integrated system that supports a complete cycle of configuration management: the administrator can define objects that describe their network, then they can build policy rules to implement their security policy and finally they can create firewall configuration files and deploy them on the firewall machines. 

I would say Firewall Builder incorporates the best features from all competing products in one integrated solution. 

**MM: Do you see any room to eventually join forces with any of the Open Source projects you just named?**

Sure, if there is enough in common we can built upon. Such a combination should be mutually beneficial. 


**MM: I installed FWB3 on my Ubuntu 8.04 from the pre-built packages you provide from the web site. I was pleasantly surprised to see Firewall Builder in the Administration menu. It looks like you are trying to better integrate it with Ubuntu. Are you?**

Yes, I am trying to make it easier for people to start using the program. 

It is not always simple to do it since I make packages for a few distributions (Fedora, Ubuntu) and some things are done differently on them. I am trying to find a balance between the amount of time I have to spend managing packages for different distributions and the quality of those packages. 

In the end, maintainers of the packages for those distributions produce packages they include in their releases. Their packages are slightly different from mine and are better integrated, but they are updated infrequently. I keep making my rpm and deb packages in order to provide a way for users to follow my development closely. 

Firewall Builder is also available on FreeBSD and OpenBSD, where it is part of the "ports". I am very grateful to port maintainers Cy Schubert and Vadim Zhukov. 

**MM: In general, is there any Linux distribution you are supporting better than others?**

If such a distinction really exists, it is probably because I can test only on a limited set of distributions. I run a mini-farm of virtual machines which I use to install different versions of Fedora Core and Ubuntu to test on. Currently I have FreeBSD, CentOS, Fedora Core and three Ubuntu machines which I use to test and build rpm and deb packages on. 

I do not have Slackware or SuSE or Mandriva machines, however my configure scripts are pretty well debugged and seem to take care of the differences very well. I rely on the community to test on these distributions and try to react to bug reports as quick as I can when problems are found. 

**MM: FWB3 supports a number of different firewall products. What about operating systems other than Linux, FreeBSD and OpenBSD? Are you planning some kind of development or support for, say, OpenSolaris?**

Firewall Builder supports not only firewall platforms, such as iptables, pf, ipfw, ipfilter, but it also supports the OS these firewalls can run on. For example, one can have pf on OpenBSD and FreeBSD. Ipfw can run on FreeBSD and Mac OS X. Ipfilter can be used with FreeBSD or Solaris. Firewall Builder is aware of that and can generate activation scripts that are suited for the chosen OS. The "advanced" host OS settings dialog which is a part of the firewall object configuration presents many options that are specific to the target host OS as well. 

So in effect, Firewall Builder is already aware of the target host OS and supports quite a few of them. OpenSolaris is not on the list per-se, however (commercial) Solaris is. As far as these two systems are close and the command line for the ndd utility is the same, scripts generated by Firewall Builder for Solaris should work on OpenSolaris as well. 


**MM: I know that 3.0 was out just recently but... what would you like to see in the 4.0 version someday in the future?**

I have a list of features I plan to implement in v4.0. Perhaps this list is too big and I am going through it trying to bring it down to a manageable set. 

Among other things, I plan to add support for the high availability configuration for some firewall platforms, most likely iptables and pf. There will be improvements in the GUI as well. 

Generally, I start with feature requests that users file on Source Forge for the project and try to generalize them to see if I can implement them in a way that the feature will be useful not only for one firewall platform. I also follow discussions on the mailing list, trying to get a sense of what triggers discussions and what people seem to be interested in. 

**MM: You now have a unique chance to make an appeal to FSM readers: is there anything that you would like to ask them? Help? Suggestions? Anything?**

First of all, I appreciate your interest in my project. As any Open Source project, it exists only because of the continuous support from users. 

I'd like to hear more from the FSM readers, so I can only ask them to download Firewall Builder and try it out, then subscribe our mailing list at https://lists.sourceforge.net/lists/listinfo/fwbuilder-discussion. The list is low volume but it is a great place to discuss the program, make suggestions or ask for help. I also regularly post announces of new versions there. 

In case you prefer forums to mailing lists, we also have online forums on [Source Forge](https://sourceforge.net/forum/?group_id=5314)

**MM: Vadim, thank you very much for answering my questions. I hope you get all the satisfaction you deserve out of your project.**

Marco, thank you very much for the opportunity, it was a great chance to answer your questions and tell the readers of the magazine about the project. 




=TEXTBOX_START=Installing a package with GDebi=

Firewall builder is included in all major distributions of Linux, but the version provided is not always the current one. If you want to test the very latest release of FWB (3.0.4 at the time of writing this article) you can download it directly from Sourceforge. In the specific case of Ubuntu Linux, you'll find a couple of packages that you can easily install.

=IMAGE=download-fwb-packages.jpg=Firewall builder's packages at Sourceforge; Ubuntu packages are highlighted in yellow=

To install them, open Firefox and go to the [download page](http://sourceforge.net/project/showfiles.php?group_id=5314&package_id=125359).

=IMAGE=firefox-download-window.jpg=Firefox download window with the option for GDebi=

Start with libfwbuilder first, choose the one that matches your distribution version (Hardy or Intrepid) and processor (32 or 64 bit). You will be shown a download window like the one in the figure above. Be sure to select "Open with GDebi Package Installer" and press OK.

=IMAGE=gdebi.jpg=GDebi window=

A new window will appear: now you are in GDebi!!!

Gdebi is a package installer that combines the installation capabilities of the low-level, package-management commands (like dpkg, that installs packages from deb files) with the ability to resolve and automatically install other packages that are needed by the one you are installing (the so-called dependencies). In the particular case showed in the above figure, all dependencies are satisfied. If it wasn't the case, GDebi would have downloaded and installed all the missing packages before trying to install libfwbuilder.

Once you are done with libfwbuilder, repeat with the fwbuilder package. GDebi may warn you that an older version is available (which you already know about from the preceding paragraph): just proceed with the installation.

Et voilà!!! You are all set, and ready to start with Firewall Builder.

=TEXTBOX_END=



=TEXTBOX_START=Resources about Firewall Builder=

* [The Firewall Builder web site](http://www.fwbuilder.org) is the main site, providing the software, documentation and howto.


Vadim has been busy lately as he was spreading the word on many web sites:


* [fwbuilder: Manage Firewalls Professionally](http://debaday.debian.net/2009/03/15/fwbuilder-manage-firewalls-professionally/) at [Debian package of the day](http://debaday.debian.net/)
* [Getting Started with Firewall Builder](http://www.debian-administration.org/articles/632) at [Debian Administration](http://www.debian-administration.org/)
* [Getting Started with Firewall Builder](http://ubuntulinuxhelp.com/getting-started-with-firewall-builder/) at [Ubuntu Linux Help](http://ubuntulinuxhelp.com/)
* [Getting Started with Firewall Builder](http://www.howtoforge.com/getting-started-with-firewall-builder)
* [Using Built-In Revision Control In Firewall Builder](http://www.howtoforge.com/using-built-in-revision-control-in-firewall-builder)
* [Using Built-in Policy Installer in Firewall Builder](http://www.howtoforge.com/using-built-in-policy-installer-in-firewall-builder) at [HowtoForge](http://www.howtoforge.com/)

=TEXTBOX_END=