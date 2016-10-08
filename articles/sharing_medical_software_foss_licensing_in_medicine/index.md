---
nid: '2361'
title: 'Sharing medical software: FOSS licensing in medicine'
authors: 'Fred Trotter'
published: '2007-06-14 7:17:18'
tags: 'licensing,gpl,medical-software,health-it'
license: verbatim_only
section: opinions
main_image: hide.jpg
listed: 'true'

---
How does License Proliferation effect medical software and what can we do about it? How to choose a license for your medical software project? What are the implications for the medical FOSS community of various software licenses? This is intended to be a complete guide to free and open source software licensing for medical software. Please comment on how I can make it better.


# Sharing medical software: FOSS licensing in medicine

I have become well-known within the free and open source (FOSS) medical IT community for my positions on software licensing. The FOSS medical community is very small indeed, and I want my ideas to become more well known in the medical community at large. For that reason, please encourage your clinician friends to read this article and contact me for more information. I get more and more phone calls and emails from people who want help licensing medical software. I wanted to put together a short guide regarding the issues in FOSS licensing in medicine, so that I could refer people to a complete set of thoughts, rather than trying to shove a complex subject into a short phone call or forum post. You should probably know that I am not a lawyer, this represents the opinions of an informed developer and activist.


## Why “only” the GPL?

