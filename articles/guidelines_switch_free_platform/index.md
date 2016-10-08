---
nid: '2870'
title: 'Guidelines to switch to a free platform'
authors: pachelbel
published: '2008-05-15 18:41:48'
tags: 'gnu/linux,switching,netbsd,freebsd,bsd,openbsd'
license: verbatim_only
section: opinions
listed: 'true'

---
The topic of switching from Windows to Linux has been bashed numerous times and it often comes with the same arguments: high-performance, cheap, goes against the big monopolies, and so forth. Now, as a user, does it really matter? This article focuses on the steps you need to make for a successful switch or, at least, mix platform for the best result.

# Alternatives

The choice offered to the end users goes beyond just Windows and Linux: both of these platforms have their own respective strengths but they are not the only ones. You can get excellent performance from the BSD derivatives (FreeBSD, NetBSD or OpenBSD, just to name the big 3) or decide to go for the industry standard, yet less lightweight, OpenSolaris. And if you go for Linux, you will have to select one of the many distributions. In short, switching platform will require a lot of homework before you download the ISO or buy the CDs.


# Aims and audience

So, let's sit back for a minute. What is my aim and who is my audience? These are 2 critical questions. The audience, for a start, will have to be receptive if you make a change: what applications do they use, officially and unofficially? You may find out that resistance comes from non-corporate applications, like MSN Messenger or the non-compliant HTML driver of Outlook Express. Remember that the de-facto standards pushed by monopolies are not really standards in the common sense of the word. In the course of the study, you will probably find out that some of your staff is eligible for a change but others not: the sales force will need to run Microsoft Office to exchange documents with their clients but the monotasking console of your production line will be perfectly happy under Linux on a low-power Geode architecture. In short, you will have to evaluate on a CPU basis what makes sense and what not.

The aim also has to be clear from the start: what problems do you want to fix? Is there a perception of these problems? You can decide, as an IT manager, that a machine exhibits too many "Blue Screens Of Death" but, if it is only a couple of times a day on a non-mission critical machine, it may be perfectly acceptable from a financial point of view (the financial staff in a company has a significantly different sense of gravity). If the PC that runs the video surveillance system of the security office crashes once a week, it will surely be considered far worse.

Remember that the aim is always to reduce costs or improve ROI, what comes down to offering the same service with less staff or allow a higher commercial activity with the same staff. A change will always have a cost and no change will be accepted for the sake of it. In essence, "if it works, don't fix it". People will traditionally be much more receptive to your failures than your successes.


# Applications

Now that you've identified the reasons for a change and the target audience, let's focus on the road map. The actual use of your machine is definitely the go/no go criterion: if your favorite or corporate application does not exist for the new platform, you're stuck. If it does exist or has an acceptable alternative, you must check which version you need and which is available on the platform you plan to use. Every Linux distribution freezes the applications at some point and some are more conservative than others so you may be up for a surprise. Do not forget that your friends or colleagues will want to share files with you and you must be able to open and generate them so the issue of the available versions is really critical.

As long as you stick to the content of your CDROM, there are usually no big issues. The pain will start the day you try to install this fancy music sheet editor that your best friend told you about and which requires the latest version of glib. Gosh! You meant to compile this tiny program, not upgrade more than half of the applications that you previously installed on your production machine. If you're wise enough, you will ignore the new application until you update your system with an official distribution. After you experience this a couple of times, you will value the work invested in building a full distribution. From my FreeBSD experience, if you intend to update the "ports" tree (the third-party applications repository) without care, you will probably affect adversely your entire machine. It is usually better to stick to the official tree distributed with each stable version.

Note that this headache does not exist under Windows: do you remember this music sheet editor you bought for your Windows95 machine 10 years ago? It will probably still load and run under Windows XP. If this is a feature according to Microsoft, it is also a security issue: old malware will not go extinct in time naturally. With a free platform, it usually will, as did your music notation editor.


# Cost vs. features

The most frequently heard argument to switch to a free platform is the cost: you can freely download Linux whereas you can't download Windows legally. To be fair, the actual list price you will pay for Windows will be highly discounted to your PC provider so retail price is barely an indicator and, if you proceed with Windows, make sure you have it preinstalled. However, check carefully which version you get because it will impact directly your experience of the new system. That's where the marketing model of free systems comes in play: what I get does not depend on my target system. I can, for instance, download the FreeBSD CDs and generate a 64MB disk image to store in a Flash drive for an embedded appliance or install a Symmetric Multi-Processor server, all from the same source. This "one size fits all" approach ensures that each system I install can potentially serve different purposes without licensing issues. Try to do the same with Windows Vista Starter, Home Basic, Professional, Server 2008 Edition and see what it costs you. Freedom goes beyond accessing the source code.


