---
nid: '1617'
title: 'Removing sendmail'
authors: 'Martin Brown'
published: '2006-06-17 4:52:56'
tags: 'sendmail,postfix,netbsd'
license: verbatim_only
section: hacking
listed: 'true'

---
[Sendmail](http://sendmail.org) has a terrible reputation for security. While the latest releases are very good, past releases have been less than secure and that is where the reputation has come from.

Alternatives, like [Postfix](http://www.postfix.org/) and [qmail](http://www.qmail.org/) are proving to be much more popular, and have better history on security. All of this has led to [Sendmail being removed from NetBSD](http://digg.com/linux_unix/Sendmail_Removed_From_NetBSD) (that's a digg link, used because some of the comments are worth reading).

Sendmail wont be unavailable on NetBSD, it's just not being included as part of the standard package - you can still incorporate it later if you want.

Is this fair?

Sendmail may have a bad reputation. Inclusion in the NetBSD package doesn't necessarily imply that you have to use it. And for all of Sendmails faults, I find it mildly easier to understand the configuration and setup of sendmail compared to postfix. Although I use postfix, I find that every time I want to perform some admin task that I have to check the documentation and advice notes to find out what I really need to do, and there always seem to be too many configuration files and too many 'change this file, then make sure that file matches what you entered, and don't touch this unless you also update...' requirements for something which should be comparatively straightforward.

That's not a criticism of Postfix - I no longer have to manage an email system beyond my own, and I'm sure that if I did I'd be much more comfortable with the process. Nor is it an endorsement of Sendmail - the ease of use (from my perspective) is far less important than the security.

Whether removing Sendmail from a standard NetBSD is fair or not doesn't really matter - what matters is that we have many other freely available choices.

