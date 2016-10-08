---
nid: '3491'
title: 'Free Software: the road to a Universal bundle, a powerful app store, and world domination'
authors: 'Tony Mobily'
published: '2011-01-03 4:29:48'
tags: 'free-software,apple,android,market,app-store'
license: verbatim_only
section: end_users
listed: 'true'

---
Apple is doing it again: they are releasing an app store for OS X on the 6th of January. Just like the iPhone app store, and the Android app store, this is going to be a hit: the OS X ecosystem will get a giant boost from it, and we are left -- once again -- with a lot to learn.
Before you mention that GNU/Linux doesn't _need_ an app store because it's free software, and before you even say that GNU/Linux already has an app store through one of the many software managers (Synaptics, Ubuntu Software Center, apt-get), please read this article.

<!--break-->

# The technology behind an app store

I am going to sound like a broken record to those readers who are unlucky enough to have read my editorials over the last few years. To keep things simple, I will make this a point list.
Please note that by "application" here I mean a user-oriented, GUI application (think of Chrome, OpenOffice, Pidgin, Rhythmbox, Gnutella, and so on).

Here are the requirements -- and technical solutions -- for a GNU/Linux app store. 

* Self-contained applications. This means that an "application" needs to be a self-containing folder with libraries, icons, etc. "Installation" must mean "copying the folder over", and needs to be possible on a per-user base. _At the moment_: in GNU/Linux an application will spread itself all over your disk, making it impossible to have per-user installations and making it impossible to just copy an app over. _What an app store needs_: Every user on the system must be able to have their own apps installed, independently from other users, and needs to be able to copy it "as is" so that it works on a removable media, or on another users' computer.

* Apps need to work in every complying distribution. This means that there must be an established subset of libraries that every complying distribution will have to provide. (Yes, both KDE and GNOME libraries would need to be present) Applications will be able to expect that subset, and will need to be statically linked to the extra libraries they need in order to work. _At the moment_: Each distribution has a set of libraries, and each application needs to be compiled on a specific distribution in order to work. _What an app store needs_: Every app needs to work on every complying GNU/Linux distribution.

* Apps need to warn the user if they need updating, and they need to be able to be registered to open specific file types. Basically, this means that every application is registered on a per-user basis. _At the moment_: generally speaking, in GNU/Linux, applications are installed by a package manager (RPM o DPKG) which will deal with upgrades, while the user interface (Gnome or KDE) decides what application to run for specific file types. _What an app store needs_: a GNU/Linux app store will need an update mechanism that is _not_ distro specific, and a way to associate self-contained applications to a file type.

* It needs to be possible to rate apps in a central database and it needs to be possible to forward one to all of your friends. This would make it possible to have "viral" apps, and it would help create something that is missing in GNU/Linux now: an app culture. _At the moment_: users need to actively go and look for applications, and all sorts of non-graphical applications will pop up in most searches. _What an app store needs_: the ability to share information about an app, in a centralised way: votes, comments, suggesting an app to your friends, etc. Focus on GUI applications.

* It needs to be possible to make apps that will run on different CPUs. I am not advocating something impossible: basically, the package would contain several directories, one for each CPU. It will be up to the packager to support several CPUs (if possible). Initially, this could be just a "theory" -- and get started with Intel CPUs. _At the moment_: the multi-CPU issue is pretty complicated, if not impossible to solve, with today's package management. _What an app store needs_: the ability to have self-contained applications that will work on several CPUs.

The application developers themselves should be responsible of creating the binaries for their applications; distributions should facilitate the process by providing ready-to-go build environments.

The technical side is something that should be taken for granted. GNU/Linux's fragmentation made such a technical scenario impossible -- at least for now. Major end-user distributions would have to agree on a set of libraries, as well as a common way to find out an app's version. They would also get their hands dirty together to develop a cross-distribution system to register the installed apps, and update them. Such communication between distributions might be impossible. As a result, distributions might end up sticking with what they have, and go their own way -- ending up with half-baked app stores.

Just to make it clear: the current way of installing software in GNU/Linux distro is _not_ going to make a good app store possible. Having a nice interface to deal with a million dependencies behind the scenes" is like putting lipstick on a pig. The limitations imposed by the current "spread the app across the filesystem" are too far-fetching. In the GNU/Linux eco-system, having a distro-dependent app store means further fragmentation and less adoption. Having only system-wide installation implies that every user needs to be an administrator to install apps.

# The economics behind an app store

This is the nice part of the article. Having a cross-distribution (or even cross-CPU) app store, where applications work regardless of what distro they are installed, opens up a _world_ of opportunities.

Imagine this scenario:

* You look for a GPL app, and find it. You download it, and start using it. It's free. However, a window pops up: it tells you that the author would love you to fund $1.5/year for its development. You can say "yes", "no, never", o "remind me next month". If you say "yes", you will help fund that application

* You could have a system-wide setting, where you allocate $5/month to every application installed. The system would then monitor which ones you use the most, and partition those $5 amongst the apps you use. You should also be able to have a list of registered applications, and enlist the ones you want to share your monthly donation to.

* Distro could be responsible of managing payments, and take a small (declared) cut for each payment. Distributions would then be in touch with the developers, and remit funds to them

* Really popular applications would receive a lot of funding. However, the critical mass here is the real deal: with millions of GNU/Linux users out there, it becomes _possible_ to write an application that has say 50000 users, and therefore receives $75000/year from its users.

All this is possible primarily because there are now _millions_ of GNU/Linux users who rely on free software. Amongst them, there is a small percentage who would be willing to give back some money if they had an easy, fast way of doing so. 0.1% of millions is still a very big number. To me, this is a potential that is being left completely unexploited.


# This is only a dream now. Could it become reality?

Could this little dream of mine become reality? I definitely hope so. The most concerning part is that it could also go horribly wrong, with distros implementing pseudo-stores and missing the real point: the cross-distro, user-specific, self-contained nature of such a setup. This kind of applications would work well on GNU/Linux desktops as well as tablets. 
Android's market us thriving. the iPhone market is thriving. It's a model that works, and that should to be copied.
But, a bunch of people "up there" need to get together, and decide to give up some of the control they have.




