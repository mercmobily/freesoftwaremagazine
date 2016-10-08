---
nid: '2371'
title: 'Interview With Matthew Allum of OpenedHand'
authors: 'Jonathan Roberts'
published: '2007-06-18 6:30:00'
tags: 'interview,embedded,openedhand,mobile'
license: verbatim_only
section: interviews
listed: 'true'

---
**JR: Hey Matthew, to start if you could introduce yourself and tell us a bit about OpenedHand.**

MA: Hi. I’m a 32 year old father, husband, free software hacker and boss man of OpenedHand. I live in London, UK. Beyond making Linux better on devices my other interests include modern design, comics (a big fan of the likes of Ed Brubaker, Alan Moore, etc.) and table tennis (current office champion—first rule of OpenedHand: let the boss win at ping-pong). I’m the author of various pieces of free software, including Matchbox, Xephyr and most recently Clutter. 


<!--break-->


My interest in computers goes back to childhood and hacking on Commodore PETs. After a hiatus from programming and computers during my teenage years I rediscovered my interest at University, which soon lead me to discover the joys of Linux. Around 2000, after seeing, via Slashdot, what Compaq labs were doing with Linux on the original iPaq, I was fortunate to pick one up early in the UK and very soon became part of the handhelds.org community. After the initial coolness factor of running random Linux software on the iPaq faded, I started to think about actually making it useful usability wise. Believing in the potential of X Windows on handhelds, a custom fast and light PDA like window manager seemed like a solid step forward here; by making it conform to various window management standards, the wealth of pre-existing Desktop orientated X Toolkits and applications could be leveraged to such platforms with little or no modifications. The Matchbox window manager was born and a couple of years into its development commercial interest (from Nokia) lead to the formation of OpenedHand. 

Fast forward to the present day and OpenedHand has grown to a staff close to 20, with a team of amazing developers skilled from low level ARM kernel hacking to mobile GNOME application development—they all come from strong open source backgrounds. Our client base has also grown, as have the manufacturers and devices out there using Matchbox and other pieces of our software on devices. 

OpenedHand basically provides consulting in its many guises around Linux mobile and embedded devices with a focus on the royalty free side of free software technologies. Around this consulting we try to cram in as much R & D type work as possible. We are a very creative bunch and very passionate about what we do. 

**JR: Perhaps your highest profile work was with Nokia on the 770 Internet Tablet, specifically the Matchbox window manager. Could you tell us a bit more about this? **

MA: Sure. I received a rather abstract and anonymous email late 2002 asking a number of questions about the Matchbox window manager, nearly ignoring it, I replied and after some conversation, the from address morphed into a Nokia.com address with an offer to fund various feature additions to Matchbox. A dream come true, I immediately quit my dull day job and formed OpenedHand initially developing Matchbox more or less full time. Nokia funded numerous open source generic improvements to the Matchbox window manager making it a key part of the Maemo platform. I’m sure those improvements helped its selection for use on other non-Nokia devices too. 

**JR: Obviously you have a lot of experience in mobile and embedded systems, I wonder if you could give us some insight into where you think this sector is heading, and the role that free software, and open standards, has to play in this? **

