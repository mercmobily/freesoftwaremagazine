---
nid: '2629'
title: 'Group interview: a graphic view of the open hardware movement. Part 2: technical and social issues'
authors: 'Terry Hancock'
published: '2008-05-29 10:04:02'
tags: 'graphics-card,interview,open-hardware,driver'
issue: issue_22
license: cc-by-sa
section: interviews
listed: 'true'

---
The tools and techniques for creating hardware designs are very different from those used for software; and because of this, developing open hardware is a significantly different and greater challenge than creating free software. In the second part of my interview with the developers of the Open Graphics project, I wanted to explore these factors and the solutions this one open hardware project has found.

<!--break-->

=IMAGE=TimothyMiller4.jpg=Timothy Normand Miller: "I had about eight years of experience with graphics driver development and about four with graphics chip design, so I figured if I got enough other experts together, designing a completely open graphics solution would be feasible" (Photo by James Dinan)=

There is a great deal of free software infrastructure for creating free software which today we tend to take for granted: the gcc compiler, the glibc standard libraries, the CVS (and now Subversion, Bazaar, and other) version management systems, the internet itself, email, usenet, the world wide web, internet relay chat, bug tracking software, listmail managers, online forums, and even massive integrated project management services like gForge—all available for free, with very few strings attached; this is mainly thanks to the GNU General Public License, the GNU project, Linux, X11, and the hard work of countless free software developers.

But for a moment, rewind to the world of the 1980s, when the GNU project began, before all of that infrastructure was created.

_That's exactly where hardware design still is today._

=ZOOM="Just as it took the pioneering work of the GNU project to change the world into one in which free software innovation is easy and natural, it will take bold initiatives to pioneer open hardware"=

And, just as it took the pioneering work of the GNU project to change the world into one in which free software innovation is easy and natural, it will take bold initiatives to pioneer open hardware. In the meantime, like the early GNU project which ran on proprietary Unix operating systems (that being the only ones available), we cope as best we can.

In this second part of the interview, I spoke to project founder _Timothy Miller_ (TM), open hardware board members _Lourens Veen_ (LV) and _Attila Kinali_ (AK), as well as Timothy's Traversal Technology partner _Andy Fong_ (AF) and physicist _Dr. Petter Urkedal_ (PU) who designed a "nanocontroller" for the Open Graphics architecture.

=TEXTBOX_START=Abbreviations=
The alphabet soup surrounding electronic engineering can be pretty thick. Here's a guide to the expressions used in this article:

**ASIC** An "Application Specific Integrated Circuit" is a large-scale integrated circuit designed to do a particular job.

**BGA** "Ball Grid Array" is a package technology which uses balls of solder on the base of a chip carrier to make electrical connections, rather than pins.

**DIP** "Dual Inline Pins" is one of the oldest chip package designs, with pins on either side of an epoxy or ceramic container in which the chip is embedded. These are what most people think of when they say "chip".

**DDR** A "Double Data Rate" device acts on both the rising and falling edges of the clock cycle, so as to squeeze in two transfers per cycle. Usually refers to memory.

**EDA** "Electronic Design Automation" is computer-aided design software designed specifically for electronics work which incorporates several different layers of abstraction. There is a free software "GNU EDA" or "gEDA" which is not one package, but several, forming a fairly complete suite of electronic design tools.

**FPGA** A "Field Programmable Gate Array" is a combinational logic chip which contains a large grid of gates whose function can be altered by a downloadable datastream (like flashing a PROM chip).

**HDL** "Hardware Definition Language" is a program-like textual description of a digital logic circuit.  Verilog and VHDL are particular HDLs. Verilog syntax resembles C/C++.

**PCB** "Printed Circuit Board" is a component for holding electronic components with etched metal traces to make the electrical connections between components. Modern PCBs may be made of multiple layers of plastic and etched metal traces (the OGD1 board has ten layers).
=TEXTBOX_END=


# Q. Because Application Specific Integrated Circuits (ASICs) must be manufactured in bulk, the TRV10 chip that will be developed for the Open Graphics card (OGC1) is a major cost-driver for the final product. What kind of volume is that going to require, and how do you expect to attract that level of customer interest?

