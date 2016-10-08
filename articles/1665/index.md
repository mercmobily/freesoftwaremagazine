---
nid: '1665'
title: 'Introducing the Open Graphics Project'
authors: 'Terry Hancock'
published: '2006-07-19 0:00:00'
tags: 'graphics-card,open-graphics,open-hardware'
license: verbatim_only
section: opinions
listed: 'true'

---
One project that I’ve been following quite closely lately is a project started by chip-designer Timothy Miller, called the [Open Graphics Project](http://opengraphics.org). His goal, along with the rest of the project, known as the “Open Graphics Foundation” is to make a 3D accelerated video card which is fully documented, free-licensed, and open source.

The original focus was on the thorough open specifications, when he started the project with his employer (an electronic hardware manufacturing company, [TechSource](http://www.techsource.com/)), but as the project has since moved to full community support, the project has become a model of free-licensed open source hardware development, with FPGA Verilog scripts, specifications, and, now, printed circuit board layouts that are all available under the Gnu GPL.


=IMAGE=ogd1illus2.png=The first Open Graphics Development board (OGD1). Components: A) 2x DVI transmitters (pair A); B) 2x DVI transmitters (pair B); C) 1x 330MHz triple-10 bit DAC (behind); D) 1x TV chip; E) 2x4 256 megabit DDR SDRAM chips (front, behind); F) 1x ECP2-50 FPGA; G) 1x XP10 FPGA; H) 1x SPI PROM 8Mbit; J) 1x SPI PROM 16Mbit; K) 3x 500MHz DACs (optional); L) 1x 64-bit PCI-X edge connector; M) 2x DVI-I connectors; N) 1x S-video connector; O) 1x 100-pin expansion bus connector.=

Unfortunately, it is well-understood that the cards are unlikely to find the kind of mass market that nVidia and ATI video cards have, so it’s unlikely that the cards will be produced in sufficient quantity to bring the costs down to be truly price/feature competitive. As a result, you’ll really only be in the market for these cards if you recognize the importance of the free design to future-proofing your system, ensuring trouble-free driver installation and maintenance, and of course, keeping true to the faith of freedom.

Fortunately, there are plenty of us who do see these values in the GNU/Linux community, which is of course, the primary market for the cards. But you’ll have to pay a fairly hefty US$200 for an ASIC[1]-based card which will likely not be much more powerful than today’s ATI or nVidia cards (and no doubt behind the state of the art of such closed-source cards at the time of release). We have some catch-up to play, obviously. But it will be free-licensed open source hardware, and that means almost certain troublefree support in X.

The development boards, the first of which is dubbed the [OGD1](http://wiki.duskglow.com/tiki-index.php?page=OGD1), will be even pricier, since they are based on a reprogrammable FPGA[2]. The expected base price is about US$1000. However, the project is hoping to raise some money to partially subsidize the cards for active OGP developers who want to contribute to the project.

Once they have the cards, they will be able to try out their existing 3D acceleration designs (currently developed against a software emulator, which the project has already developed and released). This will allow direct testing of the designs, and greatly accelerate development. Once a solid-enough design is created and tested, it will then be possible to approach an ASIC chip manufacturer with a sufficient minimum order to be able to deliver the commercial/consumer version of the card, the [OGA1](http://wiki.duskglow.com/tiki-index.php?page=FeatureList), which will be sold by a company, Traversal Technologies, to us, the freedom-loving computing public.

It’s a big, seemingly daunting project, but the developers are dedicated and capable people. I have been very impressed with their care and dilligence in promoting and maintaining the project. In fact, though I am by no means a “hardware guy”, I have contributed a few bits myself—including a significant portion of the card graphic for the OGD1 used above (I did the “real circuit-board look” color rendering of the trace diagram. Of course, the original traces were technical output from the project, and the labels and line elements were by Luc Marschall).

Naturally, of course, I’ve already decided to buy one of the ASIC boards when they become available. I know it’s probably going to be four times more expensive than an equivalent non-free closed-hardware, hidden-specification card. But frankly, after the trouble I’ve had with closed-hardware and hidden specs, it’ll be well worth it!


# Bibliography

[1] “Application Specific Integrated Circuits” (ASICs) are printed at the factory with an unalterable circuit.

[2] “Field Programmable Gate Arrays” (FPGAs) can have their circuit pattern altered by programming, much like a Flash memory chip. The circuit itself is firmware.


