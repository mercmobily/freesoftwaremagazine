---
nid: '3088'
title: 'Microsoft''s metered pay-as-you-go patent. It''s Trusted Computing Mark Two but worse'
authors: 'Gary Richmond'
published: '2009-01-27 6:52:25'
tags: 'microsoft,linux,payg,secure,flexgo'
license: verbatim_only
section: opinions
listed: 'true'

---
This time, Microsoft may have outdone themselves with a proposed patent of such breathtaking hubris that it makes their previous FUD pale by comparison. If it comes off it will either be a licence to print money (Redmond's version of Quantitative easing?) or the biggest Pyrrhic victory in the history of computing since Steve Jobs refused Bill Gates and hardware vendors a licence to use Apple's OS and software.

When you first read about Microsoft's proposed patent you are suffused with the glow of righteous anger but before you get carried away, stop. Stop and think. This patent might just be, to mix my metaphors, a Trojan Horse and the straw that breaks the Camels' back. Windows users seem to possess a high pain tolerance (I only lasted until Windows ME before I broke and confessed to anything and everything) but this just might tip some of them over the edge. As homeless refugees they could be receptive to seeking asylum in the Republic of Unixland. Let's find out why.

<!--break-->

# What's in a number?

=ZOOM= Stallman called cloud computing a trap and "worse than stupidity"=

Here's a number: 20080319910. It obviously isn't a geometric progression or a Fibonacci series, but it may turn out to be very significant. It's a patent number and [it is a Microsoft patent application](http://www.freepatentsonline.com/y2008/0319910.html). It was filed back in June 2007 but published on Christmas Day 2008. Simply put, Microsoft want to patent pay-as-you-go computing. If, like me, you have switched to a non-contract mobile phone, you are familiar with the concept; however what Microsoft is proposing is not charging for a net or phone connection _per se_, but for renting a discounted/subsidised computer and being charged for using it and the software at the other end. There seems to be three levels of charge:

* (1) metered charging by the hour for using software
* (2) one-off charge
* (3) charging structure based on hardware usage utilized for specific software tasks

[Richard Stallman warned about "cloud computing"](http://www.guardian.co.uk/technology/2008/sep/29/cloud.computing.richard.stallman) calling it "worse than stupidity". He was thinking about Google services like Gmail and Google Docs, which at least have the virtue of being free (as in cost); but such usage raises questions about ownership, interoperability and access. Microsoft wants to charge for it. However, that looks positively benign when compared with item three. Charging for software as a service is not new: [FlexGo](http://en.wikipedia.org/wiki/Microsoft_FlexGo) was launched by Microsoft in 2006 and targeted at countries in South America and the Third World where GNU/Linux poses a real challenge. It was father to Pay as You Go (PAYG), its bastard offspring. As the minstrel from Duluth said, you don't need to be a weather vane to know which way the wind blows. What is really disturbing about this patent application is Microsoft's ambitions for hardware control to facilitate this pay as you go model. The Devil is in detail.

# All your data are us, and now your hardware too

If you thought that details of [trusted computing](http://www.cs.auckland.ac.nz/~pgut001/pubs/vista_cost.html) were grim the patent to impose a charging structure on a PC's hardware relative to software usage would tax the greatest genius of Jesuitical causitry. If you were impressed by the talents of now defunct investment bankers to leverage profit from packaged sub prime pyramid schemes then Microsoft's wheeze would earn them a place on the board of Lehman Brothers.

=ZOOM=Redmond are up to their twin obsessions: "security" and vendor lock in=

So, you're paying fees to access software, you're paying to use the hardware on the computer too. That's bad but it gets a whole lot worse when you read on and discover that Redmond are up to their twin obsessions: security and vendor lock in. The patent envisages a security module embedded on the computer chaining that machine and the user to a specific supplier ("_The security module is discussed in more detail with respect to FIG. 5, but briefly, each security module 28, 30, 32 may have a processor, a secure memory, and a cryptographic function, implemented in hardware or software, for supporting metering operations, value add packet processing, and self-sanctioning of pay-per-use computers not in compliance with their contractual terms_" as the patent terms it).

Cryptographic encryption and hardware lock down are central to pay per view:

=TEXTBOX_START=  =
_Initial configuration of pay-per-use computers 12, 14, 16 may involve not only the installation of keys binding the pay-per-use computers 12, 14, 16 to the fulfillment center 26, but also installation of keys used for internal configuration and communication of scalable internal resources that set operation in a particular mode. Additionally, software or firmware in the pay-per-use computers 12, 14, 16 may be installed or activated_
=TEXTBOX_END=

It is clear from this that Microsoft would have effective control over your machine. For the "metering agent" to function requires a degree of control that virtually renders the user hardware configurations obsolete and irrelevant:

=TEXTBOX_START=  =
_the metering agent may manage setting a performance level for its associated component, in this case, the disk drive 205, and may also measures usage of the component, when required. Performance level in the disk drive 205 may be set by tuning one or more of cache size, data transfer rate, available disk space, etc.
To accomplish this, the metering agent 228 may take steps appropriate to the performance level being controller. If cache size is controlled, affecting overall read and write speed, the metering agent 228 may control a setting that manages cache memory allocation, similar to the way a BIOS controls overall memory configuration in a computer. That is, during operation, the controller 206 may receive configuration data information responsive to an event and the metering agent 228, in the role of the BIOS, may supply the configuration data according to the current performance level setting. The event that triggers such a programming of the controller may be the receipt of a new performance level setting at the metering agent 228_
=TEXTBOX_END=

Even the technologically challenged will have a vague notion that the processor might just be rather central to a computer and the metering agent has plans for that too:

=TEXTBOX_START=  =
_The processor 204 may include instruction memory 221, such as microcode, and may have one or more cores 222, 224, 226, for executing program instructions. The processor 204 may include metering agent 220. A metering agent embedded in a processor, such as processor 204, may have more implementation options than a metering agent used in other components. Because the processor 204 has so much control of computer operation, scalable use may be based on instruction set, memory used, execution speed, etc._
=TEXTBOX_END=

Nothing is spared. Memory is next:

=TEXTBOX_START=  =
_The memory 208 may implement scalable performance in several ways, such as limiting the memory size or limiting the memory speed. The metering agent 230 may trap address commands above a certain address, slow the data clocking rate, or use a combination of both. Memory size limit changes may be restricted to restarts because an on-the-fly change in memory size may cause system instability, but dynamic page swapping algorithms may remove this restriction. Alternatively, or in combination with the memory 208, a bus controller (not depicted) associated with memory access may implement similar measures to restrict memory access._
=TEXTBOX_END=

=ZOOM=the summary reveals the fundamental purpose behind this patent from Hell=

The list of targeted hardware goes on: video controllers, graphic cards to mention two. You get the idea, but I'll refrain from listing any further components for reasons of space and unnerving the reader. Suffice to say, upgrading/hacking a computer with this configuration will make the howls of protest from Vista users look like a whimper. The patent is very detailed and the summary reveals the fundamental purpose behind this patent from Hell:

=TEXTBOX_START=  =
_In summary, the system and methods described above allow use of an entirely different business model for manufacturing and collecting revenue from a computer asset. Rather than creating highly customized, but still overbuilt, computers for an individual user, a standard model can be created. Improved component and system-level yields already make many performance-related product grade-outs obsolete, allowing cost-effective sale of a computer with very high maximum performance levels. Because the computer user is only charged for the performance level and features actually used, the user can select to modify the performance to suit his or her needs and budget. Although the cost of ownership over the life of the computer may be higher than that of a one-time purchase, the payments can be deferred and the user can extend the useful life of the computer beyond that of the one-time purchase machine. A security mechanism that enforces payments may also be supported by the security module 202 and is discussed elsewhere._
=TEXTBOX_END=

# It's the hardware man, Microsoft digs the hardware

Given the extraordinary degree of control mooted by this pay as you go model, you wonder what the fate would be for external storage devices and their associated USB ports and other bus-powered peripherals. What happens if you upgrade components or remove or clone the hard drive to another unrestricted computer? If Microsoft have their way it would be fast forward to the past with something close to dumb terminals and mainframes. 

The best line in this patent application is the claim that metered pay as you go will help the user to extend the life of their computer and so save money! And there was I thinking that Microsoft were only interested in squeezing out yet more financial pips. I could have told them that GNU/Linux users have been doing that for years by customising distros that could run on a toaster with 640KB of memory. Surely it is only a matter of time before Microsoft apply for a patent to extract blood from a stone--and _you'll_ be paying for it.

I'm tempted to say that this idea needs to be strangled at birth, but perhaps I'm being a little hasty. Why kill the Goose that might lay the golden egg. Never interfere with someone hell bent on committing commercial suicide and treating its customer's computers like _their_ personal property. Then again, we might flatter ourselves that in addition to always being on the lookout for new revenue-raising opportunities Microsoft's patent application might be a pre-emptive move to deal with the challenge of free and open software--especially if netbooks are the coming thing and Vista run on them like a tractor in a swamp. They can't extend Windows XP indefinitely for commercial reasons. GNU/Linux is not so constrained. We could take the patent as a kind of back handed compliment.

=ZOOM=are we moving towards the Henry Ford school of computing: any colour you like as long as it's black?=

Of course, it's not compulsory. If this patent ever escapes into the wild it might appeal to businesses obsessed with lowering Total Cost of Ownership (TCO) but for the average user it would reduce them to digital Helots. Besides, with hardware vendors tied even more tightly to Microsoft, what sort of computers are going to be made? 

Are manufacturers going to produce two classes of machine, one for Microsoft metered Pay as You Go motherboards with compromised hardware and another without? Or are we moving towards the Henry Ford school of computing: any colour you like as long as it's black? It is not suprising therefore that some people have already been doing back of the envelope calculations to cost a user profile based on the software they would access online, especially games. 

It seems, and this is the good news, that it would be cheaper to build your own computer with off the shelf components every few years to keep up to speed rather than effectively rent your machine from Microsoft to counteract obsolescence. People who do that are invariably users of free software. Games will seem particularly expensive as they are processor and graphic card intensive and Microsoft appear to be following a kind of parallel to those ISPs who want to introduce [traffic shaping](http://en.wikipedia.org/wiki/Traffic_shaping) to throttle bandwidth (bad news for BitTorrent which many in the free software community rely on for distribution of GNU/Linux ISOs).

# Can't pay, won't pay

=ZOOM=I would give a King's ransom to see the reaction on Richard Stallman's face as he reads this patent over his breakfast cereal=

And what happens if Microsoft hike the costs and it becomes a case of can't pay, won't pay? You walk away but can you take all your data with you? Who owns it? If you fall on hard times and can't pay, this patent would give Microsoft the ability to disable you machine and lock you out of your own files. Combined with the control freakery of trusted computing Microsoft seem determined to make computing as pleasurable as a root canal. They would turn users into _their_ personal ATMs. 

That financial metaphor is not perhaps as far fetched as it sounds. PAYG is predicated on a prepaid or billed account, so when Microsoft plead that they only want to help poor people in the Barrios of Brazil or the slums of Delhi to access affordable computing, what they really mean is that they want access to their credit cards--a common possession of course in the Third World. 

I am not a technical expert and I'm not a patent lawyer either. This patent needs their expert eyes. The combined skills of the Free Software Foundation (FSF), Lawrence Lessig and Eben Moglen are needed to put it under the forensic cosh. (I am particularly interested in what it would mean for Novell's IP tie-up with Microsoft.) I would give a King's ransom to see the reaction on Richard Stallman's face as he reads this patent over his breakfast cereal. He might need the Heimlich manoeuvre. In the meantime we all need to re-acquaint ourselves with what free computing really means and why it matters so much by [reading Stallman's essays](http://shop.fsf.org/product/free-software-free-society/) and [Lawrence Lessig's books too](http://www.lessig.org/blog/). Again.

Of course (and I kept the best for last), all of this has been rendered hypothetical as the patent has been rejected by the US Patents & Trademarks Office. In a letter to Microsoft the terminology of the patent was deemed to be "fuzzy" and certain ideas rejected as already having been patented (worrying in itself -and, which ones?). That's a relief but Microsoft can appeal and initial rebuffs have never deterred it before. Like Churchill's description of the Soviets they will probe and probe until they find an open window and invite themselves in. Breaking and entering. It's what they do and like Arnie, they'll be back.

Windows users are an irrationally loyal lot for whatever reason but if a patent like this ever gets off the ground in some re-jigged format and doesn't precipitate mass defections to free software and free operating systems like GNU/Linux then it will be a frosty Friday in Hell before it ever becomes the year of GNU/Linux on the desktop.