**TM:** In 2005, we computed that we could do a 100,000 chip run for $2 to $3 million. This would be like $30/chip at cost. Add cost for the PCB, other components, packaging, margin for failures, marketing, engineering, overhead, and a reasonable profit margin, and we're looking at at least $100 per board in low volume. However, in that time, the economics will have surely changed quite a lot. We'll still need millions, but we don't know the pricing structure. 

# Q. Even if you do believe the customers are there, will Traversal Technology be able to find the capital?

**TM:** There are lots of people who don't want to put out any cash yet, because so far, we're a big risk without any proof that we're a good investment. Once we've proven that we can make real hardware, many people who are "waiting and seeing" will recognize that we're a good risk.

# Q. What technological changes have led to the recent boom in open hardware development? 

**AK:** There are two things that made open hardware possible: the possibility to cheaply produce electronics (A PCB that would have cost $100 twenty years ago can now be produced for $10, even in low quantities); and the availability of powerful computers in every home to run EDA software without the need of special workstations.

# Q. How does the much greater cost of replication and derivation make things harder for hardware than software?

**AK:** If open hardware wants to use the same methods that FLOSS profited from, building hardware must become a lot cheaper. Note that I do not speak about producing hardware as this can not get cheaper than a certain level. But if we would be able to use some hardware building blocks that are mass-produced just to put together a new device, we could use the same hardware over and over again to build new devices, just like software uses the very expensive computer it runs on to build new "devices".

<!--pagebreak-->


