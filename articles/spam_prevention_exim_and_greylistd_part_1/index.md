---
nid: '3004'
title: 'Spam prevention with Exim and greylistd - Part 1'
authors: 'Ryan Cartwright'
published: '2008-09-15 12:45:09'
tags: 'debian,spam,exim,greylisting'
license: verbatim_only
section: hacking
listed: 'true'

---
Traditional methods of spam protection involve using Bayesian detection rules (usually via SpamAssassin) on messages after they have been accepted by your server. Most mail sysadmins may have encountered the constant cries from their users asking "can't you stop them sending it?". Of course you can't stop somebody sending a message but you can stop accepting them in the first place. Enter greylisting.

These two articles are kind of follow-ons to my previous article on [spam prevention in exim mail servers](http://www.freesoftwaremagazine.com/articles/exim_and_anti_spam_spamassassin). Think of it as an appendix. If you are starting from scratch you might find is useful to go and read that first.

<!--break-->

## What is greylisting?

Traditional spam techniques employ the concepts of blacklists and whitelists. The former being a list of senders that the server will always refuse to accept mail from, the latter being the opposite. Both lists are generally managed manually at user or sysadmin level.

Greylisting inserts a third list which is more temporary in nature. When a sender attempts to deliver a message to the server they temporarily refused with a request to try again later. The sender is then added to the greylist. The theory is that legitimate mail servers will try again after a set period of time. Spammers tend to use their own servers or have one installed as part of a [botnet](http://en.wikipedia.org/wiki/Botnet). These are more "hit and run" delivery agents and are unlikely to attempt delivery to the same recipient again. Greylisting as a concept has been bounced around for a while but most modern implementations follow [Evan Harris' white paper](http://projects.puremagic.com/greylisting/whitepaper.html) on the subject.

The greylist method I am concentrating here (greylistd) also has two time-out settings. Any sender who attempts a retry too son will still be refused, any sender who does not attempt a retry within the second period will be moved from the greylist to a blacklist. Any sender that retries successfully will be added to a whitelist and on their next delivery will not be refused at all (by greylistd). Figure 1 includes a diagrammatic summary of the process. 

Note that there is another form of spam-prevention which is sometimes called greylisting. This involves a challenge-response process where new senders (e-mail address only in this case) are sent an autoreply asking them to either go to a web page or reply to the autoresponse in order to confirm they are a real sender. I am not talking about that here nor do I advocate it does not allow for spoofing and in that context is little better than those "You sent us some spam!" warning/advertisement autoresponders.

=IMAGE=figure1.jpg=Figure 1: A typical greylisting process=

## A word about "senders"

When I say "senders" here I am not referring to just the sending e-mail address. Spammers have long used [e-mail spoofing](http://en.wikipedia.org/wiki/E-mail_spoofing) to disguise themselves and will rarely send "from" the same address twice. Thus any filtering attempts made on the sending address only will ultimately give false negatives. Modern methods of identifying a sender will link the sending host and address. Greylistd maintains its lists using sender triplets of sending host+sender address+recipient address. This further adds the dimension that because a sender/host combo has successfully delivered to one of your local users, it does not necessarily mean you should allow them openly send to all your users. If you permitted this then all a spammer would need do is make sure they had sent successfully to one local address.


## Setting it up

I'll assume you have Exim installed and running by now and also note that I am referring to a Debian (Etch) system running Exim 4 here to keep it consistent with previous articles. If you use Postfix then take a look at the `postgrey` package. Here's the process for greylisting with Exim 4 on Debian:

1. Backup your Exim configuration
Back up your exim config files (`cp -R /etc/exim4 /etc/exim4.pre-greylist` will do the trick on a Debian system). Don't skip this step no matter how experienced you are.

2. Install greylistd
Install greylistd with your preferred package manager (`apt-get install greylistd` in my case).

3. Configure greylistd
Configuring greylistd is, unsurprisingly, a case of editing the `/etc/greylistd/config` file. You won't need to change too much so just pay attention to the [timeouts] section particularly retryMin. You want to ensure that spammers sending multiple messages in one session to the same local address are continually rejected but if you set it too high the legitimate mail may be delayed too much for your users' taste. I would say 300 seconds (5 minutes) is a reasonable setting. 

You may also need to add the Debian-exim user to the greylist group: `useradd Debian-exim greylist`. This may have been done when greylistd was installed though - debconf should have told you if it was. Don't forget to restart the greylistd daemon after you are done editing (`/etc/init.d/greylistd restart`).

4. Reconfigure Exim
You need to re-configure Exim to use greylistd as well. If you have used Debian's default Exim4 setup you can use the script supplied as part of the greylistd package.Running `greylistd-setup-exim4 add` will add the relative config options to the correct ACL.

If you don't use the default Debian multi-file Exim setup (or you don't fancy trusting your MTA config to a script) you can read the files in `/usr/share/doc/greylistd/examples/` for guidance on what to add and where. They are quite straighforward.

5. Restart Exim
`/etc/init.d/exim4 restart` will do the trick there.

Tailing your exim mainlog (`tail -f /var/log/exim4/mainlog`) will tell you if it all worked. You should start to see log entries like this..

=CODE_START=
2008-09-11 06:25:59 H=([117.4.26.192]) [117.4.26.192] F=<a.sender@somedomain.com> temporarily rejected RCPT <an.address@yourdomain.com>: greylisted.
=CODE_END=

Eventually these will be added to by entries with the same host, sender and recipient address but this time delivered as normal.

If all goes according to plan you'll see fewer SPAM messages arriving in your users' mailboxes. Your users' may see a short delay in mail being delivered but not too much. Just remind them that e-mail was never intended to be an instant delivery medium anyway. Greylisting may also become less effective as spammers start to find ways around it but for now it works and -- on free platforms at least -- is fairly simple to setup.

Next time I'll look into maintaining a greylist installation and how to keep track of the items on the lists.

# References
* [greylistd package](http://packages.debian.org/etch/greylistd)
* [postgrey package](http://packages.debian.org/etch/postgrey)
* [Evan Harris' whitepaper on greylisting](http://projects.puremagic.com/greylisting/whitepaper.html)