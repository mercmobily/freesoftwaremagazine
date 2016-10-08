---
nid: '2556'
title: 'Group interview: a graphic view of the open hardware movement. Part 1: motivations'
authors: 'Terry Hancock'
published: '2008-02-13 2:00:14'
tags: 'graphics-card,interview,open-hardware,driver'
issue: issue_21
license: verbatim_only
section: interviews
listed: 'true'

---
Excitement in the Open Graphics community is quite high as it approaches its first production run of the FPGA-based "Open Graphics Development" board, known as "OGD1". It will be available for pre-sale this month with the first units expected to ship soon thereafter. The board is targeted at hardware developers, with the specific goal of supporting development and testing of designs for a fully-documented consumer Open Hardware Graphics Card to be implemented using an ASIC (thus resolving one of the biggest obstacles to free software on the desktop).

<!--break-->

A general purpose Open Hardware tool for testing Open Hardware designs, the OGD1 is as important a step in promoting the Open Hardware movement as `gcc` or `glibc` was to promoting free software. It also represents one of the first self-consciously community-produced pieces of Open Hardware design to actually make it to the marketplace. An ambitious design, with a ten layer PCB based on surface mount technology, high-speed input/output channels, and one of the largest Field Programmable Gate Arrays on the market, the OGD1 is no garage project!

=IMAGE=fig_ogd1_top_w_labels.jpg=The first Open Graphics Development board is a powerful FPGA hardware developer board, an Open Hardware tool for testing Open Hardware designs. (Open Graphics Project)=

As an insider in this group, I had a unique opportunity to interview several of its members, including: _Timothy Miller_ (TM), the experienced hardware engineer who first started the project (as well as the company, Traversal Technology, which will produce and sell OGP designs), and _Patrick McNamara_ (PM), an interested amateur tinkerer who founded the Open Hardware Foundation.

=ZOOM="The relatively sad state of FLOSS support from graphics vendors irked me"=

_Joseph Black_ (JB) is another amateur who assists the project primarily by maintaining its documentation. _Dieter_ (DX) is an active contributor with specific technical interests. _Attila Kinali_ (AK) is a recently graduated hardware engineer while _Lourens Veen_ (LV) is primarily a software developer, but both have spent a lot of time promoting the project and are founding members of the Open Hardware Foundation.

In the first part of the interview I wanted to explore the motivations behind the project and what makes developers contribute to Open Hardware...

## Q: Why did you start the Open Graphics Project?

**TM:** I had trouble finding a graphics card that was fully supported by free software. I did find one, but the relatively sad state of FLOSS support from graphics vendors irked me. At that time, I had about eight years of experience with graphics driver development and about four with graphics chip design, so I figured if I got enough other experts together, designing a completely open graphics solution would be feasible.

=IMAGE=fig_Timothy_Miller.jpg=Timothy Normand Miller, founder of the Open Graphics project=

## Q: What specifically made you want to found the Open Hardware Foundation, and how do you see its scope compared to the OGP? What about relationships to earlier open hardware projects and organizations?

**PM:** The need for such an organization had come up as a topic both on the Open Graphics mailing list and off, and I found myself as a rather vocal proponent. Nobody else stepped forward or really showed interest in pursuing it. In the end, it was "put up or shut up", and I found myself as the president of a non-profit corporation.

We still haven't really engaged with any other community organizations, such as [OpenCores.org](http://opencores.org). First of all, we aren't really sure what the relationship would be, and we certainly don't want to come off as the new kid on the block trying to take the spotlight. We also don't really have much to offer yet. We are really just getting our feet under us. Finally, we really are trying to keep focused on making the Open Graphics Project a success. One of our key goals is to see the production of the OGC1. Until the OGP is much further along, I have been trying to keep our focus purely on it.

=IMAGE=fig_Patrick_McNamara.jpg=Patrick McNamara, founder of the Open Hardware Foundation=

## Q: What's the strongest personal reason for you to help the Open Graphics Project?