# Performance

I often wonder why I should use a quad-core processor to read my emails or write a few articles. To state it satirically, under Windows, the answer is probably 1 for the OS, 1 for the antivirus, 1 for the antispam and firewall and the last one for my application. The ecosystem you need for this platform is huge and affects directly the throughput. On the contrary, a system like FreeBSD or Linux can run off a low-power motherboard (I am using a Via Technology EPIA board to write this article) and still be responsive - at this very moment, I am compiling 3 applications in the background and can hardly feel it.

For a benchmark in the office, I suggested using something different from Windows for once and prepared a live CD with FreeBSD 6.2 and a sample application. The aim was to stress an existing server with heavy traffic. When we came to talk about the hardware I needed, the answer was simple: the first PC that you can come across, I don't even care how much memory is on it. The production staff asked: "That's a UNIX platform. Is 1GB enough?" No I really meant the oldest, most unusable machine we have in stock, as long as it has at least 128MB of RAM and a 500MHz CPU: the system itself boots with 14MB. After a long exposure to Windows, the concept of memory requirements are really biased.


# Security

I guess the number 1 argument around the free platforms is security but what does it really mean? Microsoft tells us Windows is the most secure platform but other providers and _vox_ _populi_ tell us otherwise, who is right? Well, there are different ways to look at it.

To start with the obvious: amongst the readers, how many run Windows? If yes, are you running your email program from an administrator or privileged account? If not, I bet the Windows machine is in your office, you have a security officer in the IT group and nobody ever asked you if you wanted to reign on it. Now, what's the point in having administrator access when you read emails or browse the web? You're just looking for problems. I am horrified to see network nodes running applications and consoles as Administrator on sensitive subnets, with the excuse that they are protected by a corporate firewall. UNIX/Linux/BSD users will all tell you they never accessed the web from the root account (or just for emergency purpose): if they need privileges, they run relevant, isolated commands under "sudo". This does not mean that Windows is less safe but just that the traditional usage ignores the risks and this implies that you need a heavier protection.

Another issue is the software running on the system: as stated on the OpenBSD web site, a system can only be as secure as the applications it runs. You can have the best operating system on Earth, if the applications are flawed, your system is compromised. Therefore it is important to restrict the number of applications installed and follow carefully the security advisories. From this point of view, Linux and the BSD have an edge because you can tailor the install process to restrict useless blurb on the disk. Windows will install most of its components by default with basically no chance of removing them easily later on. In-house applications are no exception to this rule, and are often underestimated.

I won't comment on Microsoft vs. others' numbers of vulnerabilities because there is some brainwashing involved and it often comes down to comparing oranges with pears (Apples also join the party from time to time). The numbers are more transparent on free platforms because the developers publish their discoveries and invite users to patch. Microsoft publishes patches for vulnerabilities on a
 regular basis but does not publish pending bugs so it is difficult to evaluate how old a "0 day" vulnerability really is. In this light, the "time to fix" may not be measured in the same way. Sometimes, the marketing decision is even not to fix them. 


# Support

The number 1 issue I meet when advocating for free software is support: who can the Finance department nail if the system fails? Microsoft will always have a contract to offer, with a price tag associated. Whether they will respond when a serious bug is discovered or how much it will cost is a secondary issue, at least in big companies. That's how I ended up recommending to remove a Linux machine from a network and replace it with a Windows server to run Apache and PHP: when the server is old and obsolete, maintaining it is way more expensive than installing a standard system.

Support will also involve educating staff, as it is much easier to find Windows-literate engineers than Linux or BSD experts. It does not mean they will do a great job but they exist. Now, this can change in the near future because the younger generation is more aware of the free alternatives, which are much more affordable for them. Linux and BSD fans tend to be more "do-it-yourself" oriented and are likely to be good contributors in a group: they often have a deeper understanding of what's happening under the hood and are more sensitive to low-level impact of software architecture.


# My take on it

No one system will be the solution across the board and adopting a free platform is really a personal decision. 2 easy spots are servers and terminals: servers for their monofunctional role and terminals for the potential power saving (you don't need a 300W PC for a simple data-entry terminal). The desktop will take more effort but some pioneers may be open for the test. 

A way to push open operating systems is to start with the applications: if you show that OpenOffice does the job in external offices, you remove already a major road block. Once you converted all the applications to free or Linux-compatible alternatives, changing platform can be a snap. But always make sure your users buy into the change: their happiness and efficiency will be viewed as your measure of success.
