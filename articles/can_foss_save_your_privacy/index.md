---
nid: '1998'
title: 'Can FOSS save your privacy?'
authors: 'Jabari Zakiya'
published: '2007-01-10 7:25:43'
tags: 'privacy,zfone,phil-zimmeran,gnupg,pgp,tor'
license: verbatim_only
section: opinions
listed: 'true'

---
The Bush administration has already claimed _“we don’t need no steenkin warrant”_ to listen to your phone calls, see what websites you visit, scan your emails, and now, with the revelation of a new “signing statement”, it’s even claiming the [authority](http://www.yakima-herald.com/page/dis/310453635983645) to read your physical mail.

Yes, our privacy is under assault.

However, just because your privacy is being threatened doesn’t mean you have to accept it. There is a growing array of FOSS being developed to provide us with the ability to control our privacy. It’s about time we all start using it.


# Email

Probably the granddaddy, and best known, of all privacy programs is Pretty Good Privacy (PGP) developed by Phil Zimmerman (who the government tried to prosecute to stop its release). Its FOSS equivalent is now the [GNU Privacy Guard](http://www.gnupg.org/), which not only will encrypt your email, but just about all other forms of data as well. It works with Thunderbird and most email clients. But while ubiquitously included in most Gnu/Linux distros, like seatbelts and condoms, it provides you no protection unless you use it.

This is where services like [Hushmail](http://www.hushmail.com/) have stepped in to make email encryption painless and transparent for users. It automatically encrypts email between Hushmail users, but can also work with other clients which provide compatible public keys.

So stop sending those “electronic postcards” over the internet and start using email encryption.


# VoIP

If you’re a participant on a call that at anytime travels through the air the NSA (National Security Agency) is out there sucking it up. But, even the NSA can’t understand what it can’t decrypt. Cell phone calls provide no security because cell phone companies don’t encrypt those calls. Phil Zimmerman has again done us all a favor and created the [Zfone Project](http://zfoneproject.com/).

Even though Skype (which is proprietary) and Gizmo (which is OSS) both provide encryption of VoIP calls over their networks, as soon as you call out of their networks the call is in the clear. Zfone aims to make (currently only) SIP calls secure and private by having the call participants be able to encrypt the end-to-end call no matter what network it travels through. When this becomes fully realized and mainstream incorporated into VoIP phones (hardware and software) and Asterisk based servers, this will mean that VoIP calls will be inherently more secure than regular telecom phone calls.

When WiMAX (basically ubiquitous wireless cable internet access) becomes fully deployed (starting in 2007) this will mean the preferred way to make calls will be via VoIP. Why? Because all calls will then be essentially free AND inherently secure at the same time.


# Websurfing

Don’t like leaving a trail of your internet travels? If you want, you can use a paid service like [anonymizer.com](http://www.anonymizer.com), which was one of the first of its kind. However, for most people there is a better FOSS alternative, the [Tor Onion](http://tor.eff.org/) network. In fact, Tor is a complete suite of tools that will anonymize other TCP based services (IM, IRC, and SSH) as well.

I personally have Tor set up to run on Linux and XP using the “torbutton” add-on (what used to called an extension) with Firefox, which allows me to enable or disable browsing via the Tor Onion network (which will slow surfing some). But if you don’t want Dick Cheney looking over your shoulder as you surf this is well worth it.

This is but a short list of FOSS projects we can use to retain our dwindling privacy. As long as we live in a climate where “probable cause” is more likely to be the name of a punk band than a legal requirement for the government to meet before it can snoop on us, we’ll all have to take personal responsibility for securing our own privacy.

