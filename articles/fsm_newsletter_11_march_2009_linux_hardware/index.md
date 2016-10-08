---
nid: '3125'
title: 'FSM Newsletter 11  March 2009'
authors: 'Tony Mobily'
published: '2009-03-18 8:45:36'
tags: newsletter
issue: ''
license: verbatim_only
section: announcements
listed: 'true'

---
When the GNU/Linux revolution started reaching the masses, around 2000, I predicted that by 2010 there would be full vendor support for the free operating system. Well, it's 2009, and I have to admit it -- I am feeling nervous. This article will outline my odyssey, the causes that triggered it, and -- for a change - a number of possible solutions. (Note: in this article I will mainly focus on third party devices such as 3G modems, cameras, MP3 players, and other "support" hardware which can be seen as "gadget".)

<!--

<!-- ****** ADVERTISING ****** -->


<!-- **Attention Subversion Users!** -->


<!-- Do you use Subversion? Find out about Serena Bug Tracking, a tool that gives you integrated, flexible and easy Bug Tracking. 50% off right now -- limited offer! -->


<!-- Check it out: -->


<!-- http://www.freesoftwaremagazine.com/newsletter_ad_1 -->


<!-- ****** END OF ADVERTISING ****** -->




# The odyssey

(Note: if you can't be bothered reading yet another sad story about poor vendor support for GNU/Linux, feel free to skip to the section "The causes")

My little odyssey started when I decided that I needed a 3G broadband connection so that I could work while on the run. (The reasons why I needed to do that, rather than using my phone, is going to be the subject of another blog entry...). In Australia all major carriers offer a "dongle" (that is, a USB 3G modem) and a SIM card for very little money. Those deals allow you to have prepaid internet access with reasonable speeds.

As A GNU/Linux user, I have experienced a lot of grief in the past; laptops, cameras, and all sorts of other devices just didn't work -- or only partially worked. This was especially true before 2005, when hardware support for GNU/Linux was already quite good but disturbingly patchy. Whenever there were problems, I kept on reminding myself of my self-appointed 2010 deadline, when allegedly virtually every vendor would support the Penguin. Things looked bright - until last week.

Three main carriers here offer prepaid Internet dongles: Telstra, Optus and Three. My first stop was Telstra -- as "evil" as their reputation is, their coverage _is_ much better than anybody else's. I went and asked: "So, does it work fine in GNU/Linux?". In 2005, I would have expected a pathetic "What is Linux?". This time, I had an even more pathetic "Linux? No, I don't think so, just Windows and Mac, a few people ask for that though". Knowing that I was heading for trouble, I had my laptop with me. I pulled out of a bag. "Can I just try your dongle right now?". As it turns out, they didn't have one to "test". However, the shop assistant was kind enough to allow me to plug _his_ into my computer. I tried it. It didn't recognise it at all. One thing I learnt with GNU/Linux is that things either work on the spot, or they will require quite a lot of black magic to make them work. As a GNU/Linux user, my black magic days are gone. Telstra was out. The shop assistant, who should get a pay rise, told me he had a Three dongle in his car and offered me to try it. I couldn't believe my luck. We walked outside to his car, and -- guess what -- I was online five seconds after plugging in the dongle. (To our US friends: yes, in Australia shops will happily tell you where their competitors are and even what their number is!).

So, I went to a Three shop, 10km away. I approached the shop assistant. "Does your dongle support GNU/Linux?" The answer: "Ah mate, I don't know, officially it's Windows and Mac... I know of a guy who tried but it didn't work". It turns out that the dongle I tried at the Telstra shop was the "old version" offered by Three. Only the new ones were available. I took a deep breath, and bought one. The shop attendant activated it for me.

It was recognised, but it didn't work -- it didn't connect. After a search online, and a lot of stress, I discovered that the APN needed to be changed into "3services" rather than "3netaccess". I did exactly that. It worked. I was online immediately after activation. In fact, right now I am connected using that very dongle.

# The causes

My small odyssey could have been a whole lot worse. I could have discovered that the new Three dongle wasn't actually supported. The fix to the problem could have been harder and required black magic, rather than a configuration change from the GUI. The question really is: why did it happen? Why is a GNU/Linux user still treated as a second class citizen in the end-user IT industry?

(Note: if you are an experienced GNU/Linux user, you probably know all this already -- and in fact you can probably add to this list).

I think this is a specific problem caused by several factors.

* Market penetration. This is slowly changing, thanks to the Netbook market and embedded device. But it's true: most desktop computers at the moment are running either Windows or OS X. I could look smart and pull numbers from one of those reports, but I don't really believe those numbers. I believe what I see, and I haven't seen a desktop GNU/Linux machine other than my own for a long time. This means that hardware companies are encouraged to only officially support what most users actually run.

* Fragmentation. This is also slowly changing, thanks to Ubuntu basically taking over the GNU/Linux desktop market. I don't think I will ever thank Mark Shuttleworth enough for this. Mark was the *perfect* person at the *perfect* time. However, Ubuntu is not quite widespread enough to be "it". A lot of Netbooks still come with a lame sub-version of GNU/Linux (see the EeePC). Hardware vendors and companies are confused about GNU/Linux. Not only there is no one vendor to deal with, there are also a zillion different versions of it: Ubuntu, Fedora, Debian, Mandriva, and so on. I suspect a lot of vendors would rather say "We don't support GNU/Linux" rather than finding their way in the GNU/Linux distribution jungle.

* Lack of door-knocking. Is anybody knocking on Three's door, telling them that they should support GNU/Linux, and telling them _how_ to do it? I doubt it. The trouble is that there are too many doors to knock on -- at the end of the day, Three is a small phone provider in Australia, a rather remote country. Even worse, there isn't a single company which will directly and solely benefit from this door knocking.

* Late device driver support. In Linux, the drivers are in the kernel. In Windows, supporting a device is a matter of writing a device driver and creating an installation disk. This causes a lot of problems in the Windows world -- a lot of Windows' problems derive from the fact that a lot of device drivers, which run in kernel space, are written badly and turn the operating system into something really unstable. Supporting Linux requires coordinating with the kernel developers and offer kernel patches so that everything works. At the moment, chip makers don't have a very strong incentive to make sure that their chips works with Linux _immediately_. So, Linux support tends to lag behind. I am not going to mention the intellectual property issues that some vendors still raise -- luckily, they are just a minority now.

# The solutions

Each one of these issues has a solution. Unfortunately, the real problem -- that is, vendor support for GNU/Linx -- is not going to get fixed until each issue is fully resolved.

* Market penetration. We can say that this is only a matter of time, but we mustn't forget that we can't rest on our laurels just yet. Microsoft is doing anything and everything to stop the GNU/Linux penetration rate, and it's winning some battles. Think about Netbooks: they should come with a common version of GNU/Linux like Ubuntu, which is the perfect OS for them; instead, Microsoft has resuscitated an 8 year old operating system just for them -- and vendors are installing it! Personally, every time a friend or a colleague comes to me desperate because his or her computer has been taken over by viruses, I upgrade to Ubuntu -- and nobody has ever complained. This should be taken a step further, by everybody -- common GNU/Linux users, LUGs, companies for their employees, and so on. Basically, everyone who cares aboug GNU/Linux and free software needs to work really hard and pulls any lever in order to make sure that Windows desktops are replaced with GNU/Linux ones.

* Fragmentation. I am going to cause a few angry comments with my proposed solution, but I think many out there share my view: "Ubuntu". Ubuntu should become _the_ default desktop distribution for GNU/Linux. Vendors should coordinate with Canonical to make sure that things "just work", and maybe even have a logo there. Canonical should provide logos and a lab to make sure that certified hardware actually works. This is especially important for gadgets and hardware aimed at receiving a service. Other distributions should be able to say "whatever is certified for Ubuntu, will work for us too" -- and it will be up to them to make sure that the statement is true. In my little dongle saga, Three would have simply interfaced with Canonical to make sure that the dongle "just worked", and would have simply attached a logo to their packaging: "Works with Ubuntu GNU/Linux". If their dongle wasn't supported by Linux, then they would have a choice: pick better supported hardware, or state clearly that they didn't support Linux. In this case clarity helps -- a "no" is definitely worse than a "yes", but it's definitely better than a "maybe".

* Lack of door-knocking. A single company cannot possibly manage to knock on everybody's door to push day 0 GNU/Linux support for new devices and for certifications. However, GNU/Linux is all about the community behind it. We, the community _can_ organise a major campaign aimed at making sure that the right doors are knocked on. For example if I came out with a simple instruction booklet which explained exactly how to install the Three 3G dongle in Ubuntu, and confirmed that it all works, Three could then add Ubuntu to the list of supported systems, and include the booklet with the packaging.  Basically, the community would tell each vendor 1) If the piece of equipment is compatible 2) How to install it in Ubuntu. We as the community can kick and scream about the fact that we have to do the work for them. However, we need to remember that we _are_ a minority, and that it's not yet financially feasible for them to support GNU/Linux users.

* Device driver support. This is a sticky subject. Drivers are written by kernel developers. I am not sure if this particular driver was contributed by the modem's maker or by a volunteer. The big issue, however, is that there needs to be enough pressure on companies like Three to pick a chipset that is fully supported by the Linux kernel. When that happens, chip makers will make sure that there is a driver in the Linux kernel as soon as the chip is released -- which means that more hardware is supported and Three has more choice.

# Conclusion

The conclusion is simple: "we need to work harder". We need to get to the point where getting an Internet modem is safe, because there is a sticker there that tells you so. We need Day 0 chipset support, and motivate vendors to work with the Linux kernel developers to make sure that spport is absolutely perfect.

We need to work harder and eventually live in a world where GNU/Linux is not a second class citizen, and hardware in general has three stickers: Windows, OS X, and GNU/Linux.

2010 might be a little optimistic. However, one can only hope.