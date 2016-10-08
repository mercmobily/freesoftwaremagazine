---
nid: '1746'
title: 'Passing notes in class'
authors: 'Kirk Strauser'
published: '2006-09-02 15:38:58'
tags: 'education,jabber,instant-messaging'
license: verbatim_only
section: opinions
listed: 'true'

---
My children recently started school.  I wanted a way for them to be ableto chat with their friends, get help with homework, and generally have funon the Internet without exposing them to the world at large.  So, I did whatany extremely geeky dad would do: I built a secured instant messaging (IM)server for their school.

I could have set my children up with any number of accounts on thenormal, commercial services.  However, I decided to create my own forseveral reasons.

First, I wanted this to be fun for the kids.  The [network effect](http://en.wikipedia.org/wiki/Network_effect)implies that the more kids use a system, the more useful and fun it will befor each of them.  Choosing one standard system for students makes it muchmore likely to get all of them to use it.

Second, I wanted local control of the system.  Technical problems can befixed without waiting for someone else to get around to fixing them.  Moreimportantly, administrative problems (such as disabling troublesomeaccounts) can be addressed quickly without hoping for a third-party providerto act.

Finally, and most of all, I wanted these children to have a safe place toplay.  Having a local server means that the only people using it arechildren and parents who see each other every day in real life.  Each andevery account is personally vetted, and it's simply not possible for outsideusers to access the network or for the children to send messages outsideit.


## Technical Considerations

Now, for the technical explanations.  I decided to run the service on itsown machine so that it wouldn't be vulnerable to an attacker who compromiseda different service on the same system.  Because I'm cheap and already had amulti-purpose FreeBSD host up and running, I actually used a [virtualserver](http://www.freebsd.org/doc/en_US.ISO8859-1/books/arch-handbook/jail.html) running on that host.

The [Jabber](http://www.jabber.org/) protocal is the obviouschoice for building IM networks.  Its an industry standard that is wellsupported by a wide range of client and server applications.  Although thereare several excellent Jabber servers available, I used [ejabberd](http://ejabberd.jabber.ru/), a Free, easy to use, secure,and featureful system that [jabber.orgthemselves use for their own server](http://mail.jabber.org/pipermail/juser/2006-February/001409.html).

ejabberd's installation and configuration is relatively easy, given thecomplexity inherent in the task at hand, but this has been covered elsewherebetter than I could hope to.  Instead, here are the changes made to my livesystem to secure it.

I disabled registration so that all accounts have to be manually added byme or another administrator:


=CODE_START=

{access, register, [{deny, all}]}.

=CODE_END=

Next, I disabled incoming requests ("server to server", or "s2s") fromother systems:


=CODE_START=

%{5269, ejabberd_s2s_in,  [{shaper, s2s_shaper},
%                        {max_stanza_size, 131072}
%                       ]},

=CODE_END=

Then, I generated a locally-signed SSL certificate so that messagesbetween the server and its clients can be encrypted.  I thought that thiswas an important step, since it prevents would-be attackers from readingthose messages to view password, read conversations, or insert their ownmessages into the system:


=CODE_START=

{5223, ejabberd_c2s,     [{access, c2s},
                          {max_stanza_size, 65536},
                          tls, {certfile,
                          "/usr/local/etc/ejabberd/chatserver.example.com.pem"}]},

=CODE_END=

Finally, I enabled the "shared roster" module so that every childautomatically sees every other child in his roster, or "buddy list":


=CODE_START=

{mod_shared_roster, []},

=CODE_END=


## Administrative Issues

For legal and administrative purposes, I require all parents to sign [a permissionslip](http://montessori.honeypot.net/imapplication.pdf) (generated from a [LyXdocument](http://montessori.honeypot.net/montessori_im_application.lyx) before I will create an account for their children.  The gistof the slip is that this is an unpaid, volunteer effort and I don't want tobe sued if they're not happy with it.

After much agonizing, I decided not to install or configure anyconversation logging methods.  On one side, it would be nice to have anactual log of events in case of problems or complaints.  However, Ieventually concluded that I'd rather not have the responsibility ofmaintaining accurate records, or the obligation to actively watch the logsfor issues as they develop.

Along those lines, I've made no attempt whatsoever to censor content inany way, including automated filtering or alerting.  Again, I don't want toraise the expectation that I should be doing a good and thorough job of it.This is meant to be a fun project, and I don't want to allow it to become achore.


## Conclusion

I wanted to build a safe, fun, easily controlled system for my childrento use with their friends.  Jabber, and the ejabberd server in particular,let me build a Free system that met these goals.  Combining the technicalsolution with a few simple administrative decisions resulted in a platformthat they should be able to enjoy for years to come.

