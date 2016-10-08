---
nid: '2045'
title: 'The machine stops: IPV6 and the growth of the internet'
authors: 'Gary Richmond'
published: '2007-02-02 13:01:44'
tags: 'china,ipv6,ipv4,cngi'
license: verbatim_only
section: opinions
listed: 'true'

---
How could Gutenberg and Caxton have known that the invention of the printing press would be a massive force for the democratisation of knowledge and central to the transformation of a feudal society into the beginnings of a recognisably modern world via the Renaissance and the Reformation? The ability of printing presses to produce a massive volume of information, especially on religion and science, helped to break the elitist monopoly of the Roman Catholic Church.

Prior to this, knowledge was largely the preserve of a small, secular and religious elite. The production of a manuscript was a slow process, centrally controlled—as we might describe it in today’s terms, it was a closed source, proprietary system which would have got the _imprimatur_ from the Cathedral of St. Redmonds (the blessings of the holy St.Vista be upon them).

Once the printing presses got up to full speed a vernacular explosion of information went exponential and one could reasonably describe it as the equivalent of the first non-electronic internet in terms of the social and cultural impact. If Catholicism was Microsoft then the press-powered Reformation was GNU/Linux. A Bible in the vernacular in the hands of a ploughboy was about to shake the very foundations of the world.

Now everyman could become his own authority, thanks to an early example of distributed information. More than four centuries later another ploughboy was about to burst on the scene. The flying Finn, Linus Torvalds, sent a now famous e-mail which was the modern equivalent of either Luther nailing his theses to the door of the Castle Church in Wittenberg or perhaps Bismark sending the Ems telegram. Of course he sent an e-mail to the Minix newsgroup on the 25th of August 1991 saying that he would be doing a free operating system but it would only be a hobby and not big and professional one like GNU. Some hobby! Of course, GNU will forever be associated with Richard Stallman and if Torvalds was Luther then Stallman was Erasmus.

The rest, as they say, is history. Stallman provided the GCC toolchain et al and Linus got busy on the Kernel. But they would not have got very much further without the assistance of the internet and the tremendous opportunities it offered for co-operation and fast, distributed development. Windows too now relies on the net for downloading upgrades and security patches (stop laughing at the back of the class, Windows is a serious security matter) but GNU/Linux is a child of the internet and the very open nature of the operating system ensured that it would be a match made in Heaven.

Regardless of what operating system you use it takes place against the explosion of internet use and a stand-alone computer is an endangered species. A PC and other electronic devices unconnected to the internet will be as rare as a Linux virus in the wild. That interconnectedness is a boon to free software developers but as more and more users go online it causes a headache for those whose job it is to provide and dish out IP addresses.

The currently most widely used network layer IP standard for data exchange between electronic devices across a packet-switched internetwork is IPV4 which has a capacity for 4.3 billion IP addresses. This limit is imposed because IPV4 uses 32 bit addresses. When it was being designed that capacity looked pretty awesome but when you remember that this is less than the current population of planet Earth it begins to look a little anorexic. The designers of IPV4, in 1976, were Vint Cerf and Robert Khan. Reflecting on it many years later Cerf remarked that as the internet was then just an experiment 4.3 billion addresses seemed to be sufficient. Some experiment!

Despite that, experts disagree about the utility of IPV4: some pessimists like CISCO give it only to 2008 but others see it lasting to 2023. That huge margin of difference suggests that nobody really knows but I am  inclined to think that if the Internet of Things (a combination of RFID, robots and nanotechnology with useful but also serious implications for peronal privacy. I once attended a meeting addressed by the legendary Richard Stallman in which he told the audience that he once wore foil to counteract this technology) comes to pass and that all mobile phones have an IP address IPV4 is likely to expire sooner rather than later. The life of IPV4 has been extended, however, by what has been described as the inelegant fudge of Dynamic Host Configuration Protocol (DHCP) and Network Address Translation (NAT).

