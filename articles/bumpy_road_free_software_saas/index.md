---
nid: '3739'
title: 'The (bumpy) road to Free Software SaaS'
authors: 'Tony Mobily'
published: '2012-03-26 9:46:25'
tags: 'saas,lock,google,data'
license: verbatim_only
section: opinions
main_image: main.jpg
listed: 'true'

---
Free Software advocates quickly demonize SaaS as the ultimate way to take your freedom away. A lot of them dismiss the advantages of having data online highlighting (and rightly so) the fact that you may be locked out of your own data _anytime_. My question is: what if SaaS is in fact the way to go, the future, and just need to hurry the hell up and make sure that it's _easy_ to install, and use, the _great_ SaaS available under a free software license?

<!--break-->

# The cloud's advantages

I am not going to spend much of this article explaining why I believe that SaaS is great. I will however name a few reasons:

* Simultaneous collaboration on documents. When two people in two different parts of the world are both editing a Google Documents spreadsheet at the same time, or writing a presentation together, it feels like you are watching a Hollywood movie. Except, you are not: changes happen as they are typed, and productivity (as well as fun, may I say) is sky-high.

* Backing up. Last week, I had a full hard drive failure. It started with IO errors on my drive, which then evolved into real trouble. I have weekly backups, and recovered the most recent stuff just on time. I was lucky and able to act very quickly. Normal users normally aren't as lucky. If your data is on a server, you are fine.

* Software updates. I believe that only the very basic system should reside on the computer: the operating system, the browser, the basic desktop, along with IO drivers etc. For all that, yes, a big bunch of packages that get updated in the background make a lot of sense.  End-user software, however, should run in a browser window. Yes, you heard me right (and, before you think I am completely crazy, read on).

* Access. You can access your applications, and your data, from anywhere you are, and from any computer. This is a huge advantage.


# Arguments against SaaS

There are tons of arguments against SaaS. So many, that it's hard to list them: privacy, data control, data mobility, upgrade control, sudden account deletion, the list goes on and on. Pretty much all of them are due to the fact that, until up to now, having data in the "cloud" meant having it on some proprietary server somewhere on the planet, with a big corporation (and governments) able to spy on you.

All these arguments are real: it _is_ insane having your corporate spreadsheets, or your tax returns, your private information, and basically your life on Google Documents. It's a recipe for disaster: one day, Google might simply cancel your account, just like that.

But... what about the benefits? Should we really give them all up, just like that?

# "The cloud" is unsafe. "Your cloud" is not

I believe that the cloud as such is very unsafe. I agree with every single point ever made against it, honestly and frankly. However, I also believe in the cloud's advantages (see my earlier point: editing documents together, for example). The solution? That's in *your* cloud.

Ubuntu did a fantastic job creating a client-side system that anybody can install and use. Linux Mint is another great option. I believe that Ubuntu and Mint, together, cover pretty much all of the client-side, no fuss user base.

These systems are created by getting thousands of packages, testing how they work, and providing a simple installation procedure for them. Ubuntu in particular has gone a long way, with their Ubuntu Software Center as well as their incredibly friendly installation procedure.

All we need now, is the same -- but for the server.

People forget that there is, right now, a *huge* collection of free software that can do pretty much anything:

* [Teambox](https://github.com/teambox/teambox) for project management
* [Collective Access](http://www.collectiveaccess.org/) for archiving
* [Zimbra](http://www.zimbra.com/) and [Roundcube](http://roundcube.net/) for your email
* [Etherpad](http://etherpad.org/) for online documents ala Google Docs (yes, interactive). How many people knew that they could set up their own shared documents system locally?

The list goes on and on. In the end, you can have enough pieces of software that you will be completely sick of trying new ones. 

The short story is that if you don't trust the cloud (and you shouldn't), you can (and should) be able to create your own cloud, using your own servers.

The bonus is that you will be able to use these pieces of software wherever you are. You will be able to tick TODOs as done, create a document in real time with your colleagues, check your email and answer -- all by using your own servers.

# The catch: it's hard work 

Installing the pieces of software I mentioned above is hard work. Getting a server set up with just the four pieces of software I mentioned (which are just a drop in the ocean) can take a quite some time, even for an experienced system administrator.

Incidentally, the list I provided is especially complex: Etherpad is based on Node.JS, Teambox is based on Ruby, and so on. Some of them want a database server installed and configured... it really does get complicated.

Thing is, installing software was complicated as well, a while ago in GNU/Linux. You had to download the .tar.gz file, start compiling, and discover what libraries (and what versions) you were missing. Today, it's a _tad_ easier.

What I am saying here is, _it doesn't need to be hard_.

# A solution: a GNU/Linux SaaS distribution?

Just as GNU/Linux distributions simplified enormously the process of installing software and use it at desktop level, we need the same giant leap in terms of free software SaaS. We need a distribution that:

* Installs a baseless server
* Gives the means to configure this server (see: Webmin). However, administration should be basically unnecessary, or extremely simplified.
* Gives users the ability to install/enable web services
* Give users a "portal" where they can see exactly what services are available

This would effectively create an "application server" where the most important, free software SaaS are available at your fingertips.

Creating such a distribution is anything but easy: configuring a Webmail for example is quite involved and requires careful work. However, I remember some 20 years ago people saying that making a 100% user friendly GNU/Linux distribution was impossible because of the way Unix worked and was structured... and I am writing this while using GNU/Linux.


Before you say that I am just dreaming, and that there is no money in making a GNU/Linux distribution like this, picture this: a distribution could make all this available for free, but could then configure everything so that online backup happens seamlessly with their servers, at a small fee for more than X Gb backed up. Or they could offer pre-configured network devices (Raspberries, anybody?) with all the requires software preinstalled. Just like Ubuntu is trying to make money with Ubuntu One, there are possible business models to make this self-sustainable.

# Am I dreaming?

Maybe I am dreaming. However, I can't picture a world where web software is not more and more relevant. And I don't want to imagine a world where your data is always on a corporation's server -- a corporation well intertwined with the government, and willing to disconnect you from _your_ data without warning.

It _is_ possible to have the best of both world. It's just a little painful -- for now. But, it's only going to get easier. Hopefully.
