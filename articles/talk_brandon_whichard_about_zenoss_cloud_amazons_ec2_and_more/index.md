---
nid: '3254'
title: 'A talk with Brandon Whichard about Zenoss, the cloud, Amazon''s EC2 and more'
authors: 'Tony Mobily'
published: '2009-11-27 3:12:43'
tags: 'monitoring,zenoss,amazon,ec2'
license: verbatim_only
section: interviews
listed: 'true'

---
The recent announcement of Zenoss of their new EC2 module got my attention. Everybody talks about the cloud, complain about it, fear it, snub it... and then some companies (and people) write free software that works with this cloud and spin some amazing things.

I talked to Brandon Whichard at Zenoss about it, and we ended up having a very interesting conversation about monitoring, the community, the cloud, and the future.

EC2 stands for "Elastic compute"; think of it as a normal Virtual Hosting system, with a difference: you pay according to how many resources you actually use. Anybody who signed up for a virtual server knows how painful the "provisioning" process can be -- plus, you will have to pay for your new server whether you use it or not. Amazon's business model is different, and it catches both small customers (who don't want to spend money for a CPU they won't use) and big customers (who want to be able to handle high workloads if they need to).

# What about Zenoss and EC2?

I asked Whichard the question you would always ask: so, what's the big announcement? "Well, first of all we have just released Zenoss 2.5, which is really big news. We have the Enterprise and Core editions. Zenoss Core is GPL code and is out there for anybody to see or use. But even more importantly, we have released the Amazon Web Services (AWS) ZenPack for monitoring EC2". I asked Whichard about licensing. "The AWS ZenPack has been released under the GPL. This is important because we are at that initial stage where we really want to get the community involved and see where they want the product to go, or where they want to take the product. We have a couple of large customers, institutions, who have shown a lot of interest; they are investigating right now. A lot of customers right now just want to know how to use the cloud so to speak, so we will see!".

# So how do you monitor the cloud?

In an ever-changing computer world, where CPU power is rented just like disk space, how do you do the monitoring? Whichard answered that "with EC2, you have a set of instances. Each one represents a virtual server. You can have different types of instances, some of them will be more CPU-hungry than others. Amazon has the Cloud Watch API, which allows you to see how your instances are doing. The great thing about this is that we can retrieve the info for each instance, or (better) we can monitor the whole Amazon account in one go. So, you can see if you are running out of resources as a whole, rather than for one specific instance. So, you can get Zenoss to call the right Amazon API to provision a new server should this be necessary".

This sounds like a dream: you are running out of CPU power? Easy, within 10 minutes you have another server ready to roll. However, it's not really that simple. Unless you did things right, a new server won't go very far -- it needs to be configured to _do_ the right thing. For example if your web server is under too much stress, and you add a server, the second one needs to be in the pool of daemons which serve web pages; more importantly, it needs to be able to access the data (database and files) in order to do that. So, realistically you will have a database server, a file server, a main web server which will act as a proxy, and a pool of web servers which will access data from the shared file system and the database server(s). Such a setup is common but it's not as straightforward as it might sound. You might decide to have only one database server, and use memcached instead -- therefore having a second pool of servers. No, it's not for everybody. I pointed this out to Whichard. He said "Yeah, you are totally right. You definitely will need a script that will configure the new server and will get it to do something useful. The setup you mentioned [with a reverse proxy server dispatching HTTP requests to sub-servers] is the most common one; thing is, now there is the technology to do this. It might not be easy (well, not yet) but it's definitely possible.

# Why only Amazon?

Whenever some proprietary vendor creates something good, I feel the urge to have the same thing... in the free software world. This might be tricky. Thing is, the world is full of great hosting providers which provide servers. Surely, it would be great to have some kind of unified system to monitor "generic clouds" rather than Amazon's specific one? Whichard said "Well, for a start, we have [Eucalyptus](http://www.eucalyptus.com) which is basically trying to be API-compatible with Amazon. I think that's an incredibly interesting project. Something standard like that will be a huge benefit. API-compatibility makes things easier for us too...  But you know how these things go. People tend to get behind one or two APIs, eventually there is a winner. I agree though, a standard is going to bring huge benefits; we will see if Amazon's API is going to be 'it'".  I asked Whichard whether at Zenoss they are helping the free software world move towards this direction. "Put it this way, right now we are interacting rather than leading. We are very interested in getting involved, but not actively doing writing any code. It's all about ecosystems, there are lots of efforts ongoing.

# The free software dilemma

I asked Whichard something I was especially interested in: did they debate whether Zenoss EC2 should be released for free or not? Was there any sort of dilemma? "There's always discussion. Every time we add new functionality, we have to decide where to place it. In general, it depends on the new features. If something would be widely used by most of the community, then we tend to release it. Things that are aimed at enterprise customers will end up in Enterprise version of Zenoss. We are always trying to find the right balance that makes the most sense for everyone."

# The final questions

In the end, I asked Whichard if Zenoss has anything big up its sleeves. Is anything major in the radar of a company that has released so much GPL code? I tried to trick him into answering, but didn't go very far.  "Well, we will continue with new releases of Zenoss, but OK, we are planning on doing something major in mid 2010...". Anything more specific? "Put it this way, it's a product announcement and it will benefit the free software community. If I say any more I might need a look for a new job!".  So, this will have to do for now I suppose!

Talking about the cloud, I asked Whichard how he saw the cloud. Is it really going to become "it" in the computing world? How will that change the server monitoring world? "This is an interesting question.  It's clear that it [the cloud] will be part of future, it's not clear how much though. It's all about figuring out the right projects and the right reasons. Things are promising but they might take a bit longer to catch on than some expect. Yes, server monitoring will change, but at the end of the day is that somebody is going to be responsible to keep all services are up and running; that's not changing anytime soon. You might end up monitoring a cloud, or a bunch of servers, or maybe a bunch of clouds... who knows.  In the near term, the big question is how this migration will happen."