Many of the comments that I have gotten over at [emrupdate.com](http://www.emrupdate.com), and other places where I argue, attack my insistence on the GPL for medical software as opposed to other “free software” or “open source” licenses. Many do not understand or agree that I should seemingly choose one license and then insist on that license exclusively.


=ZOOM=I cannot waste clinicians time with a lecture on “libre” vs. “gratis”. They would think I was wasting their time... and they would be right=

The first reason that I focus on the GPL specifically is that I need a simple rallying phrase to get my message across. “Insist on the GPL” is the kind of phrase that people can chant in large crowds or put on a t-shirt. (Both of which I am sure will be happening real soon now.) I cannot either simply recommend “free software” or “open source software”. Too many people in the medical software industry use the term “free software” to refer to costless software, and “open source medical software” now means nothing thanks to Medsphere. I would love to educate the whole world on the difference between free “as in free speech” and free “as in free beer”, but I cannot waste clinicians time with a lecture on “libre” vs. “gratis”. They would think I was wasting their time... and they would be right. Still, there are places where other licenses should be used, my non-tshirt position is something more like:

_“Use the GPL for medical software whenever possible. Other licenses that are approved by both the Free Software Foundation and the Open Source Initiative are okay too, but generally you should have a very good reason for not using the GPL or a GPL compatible license for medical software. Even with a good reason, releasing software under a license other than one of the Google Seven, is mostly useless to the community, and probably useless to you too.”_


## The sneaky exception:

An example of a “good reason” is the use of corporate-friendly licenses for the use of interoperability software. For this reason, I generally think the Mozilla Public License (MPL) used by the [Mirth Project](http://www.mirthproject.org/) and Eclipse Public License (EPL) used by [Eclipse OHF Project](http://www.eclipse.org/ohf/) are okay. Often companies are concerned about the patent implications of using GPL software. Companies like IBM especially (one of the backers of OHF) wants to “have its cake and eat it too” with patents and free software. Software patents are a bad thing, and they are especially bad in medical software (a post for another time). A license that is “corporate-friendly” because it makes bad compromises with patents cannot also be clinician-friendly. Patents are bad for clinicians because patents trap potentially life-saving software ideas for twenty years.

The reason I approve of these corporate-friendly licenses for interoperability software is that it increases the probability that these software packages will be “sneaking” into clinics and hospitals. In the early days of GNU/Linux it was a very politically risky decision to suggest that the operating system be used in corporate environments. Administrators got around this political risk by “sneaking” GNU/Linux into organizations by using them for non-central applications. A GBU/Linux friendly sysadmin might sneak GNU/Linux into an company by serving an internal website with Apache, migrating the mail server over to GNU/Linux or using SAMBA to setup a Windows Shared Directory.

Later someone would say “We cannot possibly use GNU/Linux for that! We are an all-Windows shop!!”, to which the soft spoken revolutionary would reply “Actually GNU/Linux has been running our [something] for the last year and half”. All of a sudden what had been foreign and suspect became a trusted and reliable solution.

There is no way that GPL EHR systems are going to sneak into a previously proprietary hospital IT department. Can you imagine the uproar if someone attempted an over-the-weekend migration to VistA? Migrations like that often take years! But, FOSS interoperability applications might sneak in! An aspiring Medical IT administrator might realize that mirth or OHF would be perfect for his next HL7 project. He/she could install the free software solution and then beg forgiveness after his project was completed months ahead of schedule and thousands of dollars under cost. I can just imagine the committee meeting: Pointy Haired Hospital CIO: “We need to plan a 6 month HL7 vendor evaluation and a budget of $200,000” soft spoken revolutionary: “Actually I installed Mirth two months ago and it has been running ever since”.

Companies see MPL and EPL as less “viral” than the GPL. If you are a clinician this might be a switch! Non-viral is good for profit hungry companies while “viral” licenses like the GPL are good for freedom of thought. The so-called “viral” part of the GPL is better referred to as “keep-it-free”. You will hear GPL opponents call it “viral”, but all that means is that the GPL software is designed to resist proprietarization. The idea that freedom can be a virus is essentially clever marketing by proprietary companies whose main aim is profit, often at the expense of software freedom. It might be easier for projects using such a license to sneak in and prove the free software ideals using less viral licenses. Which is the only reason I would recommend those licenses over the GPL for interoperability projects.


## Don’t use other FOSS licenses:

With the exclusion of “good reasons” licenses other than the GPL for medical software generally should be avoided. The reason is an issue called “License Proliferation”. This problem should be especially apparent in a hospital environment.

Hospitals require large amounts of software to operate. There is software for managing the imaging machines, software that runs the tele-medicine systems, software that runs the accounting department, and tens if not hundreds of other small software packages. Ideally, all of these separate systems should feed or extract data from an Electronic Health Record at the center of the hospitals IT infrastructure.

License Proliferation is a problem when you want to take two software packages and merge them together to make a larger one. Suppose you have Widget A with an Eclipse Public License and Widget B using the GPL. You cannot just merge these two programs. Instead you have to have the two programs communicate to each other instead of simply making one larger program. Essentially you have to “connect” the two programs instead of “merging” the two programs. When you are dealing with two programs this is not a problem, but imagine dealing with the hundreds of programs that run a hospital. Some of those packages really should be “merged”. When everything uses the same license you can merge or not merge as is prudent given the technological situation.

Why should the GPL take this central role as opposed to another standard license? Because there is more GPL software available than any other FOSS license. By using the GPL you guarantee that your software can be merged with the most other programs to make new programs.

Currently, [WorldVistA EHR](http://www.worldvista.org/World_VistA_EHR), which is available under the GPL, has a tremendously good clinical reminders system. I would love to be able to use the clinical reminder templates from WorldVistA in [MirrorMed](http://www.mirrormed.org), the project I usually work on. I have no idea whether the task is technically feasible or not, but there are no licensing problems preventing us from doing that. Further, the [WorldVistA](http://www.worldvista.org/) community has been encouraging me to port some of the billing work in [FreeB](http://freeb.org) over to WorldVistA EHR. Because FreeB is also available under the GPL, the licenses do not stand in the way of such a merger.


## Why not use a “permissive license”?:

Generally, the stranger and more unique your software license is, the fewer other software packages it can easily be merged with. The exception is with “permissive” licenses, like the new BSD license. The Free Software Foundation even gives you a template for a [GPL compatible “permissive” license](http://www.gnu.org/licenses/info/SimplePermissive.html). The good thing about permissive licenses is that they can often be used to make GPL software. The bad thing about permissive licenses is that they are not “keep-it-free”. Suppose I write an important piece of medical software and release it under a permissive license. A proprietary software company might take my medical software and include it inside a proprietary software package. So I release my code in a fashion that respects the freedom of my users, but then some of my users use my software to gain control over others.

This is essentially what happens with FOIA VistA now. DSS currently does exactly this with FOIA VistA. The US government provides VistA under the Freedom of Information Act (FOIA) to anyone who requests it. That codebase is nicknamed “FOIA VistA” and is in the public domain. DSS takes that codebase and creates a proprietary product called vxVistA. DSS is very straight-forward about being a proprietary vendor, which, after dealing with Medsphere, I have a certain amount of respect for. Medsphere claims to be “open source” but releases some code under good licenses, like the GPL, some under badgeware licenses, and continues to keep certain modules proprietary. Ironically, this is the worst of all worlds for customers. Medsphere customers are relying on an “open source” solution with all of its attendant problems AND they are still locked into Medsphere as a vendor.

Releasing software under a permissive license encourages companies to make proprietary products from that software. This is far more common than one might think. Nokia used FreeBSD as a basis for its IPSO firewall product, and Microsoft based many of its networking stacks on BSD licensed code. This process of taking free software and making proprietary software out of it (proprietarization), is a threat to medical software users. There is a struggle for control of software between clinicians and proprietary vendors. Licenses like the GPL put the control in the hands of clinicians. Proprietarization takes software that was intended to be under clinician control and puts it under vendor control. Permissive licenses permit proprietarization and as a result should be avoided in favor of the GPL whenever possible.


## Do not write your own vanity license

I have recently been in contact with two organizations that have released software in an “almost open source”, “almost free software” fashion. In both cases there was either no fee or only a nominal fee included. The contents that these groups released are very valuable. However, we in the FOSS community are unable to touch either of these software projects because they are only available under a custom license. They were trying to share but the community of FOSS medical programmers were unable to accept their generosity. I have been working with both of these organizations to change their mind on this issue. Hopefully, the results of these efforts will form the basis of follow-up articles here. It appears that these licenses were written by the in-house or contracted legal teams of these organizations. Sadly, neither organization considered the problem from the communities perspective, instead they were thinking about the legal needs of their own organization.

As I mentioned in the beginning of this article, I am not a lawyer. More importantly, I cannot afford to hire a lawyer just because some random organization hired one to write a vanity license. When I use the GPL, Apache License, Mozilla Public License or any other well-known licenses that are used by hundreds of programs I do not have to sort out what the license implications of using the software are. For all the most standard licenses the Free Software Foundation evaluates the license, and publishes whether the license meets the [definition of free software](http://www.fsf.org/licensing/essays/free-sw.html). Generally, if they say a license is safe to use, it is. The FOSS community at large does not have the time or interest to fully evaluate the implications of a random license. There is no reason for us to do that. Why spend tens of thousands of dollars evaluating the license for an Electronic Health Record that is available under some strange, custom, vanity license? There are several good EHRs that are available under the GPL, or the MPL or some other standard license. We are simply going to ignore any EHR available under a vanity license and download one of the 50 or so that are available under the GPL and then put our money towards development instead of legal fees. As a community, we know that software development works.

We have no idea what the results will be when we hire a lawyer to examine a vanity license. The community will always choose to trust the lawyers for the Free Software Foundation, who clearly demonstrate that their goals are aligned with ours. In short: lawyers write custom licenses to benefit their clients, the GPL and licenses like it were written to protect the community at large, and finally, your software is not that important. Again and again I hear the refrain: “but you do not understand our special needs!”. If you release software with a vanity license, you will never attract the community you need to make it a success. Your vanity license will ensure that your “special needs” are meet, and further ensure that your project will be doomed to obscurity. If you release your code under a standard FOSS license (listed below) then you will not be in control of what happens with your software. Some of you were not listening: real FOSS license = you have no control. If you are uncomfortable with this reality then it would be better for everyone if you released nothing. At least then, you would not attract attention away from the projects and companies that are willing to put everything on the line with a standard FOSS license.


## Do not accept vanity licenses from others:

In the FOSS medical software there is a second problem with the issue of custom licenses, and that is one of copyright control. For instance, suppose that you register to download “Freds Cool Medical Interoperability Program” (FCMIP for short) for which someone has written “Freds Public License”. You look over “Freds Public License” (FPL for short) and it seems reasonable to you. However, you find that FCMIP fails to meet your needs, so you transition to the Mirth Project which uses the Mozilla Public License (a standard license). You contribute code to Mirth which re-implements a feature that FCMIP had. Later the owners of FCMIP sue the owners of Mirth because you “stole” copyright from FCMIP and put it into Mirth, in violation of the FPL, which turns out be nothing but a costless proprietary software license. Did you actually steal the code? As long as plaintiffs have deep pockets it matters not what is true, only that which can be proven to be true AND/OR that which can be argued about longest... whichever is more expensive. [SCO has sued IBM](http://en.wikipedia.org/wiki/SCO_v._IBM) over this issue with regards to the Linux kernel.

As the result of the SCO case, developers in the FOSS community are careful not to accept proprietary licenses, sign far-reaching non-disclosure agreements or otherwise allow themselves to be entangled with such confusion. The problem in medical IT is that there are two groups required for the effective development of medical software: programmers and clinicians. Programmers in the FOSS community know to avoid these kinds of entanglements, but well-meaning doctors, nurses and other clinicians might easily license something or sign something that will ultimately damage their ability to contribute to real FOSS software. This problem is compounded by companies like Medsphere who advertise “Open Source” software but still provide proprietary software. If you are a clinician considering using a software package that is advertised as “Open Source”, make certain that the license is actually a standard license (help for sorting this out is at the end of the article.) Otherwise you may doom yourself to the periphery of the core FOSS medical movement or, worse, cause serious damage to a legitimate project.




## Badgeware:

Recently, Medsphere [surprised me with a substantial software release](http://www.gplmedicine.org/articles_16/). Some of the software was released under the GPL, which I applaud. However, a substantial portion of the software was released as “badgeware”. The problem with badgeware is that it does not consider the value of software from the perspective of the community and instead only from the perspective of the company.

Suppose I wanted to use a portion of the Medsphere client in one of my own VistA projects. Even if 95% of the new software was my original work, I would be required to advertise for Medsphere in my project if I decided to include a portion of their badgeware software. The irony is that the organization that the badgeware most hurts is Medsphere. The README file for the OpenVistA CIS reads in part...


>A small portion of the CIS component is actually broken into a separate executable, PdfConverter.exe. This small utility acts as a remoting server, responsible for converting raw bytes of PDFs into GdkPixbuf bytes. This needs to be done out of process, as poppler (and by extension, poppler-sharp) is licensed under the GPL. The PDFConverter.exe sources, as well as the few shared classes used for remoting, are licensed under a GPL compatible license. We hope in the future that a PDF library with a license less restrictive than the GPL will be available, such that we can increase PDF rendering performance by not having the rendering done out of process.

Of course, the README does not mention that if Medsphere had chosen the GPL instead of the vanity badgeware license that they use for OpenVistA CIS then they could have improved the PDF rendering performance by merging with poppler. I wonder if Medsphere would use PDF software if the maker of their next PDF software package required their logo on Medsphere software? Medsphere is standing on the shoulders of giants like poppler and mono (which are GPL, LGPL and X11... all standard FOSS Licenses.) A little research revealed that poppler itself borrows code from the GPL xpdf project. So poppler improved and extended xpdf and then Medsphere implements poppler, but oh... we deserve permanent credit for this ground-breaking work, we need credit so much that we can afford to have poor PDF performance.

Will Medsphere’s CIS client serve as the basis for still greater products? Maybe, but the badgeware license gets in the way.


## The GPL is future proof:

I have already written on the [implications of hardware DRM on the medical software community](http://www.freesoftwaremagazine.com/blogs/tivo_healthcare). I will be writing more about how medical software patents threaten the medical community. These are extremely complex issues that the GPL version 3 will be addressing. The GPL typically allows for upgrades to future versions of the license. The Free Software Foundation puts a considerable effort into making certain that new threats to software freedom are addressed in forthcoming versions of the GNU GPL.

Each of these threats, including software patents, software patent “deals” like the Novell-Microsoft agreement, and DRM represent threats generally to software. Because these threats also affect medical software, by implication they also threaten medicine itself. Electronic Health Records (EHR),  such as the one found at [www.HealthFusion.com](http://www.healthfusion.com/), and all of the satellite software that attaches to EHR software will play a central role in the future of medicine. As the global understanding available in medical science continues to expand it will become impossible for doctors, without the aid of information systems, to keep abreast of all the information that potentially impacts their patients. Medical Schools that fail to recognize this will graduate physicians who are unable to keep up with the flood of new advances that will take place over the next century. In the future, doctors without basic medical informatics training will be unable to effectively practice medicine.

In that future, software freedom is a central issue in the progression of medicine itself. In that future, there will be further threats to software freedom. The Free Software Foundation is in a position to be able to continue to address those issues with updates to the GPL. No other license is both designed with software freedom in mind and has the resources needed to actually make software freedom in the future a reality.


## If you must use another license:

Often businesses feel that it is not possible to release under the GPL. I typically have little patience for arguments regarding this issue. However, I have heard the arguments enough to know that I will not be able to change everyone’s mind. If you feel that you cannot use the GPL, then what license should you use? This article is not the place for a discussion about the differences between various licenses. However, if you want your software release to be useful to anyone then you need to consider three different systems of license approval.

First, is the license you are considering an [OSI approved license](http://www.opensource.org/licenses/alphabetical)? The OSI has approved so many licenses that they are probably the largest contributor to the problem of license proliferation. Because the OSI fails to distinguish between its many licenses this is the least useful list.

Second, does the Free Software Foundation (FSF) [list the license as a “Free Software” license](http://www.gnu.org/philosophy/license-list.html)? The FSF gives a good starting point for evaluating different licenses, especially from the perspective of Software Freedom. The Free Software Foundations perspective on license proliferation is similar to my own: if you just use the GPL, the problem goes away. So with these two lists you have one organization that treats over 50 licenses on equal terms and one organization that insists on only one. Not very helpful.

Thankfully, Google has recently taken a stand on the subject of license proliferation. Sourceforge is a place for hosting FOSS software projects. Like OSI, Sourceforge is infamous for enabling license proliferation. Sourceforge will host projects that use any one of the OSI approved licenses and will consider hosting projects that write their own licenses. Recently, Google released a service in competition with Sourceforge to host software projects. In a controversial decision, Google decided to allow only a few of the top FOSS licenses for the projects that it hosts. [Google did this specifically to combat license proliferation](http://blogs.zdnet.com/Burnette/?p=192). The result is a short list of licenses that Google thinks generally cover the needs of different projects. I call the list the Google Seven. Here they are:


* Apache License 2.0
* Artistic License (used by often by the Perl community)
* GNU General Public License 2.0
* GNU Lesser Public License
* MIT License
* Mozilla Public License 1.1
* New BSD License

This is a significant step towards addressing the issue of license proliferation. These licenses are all approved by both the Free Software Foundation and the Open Source Initiative. If you choose from this list of licenses, then your projects will be license compatible with at least some of the projects that Google hosts. Outside of the projects that Google hosts there are large bodies of useful software available under each of these licenses. Which is, of course, the reason that Google choose these seven licenses.

This list represents a central meeting point from three very influential organizations with very different agendas in this arena. By choosing a license from this list you are certain to have sympathizers in at least some part of the community.


## Summary:

One of the core values of the FOSS community is collaboration. Incompatible licenses are a barrier to any collaboration process. If your aim is to share software, then doing so under a strange license is not in your best interest. The best license for you to use for your Medical Software is the GPL, which makes your software license compatible with the most software packages available. If that is not possible, choose a license from the Google Seven which makes your software license compatible with at least some important software projects. If that is not possible, choose from the list that is approved by both the Free Software Foundation and the Open Source Initiative, which means that your software package will be license compatible with at least one other project. If that is not possible, for pity’s sake do not write your own license, which makes your software license compatible with nothing.

Thanks,

- [Trotter](http://www.fredtrotter.com)

Editor of [GPLMedicine.org](http://www.gplmedicine.org)
