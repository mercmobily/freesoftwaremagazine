---
nid: '2558'
title: 'Home automation in GNU/Linux'
authors: 'Steven Goodwin'
published: '2008-07-03 3:39:21'
tags: 'home-automation,multimedia'
issue: issue_22
license: cc-by-nc
section: hacking
main_image: hide.jpg
listed: 'true'

---
Home Automation is anything that your home does for you automatically to make living there more enjoyable or productive. It covers many areas, including remote and timed control of lights and electrical home appliances, distributed media services, and communication. Over the last 10 years, many hardware manufacturers have presented their own proprietary solutions to these problems. Unbeknownst to them, a groundswell of developers from around the world has been providing similar solutions to the free and open source community. 

<!--break-->

In this introductory article, I will carry out a high-level review of a number of these projects to see what is already available.

# Appliance Control

One of the most impressive features of an automated smart home is the ability of a computer to control your lights or to operate the power socket attached to the kettle. Naturally, this requires the addition of hardware, and the most prominent example here (with a good trade-off between cost, longevity, and flexibility) is called X10.

X10 is a protocol that places specifically-formatted high frequency power bursts onto the mains power line. Since the mains cables are connected to every light bulb and power socket in the house, a signal placed onto the power line in one place is seen across the rest of the mains supply. Consequently, a special X10-enabled power socket is able to watch for these power bursts and switch itself on or off, accordingly.

To place these X10 signals onto the mains requires a peripheral, such as the CM12U (see figure 1) which also contains a serial plug (either RS232 or USB) that is inserted into your PC. To receive these signals you can use either:

* An appliance module that will turn a socket on or off. You simply plug this unit into the wall, your appliance into the other side, and switch the wall socket on. The appliance (such as a kettle) is then controlled by a remote X10 signal. One such unit is shown in Figure 2.

* A light bulb attachment unit, as seen in Figure 3. It is placed in series with a conventional bayonet light socket, and acts like an _AND gate_. It can only be controlled through remote X10 signals.

* Or a special light switch that replaces your existing switch and will control the light to which it is attached. This control is either by the switch itself, or remote X10 signals. This can also function as a dimmer switch, and shown in Figure 4.

=IMAGE=ha-cm12u.jpg=Figure 1: This is the CM12U that transfers X10 signals between your computer and the power line=

=IMAGE=ha-am12u.jpg=Figure 2: This listens for X10 signals and controls whatever appliance is plugged into it=

=IMAGE=ha-lm15eb.jpg=Figure 3: Fitting directly into an existing light socket, this is the easiest way to add lighting control to your home=

=IMAGE=ha-lw10u.jpg=Figure 4: This replaces an existing light switch, and is the most effective way of controlling a light=

Each of these devices is given an address. This comprises of a house code (A-F) and a unit code (1-16) for the individual appliance. The house code is necessary because the mains voltage to your house is often fed from the same supply as that of your neighbour, meaning your appliances would see their X10 signals and vice-versa. It is possible to buy an X10 suppressor to stop your X10 signals leaking out, but the current take up of X10 is not universal enough to be a problem--unless you live in a block of flats inhabited by geeks, it’s unlikely to be a problem in the near future.

=TEXTBOX_START=A question of countries=
NOTE: The mains voltage and frequency varies according to country, so specific devices are needed depending on where you live. Check the vendor websites carefully. The codes given in this articles are for UK devices.
=TEXTBOX_END=

