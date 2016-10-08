---
nid: '1848'
title: 'Greeks bearing gifts (UPDATED)'
authors: 'Edward Macnaghten'
published: '2006-11-03 6:30:00'
tags: 'microsoft,novell,oracle,unbreakable,sender-id,red-hat'
license: verbatim_only
section: opinions
listed: 'true'

---
Here in the UK, there is a saying that was a quote from [Virgil](http://en.wikipedia.org/wiki/Virgil) that was often quoted in the original Latin, “Timeo Danaos et dona ferentis”, which is usually mistranslated into the phrase “Beware of Greeks bearing gifts”. It refers to the incident where the Greek troops hid inside a large [wooden horse](http://en.wikipedia.org/wiki/Trojan_Horse) and gave it to the Trojans as a gift who promptly accepted it, then in the night the Greeks broke out of their hiding place, went to the city gates, and... Well, you probably know the rest. However, it is that phrase, or both of them in fact, that pass through my mind on seeing recent Microsoft and other corporate closed software companies’ press releases recently.

There are three that come to mind that have occurred recently...


<!--break-->



# Microsoft’s Sender-ID patent non-assertion

The first is Microsoft’s announcement of a [Non Assert Pledge on their Sender-ID](http://biz.yahoo.com/prnews/061023/sfm078.html?.v=67) technology. Whatever you think of the technology itself, the pledge, on the face of it, sounds really good. That is, until you look at the details.

As far as I can tell, what Microsoft has said is that they will not assert any patents in Sender-ID unless you try and assert a patent of yours against Microsoft that it has allegedly infringed. Suddenly, I found myself thinking oo-er... Imagine that MS’s Sender-ID technology becomes standard, then imagine I innovate a fantastic new idea that warrants a patent and apply and get one. Then, later, Microsoft copies my idea and infringes on my IP, then if I try and sue Microsoft they will revoke permission to use Sender-ID—which would now be standard—and sue me back for that. I then have a choice of either letting Microsoft get away with “IP theft” or losing my ability to practically send and receive email. However, if Microsoft decide to sue me for any other patent, one that is not involved in Sender-ID, then I have nowhere to go and am in the swamp up to my neck, weighted down with stones, and with the alligators rapidly approaching. Well, it will feel as such anyway.

At this point, let me say I am aware that you probably don’t approve of software patents. And, to be honest, neither do I, and my preference would not be to apply for one. However, they are a fact. You may not approve of drunken drivers, but pretending they do not exist and not giving them a wide berth can be damaging to your live expectancy. The fact that I do not approve of software patents does not mean I will ignore the issues they present.

Going back to the Sender-ID, Microsoft, by so-called “giving away” the non-assertiveness, they improve their chances of having it adopted, and it appears they are giving us a gift. However, as far as I can see, by accepting this gift we are giving Microsoft the ability to run riot over all regarding patents while preventing anyone else from retaliating and using their portfolios to defend themselves. I hope the standards people will use an X-ray on that particular horse before letting it in.

**UPDATE, 5-NOVEMBER-2006:**  Microsot's Non-Assertion pledge is not the monster described above I thought it was.  According to their [web page](http://www.microsoft.com/interop/osp/default.mspx) they will only assert the patent if they are attacked by a suit for the same technology.  However, I still personally think Microsoft are promoting Sender-ID to control the technology more than to improve life for all, anything that helps stop spam I am for, but why did not Microsoft join with standards already in place (ie [SPF](http://new.openspf.org/SPF_vs_Sender_ID))?  There is obviously something in it for them for controlling this standard.  Even though the Microsoft pledge was not as bad as I first thought (in fact seems it quite reasonable to me), I still am against letting the Sender-ID horse through the gates of the city.


# Oracle’s Unbreakable Linux

When I first heard about [Oracle’s GNU/Linux](http://www.oracle.com/technologies/linux/index.html) offering, my immediate reaction was: “What a stupid name to give it!”. All software has bugs, and as soon as the first one was found in the distribution I expected the headline: “Oracle’s Unbreakable Linux breaks”, and so reviews ([1](http://www.linuxformat.co.uk/modules.php?op=modload&name=News&file=article&sid=433), [2](http://www.linuxplanet.com/linuxplanet/reports/6328/1/)) have not been that brilliant, but it’s early days yet. What worries me about this is not the quality of the software, but Oracle’s motives. In my view, it is obvious that Red Hat has upset Oracle—probably by buying JBoss—and that Oracle wants to harm them because of it. I don’t buy into their explanation that they want to improve quality of support through competition by providing another choice for customers. If they wanted to do that, they would have assembled their own distribution and tuned it for their needs, rather than adopt Red Hat’s one. They are out to poach Red Hat’s customers by offering the same service for half the price.

“Hang on a second...”, I hear you cry, “same service for half the price? That is good, isn’t it?”. My answer to that is “On the face of it yes, but lift up the tail and look inside.”. Let me explain...

Oracle are primarily a closed software company that makes money selling licenses on closed software. Their traditional RDBMS market is being heavily attacked on two fronts. Firstly, by a range of free based products that include PostgreSQL and it’s derivatives for the scalable enterprise solutions, MySQL for the smaller web-based ones and Firebird for whoever requires that standard of technology. Secondly, it is being attacked on the closed software front by MS’s SQL-Server products. Oracle needs to diversify before it’s too late.

They’re not stupid, and diversifying they have been doing, largely into the application and middle-ware markets. However, they are going into an area populated by many. Oracle wanted JBoss (a player here) and Red Hat’s “pipping them at the post” and purchasing it themselves would not have played well with the board members. I think Oracle’s announcement is an attempt to harm Red Hat’s business rather than increase their own. It seems to me the announcement was designed to harm Red Hat’s stock price, which it succeeded in doing, and they are targeting Red Hat’s revenue stream with their marketing with little benefit to themselves. Very suspicious behavior in my opinion.

Oracle have an interesting relationship with the free software community. They have contributed to the Linux kernel amongst others, but only when such contributions have benefited themselves. There is nothing wrong with that, of course, many do the same. And the contributions are very welcome and benefit all, whatever the reasons behind them are.

They have purchased InnoDB, and no-one quite knows why (I guess Oracle do but they are not being clear on that). A theory is that they wanted to try and control the MySQL market, who use it as their main transactional back-end technology. If that was their motive, then they were not adequately advised, as InnoDB is free software which can be supported in one way or another by others. And, there is nothing stopping MySQL from developing another back-end, which is what they are doing.

Oracle like and use Linux, when I interviewed a rep there they said that its openness enabled them to examine the source code and see and fix kernel problems on their customers’ installations easily, improving “supportability” of their own software. However, some of their forays into free-software-land have lead me to question their motives. Are they attempting to be destructive at times? I honestly do not know. I am not saying there are commandos in the belly of their beast, I just think we should rattle it about to see if anything inside says “Ow!”.


# Microsoft’s agreement with Novell

Every business likes an edge—a unique point that separates them from the competition so that customers will choose them rather than someone else. I think this was Novell’s thinking in the [Microsoft/Novell Agreement](http://blogs.zdnet.com/Gardner/index.php?p=2369). The two major players in the GNU/Linux enterprise market are SUSE and Red Hat, and it makes sense for SUSE to find attractions that would make customers go to them rather than the other one. A non-assertive agreement is easy for a salesman to use, they would say something along the lines of “Microsoft have many software patents, we have an agreement with them that guarantees you will not be sued. However, if you choose the other guy...”.

The question I am not convinced Novell have asked is “What is in it for Microsoft?”. Or, if they have, they probably didn’t think the answer significant. But, in my opinion, the answer is very significant for those who wish for free and open software and standards.

Again, on the face of it, Microsoft seems to be giving GNU/Linux its blessing, but when I examine the points highlighted in the [Joint letter to the Open Source Community](http://www.novell.com/linux/microsoft/openletter.html), I find myself making the following observations:


* **Patent coverage:** This gives general credence to Microsoft’s software patents that would not have existed before. It would be easier for them to use this weapon to put competitors out of business now. The concept of only protecting “Non-Commercial” developers seems to be suggesting that community GNU/Linux should be demoted to a hobbyist activity, like stamp collecting. Yeah right! Who does _that_ benefit?
* **Virtualization/Virtualization Management:** Microsoft are behind in this technology. Like all truly innovative advancements Gates and Ballmer were caught napping. The free offerings such as [Xen](http://www.cl.cam.ac.uk/research/srg/netos/xen/), [Linux-Vserver](http://linux-vserver.org/Welcome_to_Linux-VServer.org) and even [User Mode Linux](http://user-mode-linux.sourceforge.net/) are way ahead of the current Microsoft offerings. This agreement helps them catch up with little benefit to Novell and the free software community.
* **Office Open XML:** Microsoft are losing their fight to keep their stranglehold on office document formats. They have rejected Open Document Format, or payed minimum lip-service to it, but, despite that, government departments and major companies are moving to it. In an attempt to combat this, they have created their competing format which, as far as I can see, is an XML-ization of their current proprietary format with a suspicious looking Non-Assertion Contract. If adopted its complexity will place control of this well in the Microsoft corner. I do not see the benefit to the free and open community in placing this in the OpenOffice.org product, all that does is lock out Kword, AbiWord and all the others from this so-called “interoperability”. Surely, the correct thing to do is place Open Document support in Microsoft Office, but that would go against Microsoft’s strategy to control and extort.
* **Mono, OpenOffice.org and Samba:** The patent agreement with these technologies look to me like scaremongering in an effort to get people to pay someone (Novell) for these products or risk litigation. If this was successful it could, in effect, close these products. What is the point of having the source if you could receive patent suits if you try and redistribute modified code? Although this is unlikely to happen, I want to ask what reason does Microsoft have in signing up to this other than in giving that scenario a go?

All in all, I think that not only should you look Microsoft’s gift horse in the mouth, but should cut off its head and throw a few grenades down its throat. After that, burn it!


# Conclusion

Going back to the Virgil quote—“Timeo Danaos et dona ferentis” is usually mistranslated, the actual translation is “I fear the Greeks even bringing gifts”, a saying that I think is very relevant to closed software companies.

PS: I have nothing against the Greek people, it is just a saying and a particular historical reference, okay?

