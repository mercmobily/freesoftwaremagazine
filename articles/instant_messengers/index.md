---
nid: '2301'
title: 'The story (and the protocols) behind instant messengers'
authors: 'Andrew Min'
published: '2007-06-18 6:30:00'
tags: 'pidgin,instant-messeger,kopete'
issue: issue_18
license: cc-by-sa
section: opinions
listed: 'true'

---
There was a time when geeks were the only ones who used instant messengers. Not so now. Almost everyone, from high school students to Congressmen, have instant messaging accounts. Businesses use instant messengers like Lotus Sametime or Novell GroupWise within their companies. How did instant messengers get this far?


# In the beginning...

One of the first chatting protocols was a chat room network protocol known as Internet Relay Chat, or IRC. IRC was started in Finland in 1988 by [Jarkko “WiZ” Oikarinen](http://www.kumpu.org/). Although there were other chat room protocols available, IRC gained popularity during the Soviet Coup of 1991, when a group of Soviet government leaders attempted to overthrow Mikhail Gorbachev. While doing this, there was a media blackout. During this blackout, IRC was the only way to know what was happening in the Soviet Union until order was restored. Following the blackout, people started using IRC for other matters, such as technical support chat rooms.


# The “Big Four” and Jabber

Today, things have come a long way from IRC. Nowadays, there are four major instant messaging clients known as the “Big Four” (_ICQ_, _AIM_, _Windows Live Messenger_, and _Yahoo! Messenger_). They support features such as microphones, webcams, file transfers, skins, and much more. Each have their own protocols (though some work with each other). But the Big Four aren’t the only options for instant messaging. There’s also a VoIP client that thinks it is a chatting program, an open protocol with many of its own clients, and Google’s approach.


## ICQ: The mother of them all

In 1996, the first major peer-to-peer instant messenger was born. Four Israelis, Yair Goldfinger, Arik Vardi, Sefi Vigiser and Amnon Amir, came together to form a company called Mirabilis. Their first product was a program called ICQ, a play on the phrase “I Seek You”. Unlike IRC, ICQ took the approach of letting users connect directly to each other through servers, instead of being forced to use a chat room. This novel idea quickly became popular. Soon, big companies started paying attention. One of these was America Online. In 1998, they announced that they had acquired Mirabilis for the sum of US$240 million. In 2002, AOL Time Warner announced that ICQ had received a United States patent for instant messaging. But ICQ was doomed for failure. Since many people already had AOL screen names, they were more inclined to use AIM then ICQ. Also, by this time, Yahoo! and Microsoft had announced their own instant messengers, drawing users from their own extensive user bases. ICQ started losing market share quickly. By 2006, they had only 4 million active users (compared to Windows Live Messenger’s 27.2 million, this is a tiny amount).

ICQ was the first. Does that mean it is the best? It has quite a few cool features, such as multi-user chats, SMS messaging, file transfers, games, and audio and video chat. However, there are quite a few downsides to ICQ. First of all, ICQ is stuck with extremely annoying ads, making the interface extremely cluttered. In addition, only Windows users can use the latest official client (6.0). Mac users are stuck with version 3.4.23, while GNU/Linux users don’t even have an official client.


* [ICQ Homepage](http://icq.com/)


## AOL Instant Messenger (AIM): One of the more popular

When ICQ started taking off, people were starting to realize that there was a market for instant messengers. America Online (also known as AOL) was one of these. In 1997, they announced the release of the AOL Instant Messenger, or AIM. Like ICQ, AIM quickly took off. In 1998, AOL announced the acquisition of ICQ, giving them a huge market share in the instant messenger market. In 2003, that share went even higher after Apple Inc. (then Apple Computer) announced iChat AV, a new instant messenger program that would be included in Macintosh OS X 10.3 and using AIM’s OSCAR protocol. And in 2006, AOL announced that users of AIM could now receive calls from landline phones for free using AOL’s AIM Phoneline.

So is AIM worth using? Actually, it is probably the instant messenger that users will want to stay away from the most. It has even more ads than the rest of the Big Four clients. Even worse, it bundles software that users don’t necessarily want and can’t always get rid of, such as the Viewpoint Media Player (which sends usage information to Viewpoint), the Plaxo Address Book (which at one time spammed its users), and Wild Tangent software (labeled by some security applications as spyware). Plus, it tries to change the user’s browser homepage and add desktop icons to things that people don’t need. Additionally, the Mac and GNU/Linux versions are outdated. All in all, a very unenjoyable experience.


* [AIM Homepage](http://www.aim.com/)


## Yahoo! Messenger: Yahoo! joins in the fun

The same year AOL bought ICQ, Yahoo! announced the release of Yahoo! Pager (soon to be renamed to Yahoo! Messenger). Since Yahoo! already had a lot of users, it wasn’t long before AOL began to realize that they didn’t have the corner on the market that they thought they did. Soon, Yahoo! Messenger was a huge rival to AIM.

Yahoo! Messenger helped even the instant messenger playing field. Unfortunately, today’s version of Yahoo! Messenger is crippled with numerous annoyances. Like AIM, it tries to install extra software that users don’t need (like the Yahoo! Toolbar), and tries to change the user’s browser homepage to http://www.yahoo.com/. It is also hampered by its annoying ads. It does have some nice features like interoperability with Windows Live Messenger. However, like ICQ, it is also short on platform support (the Macintosh and GNU/Linux versions don’t even have microphone support).


* [Yahoo! Messenger Homepage](http://messenger.yahoo.com/)
* [GYachI (unofficial Yahoo! Messenger clone for GNU/Linux) Homepage](http://gyachi.sourceforge.net/)


## Windows Live Messenger (formerly MSN Messenger) and Windows Messenger

(Microsoft decided that “if Yahoo! and AOL can do it, we can too”.)

Now the instant messenger wars were on in earnest. And Microsoft didn’t help calm them. In 1999, they announced the release of MSN Messenger, using the .NET Messenger Service protocol (again, a proprietary protocol). In 2000, Microsoft announced some groundbreaking features. Version 3 of MSN Messenger offered VoIP support. Now, users could call anyone who had MSN Messenger (a feature not many other instant messengers included). They could also call landlines for a fee using Net2Phone. Then, in 2001, Microsoft announced that they would bundle Windows Messenger, a MSN Messenger-compatible program, with Windows XP. In 2006, Microsoft re-named MSN Messenger “Windows Live Messenger”, following the re-branding of most of their MSN products to their new Windows Live product line.

Microsoft has a huge advantage over their competitors since every single copy of Windows XP sold comes with Windows Messenger. Therefore, every Windows XP user can chat using the .NET Messenger Service protocol. Unfortunately, Windows Live Messenger struggles from much the same problems that Yahoo! does: platform support. There’s no GNU/Linux version, and the OS X version doesn’t support key features like audio/video chatting. The cluttered interface doesn’t help either.


* [Windows Live Messenger Homepage](http://get.live.com/messenger/)
* [aMSN (unofficial Windows Live Messenger clone for Windows, Macintosh, FreeBSD, and GNU/Linux) Homepage](http://amsn-project.net/)


## Jabber: Finally, an open protocol

The year 2000 marked a new milestone: an open protocol. There were several unique characteristics about this particular protocol. Unlike the other protocols, Jabber was free software. It also had the idea of de-centeralizing the servers by allowing anyone to host their own server. Additionally, Jabber let its users connect to almost any protocol via transports, so users could use a Jabber client to chat with users using AIM. Finally, Jabber didn’t offer an official Jabber client, opening the field for numerous new instant messengers. These all combined to make Jabber a viable alternative to the Big Four’s protocols.


<!--pagebreak-->


Since Jabber is an open protocol that has multiple clients, there is no longer any problem with platform support. Users now have the freedom to choose what client they want. And since many Jabber clients are free software, ads are no longer a problem. Unfortunately, there is one big downside to Jabber. Unlike the Big Four protocols, there is no official audio or video support (Sean Egan is working on `libjingle`, a protocol to add audio to Jabber, but not all Jabber clients support this).


* [Jabber Homepage](http://www.jabber.org/)
* [List of Jabber clients](http://www.jabber.org/software/clients.shtml)
* [List of Jabber servers](http://www.jabber.org/software/servers.shtml)


## Google Talk: Google does instant messaging right. Sort of

In 2005, users suddenly discovered that `talk.google.com` was an active Jabber server. Since this came right after a report by the _New York Times_ that Google was going to create a communications program, people started anticipating a new instant messenger from Google. They were right. A few days later, Google announced Google Talk, “A Google approach to instant communications”. But unlike their competitors, Google didn’t create their own protocol. Instead, they decided to use standards. Therefore, the Google Talk team announced that their program would use the Jabber protocol. They also hired Sean Egan, project leader of the Gaim instant messenger, to work on their new instant messenger. Although, it was at first slow to catch on, the Google share boosted tremendously after they added a basic Google Talk-compatible client to their Gmail web email.

Unfortunately, Google Talk isn’t perfect. First, it has no video support. Also, the audio version is available for Windows-only (users can text chat with Google Talk users using Jabber, but not all Jabber clients support Google’s audio protocol). In addition, it doesn’t have all the features that other Jabber clients have (like transports or chat rooms). And although Google has done many things for the free software world, Google Talk is still only free as in beer.


* [Google Talk Homepage](http://www.google.com/talk/)
* [Instructions for using 3rd party clients](http://www.google.com/talk/otherclients.html)


## Skype: VoIP and chatting unite

In 2003, Niklas Zennström and Janus Friis, creators of Kazaa, created Skype. Although primarily a VoIP client, Skype included a chatting function that quickly took off. Soon, people were using Skype as an alternative to the Big Four clients, especially since Skype started adding games, SMS, broadcasts, videos, and other features that the Big Four clients had.

At first, Skype looks like a breath of fresh air. Its ads are much smaller and less noticeable than the Big Four clients’. It also has the best audio quality (it is, after all, a VoIP application). However, like the Big Four clients, it is very low on platform support. In fact, the Pocket PC version is more advanced than the GNU/Linux version. Furthermore, like Google Talk, it is free as in beer but not free as in freedom.


* [Skype Homepage](http://www.skype.com/)


# How to survive in a world with five protocols

Most people can’t download the Yahoo! client, the Windows Live client, the AIM or ICQ client, the Skype client, and a Jabber (or Google Talk) client and run them all at the same time. However, in order to communicate with people, you will need a way to connect to each of the protocols. The solution is to use multi-protocol instant messengers. Believe it or not, Microsoft was the first company to try to do this (that’s right, Microsoft actually did something useful and innovative). Users of MSN Messenger 1.0 could connect to the AIM network. But after AOL repeatedly blocked them, this stopped. In 2002, AOL decided to try a similar approach by changing ICQ’s protocol to OSCAR, the protocol of AIM, letting ICQ users chat with AIM (and vice versa). And in 2006, Microsoft and Yahoo! announced that their users would be able to chat with each other. However, all of these approaches only work for a few protocols. That’s where third party multi-protocol messengers come in.


## Pidgin (formerly Gaim): Multi-Protocol messaging begins

Gaim (originally GAIM as an acronym for GTK+ AIM, then changed to simply Gaim to avoid trademark disputes with AOL) was one of the first multi-protocol messengers. Released in 1998 by Mark Spencer, Gaim pioneered the idea that users could connect to multiple protocols. It was also one of the first free software instant messengers available. Gaim users could connect to Gadu-Gadu, Jabber/Google Talk, IRC, the .NET Messenger Service (Windows Messenger and MSN Messenger/Windows Live Messenger), Novell’s GroupWise, OSCAR (AIM and ICQ), SILC, Yahoo!, Zephyr, Lotus Sametime, SIP, and QQ. Soon, many were using Gaim. It was named Project of the Month at Sourceforge.net for November 1998. Adam Iser created a fork of Gaim known as Adium which allowed Macintosh users to use Gaim without using X11. However, not everyone was happy with Gaim. In 2006, Gaim was contacted by AOL’s lawyers. The reason? Once again, Gaim was told to change its name, or face legal issues. Sean Egan (the head of the project) opted for the latter and announced that Gaim would be renamed to Pidgin.


=IMAGE=figure_1.jpg=Figure 1: Pidgin conversation=

Pidgin is one of the more popular multi-protocol instant messengers. In fact, several GNU/Linux distributions including MEPIS and the well-known Ubuntu include Pidgin by default. Pidgin can also connect to protocols that most other multi-protocol instant messengers don’t (QQ and Zephyr are two good examples). It also has some cool features like Buddy Pounces, email notification, and a strong plugin API. The only downside is that Pidgin has no audio or video support (despite the fact that Pidgin’s main developer is working on an audio protocol for Google Talk). Even still, Pidgin is a powerful alternative to the Big Four clients.


* [Pidgin Homepage](http://pidgin.im/)
* [Adium (OS X Fork) Homepage](http://www.adiumx.com/)


## Miranda IM: another free multi-protocol IM

In 2000, a Windows ICQ clone called Miranda ICQ was released. By 2003, a stream of developers had come and gone without accomplishing anything individually. But together, they had done much. That year, the name was changed from Miranda ICQ to Miranda, the first version to be released with full support for the AIM, MSN, and Jabber protocols (Yahoo! would later be added too). From there, Miranda took off. It supported tons of protocols, had one of the biggest plugin directories, and was extremely lightweight (it takes up less than 1MB of space).


=IMAGE=figure_2.jpg=Figure 2: Miranda=

Miranda has a lot of desirable features. It is extremely lightweight. It supports almost every protocol on the internet. And it has a very strong plugin system (there are over 500 plugins available at the Miranda site). Unfortunately, like Gaim, there is no audio or video support (there is an unofficial plugin to add audio and video, but both users must use Miranda and have the plugin installed). Also, it is Windows-only (although you can run Miranda in WINE). Still, for a slow Windows computer, Miranda is tops.


* [Miranda Homepage](http://www.miranda-im.org/)
* [Unofficial GNU/Linux build](http://forums.miranda-im.org/showthread.php?t=4624)
* [WINE AppDB Info](http://appdb.winehq.org/appview.php?iAppId=878)


<!--pagebreak-->



## Trillian: The free (as in beer) audio/video client

Although both Gaim and Miranda were growing in popularity, neither provided a key feature: audio and video chatting. Trillian provided the answer. Founded in 2000 as a free (as in beer) instant messenger, Trillian at first was just another multi-protocol instant messenger with support for IRC, AIM, ICQ, and MSN Messenger (with Yahoo! support coming later). Since competing products like Gaim and Miranda had already gotten a big market share, Trillian’s popularity was fairly low. In 2001, that changed. The 0.70 version was released with a huge number of features (including the largest emoticon set at the time). In 2002, it became so popular that the company decided to create a pro version ($25 a year), with features such as SMS and mobile messaging capabilities, Yahoo! Messenger video, email alerts, and plugins. However, the popularity soon died down. Users started losing interest in waiting months for the next version to come out, and started switching to other clients. Version 2.0 received little interest. But in 2004, version 3 of the Basic and Pro versions was released with logging, Wikipedia integration, a new skin, and most importantly audio and video support with AIM, MSN Messenger and Yahoo! Messenger. Immediately, downloads started going up. Users started considering Trillian a major instant messenger again.

Though Trillian might seem like it is the perfect answer, it isn’t. While the audio and video support is great (especially since it is included in the freeware version), most of the functionality, such as Jabber support or plugins, is only available in the $25 pro version. It is also, like Miranda, Windows-only (there is a web version coming in version 4, but it won’t be as functional as the Windows-only client). In addition, Trillian is not free (as in speech) software but freeware (as in beer).


* [Trillian Homepage](http://www.ceruleanstudios.com/)


## Kopete: KDE’s response to GNOME’s Pidgin

There are only three multi-protocol instant messengers that support any type of audio and video communication with different protocols. Two are free as in beer (Trillian and instan-t), and one is free as in speech (Kopete). Kopete was started in 2001 as an KDE ICQ client by Duncan Mac-Vicar Prett. A few months later, AIM, MSN, and IRC protocol support were added. Soon, Jabber (and Google Talk) was also added. MSN and Google Talk (libjingle) and MSN and Yahoo! webcam support were later included. People began taking notice of Kopete. Soon, Kopete became a part of the official KDE Network package.


=IMAGE=figure_3.jpg=Figure 3: Kopete Conversation=

Kopete’s biggest strengths are its audio and video support and the fact that it is one of the few KDE instant messengers available. However, it has a lot of features missing (including basic features such as assigning buddy nicknames). Also, it is restricted to GNU/Linux platforms only (though Mac users can run an unofficial version using fink). Finally, Kopete doesn’t have audio and video support for all the platforms (unlike Trillian). But if you are a KDE user, Kopete is probably the best option.


* [Kopete Homepage](http://kopete.kde.org/)
* [Kopete on OS X with fink (unofficial)](http://pdb.finkproject.org/pdb/package.php/kopete)


## eBuddy and meebo: The start of a new type of instant messenger

In 2003, a new type of messenger was born: an online one. eBuddy (originally Everywhere-MSN, then changed to e-Messenger and later eBuddy to avoid prosecution from Microsoft) was programmed, not in C or C++, but in web programming languages. Although not as powerful as desktop clients like Pidgin or Kopete, eBuddy grew in popularity especially in the mobile world. In 2005, eBuddy was joined by meebo, also programmed using online languages. Unlike eBuddy, meebo allowed users to log into multiple accounts at the same time. But this comes with a downside: unlike eBuddy, meebo doesn’t work as well with mobile phones.

So what are the downsides to eBuddy and meebo? After all, both let users instant message from anywhere in the world that has an internet connection. Unfortunately, neither are extremely powerful. Users can send messages and emoticons. No audio calling, no video calling, no offline messaging, and no file transfers. Despite these shortcomings, meebo and eBuddy still remain popular. In fact, eBuddy claims 35 million users, more than either Yahoo! or Windows Live Messenger have.


* [eBuddy Homepage](http://www.ebuddy.com/)
* [eBuddy mobile version](http://mob.ebuddy.com)
* [meebo Homepage](http://www.meebo.com/)


## Why these multi-protocol programs occasionally have problems

Great! So we have three free software clients (free and open source), and three freeware clients (both eBuddy and meebo are free in price but are closed-source). What could be better? Unfortunately, there’s a problem. The companies behind the proprietary protocols _hate_ them. In 2002, AOL attempted to block Trillian’s SecureIM four times in three weeks. In 2004, Yahoo! blocked all third party services. Gaim and Trillian responded by temporarily joining forces to crack Yahoo!’s protocol. Skype won’t even let third party messengers connect to their protocol unless they have Skype installed and running.

Now that you know a little about the protocols, I’ll do a recap of the different ones.


 | | | | | |
-|-|-|-|-|-|
 | **Jabber** | **OSCAR (AIM/ICQ)** | **.NET Messenger Service (Windows Live Messenger/MSN Messenger)** | **Yahoo! Messenger** | **Skype** | 
**License** | Open | Proprietary | Proprietary | Proprietary | Proprietary | 
**Active Users** | Unknown (40-50 Million total, January 2007) | 57 Million (September 2006) | 27.2 Million (September 2006) | 22 Million (September 2006) | 9 Million (January 2007) | 
**Audio Support** | Partial | Yes | Yes | Yes | Yes | 
**Video Support** | Partial | Yes | Yes | Yes | Yes | 
**Group Chat** | Yes | Yes | Yes | Yes | Yes | 

=TABLE_CAPTION=The five major protocols=


<!--pagebreak-->


Now that I’ve given you an idea of the capabilities of the major protocols, it is time to choose a client to connect to them.


 | | | | |
-|-|-|-|-|
 | **AIM** | **eBuddy** | **GoogleTalk** | **ICQ** | 
**License** | Proprietary | Proprietary | Proprietary | Proprietary | 
**Type** | Adware | Freeware | Freeware | Adware | 
**Windows Version** | Yes (6.1.41.2) | Yes | Yes (1.0.0.104) | Yes (6) | 
**Macintosh Version** | Dropped (4.7.1333) | Yes | Using unofficial Jabber client | Dropped (3.4.23) | 
**GNU/Linux version** | Dropped (1.5.286) | Yes | Using unofficial Jabber client | No | 
**Mobile Version** | Windows Mobile, Palm, and any cell phone using AIM Mobile | Yes (any) | Blackberry | Windows Mobile | 
**OSCAR Protocol** | Yes | Yes | Jabber transport | Yes | 
**.NET Messenger Service Protocol** | No | Yes | Jabber transport | No | 
**Yahoo! Protocol** | No | Yes | Jabber transport | No | 
**IRC Protocol** | No | No | Jabber transport | No | 
**Jabber Protocol** | No | No | Yes | No | 
**Skype Protocol** | No | No | No | No | 
**File Transfer** | Yes | No | Yes | Yes | 
**Microphone Support** | Yes | No | Yes (libjingle-compatible clients) | Yes | 
**Webcam Support** | Yes (Windows-only) | No | No | Yes (Windows-only) | 

=TABLE_CAPTION=The twelve major clients (1 of 3)=


 | | | | |
-|-|-|-|-|
 | **Kopete** | **meebo** | **Miranda** | **Pidgin** | 
**License** | GPL | Proprietary | GPL | GPL | 
**Type** | Free software | Freeware | Free software | Free software | 
**Windows Version** | No | Yes | Yes (0.6.8) | Yes (2.0) | 
**Macintosh Version** | Yes (0.12.4, requires X server) | Yes | No | Yes (2.0) | 
**GNU/Linux version** | Yes (0.12.4) | Yes | No | Yes (2.0) | 
**Mobile Version** | No | No | No | Unofficial (Qtopia using Gaim for Qtopia) | 
**OSCAR Protocol** | Yes | Yes | Yes | Yes | 
**.NET Messenger Service Protocol** | Yes | Yes | Yes | Yes | 
**Yahoo! Protocol** | Yes | Yes | Yes | Yes | 
**IRC Protocol** | Yes | No | Yes | Yes | 
**Jabber Protocol** | Yes | Yes | Yes | Yes | 
**Skype Protocol** | Yes (requires Skype and unofficial plugin) | No | Yes (requires Skype and official plugin) | No | 
**File Transfer** | Partial | No | Yes | Yes | 
**Microphone Support** | Yes (.NET Messenger Service protocol and libjingle-compatible clients) | No | Yes (only with other Miranda users with unofficial plugin) | No | 
**Webcam Support** | Yes (.NET Messenger Service protocol and Yahoo!) | No | Yes (only with other Miranda users with unofficial plugin) | No | 

=TABLE_CAPTION=The twelve major clients (2 of 3)=


 | | | | |
-|-|-|-|-|
 | **Skype** | **Trillian** | **Windows Live Messenger** | **Yahoo! Messenger** | 
**License** | Proprietary | Proprietary | Proprietary | Proprietary | 
**Type** | Adware | Freeware | Adware | Adware | 
**Windows Version** | Yes (3.2.0.145) | Yes (3.1.5.1) | Yes (8.1.0178) | Yes (8.1.0.249) | 
**Macintosh Version** | Yes (2.5.0.85) | No | Yes (MicrosoftMessenger for Mac) | Yes (3.0b1) | 
**GNU/Linux version** | Yes (1.3.0.53) | No | No | Yes (1.0.6) | 
**Mobile Version** | Windows Mobile | Unofficial (any using I.M. Everywhere and Trillian Pro) | Any cell phone using Windows Live Messenger Mobile | Blackberry, any cell phone using Yahoo! Mobile | 
**OSCAR Protocol** | No | Yes | No | No | 
**.NET Messenger Service Protocol** | No | Yes | Yes | Yes | 
**Yahoo! Protocol** | No | Yes | Yes | Yes | 
**IRC Protocol** | No | Yes | No | No | 
**Jabber Protocol** | No | Yes (Pro only) | No | No | 
**Skype Protocol** | Yes | Yes (Pro only, requires Skype and unofficial plugin) | No | No | 
**File Transfer** | Yes | Yes | Yes | Yes | 
**Microphone Support** | Yes | Yes | Yes (Windows-only) | Yes (Windows-only) | 
**Webcam Support** | Yes | Yes | Yes (Windows-only) | Yes (Windows-only) | 

=TABLE_CAPTION=The twelve major clients (3 of 3)=


# Conclusion

Most users will end up opting for multi-protocol messengers. And with good reason. After all, running multiple messengers will gobble up RAM and CPU usage. But which one? In the end, it depends on the user. If the platform is GNU/Linux and audio and video are important, Kopete is the best bet. If audio and video aren’t important, Pidgin is probably the best on GNU/Linux. On Windows systems, either Pidgin or Miranda are good bets.

