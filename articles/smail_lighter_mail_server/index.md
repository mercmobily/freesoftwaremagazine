---
nid: '2937'
title: 'Smail - the lighter mail server'
authors: 'Ryan Cartwright'
published: '2008-07-21 1:02:32'
tags: 'postfix,email-servers,exim,smail'
license: verbatim_only
section: hacking
listed: 'true'

---
When most people install a free software mail transport agent (MTA) they plumb for Postfix, Exim, qmail or  Sendmail. Whilst these are all fine, they can be a little over the top for some smaller systems or systems where all you need is some kind of local MTA functionality. In these cases many people will install their favourite MTA anyway -- but there are more lightweight alternatives. Here I look at one of them: Smail.

<!--break-->

Before I go any further I should clarify -- for those who don't already know -- that Smail is not a mail client. It won't do what Thunderbird, Evolution, Kmail and Mutt do. It delivers email for those programs. It also does not provide POP3 or IMAP services. Like most MTAs it performs a single core task; it routes email from one place to another.

# Old kid on the block

Smail is no young whipper-snapper. It pre-dates Exim, qmail and Postfix -- in fact [Exim owes a lot to Smail](http://www.exim.org/exim-html-current/doc/html/spec_html/ch01.html) for its existence. There's some confusion as to whether Smail or Sendmail was developed first but certainly they seemed to have arrived around the same time. Smail has been at the same major version (3) since 1994. It's by no means immature software.

# Why and where

Smail is simple, clean and efficient. Although it is as secure as pretty much most of its larger cousins (it's been the subject of just one security advisory), it has arguably one of the least cumbersome configuration set-ups around. Its small size and simple configuration make it a great replacement for the bigger MTAs -- especially Sendmail -- in situations where you just don't have the time/energy/patience to get involved with configuring an MTA.

=ZOOM=Smail's small size and simple configuration are ideal where you don't have the time/energy/patience for a large MTA=

Smail would be ideal for any situation where complex routing, filters and features (virtual users etc.) are not required. I've used it on many a desktop or laptop system where I've been developing projects that require a local MTA. I've also deployed it on smaller servers that do not provide SMTP to their respective clients. In these cases I needed something to forward locally-produced error messages, cron-job feedback and backup notifications to a remote address (mine). These servers had smaller resources than I would usually use for Exim (my preferred MTA) and so Smail became my "small scale" MTA.

# Set-up

Smail is more than likely a package on your system. On a Debian system it's just an `apt-get install smail` away. If you are running testing or unstable you'll not find a package for it -- I assume that's because there's no later version that the stable one. In that case just download it from Debian's website. Finally, Smail can operate in a number of "modes", one of these uses UUCP to a smarthost: if you want to use it that way you need to ensure `uucp` is installed as well.

Once installed you need to configure it. This is done via the `smailconfig` utility (on Debian this is run post-installation for you). Configuration is just a series of half a dozen or so basic questions and you are done. If you are running Smail on a machine which will route all non-local mail to another SMTP server (e.g. a ISP or your company's outgoing MTA), you will probably want to run it as an "Internet site" and (when asked) specify it to only accept connections from the localhost address (127.0.0.1). The `smarthost` in these cases will be your usual SMTP mail server and usually you want to have Smail deliver any mail it cannot find a route for to the smarthost. These are the default options anyway so you'll probably find yourself hitting enter a few times -- making sure you read what you are agreeing to first though! Next you give it a local user to deliver postmaster's and root's mail to. Finally, you are asked whether to insert a line in `/etc/inetd.conf` to run Smail when needed or to start it as a daemon. I usually go with the (default) former.

=ZOOM=In all the times I've installed Smail, set-up has taken no more than three minutes=

When all the questions have been answered you confirm what you've given and the configuration is done. In all the times I've done this, it has taken no more than three minutes, which included looking up the `smarthost` address. After the config files are written you are given the option to send some test messages. Unless the local machine's fully qualified domain name (FQDN) can be routed to publicly, I would suggest you do not have Smail test offsite delivery. You can do this later by sending a message to a mail account of your choosing. I prefer to just have it send a local test message to see if routing is configured correctly.

# Using it

To use Smail you call it within a shell or a script. `smail username@domain.com` is probably the simplest form and will allow you to enter a message on the following lines to deliver to the address provided. That message will probably need to include certain headers (`Subject: test message` ) to make it more readable to the recipient. Like all good MTAs, Smail will add the required headers if you don't provide them. To end composition you just put a single full stop (".") on a new line as you would for most CLI mail clients. You can put the message in a file and direct that into Smail: `smail user@domain.com <  ./messagefile`. This is handy for use in scripts -- for example to notify somebody to insert backup media or that  backup has finished (with success/failure reports).

#Tips

Unless told to otherwise when it is called, Smail will generate the sender headers from the local user who called it. If your local machine uses a non-public FQDN this could cause an issue when routing mail to remote addresses. An increasing number of public mailservers will not route messages from addresses they cannot verify and "ryan@localhost" usually falls into that category. Some ISPs refuse to route mail (originating from within  their IP range) unless the sender is on their domain. You can resolve both these issues by editing the smail config file (`/etc/smail/config` on Debian systems) and editing the `From_field` setting accordingly.

If you want messages for postmaster and root to be sent to a remote address (as in the case of my small servers), you can edit `/etc/aliases` after configuring Smail to set that up.

# Conclusion

Smail is an excellent drop-in replacement for the popular (larger) MTAs. It is mature, stable, not resource-hungry and -- in my experience -- considerably overlooked. Its simple configuration completely negates most reasons for installing larger MTAs where they are not needed (like the ever-green "I don't want to learn a new set of config rules"). It epitomises the Unix way: it does one thing and does it well. Whilst most Desktops won't require an MTA, there are several cases where having one would be handy and installing a full-blown one would be just too much work. Enter Smail -- the lighter MTA.