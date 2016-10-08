---
nid: '2613'
title: 'Zenoss: a great system monitoring program which tries to do everything right'
authors: 'Tony Mobily'
published: '2007-12-12 9:46:56'
tags: system-monitoring-zenoss
license: verbatim_only
section: hacking
listed: 'true'

---
I was happily hanging out in the sysadmin room of a major ISP around here in Western Australia (no, I wasn't meant to be there, if you  really want to know!). Steve, the senior sysadmin in charge of the place, showed me a computer screen (running Vista, but I won’t comment on that) and said "Oh yeah, I'm sure you know about this...". "Yeah, I know Google maps" I answered. He looked at me embarrassed. "Err... actually, we use [Zenoss server monitoring](http://www.zenoss.com) here... look close. That's our VPN!" It was a map of their server in Australia. There were green lines between them. Green meant "OK". 
Thing is, I had no idea what Zenoss was until that very moment. I am supposed to be a capable system administrator. I have used Nagios for server monitoring, and I had even heard of RRDTool. However, what Steve showed me was what I call "server monitoring done right".

He was probably excited knowing something I didn't know (you get that when you're vaguely well-known), and did his best to show off his fancy monitoring system. He showed me more (carefully picked, I later discovered) screenshots, and decided to add my own server to the list of monitored ones--yes, that's www.freesoftwaremagazine.com. Which was down (no joke). I felt a little uneasy about asking the crucial question: "Is it free? You know, as in freedom...". "You mean Open Source?" "Alright, yeah, is it then?".

Zenoss is server monitoring done right. It has an ever-expanding community, it has all the buzz (something I have obviously missed, somehow...), and it's like the Ruby On Rails of web development: everything just seems to happen more easily while using it, and things "just work".

Who says that geeks don't follow fashion? I installed Zenoss on my own monitoring server that very night. I added a couple of devices, got lost in the configuration, read the documentation, found my way around it, and wasted even more time monitoring servers I keep an eye on as part of my night job. I am one of those people who installed Ruby On Rails when it came out, learned Ruby, tried to work professionally with RoR, and then went back to PHP/Drupal. Today, I am officially a Drupal developer. With Zenoss, will it last? I can't tell for sure, but it's been one week, and I must say I am highly addicted to the graphs I get from it.

"But is it free?" I had asked. "Well, not this version, no. This is the enterprise edition." My heart sank.

I don't like it when software is released under a free license... but it really isn't. PHP is a practical example, although not many are aware of this problem. PHP is free (as in freedom), but if you have a very busy web server and need an PHP cache, you have no choice but fork out money to Zend (_all_ of the other free PHP caches will eventually kill your apache, more or less randomly). PHPA, a free accelerator by ionCube, was stopped after treading on Zend's toes a few years ago.

I like Zenoss. I plan on using it every day. As a magazine publisher, I would probably be offered an Enterprise edition for free. What’s the difference? Well, this [Zenoss comparison page](http://www.zenoss.com/product/) sums it up well. 
Now, the first screenshot I ever saw of Zenoss was the "global dashboard". I liked it--a lot. However, you don't get it with the "Zenoss Core Edition" (released under the GPL). Other important (or shall I say Ruby-ish?) features are missing. The real question is: will the community develop a "free global dashboard" module? (It's only Python code after all...). If a member of the community does, will it step on Zenoss toes? What if somebody clones all the "commercial pack" features? I guess time will tell.

I ranted about the license. However, I do think that Zenoss is a fantastic product that deserves the attention it's getting (just like RoR did and still does). I am not just in love with the graphs, I think the full product has a degree of polish I rarely see in software these days. People are developing Zenpacks, and I am sure it will get more traction.