MA: It’s a really exciting time at the moment with various manufacturers and vendors announcing devices and platforms with software stacks based not just on Linux but X Windows, GTK+ and Matchbox too. The formation of the GNOME Mobile and Embedded Initiative (GMAE—http://gnome.org/mobile) highlights this. There was a time not so long ago when many folks would quite openly laugh at the idea of X Windows on a handheld device. In my humble opinion, GMAE technologies make a lot of sense, they’re mature and full of features from their desktop heritage (and thus provide familiar APIs), they’re very modular, very flexible and avoid royalty costs—a really big deal on high volume devices where margins are very tight. It also opens up such platforms to having a wide base of high quality pre-existing applications ported to them. 

Though this is a good thing, a big worry is fragmentation, where device developers effectively modify large components for their needs and make no attempt to introduce their improvements or modifications upstream. Not only does this introduce more maintenance work for them long term, it also makes life harder for third party developers porting their applications to these new platforms; subtle, unexpected changes in something like GTK+ can cause them big problems. On the flip side, just effectively dumping patches on upstream can cause a strain in upstream processing and integrating: device developers need to work with and become part of these upstream communities and understand things like coding style and expectations to reduce this strain. 

Another interesting perspective, in my opinion, is how Linux and GMAE technologies, together with lowering costs of actual hardware components, are making devices so much more accessible to produce, especially in smaller vertical markets. For example, take vernier.com and their LabQuest educational device: a relatively small company has produced a device which is literally years ahead of the competition in functionality. The device is using Linux and GMAE technologies—The selection of these technologies is key in making this kind of thing possible.   

**JR: Are there any specific issues with free software in this sector, such as broadcast regulations on mobile phone devices? **

MA: Hackable, embedded hardware is a lot less accessible to free software developers than that of desktop or server hardware. It’s not just a question of cost, but also actually being able to boot your own Linux kernel and custom file system on a device—many devices out there run Linux but heavily sandbox developers (Motorola phones for examples). Hardware specs are getting increasingly difficult to obtain by your average free software developer (ever wondered why the Linux kernel supported strongarm so well?) as well as the hardware gaining features to aggressively stop its software being modified. All this obviously has an effect on free communities around mobile/embedded hardware and the kind of innovations that can happen. It’s not all bad though, there are people like OpenMoko that “get it”. 

Another worry is with a device being so impenetrable, and the visual flexibility of UI technologies like GMAE, GPL violations are very difficult to detect. How do you know a particular device is running Linux, let alone using various other free software components that could be modified?

Broadcast regulations and being able to fully control a GSM chip is an odd one. I think it gets made to be more of an issue than it actually is, as most of the low level control happens by a separate CPU of which the OS speaks to via AT commands—the OS has enough control to make calls, etc., but not to do anything malicious to cell towers. However, I don’t think it’s fair when this is used as an excuse for full device sand boxing with this very common hardware set up. 

**JR: Clutter is another project that OpenedHand is developing, which is likely to be useful on the desktop as well as mobile/embedded devices. Being very apparent to the end user, I guess it’s likely to get a lot of attention. Could you tell us a little bit about the ideas behind Clutter, where it is heading now, and where you think it could go in the future? **

MA: So Clutter is basically a UI toolkit that sits on top of OpenGL/OpenGL ES. It has a similar, though more “raw”, API to that of GTK+ and similar dependencies but is focusing on a different type of application to “classic” desktop ones, namely those with simpler functionally but more visually bespoke and impressive. It’s aiming at applications like MCE, front row, cover flow, etc.—all obvious examples—but I see no reason why something like an ATM couldn’t have a UI built in Clutter. The hardware needed non-embedded wise is a commodity nowadays and drivers, particularly free open ones like Intels, are getting better all the time. Clutter does not really demand that much from GL either. There exists a wide varied range of possible use cases.  

Clutter is not trying to be a general interface to GL, it’s trying to be a nice simple API that saves the developer needing to know GL complexities and, beyond fast rendering, adds a lot more rich animation support, basic widgets (actors), eventing, efficient pango font rendering, etc. In giving a nice API you do lose some of the flexibility of raw GL, but if clutter does not give you enough you can drop into regular GL for rendering a custom actor (an actor is a clutter UI element or widget). 

Clutter is still young, we’ve been focusing on getting a solid base together and figuring out what makes sense functionality and API wise. We’ve been experimenting with various applications to help figure this out—a simple presentation app (opt), a movie viewer, a picture viewer and various simple demos. Also [Sofa](http://sofa.sourceforge.net/) is a media player type application that is using Clutter and was announced recently. The recent addition of GL ES support is a major milestone and is widening the kind of platforms Clutter can run on and the sort of applications that can be built. 

An unstable 0.3 release will be made very shortly with many new features (with initial GL ES support) and we hope to follow that with 0.4, hopefully in time for GUADEC (I’m presenting about Clutter there). We’re trying to get a 6 month release cycle for stable releases. 

In terms of where it’s heading, let me just say this—when I first saw the videos of the iPhone I didn’t think “holy crap Apple are so far ahead” but “Great, the hardware is getting there”. We still have a lot of work to do, however. Major features currently planned beyond 0.4 include pixel shader support and some kind of graphical interface definition file support.  

Also I’ll take this opportunity to mention some other projects we have in the pipeline separate to clutter but, in my humble opinion, are just as exciting. These include [“Poky”](http://pokylinux.org): a complete embedded Linux distro and build system which has numerous features; [Pimlico](http://pimlico-project.org): our suite of PIM applications; and [gUPnP](http://gupnp.org): a GObject based UPNP stack.

**JR: Cheers Matthew! I’m looking forward to seeing where this all ends up.**