**DX:** It used to be possible to maintain your own electronics. If the TV broke, just take the tubes out and take them to the hardware store and plug them into the tube tester. Buy a replacement for whichever tube was bad and plug them back in. There was a schematic stapled to the cabinet, along with a diagram showing which model tube went in which socket. Today of course, semiconductors are far more reliable than tubes were. But manufacturers no longer include  schematics. In many cases you can't even obtain the information necessary to use the product, much less maintain it or modify it.

**LV:** What keeps me coming back to the OGP today is the feeling that we are changing the world. Free and open source software is well-established now, but Open Hardware is relatively new. To me the Open Graphics Project represents a fresh look upon the ways in which our everyday environment is designed and manufactured.

=ZOOM="The Open Graphics Project represents a fresh look upon the ways in which our everyday environment is designed and manufactured"=

**JB:** Previously the poor student could not do software design in his home—he could not afford the compilers. Open source broke down these barriers. Today, hardware is locked up in the same way. For example, I wondered if I could do anything with PCI. But I found out that I couldn't even legally download the specifications without paying what would be a huge amount for a student to join a group which appeared to me to be designed to lock out PCI from the reach of the lone inventor who likes to tinker.

I realized I could never get into the PCI club. Yet, if I could do all this interesting stuff on my FPGA board, what about all the other guys in similar positions around the world?

<!--pagebreak-->

We now have working PCI code in subversion under an open source license. We may look back and see we have already reached a small but important breakthrough moment in hardware. It's a start.

