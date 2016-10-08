---
nid: '2524'
title: 'Book review: Linux Firewalls: Attack Detection and Response with iptables, psad, and fwsnort by <i>Michael Rash</i>'
authors: 'Alan Berg'
published: '2007-12-20 3:21:06'
tags: 'linux,security,firewall'
issue: ''
license: cc-by-nc-sa
section: reviews
listed: 'true'

---
The stability of an enterprise-wide infrastructure depends on understanding innovative, defensive security-related software. _Linux Firewalls: Attack Detection and Response with iptables, psad and fwsnort_ written by Michael Rash and published by No Starch Press, outlines viable approaches that enable a defensive solution in depth.

<!--break-->

=IMAGE=cover.jpg=The book’s cover=

Linux Firewalls primarily details the use of iptables as a security mechanism. It's a succinct book with useful help for a busy administrator, 

Thankfully the book avoids the obvious, and via the knockout blow of the PSAD and fwsnort combination explains in detail how to create a wall that will adapt to penetrative automated attacks.

=ZOOM=explains in detail how to create a wall that will adapt to penetrative automated attacks=

iptables is a firewall that takes advantage of hooks within the Linux kernel (part of the netfilter framework) to deliver impressive filtering and logging functionality. PSAD is an iptables log processor that effortlessly supports pattern recognition of attack signatures. Michael Rash’s book goes further and applies PSAD to adapt the firewall policy based on the firewalls logging.

# The contents

The book is the right size: 336 pages, 14 chapters and 2 appendices. The author is clearly an expert and clever practitioner in the online security field: starting with a basic introduction of iptables (the default firewall for Linux) and then moving through attacks and defenses, this book is fat free and accurate.

=ZOOM=this book is fat free and accurate=

For an experienced system administrator the story really starts to get going when discussing PSAD in chapter 5-7. Log analysis has the potential to reveal attack vectors and PSAD is an effective tool.

Being of a Perl-biased nature, I enjoyed the Perl scripts that were scattered across the book, particularly the IP spoofing example on page 41. The clear example makes it obvious that you should never trust the source IP address; otherwise, you may react against an innocent victim or allow _black hats_ past the entrance.

The discussion of Snort rules (Snort being an intrusion detection system) and the translation to iptables rules via fwsnort is particularly handy for infrastructure hardening. Though fwsnort discards many rules in translation, the remaining collection are viable and detailed.

The list of technologies mentioned goes further with examples of the use of DShield and Nmap.

# Who’s this book for?

This effective book is for the busy system administrator involved in the daily routine of hard knocks and bot attacks. The system administrator should find information about good practices and helpful new approaches. It's also a nice bedtime read for those of you that want to make the black hats life a little harder.

A second target group could well be IT students looking for a practical understanding of modern Linux orientated security practices.

# Relevance to free software

One of the many major selling points of GNU/Linux servers over Windows is GNU/Linux’s reputed default security level. The correct configuration of iptables and an ever expanding role for PSAD can only help enhancing that reputation.

All the software mentioned in the book is free (as in freedom); since security by obscurity is considered bad practice, diving into source code is crucial.

# Pros

The book is easy to read, and chock full of attack vectors and subtle (and not so subtle) iptables configuration tips. This well researched book heightens an average system administrator’s awareness to the vulnerabilities in his or her infrastructure, and the potential to find hardening solutions.

# Cons

If you are looking for a beginners' guide to security flaws, and are not after practical configuration tricks, then this book may not be for you. Further, the book is Linux biased, and hence not for a Windows only enterprise-wide monoculture.

 | |
-|-|
Title | Linux Firewalls. Attack Detection and Response with iptables, psad, and fwsnort | 
Author | Michael Rash | 
Publisher | NO STARCH PRESS | 
ISBN | 9781593271411 | 
Year | 2007 | 
Pages | 336 | 
CD included | No | 
FS Oriented | 10 | 
Over all score | 9 | 

=TABLE_CAPTION=In short=


