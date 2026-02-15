---
nid: '2851'
title: 'Interview with the Ekiga developers'
authors: 'Tony Mobily'
published: '2008-04-29 21:47:53'
tags: 'voip,skype,ekiga,sip'
license: verbatim_only
section: interviews
listed: 'true'

---
Ekiga is the most popular, free VoIP software available. When I asked the Ekiga team for an interview, there was a lot I didn't know. For example, I had no idea I'd be interviewing quite so many people (coordination was quite a challenge!), and--more importantly--I didn't know that so much knowledge would have been uncovered. Every single member had something important to say, and the result is an interview that becomes a unique insight into Ekiga, the VoIP world, free software development and team work.

Julien Puydt, Damien Sandras, Matthias Schneider, Yannick Defais, Jan Schampera, These guys know telephony. They were born with a directory in their pockets. This interview is not to be missed. Enjoy.

_Many thanks to Gary Richmond for editing this epic interview_

<!--break-->

# After installing Ubuntu, users can use "Ekiga" as their Internet Telephony software  of choice -but what, precisely, is Ekiga?

**[Julien Puydt]**

 Ekiga is a VoIP application, which means "Voice over IP", also known as "an internet phone", but:

* in fact, Ekiga can handle video too
* in fact, using a bridge you can ring out to conventional telephones too, which is cheaper as well as convenient if the person you want to call is not on the internet. This is great for long distance calls as they are treated as local calls. It is internet all the way to the local exchange!

**[Damien Sandras]**

