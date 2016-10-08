---
nid: '1218'
title: 'Interview with Patrick Luby'
authors: 'Tony Mobily'
published: '2005-11-30 11:02:40'
issue: issue_09
license: verbatim_only
section: interviews
listed: 'true'

---
Patrick Luby wrote the software layer which allows OpenOffice to run on Macintosh computers without running an X server. This way, OpenOffice also _looks_ like a native application. Since OpenOffice is one of the most relevant free software projects out there, the importance of his work cannot be underestimated. Patrick agreed on answering a few questions for Free Software Magazine.

**TM: Patrick, first of all: please tell us a little bit about yourself. What do you do? What’s your programming background?**

PL:I run my own software development consulting company called Planamesa Software. I have spent nearly a decade working as a software developer in a variety of commercial and open source projects including OpenOffice.org and Apache Tomcat using the C, C++ and Java programming languages on a variety of operating systems such as Linux, Mac OS X, Solaris and Windows.



**TM: When did you first decide to get involved with OpenOffice?**

PL: Back in 2000 and 2001, I worked at Sun in the OpenOffice.org group. I was the lead engineer of a small team that was trying to port OOo to Mac OS X. Although we made significant progress, Mac OS X was still in the developer preview stage so progress was extremely slow and difficult. It wasn’t until late 2003 when I had been working in Sun’s J2EE group that I began to have renewed interest in porting OOo to Mac OS X. By that time, Mac OS X was much more stable and Ed Peterlin and Dan Williams had successfully implemented a working version of OOo 1.0.x using X11.



**TM: At the beginning, the plan was to have NeoOffice/C and NeoOffice/J (with the interface written in C and in Java respectively). Now, NeoOffice/C seems to be dead. Can you clarify this for us?**

PL: Well, actually, at the beginning Ed Peterlin and Dan Williams were working on a Cocoa-based version of OpenOffice.org that had native Aqua widgets which they called NeoOffice. While Ed and Dan were able to put together some amazing code, they found that Cocoa and OpenOffice.org were just not meshing well and they were spending most of their type tracking down crashes in the Cocoa APIs.

Around this time, I had been dabbling with using Java as a shorter path to getting a stable native version of OpenOffice.org. I was impressed with the work that Ed and Dan were doing and I thought that maybe using Java might make a nice interim version that would keep users’ interest in OpenOffice.org alive while they worked on NeoOffice.

So Ed and Dan invited me to join the NeoOffice.org project and we came up with the name NeoOffice/J for my code. While this name worked well, many people refer to NeoOffice/J as NeoOffice so, to avoid confusion, we now refer to the old NeoOffice product as NeoOffice/C.

While no work is being done on NeoOffice/C, the work was extremely valuable as it served as the proving ground for Ed and Dan’s integration of native widgets into OpenOffice.org. Their work, which was the basis for the native widget support in Red Hat and Ximian’s custom versions of OpenOffice.org, will definitely help us when we add Aqua widgets to NeoOffice/J.



**TM: Right now, NeoOffice/J on Mac is an amazing achievement, but its interface is still not quite there yet. For example the widgets and the file dialog box are still non-native. Do you think OS X users will eventually have, thanks to your efforts, a version of OpenOffice that uses Apple’s widgets? And... well, I have to ask you this: when do you think it will happen?**

PL: Now that a stable release of Neo/J is out, implementing Aqua widgets and dialogs is getting much closer. We need to upgrade to Java 1.4 first since Apple will not support Java 1.3.1 on the new Intel machines. However, after we move to Java 1.4, our goal is to add native Aqua widgets and dialogs.



**TM: What’s your relationship with the OpenOffice developers like? Are you on good terms? Did your project take a while to gain acceptance?**

PL: I think that we have a good relationship. I am regularly talking with OOo staff at Sun and Collab.net. While I have heard rumors that Neo/J is separate from OOo due to some conflict, this is far from the truth. The primary reason that Neo/J is separate is that it benefits both OOo and us. Since we are always several months behind OOo’s official releases, doing our development outside of the OOo development process allows us to make changes without breaking the officially supported OOo platforms. Then, once our changes are stable, we donate back any changes that are common to the X11 version of OpenOffice.org.



**TM: What do you think about the fact that most of OpenOffice’s developers are Sun employees? Do you think this was behind the decision of dropping the “official” Aqua port?**

PL: This does not bother me at all. An application the size of OpenOffice.org requires a lot of highly skilled developers and my belief is that if Sun or some other company didn’t fund all of those developers, OpenOffice.org development would be extremely slow.



**TM: Do you think the NeoOffice/J team should get a good sponsorship from a company (Sun?) so that the development can be sped up?**

PL: We are always open to that and I am constantly pursuing outside funding. While a few companies have always been supportive of our efforts, funding has not materialized. So, instead of spending too much energy on looking for a big sponsor, we have worked on building our community. This, in turn, has led to a continual stream of small donations. These donations, while miniscule to a company the size of Sun or Apple, have had a huge impact on NeoOffice/J as I now am able to use these donations to reduce the amount of consulting work that I must do and use that time to work on NeoOffice/J.

It really has amazed me how much of an impact small donations can make. I would guess that many donors may wonder where their $10 donation goes. But collectively, these donations have translated into real improvements to NeoOffice/J.



**TM: If you were to rewrite OpenOffice from scratch, what would you change? Would you write something that is completely interface- and OS-independent? Do you think this is what the OpenOffice team should have done in the first place?**

PL: I can’t really provide an answer to this question. In my opinion, rewriting OOo from scratch is such a huge task and would require many people over several years to get a first working release out. This would be very costly so I don’t really consider it an option for anyone other than a large company with tens of millions of dollars to burn.



**TM: I have an iBook 900Mhz, and I just can’t run NeoOffice/J on my laptop. It takes about 30 seconds to start, and it’s quite sluggish after that. Do you think this is just a matter of waiting for faster CPUs? Or do you think that something can be done to improve the performances?**

PL: The latest Neo/J 1.1 release patch improves the program’s performance a lot. In general, what we have found is that memory, not CPU speed, is what makes the big difference in NeoOffice/J performance. Unfortunately, since we are running Java and the huge amount of OpenOffice.org code at the same time, I can’t deny that NeoOffice/J is definitely a memory hog and adding more memory to a machine will make a sizable difference in speed. NeoOffice/J will work with 256 MB of memory, but 512 MB is closer to optimal.

While part of the slow startup time is due to OpenOffice.org, part of it is caused by the NeoOffice/J code. I have noticed that Sun’s engineers have made OpenOffice.org 2.0 start much faster than OpenOffice.org 1.1. Hopefully, when we eventually move NeoOffice/J to the OpenOffice.org 2.0 codebase, we will see improvement in overall performance.



**Thanks for talking with us!**

