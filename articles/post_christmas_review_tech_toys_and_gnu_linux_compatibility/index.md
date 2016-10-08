---
nid: '3494'
title: ' Post-Christmas Review: Tech Toys and GNU/Linux Compatibility'
authors: 'Terry Hancock'
published: '2011-02-01 8:44:11'
tags: 'gnu/linux,usb,compatibility,toys'
license: verbatim_only
section: opinions
listed: 'true'

---
<!-- A Post-Christmas Review: Tech Toys and GNU/Linux Compatibility -->

Well, Christmas 2010 is over, and all the little tech toy devices have been connected, installed, and played with (or returned to the store from whence they came if they didn't clear those hurdles). This year was an amazing success. Three major computer-linked devices worked on the first try without a hiccup. And I have to at least say a word or two about Mattel's new Computer Engineer Barbie -- a purchase I must admit was a little silly, but my daughter does play with it.

<!--break-->

Would you give a vegetarian friend a ham for Christmas? Would you give his children beef jerky so that he'll be forced to be the "bad guy" and take it away from them, or violate his own ethics? I don't think anybody I know would do that. And yet, the much less radical choice of using free software does not get so much respect.

It's been years since there have been any working Windows or Apple computers in our household. We all use Debian GNU/Linux, partly because it's easier to share resources when we're all using the same system, partly because of the practical benefits of free software, and partly because I like to put my money where my mouth is, and I think free software is much better for society. For the most part, this is the only system my kids have known at home, and they're all quite used to it, although of course, they do encounter proprietary systems at school.

There have been frustrations with incompatible equipment -- especially stuff they've received as gifts from family and friends.

# Three-for-three on GNU/Linux Compatibility!

This year went pretty well on compatibility, though. I'm not sure if this is the result of better checking beforehand or if perhaps standards-compliance in the industry is improving. But I do want to share our success with three computer-linked devices:

* Polaroid a530 5.0 Megapixel Digital Camera
* SanDisk Sansa Clip+ 2 GB MP3 Player from Sandisk
* CAD U1 USB-Audio Dynamic Microphone

These are all fairly inexpensive devices that, nevertheless were implemented in standards-compatible ways so that they worked smoothly with our systems, which made my post-Christmas break much more pleasant and restful, I can tell you!

=IMAGE=fig_polaroid_a530.jpg=The Polaroid a530 camera is very inexpensive and has a combination of two features I found essential: 1) the lens has no moving parts (no optical zoom) to jam and 2) the data is stored on a removable flash media card, so that it can always be read on a dedicated reader (Photo Credit: Polaroid / Advertisement Photo)=

Both the Polaroid camera and the Sandisk music player support flash card memory (SD and Micro-SD respectively), which means that even if they didn't otherwise work, it would be possible to transfer data by transferring the cards.

=IMAGE=fig_sansa_clip.jpg=The Sansa Clip+ music player worked without a hitch. It stores data on a Micro-SD card, but also works as a generic USB mass storage device. It supports a wide variety of formats, including the free Ogg Vorbis format (Photo Credit: Joshua Lock / CC By-SA 2.0)=

More importantly, though, they both support the USB storage format internally. This means that if you connect them to your GNU/Linux based computer with the included cable, they can simply be mounted, just like USB pen drives. On our systems, in fact, they simply automounted, with no installation of any kind required. This made it easy to transfer images from the camera or songs to the player simply by dragging and dropping files in the file manager (Konqueror or Dolphin on our systems).

The microphone supports a different USB standard, which I only recently found out about, which is the "USB Audio" standard. This is apparently a pretty universal protocol now, and there are lots of microphones that support it. The one we have is an inexpensive off-brand dynamic microphone with a built-in USB interface sold by "CAD".

=IMAGE=fig_cad_usb_mic.jpg=This CAD U1 USB dynamic microphone was very painless to install (Photo Credit: CAD / Advertisement Photo)=

Installing the microphone was simply a matter of plugging it into a USB port and selecting it as the audio recording device in Audacity. The mic itself is of pretty decent quality -- I doubt it compares well to professional mics like the Shure, but I didn't notice any problems, and the sound is far and away superior to cheap computer mics. Dynamic mics are intrinsically more rugged, which is also an important consideration when buying for a kid.

The Sansa music player, though billed as an "MP3 Player", is actually capable of playing a variety of formats, including the most popular patent-free audio format, Ogg Vorbis. My teenage son had no trouble at all hooking the player up to his Debian machine and transferring the music files he likes to listen to. Now he's not tied to his desktop computer when he wants to listen to music, which means we see him a lot more!