Sending suitable X10 signals (through the CM12) requires software, and the current favourite is [heyu](http://heyu.org). This is not truly open source, but close enough for most purposes. It exists as a simple command line utility (with configuration in `/etc/heyu/x10.conf`) that lets you control the lights with commands such as,

=CODE_START=
heyu turn bedroom_light on
=CODE_END=

and

=CODE_START=
heyu dim studio_light 2
=CODE_END=

These commands can be triggered from a web site, script, crontab, or command line. As an alternative to cron, you can also upload a program containing a sequence of on/off messages directly into the CM12 as this allows you to specify a set of timer events that will execute, even when the computer is off. 

The CM12 gives more control over the lighting sequences in your house than a traditional timer switch, and allows you to program more realistic scenarios. For example, you can program a sequence whereby the unit switches the landing light on, waits one minute, turns the downstairs light off, waits one minute, and then turns the upstairs light on. This subtlety gives the impression of someone walking up the stairs, and switching the lights on and off as they go, which is the mark of a human, not a machine.

<!--pagebreak-->

Since these commands can be placed in a bash script, it’s trivial to produce a `make_a_cuppa` script which switches on the appliance module connected to the kettle (E5 at my home), waits until the kettle has boiled (3 minutes 35 seconds, for 1.5L of water, for example), then announces (via the speech synthesizer, `Festival`) that the kettle has boiled, and switches the appliance off again. A video of this in action can be found on the zdNet site, as part of their [Homebrew competition](http://resources.zdnet.co.uk/articles/video/0,1000002009,39291488,00.htm). All you need to remember is to fill up the kettle after each use.

Other devices you can handle with X10 include curtain rails, motion sensors, and water valves.

# Cosmic Control

In addition to receiving signals, there are several X10 devices that can send them, such as the HR10e, in Figure 5. This is an RF to X10 transmitter, which sends on, off and dimmer messages to the RF receiver (Figure 6) and places an appropriate signal onto the mains power line. Normally, these messages would go straight through to the appropriate X10 device, but with a GNU/Linux machine and a CM12 we can listen for these signals and do something different.

=IMAGE=ha-hr10e.jpg=Figure 5: An RF transmitter=

The `heyu` software I described previously is capable of listening to all X10 messages on the power line, and triggering a command whenever they arrive. So, by adding the following lines to your configuration file:

=CODE_START=
SCRIPT e1 on :: /usr/local/minerva/bin/mixer default dec master 10
SCRIPT e1 off :: /usr/local/minerva/bin/mixer default inc master 10
=CODE_END=

You can vary the volume of whatever music is playing on your machine.

=IMAGE=ha-TM13UAH.jpg=Figure 6: The TM13UAH listens for RF signals, and places the X10 command onto the power line=

I use the standard X10 RF transmitter (shown in Figure 5) to send signals to this receiver, and have split the controls into three main areas:
 
1. Common handling. Volume change, mute and pause are used so commonly, they deserve to be present in all modes.
2. Mode-specific functions. The central 8 buttons.
3. Common system. These change the mode, and report on the general status of the system.

As you can see from the picture, this device has no output. Therefore feedback must be given aurally to indicate to the user than their request is underway, gently reminding them to stop pounding the buttons. The feedback in use at my home is a simple chime sound plus the speech synthesizer, Festival. This allows for arbitrary text to be spoken and includes the alarm clock, weather reports, and information from the train’s live departure boards.

The software I use is part of the [Minerva home automation suite](http://www.minervahome.net), and called [Cosmic](http://www.minervahome.net/cosmic.htm). The default modes in use are:

* Multimedia: CD playing, MP3 jukebox control
* Timer: Start a timer for 5 minutes, and a voice will remind you at the appropriate time. 
* News: Basic status information, such as weather, news, and calendar events.

# Media Control

For many people, the start (and end) of their home automation experiments involve media distribution. This can vary from a simple file server or NAS providing their mp3 collection to their PC, up to a full set of DVR machines for every room in the house. There is no correct solution here, it varies according to the amount of time, money, and expertise you’re willing to lavish on the problem.

## File Servers and NAS

At the bare minimum, you will need a server. This can be as complex as a series of rackmounted machines in their own location (called _node 0_ by HA geeks), or an NSLU2 (a.k.a. Slug) hidden under the stairs with some USB hard drives attached. Whatever approach you take, having your media available on Samba shares gives the most expansive scope for automation, as it makes the data accessible to almost all flavours of operating system, as well as several custom pieces of hardware such as the Slingbox.

## DVRs and PVRs

To some, having a GNU/Linux machine running `MythTV` is the height of home automation. Not so! There are many free alternatives available, and many configurations possible.

To begin, [MythTV](http://www.mythtv.org/) itself provides two separate components, the backend and the head box, known as `mythfrontend`. This allows one machine to record and encode the TV programmes in a central location (such as _node 0_) that can then be played back to any front end in the house. This has the advantage of a central store with all your media accessible to every room in the house, along with the physical benefits of being able to use heavy iron in a remote location where the necessarily loud fans will not disrupt your viewing.

=ZOOM=Any machine placed in a living area, such as the bedroom or lounge, should ideally be fanless because the noise of a standard PC will annoy you during the quiet bits of a film and at night=

Staying with TV solutions briefly, old games players with an Xbox gathering dust may be able to put it to use by installing XBMC (Xbox Media Centre), although the fan is quite loud. 

<!--pagebreak-->

Additionally, you should investigate alternative solutions such as [DVR](http://www.pierrox.net/dvr), [Video Disk Recorder](http://www.cadsoft.de/vdr) and [FreeVo](http://freevo.sourceforge.net). There are also projects, such as [MVPServer](http://www.rst38.org.uk/mediamvp/mvpserver.html) that can serve content directly to the (proprietary) Hauppauge MVP. Since this is a silent head box, it’s worth considering.

## Media and MP3 Jukebox

Once your MP3’s are located on a central server, you have three methods of streaming that music around the house.

### Local Operation

Use a PC in each room to stream the file across the network, and decode the music locally. This doesn’t need to be very powerful (a Mini-ITX is more than enough) and there are even hardware solutions, such as the aforementioned Slingbox. Also, you can use any media player and operating system for this, since you can simply mount your media server as a normal drive.

### Streaming Server

Set up a streaming server in node 0, and use [VLC](http://www.videolan.org/vlc) to distribute the music across your wired, and wireless, network. There is also a plug-in for Firefox that allows you to stream VLC data directly to your browser. It is also possible to stream using [Shoutcast](http://www.shoutcast.com/download/files.phtml) and [Darwin](http://developer.apple.com/opensource/server/streaming/index.html). 

If video-only is all that’s required, as it is with CCTV footage, then `camserv` is a possibility. This produces streaming Mjpeg images through a specific port with its own in-built web server, allowing you to view the camera output from any compatible web browser.

### Remote Operation

Put a soundcard in the server, and run audio cables from here to other amplifiers around the house. This requires some physical work, but it is not hard. From here, you can set-up some simple MP3 jukebox software on your server, and control your songs’ playback through a web browser.

I have personally adopted the third approach since I can use the same approach to also control my CD player (through `cdcd`), the volume (using `aumix`) and FM radio (present on most TV cards, controlled through the `fmtools` package). In each case, I use `Bearskin` (part of the Minerva project) to abstract the underlying software, so should the best tool change I don’t need to update any of my scripts or web pages.

## TV Bonuses

There are two features, often overlooked, once you have a TV card inside your PC. The first is infra-red remote control. While some many use the supplied remote to switch channels on the TV card, many will be impressed by the [LIRC project](http://www.lirc.org/) which can watch these IR signals and perform other, more interesting tasks, by triggering arbitrary scripts on the host PC. It can also function as a mouse if you’re running X. Even if you’re without a TV card, the LIRC website details simple circuits you can make yourself.

The second "hidden" function of TV cards is its ability to retrieve Teletext data. This is what the Internet would look like if we were all still on dial-up connections. Consequently it is very low bandwidth, making it perfect fodder for screen scraping the lesser frequented pages, such as the holiday competitions and quizzes. Tools, such as [Alevt](http://www.icewalkers.com/Linux/Software/51120/AleVT.html) can be run overnight to cache the pages for review in the morning. An entire day's worth of teletext is so small it can fit on most mobile phones.

# Communication

When you have a house functioning as a peripheral to your computer there is a significant paradigm shift, in much the same way that broadband brought about a change more substantial than simply faster and continuous downloads. So having your own home server running 24-7 is more important than the ability to check your email without tying up the dial-up phone line.

=ZOOM=When you have a house functioning as a peripheral to your computer there is a significant paradigm shift=

Being able to connect to your home at any time to check up on a document on your home server is an obvious benefit, and one GNU/Linux users, through SSH, have enjoyed for many years. But with HA solutions, you can also check up on the CCTV feeds, or listen to your on-line baby monitor. Both can be serviced through the same streaming technology (such as `vlc`) as your MP3 server, thereby eliminating any extra work.

It is not too difficult to extend this idea and roll-your-own security systems, similar to the expensive proprietary solutions, such as [Comfort](http://www.cytech-technology.com/products.php). There are however, several security systems that already work pretty efficiently with other home automation controls. [Safemart.com is now](http://www.livewatch.com) one of the best examples of versatility. Within this example, a simple doorbell and intercom becomes a significant improvement in household security, as the intercom’s audio can be routed (via [Asterisk](http://www.asterisk.org) ) to your desk at work, or mobile phone if you’re on holiday. Any caller can then be made to believe you’re indoors, but bedridden, thus limiting the possibility of a subsequent burglary.

But VoIP is not the only phone-based interface available. There are a number of mobile phones in use that are compatible with utilities such as `Gnokii`, `Gammu` and `gsmlib`. These allow your suitably-equipped GNU/Linux machine (you’ll need an extra cable) to listen to SMS text messages, and trigger scripts according to their content. These scripts can include controls for your lights, or setting the PVR to record something you didn’t previously know was on. It can also text you alerts without relying on an external (and expensive) server, so reminders about the last train, or wake-up calls are easy.

<!--pagebreak-->

Similarly, since everything is run by a GNU/Linux server, it is trivial to add your own mail server into the mix, and control the other technologies (radio, video, lighting) by email. I have emailed my light switches at home on many occasions, just because I could! More practically, you could email your kettle when you’re leaving the office, and because it knows how long it takes to boil the kettle, and the commute duration, it can have a fresh brew ready for you the second you step through the door. Or you could use `procmail` to monitor the "where are we meeting tonight" thread and SMS you of anything marked with "change", or otherwise deemed important. Because this is _home_ automation, you don’t need to use on sophisticated technical solutions to this, as you can rely on the social bond between all those using the system to not abuse it.

=ZOOM=I have emailed my light switches... because I can=

Advanced users may also use Bluetooth to detect the owner’s mobile phone coming into range and use this as a remote control to switch lights on, and start playing music.

# Web Life

While discussing current projects with a friend of mine, he happened to remark that “every project of yours starts with a web page”. He was right! This is because the web browser is a ubiquitous piece of technology, and provides a uniform interface across most devices, making no distinction whether I’m at home or work, or working on a PC, PDA, or mobile phone. There is consequently no difference between what I can do at home, and at work, and since my data is stored on my own server I’m happily in charge (and control) of it. This is a feature that most commercial solutions have thus far overlooked.

Preparing a home server is easy, since we need only an Apache web server and a rudimentary ability with any of the ‘P’ programming languages (Perl, PHP, Python, or, er, Ruby!) With this we can provide access to Google Calendars, manage our contacts lists, and handle the home notice board. These are accessible from anywhere in the world, and each PC in the house. 

=ZOOM=the web browser is a ubiquitous piece of technology=

This also provides a common place to store bookmarks for all the family’s common web pages, such as those with the TV listings, weather, or train departures. We already have a number of commonly accessed pages, each personal to ourselves. For example, we might always read the news from Slashdot, and check our diary, while we eat breakfast. So gathering this information and unifying it into a daily personal digest–either on a web page, or transferred to your mobile or PDA–is a useful task, and easy to do with free software.

=ZOOM=the fridge is the focal point for many families, so having unified access to all data here is a boon to living =

Apart from the standard Apache installation, it can be pleasant to setup dynamic DNS so you can access your home server with http://my.homelinux.net, for example. One service to provide this is [DynDNS](http://www.dyndns.com). You will naturally have to provide your own security, perhaps with SSL, but there are many documents available on the web detailing this. It is even possible to require SSL for remote access, but not for local traffic. After all, all local traffic can only come from your house, where any "cracker" _already_ has physical access to the machine, your fridge, and TV set. Such attacks can be dealt with by sending the perpetrator to bed early with no dinner!

# Data Sources

What separates a home automation server with any other common-or-garden server is the home-oriented information present. Conversations and matters of general life such as “will it rain this afternoon” and “I hope the train’s on time” are more important to domestic life than how many web pages your Apache installation can serve. That is, content is king and localized. Consequently, we need to know from where this data originates, and how to present it.

In all cases web services would appear to be the answer. However, since many content providers are either unable (or unwilling) to provide their information in a simple and direct manner we have to often get our data from second hand sources utilizing glue software.

## TV Guides

Being able to list today’s TV shows that feature Freddie Mercury (I don’t consciously remember to look for them, but I’ll watch every one that’s on!) is a very useful home-oriented feature. Naturally, a server is the best place for this because the information can be collated locally, and distributed remotely to whichever machine you’re working at. (Unlike the programme guides found on many digital TV boxes which remain routed to the physical machine, or magazines which remain under the couch!) For this to work you need a generalized source of TV information, which because they vary between areas, must be sourced locally.

For those in the UK, the best online TV guides I use come from [Bleb](http://www.bleb.org/tv). This is a fantastic service which provides details for the next 7 days in an easily parsable XML format. I use this to generate automatic schedules everyday by searching the title and programme description for keywords that are specific to me. It is also the source used in the Minerva TV Guide applet, shown in Figure 7. Other sources no doubt exist for other countries.

=IMAGE=ha_tvguide.jpg=Figure 7: My personalized TV guide=

The only problem with this data source is that the ITV channel is not available. It seems that the BDS (Broadcasting Data Services) are deciding to play hardball, and stopping people from re-distributing the TV listings. So the only way to get them is to pay the licensing fee, or scrape them from the ITV web site directly. This is amusing since ITV gladly include the listings from other TV stations!

Radio guides are not, alas, as well supported. There are several possibilities as to why (no market, too localized) but at least the station can generally be identified because all broadcast frequencies are controlled by the governing body in each country. For the UK, this means OFCOM, and they have information listing each station, its frequency, and grid reference on their web site.  This is available as [an Excel spreadsheet]( http://www.ofcom.org.uk/radio/ifi/rbl/engineering/tech_parameters/TxParams.xls) or [in RadioML]( http://www.minervahome.net/pub/data/fmstations.xml) format.

## Live Departure Boards

Many train stations are getting dragged into the 21st Century by providing their train information to the public via its web site. This makes it trivial to produce an HTML GET request to their server, providing a simple bookmark feature detailing the status of your train home. Clever coding also allows you to write a computer-controlled alarm clock which varies the wake-up time, based on the punctuality of the train. [Greg McCarroll]( http://drinkbroken.typepad.com/drink_broken/2005/10/weve_been_talki.html) gives an example of this.

## The Weather

Both my parents and grandparents had a barometer, which gave an indication of the weather based on changes in atmospheric pressure. Before they went out, they would tap the barometer to see how the needle moved, and take their umbrella with them if it moved to the left.

I have an Internet connection and an RSS feed to Yahoo! Weather. This is updated everyday, so my computer performs a simple,

=CODE_START=
wget -q http://weather.yahooapis.com/forecastrss?p=UKXX0088 -O cache/weather.xml
=CODE_END=

And then processes this XML into a simple description through an XSL stylesheet. The UKXX0088 reference is an indication of your worldly physical location, so it can get the right forecast for you. This resultant text is then rendered onto one of my web pages, and spoken (through "Festival") over the speakers as part of my alarm call. All this code is available for free within the [Minerva Home Automation](http://www.minervahome.net) suite, but is easy enough to write yourself.

For more advanced weather reports, some people have their own weather stations at home. These can be bought from most gadget shops, and are relatively inexpensive. However, most of them function only as electronic barometers because they can’t interface to a computer. 

=ZOOM= If you can’t interface with it – you can’t automate it =

## Audio CDs

Most people will know this already, but [FreeDB](http://freedb.org) contains the track listings of several million CDs. This can be incorporated into CD playing applications to provide a nicer interface. The web interface for the CD player applet, for example, lets you click on the song name in order to play it (see Figure 8) instead of the track number. Similarly, instead of the rather bland "07" track readout present in the 1980’s, this can be rendered to a web page, Jabber tag line, Twitter, Facebook, or whatever the cool-du-jour happens to be this week!

=IMAGE=ha_cdplayer.jpg=Figure 8: Playing a CD from the web=

# What's Next?
 
FLOSS provides many possibilities to enhance existing HA installations, and in some cases they surpass the current commercial offerings, but there’s always room for improvement in both software and hardware.

Embedded systems are still required in many areas, to reduce the carbon footprint of full-blown PC’s in each room. One such benefit would be a stand-alone kiosk browser. This would run on basic hardware featuring a network socket, speaker, microphone, a touch-screen display, _and nothing else_. With this, you have a remote control that may be placed anywhere in the house giving you full access to everything (including streaming video, VoIP, and lighting control) to give the house a truly futuristic feel. 

Additionally, more software services are hoped for. A common and accessible method is necessary to provide HA-data to everyone that wants it. Currently, data is made available for only personal use, which means you need to be at least slightly geek-oriented in order to understand it. Free software can help lower this barrier to entry by providing ready-made solutions to the masses.

There are many forums, shops, and web sites about home automation. And you can learn about most of them on the [Minerva home automation page](http://www.minervahome.net). So get reading, and happy hacking HA hacking!