This all sounds very technical. It is, but we all use these things every time we go online. Unless you are a business or a University or a government or such like (which use static IP addresses) your ISP will allocate you a dynamic address from a pool of available addresses and once you log off it will go back into the pool of available addresses for others to use. As for NAT your router/modem should be NAT enabled and this allows you to run more than one online computer with a single IP address. However, this is only a stop-gap measure. Enter IPV6.

IPV6 is part of the IP Next Generation (IPng) and was adopted by the Internet Engineering Taskforce in 1994. It operates on 128 bits (but hexadecimal reduces it to 32 characters). This produces large decimal numbers up to 39 digits. In other words IPV6 has room, wait for it, for 340,282,366,920,938,463,463,374,607,431,768,211,456 addresses! That would be enough to flummox a Vegan Snow Leopard. Linux users will be glad to know that the Linux Kernel IPV6-enabled (and so is Windows Vista). IPV6-enabled devices will have two addresses between which the user can flip: an authenticated one for transactions and another for anonymous web browsers. IPV6 is generally compiled as a module but not necessarily loaded automatically at bootup, is backwards compatible with IPV4 and should carry us through long enough to see an operating system worthy of the name coming out of Redmond and give your underwear its own IP address too!

Just how important is IPV6 in the wider scheme of things? Well, just ask yourself if the equivalent of a space race has broken out over this protocol. Last time round it was the Russians. This time it is the Chinese. They think it is so important that they have developed the CNGI—Chinese New Generation Internet. This is political. China, with a population approximately five times greater than the Unites States, has 2% of all IP addresses and 26 Chinese share one IP address. Stanford University has sixty million. The USA has about one third of all theoretical addresses—about 1.2 billion.

Given those dynamics the Chinese are determined to steal a march on the rest of us (as are the Japanese and the Koreans). CNGI is IPV6 by another name and they take it very seriously. The Olympic Games in 2008 in Beijing will be the showcase for it. Everything from traffic cameras to the broadcasting of the games itself will use IPV6. As China is still a highly militarised Communist country the Peoples Liberation Army (PLA) plays a central role in all of this. They have designed their own IPV6 routers, have spent in excess of $200 million on the project and, at a recent IPV6 Global Summit in Beijing in April 2006, no less than two hundred Chinese engineers attended. They see definite military intelligence uses for IPV6.

The Chinese regard IPV6 as part of the present and coming resource war. Economists and futurologists define this variously as oil, water, land, knowledge, intangible assets and, increasingly, cyberspace. _Unrestricted Warfare_ by Qiao Liang and Wang Xiangsui of the PLA was published in 1999 from their publishing house in Beijing. A quick search of the PDF document only turned up one reference to cyberspace but fifteen for internet, describing the latter as being included _in the ranks of new-concept weapons_. This is a very interesting and long document and, even if some of the analysis will be challenged, the fact that the Chinese military is thinking about it shows that this may be where the great game is at. I have given a reference for it in the bibliography at the end of this article.

The internet is not an original, in the sense that it has been built upon a succession of other ideas and technologies but free, open source ideas have exploited the distributed nature of it to advance the technical and political goals of Linux users. The internet facilitates progress through distributed acceleration of fre software projects and indeed many ideas and facilities not connected to it. For example, consider this: it has been estimated that a typical GNU/Linux distribution would have cost about $1 billion to develop by conventional means and in 2001 David Wheeler found that Red Hat 7.1 contained thirty million lines of code equivalent to eight thousand person years of development time. Prior to the internet it is anyone’s guess if this would have been done with a closed source, non-distributed system.

Everything I have written thus far merely indicates the complexity and interaction of existing and emerging technologies in an increasingly complex world which seems to be progressing at an ever faster rate towards what Ray Kurtzweil calls _the singularity_. It subverts the traditional, vertical nature of politics and society, destroying old certainties and creating new opportunities and disseminating much of itself through an internet-connected world which can as easily lead to a dystopia as to a paradise.

