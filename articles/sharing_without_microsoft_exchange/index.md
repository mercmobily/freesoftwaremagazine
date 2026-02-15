---
nid: '2720'
title: 'Sharing without Microsoft Exchange'
authors: 'Ryan Cartwright'
published: '2008-02-22 22:40:32'
tags: 'groupware,microsoft-exchange,shared-calendars'
license: verbatim_only
section: opinions
listed: 'true'

---
Microsoft Exchange is the name most organisations go for when thinking of sharing calendars, e-mail etc. However, there are free software alternatives--and of course you don't have to go for the obvious or popular option.

<!--break-->

# Case study

This post fits into my free software for the voluntary sector thread; to make that easier I'll use the experiences at my employer, Contact a Family. This post takes some information from a longer case-study written by Adrian De Luca and myself and which can be found on [the Contact a Family website](http://www.cafamily.org.uk/oss/#casestudy). It is released under a Creative BY-NC-SA licence.

## Needs

In 2001 the time came to replace Contact a Family's ageing file server--at the time running SuSE 7.0. I started looking down various routes including Exchange and found the licence costs way beyond my budget. After consulting users (always a fun exercise) I established the features we actually needed: mail, out of office auto-replies, an in-out board and shared calendars. Happy that I could provide the first two via [Exim](http://www.exim.org), I realised the third could easily be made part of the new Intranet; so, I wrote it[1].

That left the shared calendars. At the time there were virtually no free software groupware applications. I did some more user consultation, to find what they actually _wanted_ to get from these shared calendars. Almost all of them said something along the lines of being able to know whether colleagues were in the office or not in the coming weeks and perhaps where they were going to be.

## Question of conscience

So, there I was, having to face up to the situation that the only way my users could share calendar information was either by hand or--shudder--Exchange. I couldn't do it. I couldn't subject my users to the _wonders_ of Exchange! Okay, I admit it, I didn't want to spend money where I didn't need to, and I was keen not to get bogged down in licencing.

As I said, there were virtually no free software groupware solutions. Yes, I could have deployed it via LDAP, IMAP etc. but I was also short of time and--frankly--at the time it seemed overkill. So what I did was write a web-based diary-sheet[2] for our Intranet--and it worked. I've since extended it to include departments and a few other features, but the real message I want to give is this: had products like [OpenGroupWare.org](http://www.opengroupware.org) and [eGroupWare](http://www.egroupware.org) been more mature at the time, I think I would have taken the "easy" option of one of them. I would have spent a lot of time setting up features that my (relatively small number at the time) users probably would not have needed, and of course I wouldn't have learned so much. Sometimes the journey is important.

## Not settling for the easy option

It's not always right to go directly for the popular option but at least there's less risk with free software. It's as unwise to blindly go for the most popular free software option as it is to just plumb for Exchange. In my case I was able to write some scripts which fitted the bill but there are plenty of smaller options which may better fit your needs. Of course there are very valid arguments for using popular free software: more users, increased support options and there are usually good reasons they rose to the top in the first place. One of the many advantages of free software is increased choice, so it's a little futile to have that advantage and ignore it.

# Time moves on

So that was then, what about now? Our needs have grown and changed and for a  number of reasons I now find we need web-based e-mail, collaborative planning tools and--yes--shared calendars.

Whilst I probably could write a whole groupware suite from scratch, I don't want to do that without first considering the other free software options now available. A quick [scan of Sourceforge]( http://sourceforge.net/search/?words=groupware) reveals several options, not all of them comprehensive but certainly ones which can be made to work together to achieve the required end. In the end I am a bit lazy and don't fancy too much work for myself if I don't have to. I know the features I need and--ironically--they are generally provided by the most popular options. I guess that's one of the reasons they rose to the top!

So now I am looking into options like OpenGroupware.org, e-Groupware et al. I'm quite early on in my analysis so there's not much to say just yet. I'll let you know how I get on.

# References

1. [Ryan's In/Out board](http://ryansiob.sourceforge.net)  
2. [Ryan's Electronic Diary Sheet](http://ryanseds.sourceforge.net)