=TEXTBOX_START=The Open Graphics Project=
**OGP:** The ["Open Graphics Project"](http://opengraphics.org) is a community of developers working on replacing proprietary 3D graphics acceleration cards (a major obstacle to free software operating systems on the desktop) with community-designed open-hardware boards which will be free-licensed from the hardware definition language for the chip through the printed circuit board layouts—and of course to the drivers.

**OGA:** The "Open Graphics Architecture" is the gate-logic design of the Graphics Processing Unit (GPU) being developed to run on the OGD1 and later on the OGC1 cards.

**OGD1:** The first ["Open Graphics Development"](http://wiki.opengraphics.org/tiki-index.php?page=OGD1) card is designed to allow testing of the OGA in an FPGA device onto which new hardware designs can be loaded by special software. This is the card which is going into production now.

**OGC1:** The first ["Open Graphics Card"](http://wiki.opengraphics.org/tiki-index.php?page=OGC+FeatureList) will be an ASIC-based, consumer-targeted graphics card that will be developed using the OGD1 as a testbed.

**TRV10:** The ASIC chip that will be created for the OGC1 and also sold for embedded uses by [Traversal Technology](http://www.traversaltech.com/).

**Traversal Technology:** A company founded by Timothy Miller, Andy Fong, and Howard Parkin, which will actually design, manufacture, and sell Open Graphics cards.

**OHF:** The ["Open Hardware Foundation"](http://openhardwarefoundation.org/) is a non-profit organization founded to aid OGP (and eventually other projects) in handling community funding for prototyping and manufacturing costs as well as other activities to promote Open Hardware
=TEXTBOX_END=

## Q: Why now? What has changed to make Open Hardware so active today?

**LV:** Open Hardware has existed for quite a while just like free software, but with the advent of the internet as an accessible communication platform, it is now both growing and becoming more visible. Additionally, there seems to be a general cultural trend towards openness and sharing, which is probably affecting the Open Hardware movement as well.

=IMAGE=fig_evol_boardtech.jpg=In the 1980s, it was still common for consumer products to be built with 7400-series chips, which any hobbyist could use. In the 1990s, ASICs began to supplant these with VLSI chips which are essentially black boxes to end users and in limited supply. In the 2000s, however, FPGAs have gotten large enough to do many ASIC tasks, and although they are very expensive and relatively slow, they bring back the possibility of creating customized hardware (Top photos: Terry Hancock / CC-By-SA 3.0, Bottom: Synthesis Studios / CC-By-SA 2.0)=

## Q: Do you think that many users will care about the openness of the Open Graphics hardware? Or is it really only the openness of the specs that will matter to most? Will customers pay more for openness of the hardware?

**PM:** What they will care about is the benefits that openness provides. If I as an end user can't make use of all the features that make a less expensive graphics card faster than an Open Graphics based card then the cheaper card really isn't faster. The openness brings full support. Full feature support is something that is worth paying for.

**AK:** Open Graphics cards will as such have a greater impact on the market as an example of how to acquire more customers who care about openness in borderline situations.

The whole question becomes different in the embedded market. There customers will gladly pay two times the money for a card where they are able to confirm and probably fix bugs themselves. A supplier for whom you do not know how he will react on a bug report is a very high risk, especially if it is a critical component.

=IMAGE=fig_boardtech.jpg=Several technologies are available for prototyping circuit boards. Most small experimental circuits start out on a breadboard (top left), which allows through-hole and DIP parts to be inserted by hand. More permanence is possible with wire-wrap circuits assembled on perfboard (top right). Printed circuit boards with one (bottom left, assembled) or two (bottom middle, unassembled board—note the shadows of the underlying traces) layers of traces are fairly common in hobbyist kits. The printed circuit boards in commercially-produced digital electronics, however, are invariably multi-layer surface mount boards (bottom right) which are much harder to make by hand and are generally contracted to fabrication houses. (CREDITS, L-R, T-B: Tom Deutschman / CC-By-SA 2.0, Terry Hancock / CC-By-SA 3.0, Terry Hancock / CC-By-SA 3.0, Bill Bradford / CC-By-SA 2.0, Crispin Semmens / CC-By-SA 2.0)=

## Q: What if ATI or nVidia (or another proprietary graphics vendor) suddenly decided to release their entire hardware design under a free license? Could they do that? What would happen to OGP?

**TM:** ATI and nVidia likely license a lot of their internal chip designs from other companies. For instance, they probably didn't design their VGA cores, so they don't have rights to release that. Also, ATI and nVidia are probably violating each other's patents; they could never afford the legal fallout of revealing their infringements.

If an existing hardware vendor were to open their designs, as Sun did with the Niagara CPU design, they would simply be joining this community.

=ZOOM="I would estimate the chance of a full Open Hardware release by ATI or nVidia as being similar to the chance of Microsoft publishing the Windows source under the GPL"=

**PM:** There are two directions that could be pursued. One would be to take the newly opened designs and focus the project's efforts around improving it and getting drivers written. The other would be to study what they had done and incorporate the good stuff into Open Graphics, effectively jump starting its development. I can only wish for OGP to have to make that decision.

<!--pagebreak-->

**LV:** All hypothetically speaking of course—I would estimate the chance of a full Open Hardware release by ATI or nVidia as being similar to the chance of Microsoft publishing the Windows source under the GPL.

=TEXTBOX_START=Alphabet Soup for Hardware Hackers=
**FPGA:** A ["Field Programmable Gate Array"](http://en.wikipedia.org/wiki/Field_Programmable_Gate_Array) is a reprogrammable logic gate chip whose internal gate connections can be altered by downloading a bitstream to the card with a special program written for that purpose.

**ASIC:** An ["Application Specific Integrated Circuit"](http://en.wikipedia.org/wiki/Application-specific_integrated_circuit) is similar to an FPGA, but fixed at the factory, and much cheaper to produce in quantity.

**Verilog/HDL:** A ["Hardware Description Language"](http://en.wikipedia.org/wiki/Hardware_description_language) is a textual representation of logic gates and registers. It differs from a programming language mainly in that it describes a parallel structure in space rather than a sequence of actions in time. [Verilog](http://en.wikipedia.org/wiki/Verilog) is one of the most popular HDLs and resembles C or C++ in its syntax.

**CPU:** A ["Central Processing Unit"](http://en.wikipedia.org/wiki/Central_Processing_Unit) is the part of a computer that actually does the computing: all math and memory operations are performed by a CPU.

**GPU:** A ["Graphics Processing Unit"](http://en.wikipedia.org/wiki/Graphics_Processing_Unit) is a kind of specialized CPU designed for graphics processing.

**PCI:** The ["Peripheral Component Interconnect"](http://en.wikipedia.org/wiki/Peripheral_Component_Interconnect) is the most popular expansion card bus used in most modern desktop computers.

**VLSI:** ["Very Large Scale Integration"](http://en.wikipedia.org/wiki/Very_Large_Scale_Integration) refers to chips with many thousands of logic gates or transistors.

**SSI:** "Small Scale Integration" refers to chips with only a few logic gates or transistors, such as the popular, standardized [7400-series](http://en.wikipedia.org/wiki/7400_series) chips that were introduced in the 1960s.

**PCB:** A ["Printed Circuit Board"](http://en.wikipedia.org/wiki/Printed_Circuit_Board) is a plastic board with etched metal "traces" produced by a printing process.  Many thin boards can be bonded together to form a multi-layer board.
=TEXTBOX_END=

## Q: Let's repeat "the world's most annoying question", but for hardware: How can hardware engineers get paid for their work if they open up their designs for free?

**LV:** Just like the advent of free software did not remove the demand for people who are able to create new software, Open Hardware will not destroy the market for hardware design services. What will become harder, just like it is in the software world now, is to make money by doing the exact same thing over and over again. If you try to do that, you will be out-competed by someone who just uses the existing, and freely available, design, or by someone who actually innovates. Some of the less skilled and less innovative hardware designers might be forced to improve their skills and ingenuity to be able to compete. But that is how a market is supposed to work.

## Q: I have recently been told by a progressive computer manufacturer that they would "love" to use Open Hardware for their project, but don't believe any manufacturer would be willing to develop such hardware and share its source and design documents. Any comment?

**LV:** I think that they are conflating design and manufacturing, very much as is done in the proprietary software world. Microsoft designs Windows and then manufactures CDs containing Windows that they sell. Red Hat does some design on the software they sell, but their core business is manufacturing CDs, boxes, and additional services. Most of the design is done by the rest of the community.

Any computer integrator could do the same: hire someone to create a hardware design which is openly published, and then put out a request for quotes for manufacturing it.

=IMAGE=fig_ogd1_bottom.jpg=Back of the OGD1 card, showing traces and the additional memory, as well as an early Traversal Technology logo. This is a pre-production prototype, hence the blank revision number and serial number "01"! (Open Graphics Project)=

## Q: If someone reading this decides they are interested in helping OGP, what sort of things would you be looking for in terms of contributions?

**AK:** OGP, like any FLOSS project, is constantly looking for big and small contributions, including (but not limited to) HDL/Verilog, kernel drivers, X11 drivers, and application development.

The people we are lacking the most are capable hardware engineers with an understanding of VLSI design.

**JB:** Soon we will need bug tracking and bug reporting and those with triage skills to support the developers. People who have skills with marketing are welcome.

A big problem is that for now companies such as Xilinx, Alterra, and Lattice Semiconductor provide their no-cost software only for Windows, and their full versions for Linux are very expensive. However, their no-cost versions can occasionally succeed on Wine. We need developers to keep this working under Wine, reporting bugs and helping out with testing. It will only help us if Xilinx and Lattice Semi see significant numbers of developers using the no-cost version on Linux.

_[Interviewers note: As far as I know, it would be extremely difficult to create a free software replacement for the Xilinx software that programs their FPGA. We don't know of the existence of an Open Hardware or even open specification FPGA which might be used for a project like this. Obviously that would be a future goal for Open Hardware]._

=ZOOM=A big problem is that for now companies such as Xilinx, Alterra, and Lattice Semiconductor provide their no-cost software only for Windows, and their full versions for Linux are very expensive=

**LV:** We obviously need hardware designers, but we also need driver writers, firmware developers, and documentation authors. Additionally, we need software developers who can help build the infrastructure we need: free tools and open standards for interchange file formats.

**TM:** We don't have the documentation quite handled, and frankly, we can't have too much good publicity. We want to facilitate cooperation between Open Hardware communities, and to do that, we have to make people aware of each other. Besides the obvious things, you can contribute by just being involved in multiple FLOSS projects and helping to cross-pollinate. Join the OGP and tell us what others need and them what we need.

## To be continued...

In the next issue I'll explore the Open Graphics community's culture and development process.

