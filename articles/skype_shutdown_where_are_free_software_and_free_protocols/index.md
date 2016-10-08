---
nid: '3185'
title: 'Skype shutdown: where are free software and free protocols?'
authors: 'Tony Mobily'
published: '2009-07-31 11:49:34'
tags: 'linux,voip,skype'
license: verbatim_only
section: opinions
listed: 'true'

---
Free software is definitely going strong in some areas, especially in the server market. However, there are other areas where free software and free protocols have failed. Internet based voice and video communication is one of those areas. The market is basically fully owned by Skype, a piece of proprietary software based on a proprietary (and abusive) protocol in the hands the same company that runs eBay. Free software advocates have been saying "what if Skype was discontinued?" for years. Then I read about [eBay considering shutting Skype down](http://www.theage.com.au/technology/biz-tech/shock-threat-to-shut-skype-20090731-e3qe.html). Pardon?

<!--break-->

# The Skype copyright issue

The problem is that when eBay bought Skype, they were in too much of a hurry to read the fine print. Skype's original owners retained the copyright for some crucial portion of Skype, specifically the peer-to-peer side of it -- the same code which is probably responsible of making sure that user A routes packets for user B without his or her knowledge of authorisation.

So, the 2.6 billion dollars eBay paid for it was obviously not quite enough -- Niklas Zennstrom and Janus Friis have been getting "licensing" money for that code since "selling" Skype to eBay.

To me, it sounds more like a rental agreement more than a sale: eBay paid 2.6 billion dollars for the right to rent Skype's core technology from Skype's owners. Let's call it a "bond" -- an expensive one. Especially when the landlord decides to throw you out.

# Where was free software?

Free software and free protocols have been lagging behind in terms of user penetration. I very much doubt that the user base of _every_ every single free voice client available now gets even close to the 480 million users Skype enjoys.

Why?

One simple answer: "fragmentation".

There is a protocol -- a free protocol -- which can be used for internet-based voice communication: it's called SIP. At the beginning, it had its problems -- it didn't work behind an ADSL router, which meant it didn't work for most people who might want to use it. A lot of those problems are now solved. But, some of them stayed. For example:

* Voice quality tends to be low -- and definitely lower than Skype. SIP is a "container" protocol. Voice can be compressed and treated using several sub-protocols. This means that each SIP client needs to be able to deal with at least a few of them, and for each call SIP clients end up "negotiating" which one to use. The two clients also need to have a compatible implementation of that voice protocol, which is not always the case. Result: quite often the voice quality is really quite low.

* Video doesn't always work, and it's poor quality. This is the same problem as the point above, except that it's worse. Video protocols are harder to implement, and incompatibilities are more frequent.

* You can't find other SIP users. Whereas with Skype you can find pretty much anybody by typing their names in the Search box, with SIP you have a bunch of independent networks ad no ability to find other people. Creating a global "search" option would have fixed that, but creating something like that is anything but easy -- in fact, it takes tons of work, and (even more importantly) cooperation amongst SIP clients using a well defined, established protocol.

* Configuring a generic SIP client is often confusing -- too confusing for the normal user. Configuring a "branded" SIP client is not confusing, but binds people to a specific SIP network. There should be a zero-configuration system where all the server information (STUN, forwarding, etc.) is gathered from the SIP server once you put the account name and password.

SIP is not the only protocol available to make voice calls. While developing its gTalk IM client, Google took the XMPP protocol (which allows federation and other neat features) and extended it so that it supported voice. Google did things right, and made sure that those extensions became part of the XMPP protocol. However, today it's 2009 and the [only client that supports voice in XMPP is... gTalk](http://www.google.com/talk/otherclients.html), which is not available as free software and only exists for Windows (!). I had great hopes when gTalk came out. However, 2010 is approaching, and I very much doubt that gTalk has a sizeable user base that uses it for voice calls. I see this as a missed opportunity for Google. I wonder if federated user searches using XMPP and a multi-platform gTalk client would have helped. I guess so!

I could also mention that audio in GNU/Linux is very much messed up: using PulseAudio in Skype results in calls resembling a badly dubbed movie, OSS and ALSA proponents are still arguing (!), and so on. But that's a different story, and GNU/Linux only has a tiny percentage of the market anyway.

# The solution?

I tend to offer solutions in my whining posts. In this case, I have to admit, I don't have one. Maybe when Skype collapses, there _will_ be a federated network of functioning SIP or XMPP clients, which will implement a neat "finder" and will have reliable high quality cals (audio and video) amongst different platforms. But I don't know... it does sound like wishful thinking.

What I do know, is that we, the free software community, have failed in the video and voice communication arena and there is no path towards a real solution in sight, with SIP and XMPP competing and Skype winning any competition -- and then ironically, maybe, disappearing.