=TEXTBOX_START=Open Graphics Project Abbreviations=
**OGP** The [“Open Graphics Project”](http://opengraphics.org) is a community of developers working on replacing proprietary 3D graphics acceleration cards (a major obstacle to Free Software operating systems on the desktop) with community-designed open-hardware boards which will be free-licensed from the hardware definition language for the chip through the printed circuit board layouts and of course to the drivers.

**OGA** The “Open Graphics Architecture” is the gate-logic design of the Graphics Processing Unit (GPU) being  developed to run on the OGD1 and later on the OGC1 cards.

**OGD1** The first [“Open Graphics Development”](http://wiki.opengraphics.org/tiki-index.php?page=OGD1) card is designed to allow testing of the OGA in an FPGA device onto which new hardware designs can be loaded by special software. This is the card which will go on sale this Spring.

**OGC1** The first [“Open Graphics Card”](http://wiki.opengraphics.org/tiki-index.php?page=OGC+FeatureList) will be an ASIC-based, consumer-targeted graphics card that will be developed using the OGD1 as a testbed.

**TRV10** The ASIC chip that will be created for the OGC1 and also sold for embedded uses by Traversal Technology.

**TT** [Traversal Technology](http://www.traversaltech.com/) is a company founded by Timothy Miller, Andy Fong, and Howard Parkin, which will actually design, manufacture, and sell Open Graphics cards.

**OHF** The [“Open Hardware Foundation”](http://openhardwarefoundation.org) is a non-profit organization founded to aid OGP (and eventually other projects) in handling community funding for prototyping and manufacturing costs as well as other activities to promote Open Hardware.
=TEXTBOX_END=
  
# Q. What about Field Programmable Gate Arrays (FPGAs)? How has that technology specifically affected development?

**AK:** The development of FPGAs were mostly driven by the non-recurring engineering costs of ASIC manufacturing and the first-time-right problem. When FPGAs first became popular 10 years ago, they immediately replaced smaller ASICs or ASICs in low volume production, and helped to increase the speed of development by spending less time on thinking about how the device might be used in future and more on just implementing what is needed now and adding functionality later. 

=ZOOM=Andy Fong: "I graduated with a computer engineering degree focusing on VHDL, digital design, and microcontrollers. My work was mainly programming in C/C++"=

# Q. What is in the Open Graphics codebase? What sort of files does Open Graphics consider to be the "preferred form of the work for making modifications" to electronic hardware designs?

**TM:** The OGP codebase in our Subversion repository, is comprised of a number of major and minor HDL sub-products, documentation, and software tools.  These things include a PCI controller, a microcontroller, a DDR memory controller, a video controller, documentation on some of these things, an assembler for the video controller, and a C-language model of the Open Graphics Architecture.

As for the PCB, there is presently no `preferred format'. Due to the complexity of our 10-layer board, we had to use commercial tools. At present, the best we can do is publish PDFs. If someone thinks they can convert Veribest files into something more open, we'd be happy to let them try.[1]

**AF:** Ideally, we should be using [gEDA](http://www.geda.seul.org), but we are not.  The reason is that any experienced electrical engineer already has a set of tools they are familiar with, and gEDA is just not one of them. PCB layout is an art by itself. Many times we have to contract it out and you just can't find anyone using gEDA for that.  However, I like gEDA a lot, and I did try to use it at the beginning, and it worked pretty well for the schematic capture. I also asked on the gEDA list to see if there were any professional PCB layout services out there that were using gEDA. A few people (with pretty good gEDA skills) replied and offered the service at very reasonable rates. So, gEDA is definitely an option in the future. 

**PU:** Fortunately the task of coding the Open Graphics Architecture can be be split up among developers in the spirit of how free software is developed, and Andy Fong has already written a C++ model of the graphics pipeline. 


=IMAGE=PetterUrkedal.jpg=Dr. Petter Urkedal: "I have a PhD in theoretical physics, which I am most happy about as it has been an excellent background for understanding technology in general"=


# Q. Is the textual nature of HDLs (Hardware Description Languages) essential to the success of open hardware designs?

**AK:** The textual nature of HDLs isn't essential just to the success of open hardware. It is essential for any complex logic design. It is impossible to handle more than a certain, low level of complexity with schematic input. Anything over that has to be done with textual input.

=ZOOM="The textual nature of HDLs isn't essential just to the success of open hardware. It is essential for any complex logic design"=

**LV:** One advantage of hardware description languages over graphical formats is that you can use the existing infrastructure for software. I do not believe that that is essential however: tools can be written, and even without them work can often be done, if a bit less efficiently. 

<!--pagebreak-->

=TEXTBOX_START=Open Hardware Foundation=
Recognizing that a project like Open Graphics will need various kinds of material support including marketing and fund-raising; Patrick McNamara proposed the need for a non-profit foundation to manage these activities.  Since these needs applied to all open hardware projects, and not just Open Graphics, McNamara and fellow founding directors James Dinan, Terry Hancock (author), Attila Kinali, Hamish Marson, Timothy Schmidt, James Richard Tyrer, and Lourens Veen formally established the Open Hardware Foundation early in 2007 with a mission statement addressing support for all open hardware projects.

Although the organizations are obviously closely-allied, the OHF receives no direct material benefit from Traversal Technology, and thus avoids potential conflicts of interest that might arise from Traversal attempting to fill this role on its own. OHF is free to represent the open hardware community's interests and Traversal is free to pursue its profit motive, without conflicts.

As one of its first formal tasks, the OHF will review developer proposals to determine who should get the limited number of "developer discount" OGD1 boards to help with Open Graphics development.
=TEXTBOX_END=

# Q. What is the significance of the Open Graphics Development card (OGD1) itself as a tool and as technical achievement for Open Graphics?

**TM:** With OGD1, we're taking a huge step towards being able to put real free-design hardware into the hands of as many people as can afford it. We already have prototypes, and we're on the verge of being able to hand the finished design to a fabrication house.  OGD1 is a very interesting product and tool in its own right. A community will grow up around it and its descendants, regardless of anything we do specific to graphics or with ASICs. At the same time, it's also our way to raise funds so we can develop more open hardware.

=ZOOM="With OGD1, we're taking a huge step towards being able to put real free-design hardware into the hands of as many people as can afford it"=

**AK:** Besides this, Open Graphics is able to give the field of open hardware more publicity and demonstrate to a lot of people who have never heard about Open Hardware that it exists and is an active field of development. Hopefully this raising of awareness will continue and make it easier for future projects to get the necessary software and hardware tools.

**PU:** I think OGD1 has a value apart from its use to test the Open Graphics Architecture. One issue currently is that the specifications for programming the FPGAs are to my knowledge closed. I hope this will change. 

=IMAGE=AttilaKinali.jpg=Attila Kinali: "I studied chip design at the university and have a great interest in how things in my computer work down to the transistor level"=

# Q. Any advice for future open hardware projects on how to manage the above resources? Is it really any different from software projects?

**AF:** It is very different from software. For software, all you need is Vim; for hardware, a lot of tools are proprietary and they are not cheap. You can simulate to a certain degree, but when the actual hardware is here, you need some expensive equipment plus many years of experience to troubleshoot it. This will prevent you from working together unless you are really physically together. The challenge is then the huge start-up cost when developing hardware. So, if you can partner with a company which can provide these kinds of resources, it will make it a lot easier.

=ZOOM="What seems to be lacking is tool support"=

**LV:** I think that technically there is not all that much difference between a hardware design and the source code for a piece of software. Both are a collection of files that are modified collectively to create different versions and branches.  What seems to be lacking is tool support. We have tools that let you browse a Subversion repository online and compare different versions of the source of a piece of software. That will work for HDL as well, but it will not work for a board layout.  Another example of something that we need software for is a fail safe part number registry.

# Q. Is there a problem finding enough people who are technically qualified to work on an open hardware project like Open Graphics?

**TM:** There is a small handful of people with the OGP who actually know chip design or how to write HDL.  It's a very specialized thing that even the smartest people take many years to learn, so it's hard for new people to just jump right in. Thinking about everything happening in parallel is something that takes a lot of getting used to. 

**AF:** As I said earlier, not only there are less hardware people, but also many times, you really need to sit together and stare at the problem and try to come up with a solution. However, I think people are out there. Look at the [gEDA mailing list](http://www.seul.org/cgi-bin/mailman/listinfo/geda-user) and [OpenCores.org](http://www.opencores.org).

=TEXTBOX_START=Traversal Technology, LLC=
Without the considerable investment of time and energy represented by Timothy Miller's company, Traversal Technology, Open Graphics would not be producing hardware, and thus would not be getting anywhere.  Miller originally presented his idea to his employer, Tech Source, which develops specialized graphics hardware for Unix workstations used in such applications as medical imaging and air traffic control.

Colleague and computer programmer Andy Fong says, "Later on the company decided to move the focus onto other projects instead, so a group of us decided to carry on with the project." In the end, Miller, Fong, and printed circuit board designer, Howard Parkin started Traversal Technology LLC to commercialize the project.
=TEXTBOX_END=

# Q. Has education of new participants been a priority for the OGP? 

<!--pagebreak-->

**AF:** One of the main purposes for the mailing list is for people to learn and I think Tim has done an excellent job in answering people's questions and with several practical Verilog lessons. Many others are also contributing information on the wiki to educate others. That's whole point of open source. 

**TM:** One by one, people with HDL experience have been trickling into the project. If this keeps up, I expect we'll reach a critical mass at some point where enough experienced people will be available at one time so that newbies will find Open Graphics mailing list to be the place to go if they want to ask HDL questions and get good at chip design.

=IMAGE=LourensVeen.jpg=Lourens Veen: "I have held a soldering iron before and even designed a few simple digital circuits, but I would not consider myself a hardware engineer by any stretch of the imagination"=

# Q. Is Open Graphics more of a 'Bazaar' or a 'Cathedral'? Is it driven mostly from individual needs and contributions or by the vision of the founders?

**LV:** The Open Graphics Project is very much driven by Timothy's efforts and the hard work of his Traversal Technology colleagues Howard and Andy. They form the core of the project, especially with respect to the development of OGD1. However, there have also been quite a lot of others who have contributed significant parts, especially beyond OGD1. The most important thing I think is that there is an atmosphere of open collaboration. Timothy has from the beginning asked for advice, and listened to it.  The goals we set ourselves for OGA for example were very much influenced by the community. 

**PU:** The goal of the project is to produce a specific device, and there is a limited set of features which can fit, given the time to develop and the part costs of Open Graphics cards. That said, I think people will find that fresh ideas and criticism are well received on the Open Graphics mailing list. 


=TEXTBOX_START=Open Graphics Community=
Attila Kinali, who is primarily responsible for running the project's Subversion repository, offers some statistics on the size of the project and the involvement of project developers:

Measure                             |  Number
------------------------------------|---------------
People subscribing to mailing list  |  about 570
People posting on the mailing list  |  about 260
People having SVN write access      |  11
People regularly committing code    |  6
Commits to SVN repository           |  188
Lines of C code                     |  about 5,000
Lines of C++ code                   |  about 30,000
Lines of Verilog code               |  about 10,000

=TABLE_CAPTION=Size of the Open Graphics Project=

The project uses a highly flexible Content Management System (CMS) called TikiWiki with a wiki as the central metaphor. The installation, management, and hosting of the website and mailing list are donated by project member Russell Miller (no relation to Timothy) who says he saw the project on Slashdot and wanted to help out.
=TEXTBOX_END=

# Q. How do the necessary skills for the Open Graphics project affect its social makeup and character? Is it  just another free development community, or are there fundamental differences?

**AK:** While most FLOSS and open hardware projects start out small and often stay small, Open Graphics was highly visible from the beginning and drew a lot of attention of a big and highly interested community. The challenge was to channel the discussions on the mailing list into actual contributions. There were a lot of questions that either required a very specialized or very broad knowledge of the problem. 
  
Thus discussions often side-tracked to the easier points and from there off to something completely unrelated. The main problem behind this might be that there are actually very few electrical engineers and graphics programmers with the kind of knowledge these questions required in the FLOSS scene. And I think that attracting these people or training new people to this kind of knowledge will be one of the major difficulties Open Graphics will face in the future.

=ZOOM="If you give a programmer a buggy editor as well as its source, she will fix the editor. If you give a hardware developer a buggy schematic capture tool, he will find something else to work on"=

**LV:** Perhaps a key difference between hardware and software projects is that most hardware developers are not software developers, and the required tools mostly consist of software, not of hardware. If you give a programmer a buggy editor as well as its source, she will fix the editor. If you give a hardware developer a buggy schematic capture tool, he will find something else to work on. In a software project, creating the needed software tools is half the fun, in a hardware project it is a hurdle to be overcome, unless it is a hardware tool such as OGD1! 

**TM:** Due in part to the fact that there are a lot of both tech-savvy and art-savvy people on the list and our general awareness that we're going to have to market ourselves in a way that other projects don't, we have organically formed our own publicity and marketing oriented crew. Some of our favorite computer makers from the 80s failed due to lousy marketing—I don't think that's our weakness here.

=IMAGE=TimothyMiller3.jpg=Timothy Miller: "In fact, the hardware hacking community has never gone away; it's just adapted to the changes in technology" (Photo by James Dinan)=

# Q. Is the recent boom in open hardware more about the increased need of consumers for control of their hardware, or about the increased ease in designing and producing hardware?

**TM:** Open hardware has always been around. The Apple I was built by hand by Steve Wozniak, and he and Jobs were members of the Home Brew Computer Club. Those tinkerers have never gone away. But back in the 70s, electronic end products actually contained large circuit boards with discrete ICs. You could see the logic. As circuit integration grew, however, we ended up with more and more black boxes that people couldn't learn from or hack, and they certainly couldn't afford to make their own. 
  
This manufacturing gap, you might call it, has been discouraging to the hardware hacker, because the guy with a breadboard full of 74138s can't compete in any way with the guy with the chip fab. Still, in the 70s and 80s, there were lots of black box chips, like CPUs. But at least you could stick one on a breadboard. The shift from DIPs to surface mount and particularly BGAs has made it impossible for the enthusiast to put common off the shelf chips into a custom design, unless they can make their own custom PCBs with 1/100 inch precision.
  
However, as certain kinds of hackable devices—like FPGAs, microcontrollers, and boards like the [Arduino](http://www.arduino.cc)—become cheap and plentiful, a new breed of hardware hackers has arisen. In fact, the hardware hacking community has never gone away; it's just adapted to the changes in technology.

——

[1] Veribest is a proprietary PCB design format (now associated with [Mentor Graphics](http://www.mentor.com/products/pcb/).

