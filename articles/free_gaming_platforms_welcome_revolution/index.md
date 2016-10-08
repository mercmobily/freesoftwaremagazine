---
nid: '3768'
title: 'Free gaming platforms: welcome to the revolution'
authors: 'David Jonathan'
published: '2012-02-04 0:00:00'
license: verbatim_only
section: games
main_image: main.png
listed: 'true'

---
Talking about online gaming and gambling is a huge issue -- and it has always been. Many people have strong opinions about gambling, and yet Las Vegas exists, as well as many others ways to gamble. Gamblers have soon turned online, and found a huge market there too. I recently visited an online casino, [CasinoJuggler](http://www.casinojuggler.com/) that specialised in finding the best casino for mobile, and started wondering: what does online gambling have to offer, in terms of free and open source software? The answer will probably surprise you.
<!--break-->

Online gaming has one main problem that other industries only dream of: the main issue is the sheer number of users that tend to join a single site (!). The market is huge, and so is the userbase willing to join your servers to play. While [protocols for inter-user messaging exist](http://www.freesoftwaremagazine.com/articles/instant_messengers), they are not enough. Another technical issue, which somehow derives from the user base issue as well, is "random number generation". When you have millions of users (and they do!), the risk is that someone will work out patterns in your random generation procedure, and will therefore be able to cheat. There are other issues, mostly covering the administration level: for example, obtaining a gaming license; receiving payments from your users by credit card (most merchant have a love-hate relationship with gambling sites); issuing payments to users when they actually win. However, they are not part of what I will try and cover here. 

From a technological perspective, writing multi-user gambling software is an authentic nightmare: it's not just that it needs to _look_ good. A multi-table gambling game is a complex system with several (and I mean _tens of thousands_ here when I write "several") users connected and actively _talking_ to each other, exchanging cards, showing each other their hands, and so on. This is also a settings where nothing must go wrong: an unstable server will ruin the experience for your players immediately.

# What does all this have to do with free software?

Before the 10 February 2010, there was no established [free software](http://www.freesoftwaremagazine.com/articles/open_source_almost_always_free) project that provided a strong platform for online gaming. Then, [Cubeia released their software, Firebase, under a free license](http://www.cubeia.com/index.php/news/91-cubeia-unveils-open-source-game-server) (the AGPL).

Initially, the release was disappointing as the free community edition didn't include encryption. However, things changed dramatically when they released [FireBase 1.7.3 which included encryption](http://www.cubeia.com/index.php/blog/archives/248).

They have recently released [version 1.8 of Firebase](http://www.cubeia.com/index.php/blog/archives/400) (April 2012), and promptly released it for free.

The people at Cubeia are very, very serious about free software -- and know what they are doing. Their business model is simple: you start your business by installing and using FCE. You can write your own game using one of their scripting languages available (which include Ruby and Javascript!). When you are successful, you will most likely want to be allowed to make changes to the code without having to give it back to Cubeia. That's when you pay up and upgrade to the FEE (Firebase Enterprise Edition, perfect name!). When you have _millions_ of players and you absolutely need High Availability, that's when you upgrade to FHE (Firebase High Availability). In the meantime, they get people to contribute games back to the main source code and improve their software.

The Cubeia people are also _very_ serious about free software in ancillary tools. For example they released [Styx](https://bitbucket.org/cubeia/cubeia-styx/wiki/Home), a protocol generator they use for their software, under a free license.

This is free software the way it's supposed to be.

# Intrigued?

This opens up a world of possibilities to many people out there who want to install and use their servers. It also means that free software really does cover all basis.