Ekiga is mainly an IP Telephony softphone, ie a software replacement for a hardware phone. This means that you can use Ekiga as a replacement for any hardware IP Phone supporting an open protocol. You can thus connect Ekiga with an IP PBX and use it as your phone. You can transfer calls, put the call on hold, forward the call and use such advanced telephony features. Imagine the ease of use of a software phone, imagine receiving your daily company calls using it.  We are using Ekiga daily with our [Asterisk-based IPBX](http://www.asterisk.org).  We aim to  go further than simple VoIP or ITSP usage.

**[Yannick Defais]**

Ekiga is an Internet phone, as pointed out by Damien and Julien. It is also a public phone book. This [service](http://Ekiga.net) gives free SIP addresses, which are similar to e-mail addresses, but for internet telephony. For example: _sip:user@Ekiga.net_.  SIP is one of the technology names powering our internet phone. As it is publicly defined, it is a globally accepted industry standard.  You can use a lot of other Internet phones (both hardware and software) with our public phone book. We maintain a list of [software you can use with Ekiga on GNU/Linux, Mac OS and Windows](http://wiki.Ekiga.org/index.php/Which_programs_work_with_Ekiga_%3F)

**[Matthias Schneider]**

Actually, Ekiga is not only Voice over IP software, it is also Video over IP software and the beautiful thing is that this additional capability is transparent to the user. When making a call, no thought needs to be given on how you want to communicate with your peers. You only need to dial a phone number or enter a sip address, Ekiga then takes care of negotiating capabilities at the other end.  That means when calling a normal phone line it will be a a voice-only call, but if calling  another softphone or even a hardphone that has video capabilities, video will be activated automatically (if the user has enabled this function).


# How and when did the project start? How did you get involved?

**[Julien Puydt]**

I got involved when I was  testing GnomeMeeting (the previous name for Ekiga) which was one of the few Linux-enabled applications to work with my webcam at that time. I thought that using my IEEE1394/Firewire/ilink video recorder would give me better images, so I wanted to add support for that.

Incredibly, the code for that was already there! Unfortunately, to use it, you had to recompile a few things, and it was an either-or choice: it wasn't possible to choose easily in a menu.

So I tried to write a plugin system to change that; something which of course was possible only because everything was free: available for study and modifications. It took me some time, and the code didn't enter as-is, but I obviously enjoyed the experience as I'm still working on Ekiga.
 
**[Damien Sandras]**

I got involved very early in the project as I started it. I was a Free Software fan, using it daily for a few years, and I wanted to gibe something back to the movement. I contributed in two ways.  The first way I contributed was when I started organizing [FOSDEM](http://www.fosdem.org) with a friend of mine (Raphael, the creator of the event). The second way I contributed was at university. I was a student at the Universitate Catholique de Louvain, and I had to work on a project in order to graduate. I met several times with professor Marc Lobelle, and I shared with him my idea of contributing something to the community and asked him if it was possible to put my graduation thesis under a free software license. We agreed that if the project was good enough, it could be published under the GPL license.  GnomeMeeting was born!

We have come a long way since the first release. I was not sure I would keep maintaining it after the first release, but I got so many encouraging e-mails that I never stopped in six years.

GnomeMeeting was the first client compatible with Netmeeting for the GNU/Linux desktop. Two years ago, we decided to rename it "Ekiga" in order to drop the "Netmeeting clone" connotation because we had decided to introduce a new protocol: SIP.

H.323 is slowly disappearing, and most IP PBX, most IP Phones sold on the market and most ITSP's are now running SIP. Choosing SIP was a good idea.

**[Yannick Defais]**

You don't need to be a developer to help libre software like Ekiga I'm a teacher in primary school. I'm not a coder. My job has very little to do with computers. Three years ago, I needed tools to communicate in both audio and video with a friend using windows. At that time, there weren't any such tools under GNU/Linux. I already knew about Gnomemeeting, and I had tested it some years ago.

The team was working hard to add the SIP support in Ekiga and I decided to help, being a beta tester which was helpful but time consuming.  It was natural for me to contribute back to people who were giving me the right tools for my own personal needs.

Step-by-step, I saw how the team responded to users' issues and I started helping others when I thought I knew enough about stuff related to their requirements. My goal was, and still is, to free up time for the developers as the more they commit to  support work, the less they code in their spare time. Today, I mainly help with writing documentation for the project. e.g., I helped with writing the [Ubuntu documentation for Ekiga](https://help.ubuntu.com/community/Ekiga) and the [Ekiga wiki](http://wiki.Ekiga.org/).

**[Jan Schampera]**

I stumbled on GnomeMeeting some time in 2003 when I was looking for an application to do "video chats" using the small webcam I had just bought.  While testing the webcam (and thus the GnomeMeeting software), I found a bug here and there, reported them via IRC and they were soon fixed.

After a while I started to fix bugs myself (the FOSS syndrome?) and sent Damien patches to apply. After some years I finally found an application to refine my rudimentary, personal C skills. Finally I got commit permissions (2006! The Gnome repository maintainers needed about 4-6 months to configure my account, as far as I remember) and coded a few less interesting things here and there.

As of now, unfortunately, my sparetime is very limited. Effectively I can't code anymore. I started to keep an eye on the main server instance for the free Ekiga.Net VoIP service. That's why I was introduced as "server maintainer".

**[Matthias Schneider]**

I got involved with Ekiga only about two years ago when finally migrating my desktop completely to Linux. At that time GnomeMeeting had become Ekiga, and SIP soon became my VoIP client of choice. I was especially impressed  with its stability, using it frequently for calls lasting several hours.

When I was investigating video telephony, which was the last missing application on my Linux Desktop, I was rather disappointed with what had been available in the Linux world. All applications had  very small resolutions, poor frame rates and were using old codecs with lousy picture quality.

Due to that experience, I decided to work on improving the support for video telephony myself. After having worked on video improvements  on other softphones, I quickly ended up with Ekiga due to its clean architecture and good extendibility. Also, the the team had been very supportive to me as a new contributor, so I soon started developing more and more features, enhancing Ekiga's video support.

# How many hours per week to you work on Ekiga?  (It would be nice if you all answered this one)

**[Damien Sandras]**

About 30 hours

 **[Matthias Schneider]**

Same here.

**[Jan Schampera]**

It varies. I sometimes worked fifty or more hours per week, and others when I dod nothing.  Since it's a sparetime actvity, it depends heavily on other things, like work, of course. Recently it got worse, about 10 hours per week (including server maintenance and Ekiga.net user support)

**[Yannick Defais]**

Not much, usually between seven and fourteen hours per week. But it varies a lot, depending on my mood, available spare time, how much people need help using the tools I'm monitoring (IRC channel for Ekiga, mailing list for Ekiga, forums for Ubuntu (both English and French), the launchpad (Ubuntu again... well you can easily see which distro I use everyday...), and various documentation for the [project](wiki.Ekiga.org), and documentation for Ubuntu (English and French again) and research about SIP, interoperability and small tools development to help users with Ekiga.net (usually in PHP).  As the 2.0.x series was about stabilisation, the work to help users tends to reduce with time. I expect an upsurge with the upcoming version 3.0 (new documentation has to be written, as there will be a lot of new features, new problems will emerge and care and attention lavished on a shiny, new Ekiga.net site).


# Unlike some of its competitors, Ekiga doesn't allow users to login to their Instant Messenger accounts (AIM, GTakl, etc.). Why not? Will this change?

**[Julien Puydt]**

There have been historically two types of programs:

* the instant messengers, which deal mostly with text messages and hence are pretty simple (that is the reason why there are so many of them!)

* the VoIP applications, which mostly deal with audio and video signals, and hence are pretty complex (that is the reason why there are so few of them!).

Both types are converging nowadays: the instant messengers allow you to make audio and video calls, and VoIP applications facilitate instant messages.  Guess who is going to have the hardest time?  So the questions isn't whether Ekiga will do IM in the future: in fact, the upcomin version 3.00 already does! No, the real question is: which IM? As the list in the question implies, there are many of them! Some of them are proprietary and that mean limited freedom for users (and futile quests for compatibility): we are not very interested in them.

Others are much more interesting: they're open, so compatibility is possible, whic confers freedom on the user. SIP and Jabber come to mind. The future Ekiga 3.00 already supports the first partially -we'll just try to support it strongly in the first instance. Perhaps Jabber will come in appear in version 3.2, or later... spare-time projects don't always progress at a very regular pace 

# About supporting IM protocols... what about using libgaim, which basically does the hard work for you?

**[Damien Sandras]**

This is on the list of things "we could do", but we don't do it because we have limited ressources. If one developer stepped up and told us he wanted to do it and maintain it, then we would go for it.  However, I think I would recommend Jabber support instead.

# You mentioned that Ekiga does video as well as audio. However, just for videos, Linux has a history of patchy drivers, as well as two different APIs - Video4Linux and the newer  Video4Linux2. How do you deal with it? Do you use GStreamer's interface to see video and audio?

**[Damien Sandras]**

I will let Julien comment on GStreamer.

We currently have various implementations for video capture:

* A Video4Linux plugin
* A Video4Linux2 plugin
* An AVC capture plugin
* A DC capture plugin
* A DirectX input plugin for win32
* A Video4Windows plugin for win32

Having to maintain all those plugins is time consuming. The last two are not well maintained.

**[Julien Puydt]**

Currently gstreamer isn't really usable for us -- it would be good if it were, as it would share the maintenance!

**[Damien Sandras]**

The ideal would be to have one single implementation with several backends maintained by a third party and shared amongst all free software libraries. The problem is that such an implementation does not exist yet, at least if you want to be 100% portable.

**[Julien Puydt]**

Indeed, there's openGL for 3D, openAL for audio playing, but there's no  real standard api for audio and video input.

**[Damien Sandras]**

At the beginning of GnomeMeeting, the situation was not good, and we had to add exceptions for several drivers in the plugin code. The reason was that most driver developers were not testing their drivers with GnomeMeeting but with xawtv instead. Currently, most, if not all, driver developers are testing their drivers with Ekiga, so we have far better results.

**[Julien Puydt]**

Well, if you count only two different video APIs, you're missing at least two others already: the two APIs for Firewire/ilink/IEEE1394 cams. We have four plugins just for video input (V4L, V4L2, DC & AVC). For audio, we have two stable audio plugins: OSS and ALSA.

I have also written incomplete plugins for portaudio (audio) and gstreamer (both audio and video). The most promising and interesting are in my opinion the gstreamer ones--unfortunately, gstreamer is a wonderful framework within itself, but its support for stubbing with other frameworks (like the network layers of Ekiga) is pretty poor at the moment: we have to wait until some of the bugs are cleared up. I provided simple test cases, but can't do much more without some active help from gstreamer gurus.

**[Jan Schampera]**

There are a couple of video input drivers for different platforms.  However, it's better to support a framework (like GStreamer), because the developer crew is much bigger compared to "the few hackers for PTLIB" (which holds the system interface plugins). This doesn't mean the quality of PTLIB is worse - it just means the development of brand new stuff is much slower. Supporting GStreamer would increase flexibility. Julien is/was working on this, but IRC, due to some current problems with GStreamer, is currently inactive.

**[Matthias Schneider]**

Ekiga's new architecture allows it to easily support multiple video and audio backends, even mixing between them (e.g. using PTLIB for video input and, once such a support is implemented, gstreamer for audio input and output). Once multiple backends are supported, it is highly unlikely that a specific camera will not be supported by any of these backends.

# When anybody mentions "video calls", they seem to immediately think of Skype. I have myself managed to do video calls to the US only when they installed Skype. How far are you from the critical mass? Can Ekiga for Windows eventually threaten Skype?

**[Damien Sandras]**
The big advantage of Ekiga is that it supports standard protocols. It is thus compatible with any other software supporting the same protocol -unlike Skype.  I do not think that Ekiga for Windows is a threat to Skype. However, I think that SIP is a threat to Skype. SIP is everywhere: at the office, at home, and soon in your mobile...

**[Julien Puydt]**

Notice that SkipeIN and SkypeOUT are skype going through SIP, so they are already following the rest of the industry there!

Skype is very good at marketing, and technically, they have their own protocol which is:

* proprietary
* buggy, which is the reason why it is forbidden in many public  institutions in France: it uses its clients as proxies, and opens up holes in firewalls like crazy...

It is indeed easier to set up, but it's cheating!

**[Jan Schampera]**

I wouldn't say Ekiga itself can--or even will threaten Skype. It would be enough for me when the people use alternatives that are based on common standards, like SIP. The problem on Windows is not Skype per se but the marketing and commerce around it, which makes the average user see it like "Skype, and only Skype IS voice over IP". But this scenario is a common problem with many Windows applications, with  respect to the point of view of many users ("The Internet is Internet Explorer").

# Is it possible/feasible to create a Skype to SIP gateway, so that Skype users can call Ekiga users and vice versa?

**[Damien Sandras]**

Such commercial gateways already exist. You just have to pay a license fee to Skype and have the required bandwidth available to host such a gateway.

I think Asterisk has a Skype module allowing it to bridge Skype calls with other types of calls.

**[Matthias Schneider]**

Actually it is even possible in a more adhoc way: Use SkypeIn and SkypeOut and a SIP provider that supports calls to the PSTN. However, this (usually) comes with a time-based charge and of course only supports voice with PCMA/PCMU.

# Does this mean that it's theoretically (and practically?) possible to configure a server so that Ekiga users can call Skype users and vice versa?

**[Damien Sandras]**

Yes. See [this post](http://blog.tmcnet.com/blog/tom-keating/skype/sip-to-skype-gateway-breaks-skypes-great-wall-of-voip.asp)

# Let's talk about call quality... First of all, let me talk about PC to PC audio and video calls. What protocols do you use? Is the quality comparable to other pieces of software like Skype?

**[Damien Sandras]**

The upcoming Ekiga 3.00 release supports very good video codecs. I'll let Matthias talk about that.  He's the expert.

**[Julien Puydt]**

Yes,  Matthias is the expert!

**[Damien Sandras]**

Ekiga 2.00 already supported very good audio codecs like Speex in Narrow Band and Wide Band. The quality is comparable to what you can achieve with Skype.

**[Julien Puydt]**

The quality depends mostly on two things:

* the codecs: some of the best are proprietary, although libre ones are appearing and will change things;
* the hardware setup: if you have your speakers near the mic, you're just trying your luck... echo cancellation isn't perfect.

**[Jan Schampera]**

Nothing to say, except that the quality is okay for me when I use it I also noticed problems with buggy or bad sound drivers or really cheap sound hardware (ability to do real duplex operation) on Linux.  This has all got better the lat few years--as far as I can see.

**[Matthias Schneider]**

(By the way, when I talk about Ekiga, I am referring to the upcoming version 3.00)

Since we are talking about Skype I would like to clarify two common misconceptions about Skype:

* Skype does not allow free telephone calls SkypeOut, used for calling "classic" landlines or mobiles, charges an average or more-than-average fee for this service.

Skype-to-Skype calls are are also not free, although no fee is collected. In article 4, the Skype End User Licence Agreement (EULA) states:

>4.1 Utilization of Your computer. You hereby acknowledge that the Skype  Software may utilize the processor and bandwidth of the computer (or other applicable device) You are utilizing, for the limited purpose of facilitating the communication between Skype Software users.

This means than instead of paying for a specific call, you give Skype the  right to use both bandwidth of your internet connection as well as processing power of your PC as a compensation. The legality of this doubted in some scenarios -like when using a company or a university network. This has gone as far as some universities even banning Skype from their networks, while still allowing VoIP in general.

* Skype does not offer privacy by employing encryption

Skype employs encryption mainly to disguise its protocol and make it impossible for other software (and hardware) to connect to the Skype network.

Probably it will still do a good job in hiding a casual conversation but it is not possible to talk about privacy in a strict sense since no independent party has verified the mechanisms and implementation of its encryption. Also, Skype does not feature a mechanism for verifying the  integrity of a connection (i.e., that there is no man-in-the-middle). Furthermore, since nearly nothing is known about call routing of Skype calls, all calls could (theoretically) be routed to a single interception hub.

Ekiga, on the other hand, combined with the "right" (e.g. default) provider, is completely free for SIP-to-SIP or H.323-to-H.323 calls. I will focus on SIP in the following paragraphs since it has become the most common VoIP protocol at present.

Ekiga does not support privacy and integrity yet, but will with the integration of ZRTP, which will perhaps even happen in 3.00. It will rely on well recongized mechanisms and algorithms that are on their way to becoming an RFC standard.

In contrast to clients of proprietary protocols, Ekiga is compatible with all SIP clients (known to me) for audio and video with at least one common codec (except Wengophone since its H.263 implementation is not standards compliant, but I would not like to talk about that without having someone from the Wengo team being able to comment). It is also compatible with video "hardphones" that feature a built-in screen or can be connected to a TV set. Ekiga supports the following video codecs according to the respective RFCs:

> H.261, H.263, H.263+, H.264, theora

The most interesting of these codecs is H.264, which is the most advanced codec in use at the moment and offers the best quality possible for video communications and Theora, due to the fact that all (known) patents covered by this codec are freely licensed to the public.  Compared with Skype, audio and video quality of Ekiga should be equal or better, provided a good codec is negotiated between the two endpoints.  (Notice the variability here since there are many different clients out there with different capabilities). 

Ekiga's best video codec, H.264, is said to be better than On2's propriertary codec VP7 which is used for Skype. However, it is difficult to prove since no information on the inner workings of VP7 has been made public. Of course On2's marketing guys claim VP7's superiority to H.264 on its website without any additional facts (a non-representative visual comparison can be seen at http://en.wikipedia.org/wiki/VP7). On the audio side, I suppose any wideband codec like speex will be as good or better than Skype's codec (I think they also use some kind of wideband codec), but I am not really an expert on this matter.

About the resolution, as far as I know, Skype supports 320x240 and 640x480, while Ekiga will probably support many resolutions up to (theoretically) 1920x1088 (HDTV) (this will mainly depends on how our testing is progressing), which will be interesting in the future when processing power will be even more abundant, and devices than can capture these resolutions are more common. I suppose that  640x480 or 4CIF (704Ã?576) may be a feasible setting on a reasonably current PC.

# You also give Ekiga users a way to call people on land lines. How does that work? What is the default provider, and why? Does its geographic position cripple people in Australia or United States?

**[Damien Sandras]**

On the contrary, for other SIP softphones, we let users decide which SIP provider they want to use. However, we **suggest** one specific provider. The reason why we do that is that they are  very open to suggestions and improvements. A few years ago, I was looking for providers that could relay H.323 calls with codecs free from patents, but I could not find any. They were all requesting calls to be made using G.729 for which you need to pay a fee for patents.  I contacted DiamondCard.us and they agreed to relay calls with unpatented codecs like G.711 (which requires more bandwidth).  Lately, I proposed to them that they open a SIP to SMS service, and they worked on it. Many providers propose an SMS service, but it is based on HTTP webpages. Diamondcard is doing things the right way: you can open up the chat window of Ekiga, and send an instant message to a phone number instead of another SIP contact. It will be converted and sent as SMS for a very low fee. That's something that is not common.

Finally, when a user complains that the quality is poor for a specific destination, they try changing the default route to that specific destination in order to improve the quality. I do not know many providers that are giving so much freedom, and respect the free software community as they had already done a few years ago!

**[Matthias Schneider]**

There are many providers providing SIP services out there, and, that is also Ekiga's advantage. It is possible to register with many of them at the same time. For example I myself mainly use two providers, one for calls in Europe that is based in Germany, and a second one for the Americas that is based in Canada. I found that calls to land lines in Latin America are of very good quality and very cheap via VoIP, while when using a normal ISDN or analog line I always  got a lot of delay and barely understandable quality. And since Ekiga is provider independent, one can easily change to or add other providers, unlike proprietary clients.

# You mentioned earlier incompatibilities with one of Wengophone's codecs. Now, do you think this is an example of how having multiple implementations is actually a problem?

**[Damien Sandras]**

I leave this one to Matthias.

**[Matthias Schneider]**

Of course having many independent implementations that are very different (open/closed source, different languages, different implementers, embedded/full-grown systems) is a lot more complicated than having a single program implemented by the same institution. In proprietary contexts, you can simplify a lot of things and can make many assumptions on how the other endpoint will react, since it is an exact copy of the local one.

In an open, standards-based networking, there is always the standard that mandates how something has to work in order to be compliant, meaning that (provided that the standard is well defined) in case two endpoints do not co-operate, one of the them will be compliant and the other one will not (which then has to be fixed).

Using SIP, endpoints can have many different capabilities (i.e.  video, audio, different codecs, different codecs settings, use embedded devices with limited memory and CPU, etc.), so the standard defines a capabilities exchange where the two endpoints communicate with each other and negotiate a set of parameters that both support.  This is quite a complex procedure, but it ensures that the user does not have to think of the other endpoint and can leave the details to the protocol.

Now, with a proprietary protocol, you would, for example, simply implement a single codec, knowing that it is supported by all other endpoints, and use the same configuration. Ekiga implements many different codecs, and a lot of brainpower was spent on negotiating the best possible communication parameters for talking to a wide range of very different endpoints.

Now, what are the benefits of standards-based vs. proprietary protocols if there is so much additional complexity? Well, proprietary protocols have considerable disadvantages:

* Usually it only makes sense to use proprietary protocols when there is (at least a limited) monopoly of a single vendor/endpoint, which,naturally, is undesirable

* Users are locked into this single vendor. This means the vendor can dictate prices and conditions for its services.
* Skype changes its EULA's paragraph 4.1, making it possible for them to use your memory, cpu and internet connection not only for forwarding phone calls, but for selling grid computing services too.
* If there is no competition between clients, at some point there will be no incentive to innovate
* There is only one company that could work on specific customizations and special features, again giving it the potential power to dictate prices and conditions
* In the case of only a monopoly client, a bug or a security risk will manifest itself on all sub-systems at the same time. This not only means that a fault can have a network-wide impact, but can create loopholes and also motivates people to actually look for and exploit security issues.

In the case of Skype, we are not only talking about a proprietary protocol, but also an obfuscated one too. This adds potential problems:

* For a company it is probably unacceptable to route their confidential calls via a system that is largely unknown
* If that system is not working they have to rely on the single operator to fix it

Coming back to the problem with Wengo, the IETF-specified RFC 2190 is to be used for H.263 and RFC 2429 is to be used for H.263+. The motivation for Wengo using RFC2190 for H.263+, which is plainly wrong, escapes me. Furthermore, not even the header used for RFC2190 is populated with real values (e.g. fields for resolution and quantisation) but a hard-coded string. Like I said in one of my earlier emails, I suppose it would be a good thing to give a Wengo developer a chance to comment on all of this. If you have a look at [the list of programs that work with Ekiga](http://wiki.Ekiga.org/index.php/Which_programs_work_with_Ekiga_%3F), you will see that it works with all other SIP video softphones we have tested it with.

# I've recently found Skype on mobile phones (!). Has Ekiga made it into the mobile market? If not, do you have plans? Do you feel that would be Ekiga's normal evolution?

**[Damien Sandras]**

There is certainly ongoing work that is being done for embedded Linux systems.  We have no plans for Windows Mobile though...

# You mentioned that in Linux there are several video plugins, some of which are not maintained. Do you think you will eventually settle for gstreamer, once the existing problems are ironed out?

**[Julien Puydt]**
I definitely find gstreamer a very good framework, and it would definitely be interesting to use it for the devices, once its bridge issues are resolved.

**[Damien Sandras]**

We are looking for a solution that is portable, that works and that is well-maintained. GStreamer is certainly a very good candidate! It provides an easy-to-use API, supports many devices and is well-maintained.

**[Matthias Schneider]**

I think a future 3.2 version of Ekiga can have both the existing PTLIB video input framework and gstreamer at the same time. I haven't done a lot of tests yet with gstreamer, but I am not yet 100% sure it canoffer the same performance as PTLIB.

# If I have an account with a SIP provider and am, say, 111111@one.com, and you have an account with a different SIP provider and are 22222@two.com, are you able to call me? Or must there be a peering deal between the two networks? Also, I heard about extensions to the SIP protocol which would allow global, planet-wide phone numbers... is that a dream? What do you know about it? Will it affect Ekiga?

**[Damien Sandras]**

I do not think that's a SIP extension. It is just a fun SIP feature.  For example, if you go to Voxbone (http://www.voxbone.com), you can buy real phone numbers and map them to any SIP address, including an Ekiga.net address.

When a "real" phone calls that number, your Ekiga will ring.  That is something you can already do with an IP PBX, but of course, in this case, you do not need one and you can have numbers everywhere.

**[Jan Schampera]**

If you weren't talking about a SIP protocol extension it would sound a bit like ENUM.

**[Matthias Schneider]**

Nothing to add here except that I do not understand what is meant by global, planet-wide phone numbers. Aren't all phone numbers global and planet-wide if you use country code + prefix + extension? Many SIP providers offer E.164 (=normal) phone numbers, some even for free.

**[Yannick Defais]**

This is a real issue because it will be much easier to simply give a numeric phone number to all your contacts. At the moment the best thing is to buy a real phone number which will work with Ekiga. A lot of SIP providers sell phone numbers with this feature.

Theoretically, [ENUM](http://en.wikipedia.org/wiki/ENUM) is the standard for this purpose; it associates your real phone number with VoIP. This is a great solution, but the official implementation must use the e164.arpa domain and is dependant upon government decisions.  Here is the list of the [countries using ENUM](http://ENUMdata.org/). As you can see, there are only a few in actively operative. In the meantime, there is a [public ENUM server](http://www.e164.org/), but this is unofficial and users in most countries should register with the server.  At present the situation is far from optimum. Ekiga.net provides a [access to those numbers](http://wiki.Ekiga.org/index.php/Enum).

As there is no widely accepted standard yet, most SIP provider use peering
(e.g., for [Ekiga.net](http://wiki.Ekiga.org/index.php/Peering)) to
connect to other SIP networks, but this raises an issue when giving out your
SIP number as it will change depending on the provider used.

Some people have tried to find solutions to this problem, like the free and popular software Asterisk, which lobbies for its fully-distributed DUNDI [without any centralized authority system](http://www.dundi.info/). But this solution needs implementation or an Asterisk PABX close to your VoIP client.

Or others like [FreENUM](http://freENUM.org/) which pushes for ITAD numbers as defined in [the RFC 3219](http://www.ietf.org/rfc/rfc3219.txt).

And there is probably more cooking or ready to use...

It is affecting Ekiga already, but new decisions are up to developers. 

**[Damien Sandras]**

With SIP, each peer should be able to call any other one. However, unfortunately, some SIP providers block the ability to accept incoming calls from users who are not registered to that specific service. That is not the case for Ekiga.net which allows the kind of behavior you describe.

**[Matthias Schneider]**

There has been some confusion on what actually E.164 is. Neither 111111 nor 22222 is an actual E.164 telephone number. E.164 has nothing to do directly with SIP and is used for PSTN networks. E.164 telephone numbers have structures like + 49 2131 XXXXXX ( see http://en.wikipedia.org/wiki/E.164).

Now SIP providers can (but do not have to) assign E.164 numbers. For example, I have a +49 2131 XXXXXX number from sipgate.de, which is provided free of charge for German residents. I also have another telephone number +1 416 XXXXXXXX provided by vbuzzer.com, a SIP provider in Canada, which charges about two Canadian dollars per month for that service. These numbers can be called from both PSTN and other VoIP providers (even via SkypeOut) and are globally unique. It depends on the calling party's provider if the call is actually charged for,

# But if I have a soft phone, I am only able to dial numbers - whichimplies that I can only call people in the same network as me. I think the ideal situation is one where everybody gets a "SIP number", so that any soft phone can call any other soft phone without ever having to worry about anything.

**[Damien Sandras]**

That's the case with many providers. Let's imagine you are registered to FreeWorldDialup and you want to call xyz@Ekiga.net without having an Ekiga.net account, it will just work out of the box.

Put in simple words, ENUM allows to map real world phone numbers to SIP addresses. For example, my private phone number is mapped to my @Ekiga.net address.

That way, using a SIP soft phone, somebody can just dial my real phone number and get connected to my SIP address. That is very convenient, because when you are using software like Asterisk, connected to the real phone network, you can first try the SIP address corresponding to a phone number before letting the call go through the traditional network.

When a softphone or other software supports ENUM, when you dial a phone number like +3210456456, it will do a lookup to get the corresponding SIP address (sip:xyz@Ekiga.net), and it will dial sip:xyz@Ekiga.net. You do not need to know that SIP address in advance.

**[Matthias Schneider]**

I am not really an expert on SIP peering, but I will try to comment as far as my knowledge allows it. Please note that there is always the distinction between the control plane (which goes from the UA -> provider proxy -> UA in a simple case) with SIP and the actual user (media) plane with RTP that usually is passed directly between the two endpoints (except when using media proxies of course).

First of all, what is SIP peering all about? It should enable you to call via VoIP users that are NOT registered to the same provider as you are. Let's say you are registered as 1111@provider-a.com and want to call 22222@provider-b.com.

Now you have a few problems to solve:

* How to specify @provider-b.com with a numeric keypad?
* Will your user agent be able to setup a call with provider-b.com's proxy although it is not registered and authenticated there?

The first question is rather simple to answer. There are services like sipbroker.com (used by Ekiga.net) that have a "mapping table" prefixes to provider domains as can be seen at [the sipbroker page](http://www.sipbroker.com/sipbroker/action/providerWhitePages).

So, for example, if a Ekiga.net user would like to call a Wengo user, he would simply call *248WENGOID@Ekiga.net and the call would reach the recipient.  Note that this only makes sense with numeric user ids, since if the peer's userid is not numeric, you will need an alphanumeric keypad anyway.  In that case a *243WENGOID@Ekiga.net would be equivalent to WENGOID@voip.wengo.fr.

The second question is more difficult to answer. This depends on provider-b.com accepting calls from user agents that are not registered and authenticated to his network. On the sipbroker link above it can be seen which providers allow calls from unregistered users and which ones do not.

Now there are some reasons a provider would like not to accept calls from UAs not registered (and thus authenticated) to itself:

* business model: The service provider need the PSTN fees for its business model.
* security: The service provider is afraid of possible impact on security
* spit: The service provider is afraid of SPIT (VoIP SPAM) which will probably occur sooner or later (like e-mail spam)

Instead of simply opening their proxies to all incoming calls, different methods exist in order for providers to authenticate themselves (and thus their respective users), however I won't comment on that any further in order to keep my reply to a manageable size. Also, my knowledge on what policies are actually used in real networks is rather limited.

All of this assumes an awareness of the provider my peer is connected to, something that we really do not want to know at all. In case a peer is assigned an E.164 number by his provider we do have a provider-independent, worldwide unique ID; his phone number. So we really do not care what provider our peer is registered to. Actually we do not even care if he is using VoIP or not. This is where ENUM comes into play. ENUM is a special kind of DNS service, that is used to map an E.164 number (=telephone number) to a sip address id@provider.com (note that this, in contrast to the approach mentioned above, also works with alphanumeric SIP addresses). Now with that service, either the user agent (->user ENUM) or the calling party's SIP provider's proxy (carrier or infrastructure ENUM) would have a lookup at an ENUM service once an E.164 number is "dialed" (I do not want to get that much into the details here though).

If no ENUM entry exists, the call would be placed in the PSTN via the calling party's provider's media gateway, usually generating time-based charges. If an ENUM record is found, the calling party's provider's proxy can forward the INVITE to the called party's provider's proxy. Of course, the call can also only be created if the called party's provider's proxy accepts this INVITE, either because it accepts all invites or because there has been some kind of authentication between the two providers. The media (i.e. RTP) will usually be passed directly between the peers (in an optimum situation) or may be proxied via media proxies (I think they are then called session boarder controllers). Usually, in the case of direct connection no charges are made by the provider.

ENUM also prevents any negative impact on the quality of VoIP-PSTN-VoIP double conversion with lots of jitter buffers and possibly re-encodings (and also allows other codecs apart from PCMA/PCMU for end-to-end communcication (e.g., video)) Also, in case an E.164 number was issued to a specific SIP account, we can easily dial this number on a numeric keypad, even if the corresponding SIP account is not numeric.

So, summarizing, in order to transparently route VoIP calls made to E.164 numbers without passing via the PSTN, we need the following:

* ENUM to look up the called parties' provider and username
* either an open called party's proxy or an authentication between the calling parties and the called parties' proxies.

As if this were not problematical enough we presently have a situation where there is not only one ENUM provider, but many. This diversity is not driven by technically needs but politically motivated.  The ITU's offical ENUM domain is e164.arpa. However, since it is governed by the ITU, which is a UN organisation, there is a lot of bureaucracy involved and bypassing national governments (not all countries have ratified it for political reasons) is therfore necessary. However, it is also the only legitimate, global and official registry that guarantees continuity.

Other registries like e164.org or e164.info are private and have quickly amassed a lot of entries in their databases which can be used anywhere. However, they are operated by private companies (some of them non-profit though).

In the end, it does not really matter in which registry users are registered since multiple databases can be (and are) queried before placing a call to a SIP peer -or to the PSTN as a last resort.

Of course there are also the pros and cons of adding user records to each of these registries, so not all providers register their E.164 numbers or only register them with a specific registry.

I hope to have been able to shed some light on SIP peering,

# Ekiga 3.0 is nearly ready. In a nutshell, what are the improvements?  When do you plan on releasing it?

**[Damien Sandras]**

We plan to release a first beta around April, and a stable release around June, July.  Matthias, Julien, can you comment on those ones?

There are many improvements, I will probably forget a few ones, but these are the main ones:

* Support for SIP/SIMPLE, i.e., presence through SIP. It will allow you to have a more conventional roster as a basis for calls and contacting your friends. It will also be possible to specify your current status and make it available to those friends.
* A completely redesigned user interface, more user-friendly, easier to handle and to learn, intuitive and powerful.
* A new video display engine, with support for XVideo, and also for DirectX under WIN32.
* New video codecs supporting large resolutions with very good quality. You can achieve fullscreen with a normal DSL bandwidth. We will support H.263, H.264, MPEG-4 and Theora.
* A new engine with a clear separation between the UI and the core of the code. (Julien please tell more about this).

**[Julien Puydt]**

The most visible change for users will be the presence support; but, in my opinion, the most important one is that Ekiga's structure has changed, so that adding new things like protocols (be they VoIP or simple IM) will be much easier. Some big parts have been either completely or mostly rewritten (video display, contact management...).

However, the change in structure will also provide something we was incomplete before: the possiblity to have different user interfaces on the same "workforce" code. Ekiga already supported that through DBUS, but:

* it was incomplete ;
* no GNOME app/lib seemed to have found it worthwhile using... which quite defeats the purpose!

The new organization with a clearer working code/interface code separation means that in the future, it will be possible to have several types of user interfaces for Ekiga (it isn't done yet, but things are ready for it):

* gtk+ (the current);
* through DBUS;
* console-based ;
* relevant toolkits for embedded platforms;
* etc...

**[Matthias Schneider]**

* New video codecs H.264, theora, H.263+ and MPEG4
* Many different resolutions (up to 4CIF for now)
* Accelerated video output (XVideo, which allows high frame rates)
* Plug and play for audio and video devices
* SIP presence support
* new, very flexible architecture

# Which features do you feel are missing in Ekiga? Do you have any "personal battles", feature-wise?

**[Damien Sandras]**

My plan for 3.2 is to add support for more telephony features, like the ability to handle several simultaneous calls, or to do call pickup, or be notified of incoming calls coming to colleagues' phones without the intervention of software like Asterisk.

SIP defines many things in the field of IP Telephony, permitting the implementation of traditional telephony features in a pure signaling way, only using SIP. It is interesting and innovative to implement them.

I also have plans to add support for XCAP, i.e., the ability to store the contacts lists on the server.

**[Matthias Schneider]**

I would like then to see some improvements on the video side like investigating lip synchronicity between audio and video, adding gstreamer support and polishing and finalizing the win32 build.

# That was the definitive guide to Ekiga and all the related technologies of VOIP! Thanks everyone.
