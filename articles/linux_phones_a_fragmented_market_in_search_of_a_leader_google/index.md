---
nid: '2678'
title: 'Linux phones: a fragmented market in search of a leader (Google?)'
authors: 'Tony Mobily'
published: '2008-01-30 10:46:52'
tags: 'openmoko,gphone,android,maemo,qtopia'
license: verbatim_only
section: opinions
listed: 'true'

---
About five years ago, it was clear to me that personal computers would disappear... in our pockets. Along many other analysts, I could see computers getting smaller and smaller, and mobile phones getting busier and busier. Eventually, my dream-prediction said, it wouldn't quite be "one computer on every desk" but a much more exciting "one computer in every pocket, and one monitor/keyboard paid on every desk".

We are getting there, and yet again GNU/Linux is missing that train.

<!--break-->

I don't mean to be negative. However, the current situation of GNU/Linux on mobile devices is depressing to put it lightly. And--to make things worse--it's heading in the wrong direction, with more fragmentation coming up and more millions being poured on developing several types of wheels: one with an anti-puncture mechanism, one that works in the rain, one that doesn't suffer of wear and tear, etc.

GNU/Linux is not famous for its ability to settle on one standard. The extremely damaging KDE vs. GNOME saga is a prime example many, many _millions_ lines of of code and copious amounts of talent being wasted because of the two communities' inability to meet in the middle ground. Of course its not _that_ simple in case of KDE and Gnome; however, integration and unification could have been about 10 times better, and it could have started many years earlier. Instead, now we have two control panels, two network connection applets, two hardware detection systems... you get the picture).

Right now, in January 2008, we are at the tipping point. They are already powerful enough to be used for general tasks like browsing, email, word processing, spreadsheets etc.; the cost of RAM is dropping every month, with gigantic memory cards making their ways into everybody's keyring; I am waiting for the moment when most mobile phones have a video-out connection so that they can be plugged into monitors and televisions.

The revolution is around the corner, and Linux has already managed to become fragmented.

=TEXTBOX_START=The discredited myth of the "Internet tablet"=

Normally, there are three classes of "small devices" at the moment:

* Small laptops
* Internet tablets
* Mobile phones

I am firmly convinced that the last two are just an imaginary classification, being forced down our throats for technological and strategical reasons; the same reasons which will only hold the waters for so long.

Nokia sells its fantastic N800 and N810; and yet, they managed to convince people that it's OK for them to sell them without a GSM/GPRS card, because "it's not a phone". Please. The truth is, if the N800 had a GSM/GPRS card in it, I wouldn't need to carry my phone; I wouldn't need two (Nokia) devices which have such similar functions, it's just embarrassing. Apple reaches a similar level of embarrassment in that they sell the iPhone and the iPod touch--a friend who owns both admitted that he very often picks up the iPod touch to make a call, and wishes he could.

These companies have their reasons to cripple their products: financial reasons (I wouldn't have bought a Nokia phone, would I? Andrew wouldn't own both an iPod Touch and an iPhone, would he?), cost reasons (GSM/GPRS circuits cost money, and need government approvals), contract reasons (if the N800 had GSM/GPRS, which operator would try to catch it?), and so on. However, as time passes, consumers eventually win.

So, to me there are just "mobile devices". Some of them are crippled; some others aren't. The N800 is a fantastic mobile phone with the "mobile" word clumsily crossed out, just like the iPot Touch is.

=TEXTBOX_END=

# The current choices

When a new market explodes, the ideal situation for a company is to offer one fantastic killer product for that market, and build on top of it. Microsoft released the right operating system at the right time (MS DOS, anybody remembers?) and sold several important killer applications on top of it. If they had spent their time developing several operating systems, they would have had far fewer resources to develop software; development for those platform would have also been much more difficult. On the other hand, look at the KDE Vs. GNOME disaster, with the programs built on top of or around them: OpenOffice (which barely integrates with GNOME or KDE), Abiword/Gnumeric (which should be used a lot more than it actually is), KOffice (which again replicates the efforts of OpenOffice and the duo Abiword/Gnumeric), and so on. 

Now, let's have a sad look at the mobile phone market (also called "cell phone market" for our friends in the United States). Take a deep breath.

* [OpenMoko](http://www.openmoko.org/). I actually like OpenMoko very much. Regardless of all of the nice "we are all friends" press releases, I felt their pain when Google annunced Android. Not many people know that it's mainly sponsored by First International Computer, Inc., the company that makes the Neo1973 and "have sales of around a million phones a year in China, and are in some places a mobile phone operator".

* [Maemo](http://maemo.org/). It's GTK-based, and it's being used every day by a number of proud N800 and N810 owners (amongst which there's yours truly). Mainly sponsored by Nokia, it's _probably_ the first mass-produced GNU/Linux device ever sold. It has come a long way since its first release. However, Apple's revolutionary interface makes Maemo and the N8X0 look "old". It doesn't really deal with the "phone" side of things, I suspect because Nokia is obstinate in keeping the separation happening. However, you can enhance Maemo with [GPE Phone Edition](http://gpephone.linuxtogo.org/), a set of libraries used to create phone-like applications.

* [QTopia](http://trolltech.com/products/qtopia/greenphone/index). It's somehow similar to Maemo and OpenMoko, but I dare to say more "focussed"--it seems to have achieved more in its lifetime, probably thanks to the support of the smart managers at TrollTech. For those who don't know, QT is the widget library KDE is based on. Things in the GNU/Linux mobile world are interesting right now, because Nokia has very recently bought TrollTech, declaring that they are mainly interested in QTopia. Yes, Nokia here is the same "Nokia" which sells the N8X0, based on Maemo (that is, GTK, GNOME... you get the messy picture).

* [Android](http://code.google.com/android/). Ah, I left it last, I couldn't resist. It's based on Java (!); Google has 100 people full time working on the project (!!); to avoid any type of compatibility and licensing issues with Sun (who still owns Java), they decided to develop _their own Java Virtual Machine_, I guess before knowing that Sun would release Java under the GPL (!!!). I am running out of editorially allowed exclamation marks here. If you see the video in the link above, you will have the feeling that Google will basically wipe the floor with anything else on the market--and that includes any Windows or Apple based platform. I am serious. I guess that's what you get when you employ 100 top, motivated, well paid developer to create something that will change the world. (BTW, Android is a company Google acquired in 2005, so Google didn't develop Android "from scratch"...).

# The fragmentation

I am mainly annoyed at Google for not considering joining in great force the OpenMoko or the Maemo project. Starting from scratch (well, "sort of") has probably delayed the platform, and made quite a few projects... well, at least "nervous" about the events. Also, why didn't Google use the GPE Phone Edition stack for example?

My other question is about GNU/Linux programs. I know that "Doom" will be able to run in an Android phone. However... what about openoffice? Since Android applications are actually .apk files, will we get OpenOffice.apk? (Or, more realistically really, Abiword.apk or Gnumeric.apk?). Are there any plans to avoid yet more fragmentation in this regards? (One Apiword for the Nokia XXY, one for the LG YYZ, and so on).

I am just amazed, because wherever I turn at the moment, in the GNU/Linux land, I see fragmentation--and no concerted effort to stop it from getting worse (or, even better, unify the current fractures).

More than anything, I feel sorry for the vast amount of GPL code which will eventually die--I am a developer myself, and know how much that can hurt.

Is GNU/Linux, the platform, going to be able to compete with its much more compact competitors?