# "Computer Engineer Barbie": Archetype or Stereotype?

Last year, the news was that Mattel was going to make one, but they were actually for sale in time for Christmas this year. I'm sure this will be a little controversial, as Barbie usually is, but on balance, I think I approve of this doll.

It certainly shows a much higher level of free software awareness than I expected, in fact it was Elizabeth Krumbach's blog about this fact that prompted me to cave in to the hype and buy this for my daughter this year. Of course, it's really just part of the cardboard packaging, but I still thought a Tux was a nice addition.

=IMAGE=fig_ce_barbie.jpg=Mattel's "Computer Engineer Barbie" -- A) Yes, it's undeniably a Tux Penguin! B) She still has that pretty boy fixation C) Mmm. It had better be "Buddha's Delight" to keep that figure! D) Well that could be FSM in the middle, right? E) The laptop has a pretty generic-looking operating system, but I think I could get KDM to look like that. F) Dual head monitor -- well yeah! Clearly the screensaver has come on while she's posing for the picture, though. G) Barbie has wrists! Seriously, the wrists and elbows are posable, making this the most articulated Barbie I've seen (she still has knees, by the way). H) It's probably supposed to be an iPhone, but we can pretend it's something open. I) Sadly, this package call out is for a proprietary iPhone app. J) Stylish reading glasses. K) Bluetooth earpiece. (Main Photo Credit: Elizabeth Krumbach / CC By 2.0)=

So how does this Barbie rate on image issues? Well, Barbie's proportions have been a subject of much controversy for years. I have to say I find this a little silly myself. It's a bit like those people complaining that anime characters eyes are too big. Barbie, like the anime characters, is a caricature of a human being, not a realistic model -- so her features are exaggerated. It seems to me that any girl who expects to actually look that much like her doll has other issues that need to be addressed, so maybe the doll isn't really at fault (I suspect she would've had to have gotten a weight-loss obsession from sources other than Mattel to even notice this).

I thought it was more telling to see what Mattel's designers thought would define the look of a "computer engineer." I notice the fast food and the obligatory glasses (can't look smart without glasses, I guess). I suppose there's some truth to the bluetooth earpieces, smart phone, laptop, and the dual-headed workstation -- those are all accoutrements of the job.

Of course, if they _had_ made this particular Barbie with a heavier build, that probably would've caused a lot more offense! It's probably true that being in a sedentary job is bad for your waistline (hasn't helped mine any), but we probably don't want to be reminded of that.

I also wondered a little about the name. There are "computer engineers", but that usually means "engineers who design computers." I think this Barbie is more likely a programmer or "software engineer". Maybe they were trying to keep it generic so as to include both professions?

# Charity at Christmas

Well that was it for the material side of my Christmas this year, and although it has nothing to do with free software -- except possibly in the shared value of individual empowerment -- I think I will plug the charity gift I gave to all the adults on my list this year, which was [The Heifer Project](http://www.heifer.org). As the name implies, Heifer is about buying livestock for rural people who need help -- the great thing about it is that, unlike many other charities, it doesn't build in dependency. Instead, it makes an investment in people, allowing them to provide for themselves.

As a gift it's satisfying because it's very specific -- you give money specifically towards particular livestock purchases (it's a little more complicated than that in reality, but I'll let you read the website for the [details](http://heifer.custhelp.com/cgi-bin/heifer.cfg/php/enduser/std_adp.php?p_faqid=5)).

The charity gifts went over pretty well with my family -- they all seemed to "get it" and since they don't really need more stuff -- certainly not what I can afford, I think they appreciated the concept. 

Some other charity gifts to consider for next year include: the [Free Software Foundation](http://www.fsf.org/join) which funds the development and promotion of free software, [Software in the Public Interest](http://www.spi-inc.org/donations/) which is the main funding body behind the Debian GNU/Linux distribution, the [One Laptop Per Child](http://one.laptop.org/action/donate) project which aims to bring technological empowerment to many children around the world, and [Ubuntu at Work](http://ubuntuatwork.org/you-can-help-us/) (no relation to Canonical or the Ubuntu GNU/Linux distribution) which helps women entrepreneurs start businesses as a means of escaping poverty.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).

Fair Use Rationale: Displaying an advertisement to refer to an object being sold for news and review purposes is fair use, according to the US Copyright Office. There may be rights issues with re-using these images in other contexts.
=TEXTBOX_END=
