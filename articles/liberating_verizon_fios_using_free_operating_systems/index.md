---
nid: '1875'
title: 'Liberating Verizon FiOS using free operating systems'
authors: 'David Sugar'
published: '2006-11-14 13:23:35'
tags: 'gnu/linux,telecomm,isp'
license: verbatim_only
section: opinions
listed: 'true'

---
As we prepared to open a new Freedom Technology Center in a rehabilitated site in New Jersey, I came to learn that Verizon was capable of offering fiber service at our location.  Officially, they only claim to support those using Microsoft Windows and Mac OS/X with their service.  In fact, with a little foreknowledge, you can have installed, activated, and use your FiOS service with an entirely free operating system such as GNU/Linux.

Verizon will run a fiber cable to your home or business, and have it terminate not on a D-mark, but rather on a special optical termination box.  This box has both PSTN jacks and an ethernet jack.  The ethernet jack they will normally run to a wireless/wired router that they also provide.  The router they give you is generally preconfigured as a NAT, and as 192.168.1.x network.

First, of course, you can go in and explore your router.  It has a browser interface, which you can find at 192.168.1.1 as you might expect.  You may wish to change the default admin account and password.   You might also want to change the DHCP range if you want to preserve space for static hosts, setup port forwarding, change the wireless SSID, etc.   It appears to use PPOE to establish the initial gateway defaults and then drops the PPOE stack.  If so, it should be quite easy, if you never intend to use their future IPTV offering, to substitute it with a Linksys or a PC running GNU/Linux. However, that is left for those wishing to achieve advanced reclamation of their freedom in full.  Let's cover getting you activated.

When the service comes up, it is immediately running.  You can hook up your GNU/Linux PC, get a DHCP address from their router, and immediately connect to the outside world.  However, the service will not stay running for very long until it is "officially" activated.  For this step, the installation technician is given a "script" to follow to activate your first computer, and the first thing he will ask you to do is run your antivirus software and then establish a "system restore point".  Rather amusingly, he will do this even when presented with a Mac (so woe even to the "officially supported" Mac user...), let alone a machine running GNU/Linux.  Your immediate job then is to retrain your installation technician.

The real meat of the "activation" process is a software package Verizon provides.  This ugly little Windows binary only package of applications will desire to do things like install Outlook address books, bookmarks, Yahoo! toolbars, MSN (being a service so poor, I gather, the only way they can get users is bundling it with other things for free), and who knows what else.  I am told there is an option to disable/reduce the junk that it installs.  However, it also includes a Microsoft Windows executable that does the service activation.  I have no idea if it runs on wine offhand, nor do we need to worry.

What of the Mac OS/X user they also "officially" support, you may ask?  For them, they offer a downloadable disk image file that also includes a binary activation program, and that offers some other things you can install.  So how do you then activate service without a proprietary operating system?

It is actually very easy.  The installation technician also has an access code for a special verizon web site.  They have this backdoor method and often have to use it because the proprietary activation software "freezes", or so I have gathered.  If you have firefox (khtml on konquerer will not do it) fired up on your newly installed FiOS service, then your installation technician can simply log into this "fsc" website (I forgot the exact url he used), and "activate" your service for you.  No junk gets downloaded.  No proprietary operating system is required or used.  You can then share the bandwidth in freedom.

