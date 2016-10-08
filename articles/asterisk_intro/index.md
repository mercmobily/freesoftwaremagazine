---
nid: '1251'
title: Asterisk
authors: 'John Goerzen'
published: '2006-09-01 0:32:38'
issue: issue_13
license: gfdl
section: hacking
main_image: hide.jpg
listed: 'true'

---
Asterisk is a phone system in software. It can replace large and expensive business phone systems, powering thousands of extensions, or it can help home users save money on long distance. Because it’s implemented in software, it is extremely versatile, easy to customize, and easy to extend.


# The need for Asterisk

You’re probably familiar with the concept of a Private Branch Exchange (PBX) already, though you might not know it. Almost every medium or large business has one. A PBX is, basically, a simplified version of a telephone company’s exchange. Most PBXs provide features such as direct touch-tone dialing of extensions, routing of calls onto the public telephone network, and voice mail services. If you're accustomed to dialing 9 to place an outside call, or dialing a simple 3- or 4-digit number to reach another extension, you're using a commercial PBX.

There are a few other things common to traditional PBX systems. First, they can be very expensive. Even a moderate-sized system could easily exceed $100,000. A system to support a large organization could easily cost millions of dollars. Secondly, they have limited flexibility. While more expensive PBXs may be able to use technologies such as voice mail, advanced call queueing, and the like, these are often add-on products that can be cumbersome to integrate. If you want integration with other data systems, such as a billing database to give callers an account balance, your job becomes that much more difficult.


# The Asterisk way

Asterisk is different for several reasons. The most important is that it’s an all-software approach. Instead of switching analog lines in hardware, it routes and manipulates Voice Over Internet Protocol (VoIP) packets in software. The backbone of your phone system usually becomes Ethernet, and phones can hook into that Ethernet backbone. Older analog phones can still be supported by using gateway devices.


=ZOOM=Asterisk provides an all-software approach. Instead of switching analog lines in hardware, it routes and manipulates Voice Over Internet Protocol (VoIP) packets in software=

Asterisk provides more than you’d expect from a PBX. You get all the usual features, such as voice mail, call routing, and support for multiple extensions. On top of that, you get interfaces to the operating system and programming languages for the extreme in power, optional web-based administration interfaces, configuration in flat files or SQL databases, detailed call logging into a database, and many more features.


=IMAGE=Phone_handset.jpg==

With Asterisk, you can:


* Provide basic service to analog or digital phones
* Develop call-routing logic to choose the least expensive way to route a particular call
* Route incoming and outgoing calls over standard voice lines or the internet
* Provide voice mail and teleconferencing services
* Capture detailed logging information for analysis or billing
* Develop simple or complex interactive menus
* Call other programs on the system (for instance, you could write an application to read a weather forecast over the phone based on an XML-RPC call)
* Call into the phone system from other programs. You could have a message played to someone’s cell phone when a machine goes down, or simply check your voice mail from a web browser.
* Operate small or large queues for call centers, announcing estimated hold times to callers.


# The complete Asterisk system

A complete Asterisk-based phone system will have several components to it. You may not see all of these in any single installation, but you probably want to be aware of your options anyway. Keep in mind that it’s possible to have a fully-functioning Asterisk system without spending any money. All you need is a Linux PC.


=ZOOM=It’s possible to have a fully-functioning Asterisk system without spending any money=


## The Asterisk server

The Asterisk server itself is the heart of the installation. Whenever a call is made, Asterisk figures out how to route it. Asterisk also manages things such as voice mail, teleconferencing, queues, and hold music.


## Hard phones

Several companies manufacture hardware digital phones. These phones tend to resemble traditional office desk phones. Instead of a telephone jack, have an Ethernet jack. They will communicate with your Asterisk server using the SIP protocol over Ethernet. This type of phone is called a “hard phone”.

Hard phones can be purchased for as little as $60 for a basic version. Business-class hard phones typically cost anywhere from $150 to $700, depending on features.

Wireless hard phones have recently started appearing on the market. These phones communicate with your Asterisk server over an 802.11b Wifi network, and can generally roam with the same ease as a laptop can on a Wifi network. Wireless phones typically cost around $150 to $350.


## Soft phones

