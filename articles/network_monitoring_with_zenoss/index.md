---
nid: '2924'
title: 'Network Monitoring with Zenoss: A Reluctant Administrator''s Guide'
authors: 'Terry Hancock'
published: '2008-07-23 12:11:46'
tags: 'monitoring,zenoss'
license: verbatim_only
listed: 'true'
book: network_monitoring_with_zenoss
book_weight: -100
layout: book
---
My wife and I have been using (and collecting) computers for years, and we've shared this interest very effectively with our children. Now I am the victim of my own success: my household now has four physical computers, one of them dual boot. All are on a single internal Local Area Network (LAN) with five real users plus sundry administrative ones on each. Some of the computers are also running services. I also have two computers sitting in a box, which will probably be added to this mess soon, plus my wife plans to get a laptop. Like it or not, I now manage a network bigger than many small businesses! But I can't afford to pay a system administrator, and the tedium of "network plumbing" is my least favorite part of computer technology. Surely, there must be a way to automate this mess?

Enter Zenoss...

<!--break-->

# The Problem

I've been very conservative about setting up my network. Our computers vary in ages from about three years to about eight years—we have so many, not because we buy a lot of computers, but because we never throw them away: with two adults and three kids, there's just too much demand. Several of the computers are either hand-me-downs, or newly-assembled systems made from hand-me-down parts. Even the new ones are what professional administrators would dismissively dub "whiteboxes"—do-it-yourselfer systems assembled from major components. The edge router that connects to our line-of-sight internet uplink is an off-the-shelf appliance, which is fortunately very low-maintenance. Figure 1 shows the network configuration, and some of its oddities (one of the boxed computers is included in this figure).

=IMAGE=cartoon_home_network.jpg=Figure 1: The soon-to-be state of my home network, including a shop computer which I've recently pulled from storage. There's also a remote server that I also desperately need help to manage, even though it's not part of this network=

I have managed difficulties so far by just logging into the various machines by SSH and checking on things: full hard drives, hung processes, and so on. I use `ping` to check the various network connections to make sure they're connecting.

We also manage a virtual Zope / Apache 2 server provided by a service. My present method of monitoring this web server is to ignore it. Then, when somebody at the local club (for whom I host a free website) tries to post content and discovers they can't, they send me an email. Sometimes I read it the same day, sometimes it takes a week. Then I log onto the server with secure shell (SSH) and restart the Zope and Apache servers.  Clearly this process could stand some improvement!

# Network Monitoring

Now, of course, the great thing about tedious tasks is that they are usually simple enough to be automated, especially in today's world, with sophisticated artificial intelligence algorithms and programming languages that make them easy to use. So, surely, somebody can hack together a system to do all of that logging in with SSH and checking stuff automatically, right? Then, maybe they could put all the information together and give you a neatly-arranged set of reports on the state of the whole network that you could, say, view in your web browser?

In a nutshell, that's what network monitoring software is supposed to do. There are several popular programs for doing this, one very capable free software solution is Zenoss. Being implemented on a Python/Zope web application platform, it is familiar territory for me from a development perspective and relies on software I've mostly already got installed, so it's probably a good option for me—if it can do the job.

