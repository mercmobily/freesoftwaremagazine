---
nid: '2932'
title: 'Going further'
authors: 'Terry Hancock'
published: '2008-07-15 15:36:17'
license: verbatim_only
listed: 'true'
book: network_monitoring_with_zenoss
book_weight: '0'
layout: book.html

---
I've described using Zenoss for a very small network here, and that's as far as I plan to go. However, you should realize that Zenoss was designed with very large corporate networks in mind, so it is quite possibly to monitor hundreds or thousands of computers with it.

Many of its features revolve around this kind of large scale application, such as the provisions for doing searches by many different criteria (on a LAN as small as mine, this won't get much use—I can generally get as much information as I need from the "Dashboard" or "Device List" views without needing any more sophistication, since it's trivial to check all of my systems at a glance.

If you want to use Zenoss on a larger network, you'll want to examine the details in the online [Zenoss Administrator's Guide](http://www.zenoss.com/community/docs/zenoss-guide/2.2.0/). Questions can go to the [Zenoss Community Forums](http://community.zenoss.com/forums/) at the [Zenoss website](http://www.zenoss.com/), which includes a number of other community resources, such as FAQ, Wiki, etc.

=TEXTBOX_START=Growing pains=
## _A note on the state of the Zenoss community and company involvement_

So far, Zenoss has proved to be a very good piece of software with very poor documentation (hopefully this article will make a small dent in that problem). The community around it is still growing, and the company backing it is having some growing pains adapting to the needs of a community-based support system. Documentation has been frustratingly underdeveloped and apparently neglected, although there are a number of places to start (but not one obvious one!).

You will note that I said "poor documentation" and not "lack of documentation". The _quantity_ of documentation is entirely adequate, but the failings fall into several other categories: out-of-date or conflicting documentation sources; a lack of priority (e.g. is the wiki, the forum, or the admin guide the most authoritative?); a lack of user perspective (do users really care how the ZenModeler works, or do they just want to know how to monitor a website?); and an incredible overuse of unexplained jargon.

As a brief (and typical) example of the jargon problem, one document was quoted as saying that the `zCommandCycleTime` is "the cycle time you use when executing zCommands for this device or organizer". Okay. So what's a "cycle time"? What's a "zCommand"? What's a "device"? I still don't know what an "organizer" is. More importantly, even assuming that I have correctly read the developers' minds and figured out that this is the period between successive ssh-based logins used to collect information from a computer on the network, _no where_ does it say what the _units_ are (they are apparently _seconds_, but no piece of documentation tells you this, even though this really ought to be documented right there in the user interface).

I found this extremely frustrating, and ran into several road blocks and false starts as a result. 

Documentation doesn't write itself, and it cannot be written in isolation: it requires the practical experience of users _and_ the expert advice from people who know the internals of the program.

So far the company does not appear to have invested much personnel time in answering the questions that are asked: I received few responses from my queries on the Zenoss forums, and those were generally not from anyone with internal technical knowledge of the software (though the responses from other users were often helpful). A lot of questions by other users weren't faring much better. This leads to a situation where you might find some way to make the software do what you want, but have little confidence that you've figured out the best or intended way to do it.

Zenoss (the company) needs to increase the availability of developers and other company experts to answer community questions. This is an important business need, because for free software, _documentation is marketing_: you see it before you buy and you know that even if you buy, it's probably the best you're going to get. It may be paranoic of me, but I sometimes imagine that companies with this problem are hoping that friction in understanding the free software offering will channel customers to their fee-based distribution and/or consulting services. If so, I think it's a strategic mistake. Paying customers are _always_ going to want consultants to hold their hands, but bad documentation and a weak showing with the community is going to make them think twice about paying for _your_ services. So let me repeat: _for a free software product, documentation is marketing_!

On the other hand, if the company is willing to invest some expert time in overcoming these hurdles, there is reason to hope that Zenoss can break out as a very successful package. Because despite all of these problems, it is a really useful set of software, and, having already invested time in learning it, I do intend to keep using it for my own network monitoring needs.
=TEXTBOX_END=
