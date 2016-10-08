---
nid: '1417'
title: 'I''m finally learning procmail'
authors: 'Terry Hancock'
published: '2005-11-07 16:22:38'
license: verbatim_only
section: hacking
listed: 'true'

---
The truth is, I never learned much about email, nor really ever wanted to. I’ve been using it since the 1980s, and for most of that time, it just _worked_. So I took it for granted, just like the telephone. I spent lots of time learning how web pages work, for example, probably because that was new and exciting and visual. But not email.

Well, no longer.

I just upgraded kmail and it started frying my outgoing email. Here “frying” is a technical term, meaning “hopelessly mangling my headers so that the subject line disappears and all the stuff that should be there is actually crammed onto my ‘From’ header”. I actually sent out about ten messages before I noticed this (via the various bounce backs as my mail was marked “suspicious” by a number of mailing list servers). _Sigh_.

Before anyone gets upset, let me be clear: yes, I have clearly found a bug in my kmail, although it may or may not be in the kmail source package itself, or in the Debian packaging, or in my configuration files. For anyone who’s interested, it appears to be sticking space (‘ ’) characters in front of a bunch of headers, which apparently get interpreted as continuations of the previous line (which happens to be the ‘From’ header). This is kmail 1.7.2 used with KDE 3.3.2. I did not, and probably never will get to the bottom of why that happened. I like kmail and I don’t want to make you think it’s evil or broken, but I decided to take this as an opportunity to try out a different client.

So I apt-getted (“apt-got”?) the Debian package for Sylpheed. Well, actually, for “Sylpheed-Claws”, which claims to be the “bleeding edge” version, and has a cute “claws” logo, with the slogan (apparently without intentional irony) “It bites!”. Maybe the developers aren’t native English speakers (Guys, just so you know, “it bites” colloquially means “it’s really of inferior quality”, it’s also a vulgar expression whose etymology I don’t think I want to go into here).

I may actually write a review of Sylpheed at some point, but this isn’t it.

No, what happened next was that I discovered just how _painful_ it would be for me to switch mail clients. I am on at least 40 mailing lists, with another 15 or 20 which I have “switched off”. I have several more or less separate circles of friends who I need to keep sorted. And I get probably 200-500 spam messages a day (unlike many people, I still use my real address, don’t change it often, and have it published on my website. If there’s a spammer out there who doesn’t have my address in their list, it’s a miracle).

So you won’t be surprised that I had 55 filter rules set up in my kmail client. Now, Sylpheed has a similar facility, but there’s no way that I can see to import rules from one to the other, which means laboriously copying rules, using one GUI to read and one GUI to write, swapping back and forth between virtual desktops. Ack! Clearly someone ought to create an export format for these things!

_Aha!_ I have obviously made a mistake: I shouldn’t have invested so heavily in the GUI MUA layer. What I really should be doing is running all that sorting using a Unix-style “small tools” approach. In other words, I should be sorting my mail with `procmail`. That way, if I get tired of Sylpheed and switch to yet another mail client, I won’t have to do this all over again (or at least, I’ll be able to automate the transition.

Procmail though, is one of those venerable old Unix utilities. It’s quirky, it has syntax design that was considered unwise by language designers 20 years ago and unfathomable by modern ones. It uses strange arcane symbols instead of self-documenting keywords. But it works, and it has over the years grown into a great many applications it was not originally intended for.

Some people get really excited by that. Me, I mostly just get frustrated. But I’ve never let that stop me.

The biggest problem with procmail is that it does so much, that it’s hard to figure out how to use it to do very simple things. And then there’s the fact that you need to understand the infrastructure of email processing in order to use it at all.

Email, of course, is designed to be an invisible, taken-for-granted service, just like it has always been for me. So, this was actually the first time I learned the difference between “mbox” and “mh” format: the former stores all the email in a mailbox as one long file, concatenated from end-to-end, while the later uses a directory with one file per message in it. It turns out that kmail uses the former style, but Sylpheed uses the latter, so I will also need to use procmail to move my old mail over to Sylpheed (technically, I could let Sylpheed do this, but since I’m going to set procmail up to do my filtering, I want procmail to do it).

I’m not going to be able to turn this into a procmail tutorial. But I was able to find some information about it, and to be honest, procmail is pretty simple if all you want to do is filter your incoming email. By doing that, I was able to move that functionality out of the mail user agent (MUA or “mail client”) and give myself some independence there. I also could spend more time crafting a detailed and well-thought out script for sorting the mail.

If you do that, though, be prepared to spend some time on it. It’s hard to believe how much this stuff accumulates over time, but those 55 rules in kmail expanded to (probably) more than a 100 in procmail, especially as, in the process, I got more ideas about how I wanted to do things. And of course, adding new filters won’t be quite as easy as it was before. But I feel safer knowing that I’ve factored that functionality out onto its own.

I’m still working out the kinks. Perhaps I’ll post some more about it if anything interesting comes out of it.

