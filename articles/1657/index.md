---
nid: '1657'
title: 'Thin clients and network desktops'
authors: 'David Sugar'
published: '2006-07-04 4:32:21'
tags: 'thin-clients,desktops'
license: verbatim_only
section: end_users
listed: 'true'

---
I read an interesting article in [LinuxJournal](http://www.linuxjournal.com/article/8822) on setting up thin clients recently. I have always liked the idea of having a server and using X in one of the ways it was originally meant to be used, but so far, no article has offered a clear idea how to integrate and support serving a mixed environment of thin clients and traditional desktop or laptop machines together conveniently.

Certainly, you can go through the trouble of rebooting your machine with a network boot, and operate your machine as a “thin client”, but this is a lot like the pain of dual booting. I recall even Richard Stallman hates having to dual boot; that is between GNU/Hurd and GNU/Linux naturally.

Another option is to configure the desktop manager to accept remote XDM requests and offer a host chooser at login. This is still possible with gdm in gnome, and kdm in kde, as well as the classic xdm. Host chooser support does need some love, but even logging out, and then into an entirely separate environment, is kind of inconvenient. What I really would like to see is support for having a “thick” client that can also easily connect with a remote server offering applications to thin clients in the same login session.

Of course, vnc and similar things do this by creating an x-window session that is entirely a remote desktop. But this is not what I want, either. What I really want, when an application hosting server is around, is for it to publish desktop and window manager information to my active session directly. Icons and menu items should appear for applications hosted off the server automatically. Clicking on them would then simply invoke a remote X session, the way X is meant to work as a networking window protocol. You can do this today manually, creating icons that run or other things, but I wish to see it done intelligently and automatically.

Similarly, being able to sharing an application with nearby users from desktop machines with the same level of ease would also be nice. What I am talking about really is to do something like making the “n” in GnOME a capital “N” and having truly network aware window managers and desktop environments, that can manage and establish shared X windows authentication credentials, etc.

At one time X was very commonly used this way. I recall the old sun labs at UCB where one could have fun opening applications onto other people’s workstations. Clearly the permissive days of the past are gone, but in exploring the limited ideas of more primitive desktop environments that shackle the application to the machine it is running on, we have lost the primary and true advantage that network based X-windows desktops can potentially offer over other kinds of platforms. 

