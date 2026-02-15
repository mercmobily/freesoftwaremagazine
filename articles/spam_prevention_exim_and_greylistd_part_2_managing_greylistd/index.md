---
nid: '3008'
title: 'Spam prevention with Exim and greylistd - Part 2 - management and stats'
authors: 'Ryan Cartwright'
published: '2008-09-18 22:26:26'
tags: 'spam,statistics,exim,greylisting'
license: verbatim_only
section: hacking
listed: 'true'

---
In [part one](http://www.freesoftwaremagazine.com/columns/spam_prevention_exim_and_greylistd_part_1) of this tutorial looked at installing and configuring greylistd alongside Exim to help combat the evils of Spam. In this second part I will look at getting some information out of greylistd -- handy if you need to troubleshoot why the CEO's "urgent" message hasn't arrived yet!

<!--break-->

# Captain Slog

ACL: Access Control List
SMTP: Simple Mail Transport Protocol -- the standard e-mail sending protocol used across the Internet
Greylistd is the [daemon][1] called by Exim during SMTP connections. The acl_check_rcpt ACL (if setup for greylisting) will ensure that Exim logs SMTP connections resulting in greylisting. You can use this information along with statistics from greylistd itself to troubleshoot and track progress of greylisted sender-triplets and messages.

A typical greylisting entry in the Exim mainlog will look like this:

=CODE_START=
2008-09-11 06:25:59 H=(mx_relay.somedomain.com) [117.4.26.192] F=<a.sender@somedomain.com> temporarily rejected RCPT <an.address@yourdomain.com>: greylisted.
=CODE_END=

This tells you the date (11 September 2008), time and sender triplet of the message. If you want to know whether a greylisted messages was subsequently delivered on a retry, you can check further down the Exim log for a "Completed" entry:

=CODE_START=
2008-09-11 06:37:51 1KgLbh-0007zz-Kh <=a.sender@somedomain.com H=(mx_relay.somedomain.com) [212.2.3.143] P=smtp S=25153 id=F89EE039F5154749BCDAF05850A8993C0E8044B7@ASENDERPC
2008-09-11 06:37:51 1KgLbh-0007zz-Kh => an.address@yourdomain.com R=verify_recipient T=remote_smtp H=17.10.189.25 [17.10.189.25]
2008-09-11 06:37:51 1KgLbh-0007zz-Kh Completed
=CODE_END=

This tells you _a_ message was delivered by that server from that sender to that recipient. It might be a second message that just happened to have the same triplet or it might be the second attempt for the first message. Because no delivery was made on the first attempt, Exim did no assign it an ID. The second successful attempt got one (1KgLbh-0007zz-Kh). Don't make the automatic assumption that these two entries refer to a single e-mail message. That said, you can say that the second entry means that mail with this triplet is now being delivered and is likely on the whitelist.

Greylistd itself can confirm this with use of the `greylist` shell command. You need to supply the sender-triplet as `<sending host ip address> <sender e-mail address> <recipient e-mail address>`:

=CODE_START=
myserver:/# greylist check 117.4.26.192 a.sender@somedomain.com an.address@yourdomain.com
white
myserver:/# 
=CODE_END=

The response of `white` confirms to us that this triplet is on the whitelist and future messages with that triplet will not be delayed. Be careful here if this returns `grey` though, because that is also the default response for triplets not on any of the lists. That's because `check` asks greylistd what status that triplet has -- an unknown triplet would be greylisted. 

# Stats 

The `greylist` command can also give you some statistics:

=CODE_START=
myserver:/# greylist stats
Statistics since Fri Aug 22 16:04:45 2008 (21 days and 2 hours ago)
-------------------------------------------------------------------
18655 items, matching 48655 requests, are currently whitelisted
    0 items, matching     0 requests, are currently blacklisted
 2841 items, matching  2854 requests, are currently greylisted

Of 167535 items that were initially greylisted:
 -  18655 ( 11.1%) became whitelisted
 - 148880 ( 88.9%) expired from the greylist
=CODE_END=

You'll note the ratio of whitelist items to requests. This is another indication that greylisting is doing its job: regular senders will send several requests each, but have only one item in the whitelist. It's also possible to view details of the grey, white or black lists:

=CODE_START=
myserver:/# greylist list --white
Greylist data:
==============
  Last Seen            Count  Data
  2008-09-12 09:45:15      2  117.4.26.192 a.sender@somedomain.com an.address@yourdomain.com
...
=CODE_END=

The Count column indicates that two messages have been successfully sent via that sender-triplet and Last Seen tells you when the last one was. These lists can be quite long, so you might like to pipe them into a pager (`greylist list --grey | more`) or filter them with grep `greylist list --grey | grep somedomain.com`. That last one will display all greylist entries containing "somedomain.com".

MRTG: Multi Router Traffic Grapher -- a free software tool originally for monitoring and measuring the traffic load on network links and displaying it in graphical form. It has developed, and it can now be used for other purposes.

Greylist can also dump its data in a format to be used for MRTG, which you'll need redirect into a file if you want to save it: `greylist mrtg > ./filename` will do the trick.

# Altering the lists manually

So far the greylist commands I've shown you will not affect the three lists it maintains. You may come across situations where you need to move a triplet from one list to another or perhaps add a triplet to the whitelist. I'd recommend against adding a triplet to the blacklist -- prefering to let greylistd do its job. Greylist gives you a way to do this. Needless to say these options should be used with some degree of caution (don't go adding your CEOs LinkedIn notifications to the blacklist unless they ask you to). `greylist add --white <sender-triplet>` will add the triplet to the white list. Replace `--white` with `--grey` or `--black` accordingly to add to those lists. Again don't forget it's the triplet that needs adding, and not just the sender e-mail address. In case you need it, `greylist delete <sender-triplet>` will delete that triplet from whatever list it may be on.

# May contain traces of nut

DNSBL: DNS based Blacklist

In the UK food products containing the word “diet” in their name ( e.g. Diet Coke) are accompanied by the warning “Can help only as part of a calorie controlled diet”. By the same nature greylisting can help reduce spam levels only in partnership with other tools, for example: Bayesian-rule based scanning, cautious use of one or more DNSBL and Client-side filtering. I have to say that it is one of the more effective measures I have implemented--and if nothing else, it will reduce the load on your server.

[1]: http://en.wikipedia.org/wiki/Daemon_(computer_software)