Politicians, particularly in the United Kingdom (my neck of the woods), are finally beginning to realise this—even those, the vast majority, usually humanities graduates, who know as much about IT and science as a teabag does about the history of the East India Company (thanks again, Douglas). However, possesed of God-like hubris, they think that they are the motive engines of society but they are only the wheels. They have no intrinsic motive power of their own.

Science, pure and applied, is the real engine of change and progress and many cultural, literary ideas and activities are often detailed reactions to it after the fact. Some of them still haven’t got the message. Along with their lobby groups and King Canute they have assembled on the beach to command the tide to go back and always look surprised when they have to fight for the lifebelts.

I said at the beginning of this article that I was a great believer in the law of unintended consequences and two things exemplify this perfectly. I called this piece _The machine stops: IPV6 and the growth of the internet_ and in doing my research for it I naturally Googled “E.M. Forster the Machine Stops” to check my memory of the story that I had read all of thirty nine years before as part of my O-level English syllabus. To my delight the very first search returned a result that also made it look as if I had plagiarised the title.

Reader, I swear, on the grave of Charles Babbage, I did not filch the idea but the author had discovered it too and said:


>Anybody who uses the Internet should read E.M. Forster’s The Machine Stops. It is a chilling, short story masterpiece about the role of technology in our lives. Written in 1909, it’s as relevant today as the day it was published. Forster has several prescient notions including instant messages (email!) and cinematophoes (machines that project visual images).. 

It made the hairs stand up on the back of my neck. Ironic too, as Forster was better known as the author of Howard’s End and Passage to India and the theme always running through his novels was _only connect_! Well, call me Pollyanna and bugger me with a fish fork but you couldn’t make it up. The second thing is that this article started life as an attempt to ascertain the energy costs of the ever expanding internet. This proved to be such a big, complex, ambiguous and slippery subject that I almost lost the will to live a few hours in. IPV6 just came up as component of that but it became such an interesting and focused topic in itself that it rapidly became the centrepiece. It was an educational experience.

The Chinese have an interesting curse: _may you live in interesting times_. It looks like things are going to get very interesting indeed as the connectedness of the internet gets, well, more connected.


# Bibliography


## Web sites

[http://www.cio.com/archive/071506/china_sidebar1.html](http://www.cio.com/archive/071506/china_sidebar1.html)

[http://www.cio.com/archive/071506/china.html?CID=22985](http://www.cio.com/archive/071506/china.html?CID=22985)

[http://en.wikipedia.org/wiki/China_Next_Generation_Internet](http://en.wikipedia.org/wiki/China_Next_Generation_Internet)

[http://seclists.org/isn/2002/Apr/0145.html](http://seclists.org/isn/2002/Apr/0145.html)

[http://www.c4i.org/unrestricted.pdf](http://www.c4i.org/unrestricted.pdf) (Unrestricted War book link to book by Liang and Xiangsui)

[http://en.wikipedia.org/wiki/Ipv6](http://en.wikipedia.org/wiki/Ipv6) (all you ever wanted to know about IPV6)

[http://english.people.com.cn/200609/26/eng20060926_306545.html](http://english.people.com.cn/200609/26/eng20060926_306545.html)

[http://www.ipv6tf.org/news/newsroom.php?id=2212 (test if your operating system is IPV6 ready)](http://www.ipv6tf.org/news/newsroom.php?id=2212)

[http://www.kame.net/](http://www.kame.net/) (to find out if your browser is IPV6 ready. Think Acid2 test)

[http://www.dwheeler.com/sloc/redhat71-v1/redhat71sloc.html](http://www.dwheeler.com/sloc/redhat71-v1/redhat71sloc.html)


## Books

Ray Kurzweil, The Age of Spiritual Machines (Phoenix, 1999)

Ray Kurzweil, The Singularity is Near (Duckworth, 2005)

E.M. Forster, The Machine Stops (1909)