Soft phones are SIP phones that are implemented entirely in software. To use a soft phone, you would usually use a microphone and earpiece (or a headset) attached to a PC. Soft phones exist for all popular operating systems. Linux users frequently use the GPL’d [linphone](http://www.linphone.org/) program.

In addition to the obvious cost savings, some users prefer soft phones to help avoid desk clutter. Some soft phones also offer features that are unavailable in all but the most expensive hard phones.


## ATAs

An Analog Telephone Adapter (ATA) is used to hook up conventional analog telephony equipment to a digital phone system such as Asterisk. ATAs come in two varieties. Some ATAs are designed to simulate a phone company line; that is, they provide dialtone, read DTMF digits, and provide ring voltage to a standard analog telephone. These ATAs are said to provide FXS (Foreign Exchange Station) ports.


=IMAGE=Phone_numberpad.jpg==

Other ATAs are designed to simulate a standard telephone. These units let you add analog lines from the phone company to Asterisk. They can place outgoing calls by sending DTMF digits to the phone company, or can receive incoming calls by placing SIP calls when ring voltage is detected. These ATAs are said to provide FXO (Foreign Exchange Office) ports.

Both types of ATA look like just another SIP device to Asterisk. An FXS device can be treated just like any other SIP phone, and indeed, appears that way to Asterisk. An FXO device can also work that way, but can additionally be sent a phone number to dial.

ATAs are typically used to handle a small number of lines. They’re normally used in residential or small office settings. Larger environments will usually use analog channel banks, discussed below.


<!--pagebreak-->



## Digital voice lines

Large installations will want something better than dozens or hundreds of analog lines to handle communication with the outside world. In conventional PBX setups, the normal way to accomplish this is to obtain T1 (or E1) service from the telephone company. The T1 is common in North America and provides up to 24 simultaneous digital calls on a single line. The E1 is common in Europe and much of the rest of the world, and provides up to 30 simultaneous digital calls. For very large needs, lines such as the T3/E3 can handle many times that volume.

To integrate digital voice lines into an Asterisk system, you’ll need some sort of hardware device. Most people will opt to purchase a PCI T1/E1 interface. You can find such cards from companies like Digium and Sangoma. These cards can be inserted directly into your Asterisk server, and can typically handle anywhere between one and four T1/E1 lines. This is usually preferable, as it provides the greatest performance for the least cost. T3/E3 interface cards are also available.

Another option is to purchase a T1/E1 SIP gateway. This would be an external hardware device that would translate between the T1/E1 line and the SIP protocol that Asterisk uses. It would then send the SIP information via Ethernet to Asterisk.


## Analog channel banks

Some large organizations may find the feature set of Asterisk appealing. But they may prefer to keep part or all of their existing installed base of analog phones, rather than incur the expense of upgrading all of them to digital phones. These companies may have anywhere from a dozen to thousands of existing analog phones to integrate with Asterisk.

Analog channel banks provide a way to handle this integration. These devices are a special form of ATA—they provide many analog lines at once, in a high-density configuration. Most analog channel banks provide standard Amphenol connectors, which plug into standard telephone punch blocks. In some cases, switching phone lines to use a channel bank instead of a legacy system could involve as little as just moving the cables for the punch blocks to the new channel bank.

Analog channel banks typically use either a T1 or an Ethernet connection to connect to the Asterisk server. Well-known channel bank manufacturers include Adit, Adtran, and AudioCodes. In addition, Citel makes channel banks designed to work with legacy proprietary digital phones from companies such as Nortel and Mitel.


## VoIP services

The SIP protocol commonly used by IP phones and other VoIP devices isn’t limited to being used on a LAN. SIP can also be routed over the internet or WAN lines. Asterisk also has its own protocol, IAX2, that is used to hook together multiple Asterisk installations.

Many organizations have more than one physical location. By using SIP or IAX2, it’s easy to connect them and route traffic between them over the internet or a WAN. Residential users could do that, too. Maybe you have one household in Canada and another in Germany, both with Asterisk. You could set up your Asterisk to route calls between them over the internet at no charge.

It’s also possible to use VoIP to interact with the traditional phone network. VoIP termination lets you place outbound calls over the internet, which then get routed onto the regular phone network. Such an arrangement often can provide extremely low long-distance rates, especially for international calling. It can also provide a greater choice than might be available with traditional voice services.

The inverse is also possible: when someone dials your phone number from a traditional phone, the call can be routed to you via SIP or IAX2 over the internet. This service is called VoIP origination and is also available from quite a few vendors.

Finally, various free, internet-only services exist to help people with VoIP devices contact each other online. The most well known of these is [Free World Dialup](http://www.fwdnet.net/) and works well with Asterisk.


## Support

Many businesses and other organizations will wish to hire professional help to install or maintain their Asterisk installation. In typical free software fashion, there are many companies that would be happy to have your business. I got about a dozen replies to a message I posted to one of the Asterisk mailing lists. The voip-info.org wiki also has quite a large [list of Asterisk consultants](http://www.voip-info.org/wiki/view/Asterisk+consultants). These consultants usually can help you with migration and provide support contracts.


# Potential issues

Like any technology, Asterisk is not 100% perfect. There are a few things to watch out for as you plan your Asterisk installation.


## Echo

A common complaint about VoIP systems revolves around voice echo. Traditional telephones use only two wires to carry both sides of the conversation. As a result, they generate echo, but you don’t perceive it as echo since there is essentially no delay. With VoIP services, there is a very small delay as data is converted into, and back out of, small packets. Ordinarily you wouldn’t notice this delay at all, but sometimes it can manifest itself as echo.

Echo is normally only a problem when dealing with cheap, traditional analog phones. However, almost everyone has to deal with them at some point, because even if your own setup is all-digital, analog phone users may be calling you.

A technique called echo cancellation is very effective at minimizing or eliminating this effect. These days, modern analog interface hardware tends to come with echo cancellation built in. Asterisk also has echo cancellation in software to use when dealing with PCI analog interface cards. Simply enabling these features often makes the problem go away.

Keeping your signal path digital for as long as possible also helps. This could mean having a T1 or ISDN from the phone company instead of a analog lines.

Business telephony equipment almost always has very good echo cancellation algorithms, so you may never even notice it’s there.

The bottom line on echo is this: it exists, and you should research it before you spend lots of money on VoIP hardware, but it is almost always possible to deal with it effectively.


## Line use indicators

Many operator’s phones on traditional PBX systems have lamps that indicate whether a particular extension is in use. In Asterisk, the notion of an extension being in use is rather fuzzy. A single extension number may ring at a dozen different phones simultaneously, and even if one is busy, could still ring at the others. Individual phones may be capable of handling multiple calls at once as well. Or, an extension may correspond to a menu. It’s even possible for an extension to correspond to different physical devices at different times of day, or even based on external factors such as database queries.

Therefore, a line use indicator in the traditional sense isn’t supported under Asterisk. However, in many cases, new features Asterisk brings to the phone system can remove the need for such an indicator. Much of the work that an operator may have done in the past—such as finding a free person for a caller to speak with—can now be handled automatically by Asterisk. As part of our Asterisk installation, we have found that we are able to eliminate the very need for these indicators by deploying other new features in Asterisk.

If these things really are needed, alternatives exist. It is possible to find whether certain phones have active calls on them through the Asterisk management interface, and third-party web or GUI tools can be used to present a friendly interface to that information through a PC. This may help.

Certain phones can also publish that information between themselves, and not need to bother Asterisk for server support for it.


# Starting with Asterisk

One of the best things about Asterisk is that it costs nothing to try it out. You can install Asterisk on a spare Linux PC somewhere, install a few soft phones, and you’ve got an instant test environment. I’ve assembled a list of Asterisk resources to help get you started.


* [The VoIP Info Wiki](http://www.voip-info.org/), possibly the single most useful Asterisk site around. This site has a thorough reference for Asterisk, plus lists of hard and soft phones, VoIP providers, consultants, and just about anything else you’d care to know.
* [Asterisk’s homepage](http://www.asterisk.org/)
* [Asterisk Documentation Project](http://www.asteriskdocs.org/)
* [The Asterisk@Home Project](http://asteriskathome.sourceforge.net/), which aims to make an easy-to-install Asterisk distribution for home users
* [Wikipedia](http://en.wikipedia.org/) also has helpful articles about telephony jargon and operation
* [Local calling guide](http://www.localcallingguide.com/) is a helpful site for anyone that’s trying to determine what exactly constitutes a local call
