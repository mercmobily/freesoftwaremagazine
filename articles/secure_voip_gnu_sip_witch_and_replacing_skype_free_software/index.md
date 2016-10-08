---
nid: '3196'
title: 'Secure VoIP, GNU SIP Witch, and replacing Skype with free software'
authors: 'David Sugar'
published: '2009-08-30 13:43:30'
tags: 'voip,skype'
license: verbatim_only
section: opinions
listed: 'true'

---
For the last few years I had occasionally been working on what is called the [GNU Telephony Secure Calling initiative](http://www.gnutelephony.org/index.php/Secure_Call). The GNU Telephony Secure Calling initiative was itself originally formed specifically to make passive voice communication intercept a thing of the past using free software and public standards, and came out of ideas from and work of the New York City civil liberties community and New York Fair Use in the early part of this decade. 

The results were great: a free infrastructure for secure calling. Here is how it all happened.

<!--break-->

While it is true that technological means for mass communication intercept has grown with incremental improvements in communication technology, the means to apply and use encryption techniques to counter these abuses and offer communication privacy on a large scale using free software have also become possible.  Given the nature of this project, much of the important work had been done by volunteers and contributors in Europe such as Werner Dittman and Federico Pouzols, and this was specifically encouraged to avoid putting any additional people in potential danger in the United States for working on cryptographic systems for worldwide public use specifically to avoid communication intercept.

One result of the initiative was creation of the GNU ZRTP stack (and our related GNU ZRTP4J now used in SIP communicator). The project was first introduced in October 2006 during the 4th International Free Knowledge conference, where a complete ZRTP enabled client (the Twinkle softphone) became immediately available for use in creating secure point to point VoIP calls. This offered a basic means of establishing secure calls using Phil Zimmerman's ZRTP protocol and a free software licensed implementation, but did not offer a means to truly integrate and manage secure calling.

This latter goal became possible through the development of GNU SIP Witch, which can be used to create and deploy network scalable secure VoIP solutions for individuals, private organizations, and even those pesky national governments that seem to like to spy on each other so much. My focus in this project, especially the past year, has been on this recently introduced GNU SIP Witch package. While this package is still rather new, there is a basic howto for system admins to [use and deploy GNU SIP Witch with Ubuntu GNU/Linux](http://www.gnutelephony.org/index.php/Howto_Deploy_SIP_Witch_On_Ubuntu). Ideally I would like to do far more to make it easier to deploy secure calling networks without requiring system admin skills.

GNU SIP Witch is different from many other VoIP servers, such as for example Asterisk, in that it never establishes media connections with or through a server, and hence does no protocol conversion or media operations that would otherwise require decrypting a secure audio session in a central location.  Instead it relies on published open standards and the SIP protocol to coordinate secure endpoints which can then form direct peer to peer media connections. This means these media sessions are not decrypted by a central server, nor are encryption keys shared with or managed by a central server.

One use case for GNU SIP Witch is as a kind distributed domain service to handle inbound VoIP calls directly received over the public Internet for the SIP protocol much like something like sendmail does for SMTP. In this role, one could then create local publicly reachable SIP identities (URIs) that match email addresses and thereby offer a consistent means of contact. This eliminates the need for some kind of centralized "registry" of callable users which so many other schemes and services wish to reply upon since we can make use of DNS and individually ran services.

Another interesting use case is that of creating a secure calling "domain" in conjunction with an already existing insecure VoIP infrastructure, such as for example might be offered by Asterisk. Used this way SIP Witch will maintain both a secure and "insecure" identity for each ZRTP enabled node it is used to manage. The insecure identity will be cross-registered to the insecure IP-PBX so insecure users can reach users in the secure domain. Similarly, all non-secure destinations dialing from a secure VoIP user agent are automatically routed through the insecure IP-PBX. Dialing a secure destination from a secure user agent will however bypass the insecure IP-PBX entirely, and establish a direct peer to peer media session. 

A while back I was asked about speaking at LinuxCon 2009 about this project, and now I am ready to do so.  Given my topic, I am uncertain as to whether LinuxCon is really ready for me.  However there is a [preliminary copy of my presentation next month now available](http://www.gnutelephony.org/data/linuxcon2009.odp) (as well as [here](http://www.gnutelephony.org/data/linuxcon2009.pdf) for those curious about my talk next month.

See you there!