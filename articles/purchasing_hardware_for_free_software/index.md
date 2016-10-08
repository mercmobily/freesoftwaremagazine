---
nid: '2550'
title: 'Purchasing free-software-friendly hardware'
authors: 'Terry Hancock'
published: '2008-02-06 0:53:30'
tags: 'hardware,compatibility'
issue: issue_21
license: other
section: opinions
listed: 'true'

---
Many people have complained about the lack of pre-integrated computers running GNU/Linux or the lack of fully free software drivers for important hardware. Ultimately though, it's up to you, the consumer, both to satisfy your own requirements and to send a message to vendors that supporting free software pays. You can do this fairly easily by integrating your own computer from its major components, and selecting only components that have free software drivers. It's certainly possible, and even if you've never built a computer before, it's not all that hard!

<!--break-->

# Integrating computers for free software: some general advice

As a free software user, the chances are you paid very little (possibly even $0.00) for your software, which leaves you with a little more cash to spend on hardware. I recommend that you use it. A little money spent on brand name parts, products which include manuals or other documentation, and parts which are intrinsically more reliable will save you a lot of time and frustration when trying to get it to all work correctly with your software.

=IMAGE=fig_pc_exploded.jpg=Figure 1: A breakdown of the major components in a computer system, from Wikipedia. 1) Monitor, 2) Motherboard, 3) CPU (or microprocessor), 4) Memory (or RAM), 5) Expansion cards (graphics and sound cards are the most common examples), 6) Power supply, 7) Optical disk drive (CD or DVD), 8) Hard disk drive, 9) Keyboard, 10) Mouse. Unlabeled is the Case (or Chassis). Additional components include extra input or output devices, including speakers, microphone, printer, digitizer tablet, game controller, etc. (Drawing by Gustavb@Wikipedia/CC-By 2.5)=

## What you need

You may find **Figure 1** useful as a good breakdown for the purchasing task. Occasionally you'll find bundle deals, but in general you may have to purchase the following components separately:

* Case
* Power supply
* Motherboard
* CPU
* Memory (RAM)
* Graphics adapter
* Sound adapter
* Hard disk drive
* CD/DVD optical disk drive
* Monitor
* Keyboard
* Mouse or Digitizer

Additionally, there are some optional items you might want, such as a printer, flash media reader, or floppy disk drives. These may not be essential, though, and you may want to purchase them in a later upgrade.

## Don't skimp on the interface!

You are more valuable than your computer. Don't buy stuff that's going to hurt you. Therefore, don't skimp on monitor, mouse, or keyboard. You'll be tempted to get cheap on this stuff to pay for more CPU or RAM. Don't do it!

=ZOOM=A little money spent on brand name parts, products which include manuals or other documentation, and parts which are intrinsically more reliable will save you a lot of time and frustration when trying to get it to all work correctly with your software=

I now only buy LCD monitors, which are vastly better than CRTs in a number of ways: they have clarity which doesn't degrade over time, linear color response, and flat screens. LCDs are more environmentally friendly because they last longer, use far less power, and contain fewer toxic chemicals. They used to be very expensive. Today however, inexpensive LCD monitors are often as cheap or cheaper than equivalent-sized CRTs. If you can, buy one with a hard protective bezel to protect the screen from poking fingers and/or rough handling. An LCD monitor can be the longest-lasting part of the computer, if it is taken care of.

Important specifications when buying an LCD monitor include the resolution (unlike a CRT, an LCD monitor only has one native resolution, anything else must be adapted inside the monitor, which you want to avoid), contrast ratio (between light and dark pixels, expect 400:1 or better), and response time (how long it takes for a pixel to transition from light to dark—this is the one thing LCDs still can't compete with CRTs on). Beware of television monitors when you are buying large LCD displays—they often seem like good deals, but the resolutions are usually disappointingly low for computer work. Also, you should try to find a display that has both DVI (digital) and VGA (analog) connectors. Upcoming graphics cards will likely support DVI, so you'll want it in the future; however, for now you probably need VGA support.

=ZOOM=LCDs are more environmentally friendly because they last longer, use far less power, and contain fewer toxic chemicals=

Don't buy a mouse with a ball in it (i.e. an “optomechanical” mouse). They break down pretty fast and often the encoders will slip causing the mouse cursor to feel “sticky” when you try to move it. Completely “optical” mice (the ones with the LED glow and no moving parts underneath) are much better and will last several times longer.

Keyboards are a complicated and personal issue. My own preference is for a conventional, rectilinear, QWERTY design with “click” keys that provide good feedback and are hard to press accidentally. I also like “spillproof” keyboards that have a synthetic rubber membrane inside to protect the electronics. Your own needs may be different however, and the important message here is to pick one you'll like, because you'll be using it a lot.

## CPU speed is not so important

Frankly CPUs are fast enough. There are very few desktop tasks today for which a fast CPU will make any noticeable difference in performance. This is even more true of GNU/Linux/X11 systems than for others, because the GUIs are more efficiently written.

You are much more likely to be limited by memory, disk I/O, graphics card, and even limits on bus speeds. On the other hand, because of multi-tasking requirements, there are situations in which multiple processors or multi-core processors will provide a noticeable improvement. Linux will take advantage of multiple processors if you enable “Symmetric Multi Processor” (SMP) support in the kernel.

=ZOOM=Unless you're planning on doing scientific supercomputing on your desktop, I wouldn't make the latest and greatest CPU a priority=

Unless you're planning on doing scientific supercomputing on your desktop, I wouldn't make the latest and greatest CPU a priority. You'll find that prices drop off sharply as you fall away from the highest state-of-the-art CPUs, so back off and find a price/performance point you're comfortable with rather than “as much as you can afford”—no matter what the ads tell you!

=TEXTBOX_START=Example System: “Godai”=
What's the cheapest system we can reasonably build? This is a setup ideal for the starving student, with parts mostly taken from a surplus reseller (most of the parts are pulls from machines taken off of corporate leases).

While this system certainly won't win any medals for performance, it's powerful enough to do most of the tasks you really need a computer for: internet use, office work, graphics, and many other things a student might need it for.

=IMAGE=fig_godai.jpg=Starving student system, made mostly from surplus or used parts. Based on 733MHz Intel Celeron processor. This system does have some DRI 3D acceleration and ALSA sound using the video and sound systems on the motherboard.=

Key | Function | Description (and Quantity) | Cost | Vendor[a] | Notes | 
-|-|-|-:|-|-|
1 | Motherboard | [Gigabyte GA-6WMMC7](http://www.gigabyte.com.tw/Support/Motherboard/Manual_Model.aspx?ProductID=1447) (MB+CPU Bundle) | **34.99** | PCL | [b] | 
 | CPU | Intel Pentium 3 Celeron 733MHz (in MB+CPU Bundle) | |  |  | 
2 | RAM | 256MB PC-133 168 Pin SDRAM Module (×2) | **35.98** | PCL |  | 
3 | Hard Drive | 30GB IDE Hard Drive (pull) | **21.99** | PCL |  | 
4 | Optical Drive | Samsung Black 48X IDE CD-ROM Drive | **4.99** | PCL | [c] | 
5 | Flash Reader | 3.5 Inch Drive Bay USB Flash Media Reader | **9.99** | PCL |  | 
6 | Case | CSBW801PA ATX Case w/ 350 Watt Pwr Sply | **24.99** | PCL | [d] | 
7 | Monitor | [HP vp17](http://h10010.www1.hp.com/wwpc/ca/en/ho/WF05a/12142134-12142242-12142244-12142244-12142244-79802741.html) 17″ 1280_1024 LCD | **198.72** | WM | [d] | 
8 | Keyboard | Dell QuietKey Keyboard PS/2 - Used (Beige) | **2.79** | PCL |  | 
9 | Mouse | OP-03-BK Optical Mouse - Black and Silver | **5.99** | PCL |  | 
 |  | **TOTAL (US$):** | **336.70** |  | [e] | 

=TABLE_CAPTION=Components=

## Notes:

[a]Vendor key is at end of article.

[b]Use ALSA [intel8x0](http://www.alsa-project.org/main/index.php/Matrix:Module-intel8x0) sound driver and [Intel i810](http://dri.freedesktop.org/wiki/Intel?highlight=%28Intel%29) DRI support.

[c]CD-ROM only. There are also DVD-RW drives available from the same supplier for a higher cost.

[d]Large, heavy, inexpensive components may be more economical to purchase locally due to shipping expenses (as much as US$25 for a case like this). Note that the monitor accounts for nearly 2/3rds of the system cost—it may be possible to scrounge a monitor locally for half this cost.

[e]Retail cost of parts at time of writing, without considering shipping, handling, or tax (see also [d]). Some minor components like cables may also have to be purchased (though some are included).
=TEXTBOX_END=

## Memory is important

For GNU/Linux users with KDE or Gnome, you are likely to run a lot of processes simultaneously—_because you can_. Each process takes up space in memory, though, so you have to plan for that: get as much RAM as you can reasonably afford, or at least make sure there is room for it when you select a motherboard.

Shop for memory after you pick a motherboard: RAM comes in a variety of form factors, and your motherboard will probably only support one of them. Furthermore, there is little point in buying RAM rated faster than the buses on your motherboard can handle.

If you are strapped for cash, buy less RAM now, but leave room to upgrade.

## Keep it cool

You're going to spend some money on computer components. So don't put them in a cheap case or use cheap fans that will fry them all and destroy your investment!

This has become more difficult over the years because newer computers generate more heat. Modern CPUs generate as much or more heat than an incandescent light bulb... A cooling failure will result in rapid self-destruction.

=ZOOM=You're going to spend some money on computer components. So don't put them in a cheap case or use cheap fans that will fry them all=

So, don't try to reuse a case from five or ten years ago—not unless the CPU is also that old. Buy a new “thermally advantaged” case and new heatsinks and fans to keep the system cool (_liquid cooling_ is a better, but much more expensive, option).

# The tough stuff

When buying for GNU/Linux and 100% free software (no non-free drivers!), you will find that there are four particularly sticky parts to the task (in roughly decreasing order of difficulty in 2007):

* 3D-accelerated graphics cards
* CD/DVD drives
* Sound cards
* Printers

Because these elements will most constrain your system, you should pick them, and then choose other elements to work with them (fortunately this is usually not hard).

## Graphics

In 2007, finding a 3D-accelerated (OpenGL) graphics card that is fully supported by free software drivers is a nightmare. The marketplace has become dominated by two main players: ATI and nVidia. Neither wants to share their specifications and detailed register information with free software driver developers. The stated rationale is that this information will somehow tip-off their competitors (i.e. each other) to trade secrets in their designs. Scuttlebutt suggests that the real concern is discovery of patent violations.

=ZOOM=Finding a 3D-accelerated (OpenGL) graphics card that is fully supported by free software drivers is a nightmare=

The situation has become so bad that there is now an Open Graphics project being developed in the community to build an Open Hardware replacement for such cards. This is not yet ready for consumers, though, so in the meantime, we have to cope. Another future possibility is better support for new ATI cards, which the company has promised to open up further for developers (though we are still waiting for the 3D documentation). Free software drivers for later ATI cards do exist, but are still incomplete. NVidia, on the other hand, has shown no such openness, and I recommend boycotting them entirely as a result.

=IMAGE=fig_videocards.jpg=Figure 2: Six graphics cards I found while working on this article: 1) An original ATI 9250 card, still sold new from a retailer, although ATI describes this card as discontinued. 2) A newer ATI 9250 chipset card from Diamond Multimedia. Note the DVI port. Both of these are PCI cards, fortunately. The others are from a surplus and used parts vendor: 3) ATI Rage XL. I had trouble finding exact information, but it appears to be too early for good DRI support. 4) ATI Rage II, an even earlier card, probably no good except as a framebuffer. 5) The Matrox G450 does have DRI support and provides dual-head support if you need it—a very good deal at $14.99. 6) a grab bag 2MB SVGA card pulled from used equipment, sold from the same supplier for $6.99. If you don't care about 3D acceleration, a card like this is probably just fine. However, for the examples I worked out, the video support on the motherboard was at least as good as what these cards would provide.=

The last cards that had more or less complete OpenGL support (because design data was still available), were the ATI Radeon 9200/9250 cards (the same drivers work for both). These are fully supported by the “radeon” driver for the Direct Rendering Interface (DRI) system which provides 3D support under X11. As far as I know, this is the best fully-free-software-supported card available at this time. These can still be purchased new from a few suppliers online, but you will have to look hard. Be sure to take note of whether cards are designed for AGP or PCI buses—AGP is being slowly phased out, but was still the most common graphics bus when the Radeon 9200s were first marketed. Both variants can be found, but you may have to consider this when finding a motherboard.

There are also some older cards which you may be able to find as surplus or used parts for somewhat less money, though they will no doubt be somewhat slower or less full-featured. For many purposes, however, they will be entirely adequate.

<!--pagebreak-->

Also, it should be noted that 3D acceleration is essential only for certain kinds of applications: 3D modelling, Computer Aided Design, and 3D games are the main uses. There are also 3D extensions to desktop managers available today, but it's not a big hardship to do without them—for many computers I would consider just using an ordinary framebuffer card (and just about any “SVGA” card will do for that. Some motherboards will even include a suitable graphics subsystem onboard).

## CD/DVD drives

With optical drives, the problem is not nominal support, but rather stability. Almost any ATAPI IDE or SATA CD/DVD drive will “work” with Linux drivers, in the sense that the driver will recognize the drive and read disks.

However, in my experience, Linux drivers are not very robust with some drives. This is most likely due to electromechanical and/or firmware problems inside cheaply-made optical drives. It's possible that the manufacturer has attempted to compensate for these deficiencies by providing Windows drivers that work around them—but you won't get the benefit of that effort.

DVD technology intrinsically pushes the hardware very, very far in terms of accuracy and speed, so only very well-machined drives will work perfectly. And when they don't work perfectly, the firmware has to compensate by recovering from errors. Add to this Digital Rights Management (DRM) and region-coding schemes, and there's no doubt that DVD firmware is extraordinarily complex and finicky.

=ZOOM=DVD technology intrinsically pushes the hardware very, very far in terms of accuracy and speed=

The free software drivers have to operate correctly on top of this rather shaky “Defective By Design” foundation, and so they are not as stable as we would like. Perhaps someone will start an Open Hardware project to fix this, but in 2007, the best we can do is to buy drives that have very good reputations for stability and error-free operation.

I recommend frequenting community sites to find drive reviews and recommendations from serious users. Until fairly recently, there was a lot of respect for Plextor as a manufacturer, but recent changes have caused them to withdraw from manufacturing for the consumer market. Therefore, many of their new drives are apparently "rebadged" versions of other company's products. So in recent times, the top performances have been seen in specific Pioneer or Samsung drives.

This rebadging example is important! Don't pick DVD drives by brand, but by _model_. Make sure you're getting exactly the same drive as was reviewed.

=TEXTBOX_START=Example System: “Shinobu”=
A modest, but very capable machine, useful for a wide range of computing tasks, from entertainment to software development. For this machine, I've chosen Intel components as an example. No sound card is needed because the Intel chipset on the motherboard includes ALSA-supported audio, and the speakers are included in the monitor.

This system employs some quiet cooling fan technologies for reduced noise. It may be desirable to replace the case fans in the Lian Li case in order to keep the system as quiet as possible.
    
=IMAGE=fig_shinobu.jpg=An unassuming, but very capable system based on a Intel Core 2 Duo processor, with 1 GB of RAM, and 500 GB of disk storage. Standard keyboard and mouse for typical office and home use.=


Key | Function | Description (and Quantity) | Cost | Vendor[a] | Notes |
-|-|-|-:|-|-| 
1 | Motherboard | [ASUS P5B](http://usa.asus.com/products.aspx?l1=3&l2=11&l3=307&l4=0&model=1178&modelmenu=1) LGA 775 Intel P965 Express ATX Intel MB | **109.99** | NE | [b] | 
2 | CPU | Intel Core 2 Duo E4400 Allendale 2.0GHz 2M L2 Cache | **133.99** | NE | [c] | 
3 | RAM | Crucial Ballistix 1GB (2 x 512MB) 240-Pin DDR2 800 | **55.99** | NE |  | 
4 | Video Card | [ATI Radeon 9250](http://ati.amd.com/products/radeon9250/index.html) | **64.99** | NE | [d] | 
5 | Power Supply | [Antec Earthwatts EA380](http://www.antec.com/us/productDetails.php?ProdID=27380) ATX12V v2.0 380W (Quiet) | **59.99** | NE |  | 
6 | Hard Drive | WD Caviar SE WD5000AAJS 500GB 7200 RPM 8MB SATA | **99.99** | NE |  | 
7 | Optical Drive | [Pioneer  DVR-112D](http://www.pioneerelectronics.com/pna/v3/pg/product/details/0,,2076_310070061_416392579,00.html) CD/DVD+-R/RW DL | **29.99** | NE | [e] | 
8 | Flash Reader | 3.5 Inch Drive Bay USB Flash Media Reader | **9.99** | PCL |  | 
9 | Cooling | [ZALMAN CNPS9500 AT](http://www.zalman.co.kr/eng/product/view.asp?idx=193&code=009) 2 Ball CPU Cooling Fan/Heatsink | **47.99** | NE |  | 
10 | Case | [Lian Li PC-7A Plus](http://www.lian-li.com/product/product06.php?pr_index=15&cl_index=1&sc_index=1&ss_index=4&type=a) Aluminum Case | **99.99** | NE |  | 
11 | Monitor | [ViewSonic VG2030wm](http://www.viewsonic.com/products/desktopdisplays/lcddisplays/graphicseries/vg2030wm/) 20" 1680×1050 LCD (with Speakers) | **259.99** | CDW |  | 
12 | Keyboard | [Kensington Keyboard For Life](http://us.kensington.com/html/4812.html) | **17.99** | CDW |  | 
13 | Mouse | White OP-03 Optical Mouse | **5.99** | PCL |  | 
 |  | **TOTAL (US$):** | **996.87** |  |  | 

=TABLE_CAPTION=Components=

## Notes:

[a]Vendor key is at end of article.

[b]For sound, use [hda-intel](http://www.alsa-project.org/main/index.php/Matrix:Module-hda-intel) driver [from ALSA v1.0.15rc3 or later](http://linuxtechie.wordpress.com/2007/10/19/getting-intel-ich8-family-rev-3-sound-card-to-work-in-gutsy/).

[c]Be sure to use a kernel with [Symmetric Multiprocessor Support](http://www.ibm.com/developerworks/library/l-linux-smp/) (SMP) enabled, in order to take advantage of the dual-core CPU.

[d]For 3D accelerated graphics, use the [radeon/r200_dri.so](http://dri.freedesktop.org/wiki/ATIRadeon?highlight=%28radeon%29) DRI driver. The Radeon 9250 is based on the R280/M9+ chipset. According to the ATI/AMD website this chipset is discontinued, but there are still quite a few available.

[e]A past [CD Freaks Editor's Choice](http://www.cdfreaks.com/reviews/Pioneer-DVR-112-DVD-Burner-Review) drive, which is why I selected it.
=TEXTBOX_END=

## Sound

Sound used to be really, really difficult. There was some support via an industry-backed Open Sound System (OSS), but it was a bit spotty and not the best system from an engineering perspective. Later the Advanced Linux Sound Architecture (ALSA) provided much more robust sound support for Linux, and is now usually incorporated into the 2.6 kernels.

Unlike the duopoly in the video card industry, there is still healthy competition among sound suppliers. Creative Labs remains the “big fish” and has a bit of an attitude about releasing card specifications to developers, but quite a few of the specs have nevertheless been published. Other companies are quite open, and I even found one (StarTech, see Figure 3) that provides free software drivers for their cards, although these are written for OSS (however, to be fair, this is now the community's problem—the company has done what we ask by releasing drivers and specs).

Many motherboards today include a sound system that will be supported by ALSA, so you may not need an extension card at all.

## Printers

Printers used to be very hard. It used to be that you either picked a printer with Postscript in the firmware or used an Hewlett-Packard printer with PCL with Ghostscript. However, Ghostscript has matured; printer manufacturers have become more open; firmware has gotten cheaper; and there is now an industry consortium dedicated to Linux Printing.

There are still problems with compatibility, of course, but looking for a compatible printer is now pretty easy. Just go to the Linux Foundation's Open Printing page and use a search engine there to look up printer make and model numbers in order to get support information. As with DVD drives, be sure to pick printers by model, not by brand. Quality within product lines can be quite variable, even with big name suppliers.

=TEXTBOX_START=Example System: “Ruri”=
A fairly practical, high-end machine for creative development and programming work. This machine is based on a Dual Core Opteron CPU from AMD. I've had mostly good experiences with AMD chips and some distrust of Intel---but truthfully, both companies produce good CPUs.

This system employs a number of technologies, including liquid cooling, which will make it both very robust and very quiet in operation, which is ideal for entertainment, game, and even home studio use.

=IMAGE=fig_ruri.jpg=Moderately high end system based on a Dual Opteron processor, with 2 GB of RAM, and 500 GB of disk storage. Six-axis 3D controller and digitizer tablet provide fine control for 3D modelling and CAD applications. A gamepad is provided for testing (and playing!) games.=

Key | Function | Description (and Quantity) | Cost | Vendor[a] | Notes | 
-|-|-|-:|-|-|
1 | Motherboard | [MSI K9VGM-V](http://www.msicomputer.com/product/p_spec.asp?model=K9VGM-V&class=mb) AM2 VIA K8M890 Micro ATX AMD | **45.99** | NE | [b] | 
2 | CPU | Dual-Core [AMD Opteron 1220](http://products.amd.com/en-us/OpteronCPUDetail.aspx?id=191) Santa Ana 2.8GHz | **279.00** | NE | [c] | 
3 | RAM | A-DATA 4GB(2 x 2GB) 240-Pin DDR2 SDRAM 800 | **125.99** | NE |  | 
4 | Video Card | [Diamond Stealth S9250PCI256SB Radeon 9250](http://www.diamondmm.com/S85PCI.php) | **69.29** | PCC | [d] | 
5 | Sound Card | [M-Audio Revolution 7.1](http://www.m-audio.com/products/en_us/Revolution71-main.html) | **84.99** | CDW | [e] | 
6 | Power Supply | [ZALMAN ZM460B-APS](http://www.zalman.co.kr/eng/product/view.asp?idx=194&code=015) ATX12V 460W | **99.99** | NE |  | 
7 | Hard Drive | WD Caviar SE16 WD7500AAKS 750GB 7200 RPM SATA | **174.99** | NE |  | 
8 | Optical Drive | [Samsung SH-S203B](http://www.samsung.com/ca/products/opticaldiskdrive/internal/sh_s203bbebn.asp) CD/DVD +-R/RW DL | **33.99** | NE | [f] | 
9 | Flash Reader | [Atech Flash XM-4U](http://www.atechflash.com/products-pgxm4u.html) 11-in-1 USB 2.0 card reader | **19.99** | NE |  | 
10 | Speakers | [Cyber Acoustics CA 5001rb](http://www.cyberacoustics.com/index.cfm?fuseaction=Home.ProductDetail&content_id=327) 5.1 system | **69.99** | CDW |  | 
 |  | [Cyber Acoustics CA 2022rb](http://www.cyberacoustics.com/index.cfm?fuseaction=Home.ProductDetail&content_id=332) 2 PC speakers | **26.99** | CDW |  | 
11 | Cooling | [Zalman Reserator 1 V2](http://www.zalman.co.kr/eng/product/view.asp?idx=206&code=021) Fanless Water Cooling System | **259.99** | XO |  | 
12 | Case | [Apevia X-TELSTAR-AL Silver](http://www.apevia.com/product.php?pid=229) Aluminum ATX Full Tower | **159.00** | NE |  | 
13 | Monitor | [HP W2408](http://h10025.www1.hp.com/ewfrf/wc/document?docname=c01097300&lc=en&cc=de&dlc=en&product=3440923&lang=en) 24″ 1920×1200 LCD | **544.99** | CDW |  | 
14 | Keyboard | [Sunbeam Pro Series Illuminated](http://www.sunbeamtech.com/PRODUCTS/peripherals/pro-series_keyboard/pro-series_keyboard.htm) Silver | **19.99** | XO |  | 
15 | Digitizer | [WACOM Bamboo Fun](http://www.wacom.com/bambootablet/bamboofun.cfm) Medium Silver Tablet | **199.99** | CDW | [g] | 
16 | 3D Controller | [3Dconnexion SpaceNavigator](http://www.3dconnexion.com/3dmouse/spacenavigator.php) | **63.99** | CDW | [h] | 
17 | Game Controller | [Saitek P990](http://www.saitekusa.com/usa/prod/p990.htm) Dual Analog GamePad | **19.99** | AMZ | [i] | 
 |  | **TOTAL (US$):** | **2299.14** |  |  | 

=TABLE_CAPTION=Components=

## Notes:

[a] Vendor key is at end of article.

[b] This card also has (unaccelerated) video and audio that are somewhat supported under X11 and ALSA, but both have been upgraded in this plan.

[c] Be sure to enable [Symmetric Multi-Processor](http://www.ibm.com/developerworks/library/l-linux-smp/) (SMP) support in your kernel. This is one of many AMD Dual Core chips that would work with this board, I picked this one because it was well-reviewed by buyers at NewEgg.com, but there may be better or more cost-effective choices.

[d] For 3D accelerated graphics, use the [radeon/r200_dri.so](http://dri.freedesktop.org/wiki/ATIRadeon?highlight=%28radeon%29) DRI driver. The Radeon 9250 is based on the R280/M9+ chipset.

[e] Use the ALSA [ice1724](http://www.alsa-project.org/main/index.php/Matrix:Module-ice1724) driver for sound support.

[f] Past [CD Freaks Editor's Choice](http://www.cdfreaks.com/reviews/Samsung-SH-S203B-DVD-Burner-Review), which is why I chose it (this and the Pioneer DVR-112D are pretty much a toss-up based on the reviews).

[g] Wacom tablets have excellent Linux/X Windows support through the [Linux Wacom](http://linuxwacom.sourceforge.net/) project. You will need version 0.7.8 or later to support the Bamboo tablet.

[h] Free software support for 3D controllers is somewhat spotty. I found some [information](http://www.3dconnexion.com/forum/viewtopic.php?t=34&postdays=0&postorder=asc&start=0) on a 3Dconnexion forum, and Simon Budig has contributed a [kernel patch](http://lkml.org/lkml/2007/1/15/90) for Linux 2.6.20-rc5 which provides a way to access the LED on the device. There is a [plugin](http://www.3dconnexion.com/support/download_driver.php?product_id=14&os_id=1&driver_id=52&action.x=83&action.y=18) for Blender from 3Dconnexion, but despite some brave (and frankly, deceptive) [talk](http://www.3dconnexion.com/news/press/080707_Blender.htm), it appears to be closed source. It's a USB-HID device, though so writing support shouldn't be that difficult, even if it does require some reverse-engineering.

[i] Gamepads are supported directly by a number of free software game engine toolkits as “joysticks”, even though relatively few free software games make good use of them.
=TEXTBOX_END=

# How to buy

The actual process of buying is probably going to be different than for buying systems for use with Windows, where the manufacturers take on the burden of checking compatibility for you and retailers are sure to communicate it to you. For free software you'll have to do a little of your own homework _simultaneously_ with purchasing, and that necessitates a different shopping strategy.

## Multi-windowed web purchasing

When you go into a computer store, most products—even ones that support GNU/Linux—will be covered with prominent labels indicating that they “require” Windows or sometimes Macintosh operating systems.  What these really are are guarantees from the manufacturer about what software they expect their hardware to work with. It's very, very rare to find labels  like that for GNU/Linux support.

=IMAGE=fig_soundcards.jpg=Figure 3: Buyer beware! You can't trust the requirements labelling on vendor sites, even online. Of these sound cards, the Audigy and Diamond LS71 cards have ALSA drivers, while the StarTech card comes with a manufacturer-provided open source OSS driver. Only the StarTech card actually claims Linux support. For the examples in this article, however, the motherboards provided ALSA-compatible sound support better than what the StarTech board would provide. Several AOpen cards are covered by ALSA, but apparently not this one. The other card may be using a supported chipset, but I didn't dig far enough to find out.=

There are two reasons for this: one is that free software users are still a very small minority of their customers and the other is that free software drivers are provided by community developers who can't generally offer them the kind of certifications and money-back guarantees that proprietary companies can. Free software is almost always offered “as-is”, so it's hard for the company to turn around and make promises to the customers. Thus, even if they are fully supported under Linux, they are unlikely to print this information on their packages.

=ZOOM=The most reliable method is to get information directly from the supporting developer groups=

So you need another way to find out. The most reliable method is to get that information directly from the supporting developer groups. This is hard to do when wandering around a retail department store, so I recommend you stick to online purchasing, where this is much easier.

=IMAGE=multiwindow_buying3.jpg=Figure 4: Buying online allows you to offset the labeling advantage of well-positioned proprietary suppliers by going direct to the developer communities that support the hardware while you shop.=

With a tabbed browser, or just with multiple windows, you can keep one or more vendor online catalogs and multiple community support sites at your fingertips, for rapid comparison of product, price, and free software support.

<!--pagebreak-->

Find some good suppliers online (I've listed several at the end of this article), and open a tab on to each catalog. Then open another set of tabs up onto the support pages for the hardware drivers you're going to need to use (which I've also provided). For audio and video, that's probably going to include the ALSA project, X.org, and the DRI driver system (which provides accelerated 3D support for X Windows).

## Buy heavy, cheap, and generic stuff locally

The major exception to this rule is when you are buying the bulkier parts of the computer, such as the case (or chassis), power supply, and monitor. Compatibility isn't an issue with these parts, and if you have to get them mailed to you, the shipping can be expensive. If you really want that snazzy case you've found online, that's fine, of course, but you'll probably pay US$20 or more to get it shipped to you. For a $200 case that's only 10%, which is a pretty good estimate for anything you have to get shipped, but for a cheap $15 surplus case, it's more than 100%! You'd get a better case for less money by paying $30 locally.

=IMAGE=comparison_shopping_sites.jpg=Figure 5: Some websites will do a certain amount of comparison shopping for you. Examples: Price Grabber, Biz Rate, Price Bat (Canada), NexTag, My Shopping (Australia). To keep things simpler for this article, I didn't make much use of these, because I wanted to use just a few suppliers, but they can be useful for sourcing hard-to-find items or finding good deals on expensive ones.=

When you must buy peripherals in person, look for products which work on both Windows and Macintosh computers. Even though the manufacturer only lists two operating systems, these two are different enough that supporting both of them _usually_ means that they will work with others, including free software operating systems. Also, bear in mind that modern Macintosh computers use Unix-derived operating systems, so they are more similar to GNU/Linux than to Windows. Thus Macintosh support is often a good (but not foolproof) sign.

=TEXTBOX_START=Example System: “Kusanagi”=
Now, what if cost were no object? This is a bleeding edge machine, and not everything is fully supported yet---that's part of the fun! Applications include 3D modeling, CAD, digital arts, home studio, games, and multimedia software development.

While I doubt many people would seriously want to build this machine, you might consider whether elements of it have a place in a slightly more modest computer.

=IMAGE=fig_kusanagi.jpg=High end home workstation system, “Kusanagi”, based on twin Quad Opteron processors, with 8 GB of RAM, 1 TB of disk storage, with top-of-the line input and output devices.=

 | | |  | | | 
-|-|-|-:|-|-|
1 | Motherboard | [TYAN S3970G2NR-E](http://www.tyan.com/product_board_spec.aspx?pid=529) “Tomcat h1000E” | **299.99** | NE | [b] | 
-|-|-|-|-|-|
2 | CPU | Quad Core [AMD Opteron 2347](http://www.amd.com/us-en/Corporate/VirtualPressRoom/0,,51_104_15275,00.html) Barcelona 1.9GHz (×2) | **759.98** | NE | [c] | 
3 | RAM | A-DATA 4GB(2 x 2GB) 240-Pin DDR2 SDRAM 800 (×2) | **251.98** | NE |  | 
4 | Video Card | [Open Graphics OGD1](http://www.traversaltech.com/products.phtml) Development Card (FPGA) | **1500.00** | TT | [d] | 
5 | Sound Card | [M-Audio Delta 1010LT PCI](http://www.m-audio.com/products/en_us/Delta1010LT-main.html) Virtual Studio | **174.99** | CDW | [e] | 
6 | Power Supply | [Zalman ZM500-HP](http://www.zalman.co.kr/eng/product/view.asp?idx=276&code=015) | **134.95** | EPN |  | 
7 | Hard Drive | [WD Caviar GP WD10EACS](http://www.wdc.com/en/products/Products.asp?DriveID=336) 1TB 5400-7200 RPM SATA | **279.99** | NE |  | 
8 | DVD | [Plextor PX-B900A/SW-BL](http://www.plextor.com/ENGLISH/products/px-b900a.html) Blu-Ray/DVD/CD writer | **1001.99** | CDW | [f] | 
9 | Flash Reader | [Atech Flash XM-4U](http://www.atechflash.com/products-pgxm4u.html) 11-in-1 USB 2.0 card reader | **19.99** | NE |  | 
10 | Speakers | [Cyber Acoustics CA 5001rb](http://www.cyberacoustics.com/index.cfm?fuseaction=Home.ProductDetail&content_id=327) 5.1 system | **69.99** | CDW | [g] | 
 |  | [Cyber Acoustics CA 2022rb](http://www.cyberacoustics.com/index.cfm?fuseaction=Home.ProductDetail&content_id=332) 2 PC speakers | **26.99** | CDW |  | 
11 | Cooling | [Zalman Reserator 2](http://www.zalman.co.kr/eng/product/view.asp?idx=216&code=021) Liquid Cooling System | **299.99** | NE |  | 
12 | Case | [Clear Computer Case "Clear Ice" Full Tower](http://www.clearcomputercase.com/Spec/2310-1.htm) | **245.81** | C3 |  | 
13 | Monitor | [Apple Cinema 30″ 2560_1600 LCD](http://www.apple.com/displays/specs.html) | **1799.00** | CDW |  | 
14 | Keyboard | [Optimus Maximus keyboard](http://www.artlebedev.com/everything/optimus/) | **1564.37** | ALS | [h] | 
15 | Digitizer | [Wacom Intuos3](http://www.wacom.com/intuos/12x19.cfm) 12x19 Graphics Tablet | **669.00** | CDW | [i] | 
16 | 3D Controller | [3Dconnexion SpaceExplorer](http://www.3dconnexion.com/3dmouse/spaceexplorer.php) | **259.99** | CDW | [j] | 
 |  | **TOTAL (US$):** | **9359.00** |  |  | 

=TABLE_CAPTION=Components=

## Notes:

[a] Vendor key is at end of article.

[b] This motherboard has video and audio chipsets that are supported for basic functionality, which provides some fallback if needed.

[c] Be sure to enable [Symmetric Multi Processor](http://www.ibm.com/developerworks/library/l-linux-smp/) support in your kernel.

[d] The OGD1 is really an FPGA development board which is designed for graphics system development. The current implementation of the [Open Graphics](http://opengraphics.org) Architecture provides only a framebuffer, but this will presumably improve over the next year or so now that the development boards are available. Having one would allow you to keep your system up-to-date with the latest improvements as they are made, and contribute to testing the new Open Hardware 3D graphics system. Another choice would be to use one of the later ATI cards which are supposed to have their specifications released to developers soon, but OGD1 is the clearer choice for freedom in the long run.

[e] There is also a [rack-mounted](http://www.m-audio.com/products/en_us/Delta1010-main.html) version that may be more appropriate for studio use. Use either with the ALSA [ice1712](http://www.alsa-project.org/main/index.php/Matrix:Module-ice1712) driver.

[f] Yes! Blu-Ray is supported by [dvd+rw-tools](http://fy.chalmers.se/~appro/linux/DVD+RW). I know the Free Software Foundation has said some very bad things about Blu-Ray, but they are talking about the DRM-laden movie standard based on top of it, not the storage medium itself, which holds up to 50GB of data per disk.

[g] Too cheap? Probably. For such a high-end system though, you'd probably connect directly to an existing studio sound system, so computer speakers as such wouldn't be called for.

[h] The Optimus Maximus keyboard has a user-configurable 48×48 organic LED screen on every key, so that the key caps can be downloaded onto the keyboard dynamically, making it easier to use software with extensive keybindings as well as type naturally in multiple character sets. The configuration software is not currently available for Linux, though a future version is planned (probably closed source). However, since the board's key images are apparently loaded via a USB mass storage interface, writing free software applications to configure it should not be difficult.

[i] Wacom tablets have excellent Linux/X Windows support through the [Linux Wacom](http://linuxwacom.sourceforge.net/) project. The Intuos3 has been supported for some time now.

[j] See “Ruri”, note [h].
=TEXTBOX_END=

# Caveat emptor

Building your own system from components seems very consistent with using free software to me. In both cases, you, the user, are taking both control and responsibility over your own system. The control is nice, but you do have to be willing to accept the responsibility—things may not work perfectly on the first try. Sometimes you'll find that you bought the wrong part or have to return a defective one. That's a normal part of system integration, and you can't let it get you down.

=ZOOM=You, the user, are taking both control and responsibility over your own system=

I've worked out four examples for this article, which represent very different choices in building 100% free software compatible GNU/Linux systems. I have not purchased these components or tested integrating them, so I can't promise you that they will work together as I suggest—I'm just trying to give you practical examples. You are likely to encounter problems I haven't thought of, but hopefully no show-stoppers.

Commercial integrators have to go through this same process. Their only advantage is that once they've done it for a particular model of computer, they'll probably sell thousands just like it. But I find that even for one computer, this process is well worth it in order to have a system designed for free software from the component level. This will really pay off when you use it!

=TEXTBOX_START=**Sources**=
Here is the key to the vendors I consulted for the examples in this article:

 | | |
-|-|-|
ALS | [Art Lebedev Studio](http://www.artlebedev.com) | High concept industrial design studio in Russia. | 
TT | [Traversal Technology](http://www.traversaltech.com) | Company associated with the Open Graphics Project. | 
XO | [Xoxide](http://www.xoxide.com) | Computer supplies for gaming and case modifications. | 
EPN | [End PC Noise](http://www.endpcnoise.com) | Quiet and silent computing supplies. | 
C3 | [Clear Computer Case](http://www.clearcomputercase.com) | Acrylic transparent computer cases. | 
MC | [Micro Center](http://www.microcenter.com) | Large consumer computer store. | 
CDW | [Computer Discount Warehouse](http://www.cdw.com) | Computer store focused on small business needs. Good catalog search engine. | 
NE | [New Egg.com](http://www.newegg.com) | Technology store with large computer selection and a very good catalog search engine. | 
PCC | [PC Club](http://www.pcclub.com) | Limited selection online site associated with brick-and-mortar specialty stores in the Western US. Usually has some good deals. | 
PCL | [PC Liquidator](http://www.pcliquidator.com) | A long-running computer used and surplus dealer located in Los Angeles, California. | 
AMZ | [Amazon (more than books!)](http://www.amazon.com) | Amazon is known for books, but they carry a wide range of products now, including computer and technology products. | 
WM | [WalMart (online)](http://www.walmart.com) | Walmart is a surprisingly good place to buy computer equipment. The brick-and-mortar stores are often stocked with basic computer supplies that specialty shops don't bother with. | 

=TABLE_CAPTION=Vendor Key=
=TEXTBOX_END=

=TEXTBOX_START=Community Resources=
Here are the community resources I relied on for information about hardware compatibility and the current status of drivers:

## Video Cards

[X Windows](http://www.x.org): Basic information about free video drivers (not really an issue, just about any SVGA will work as a framebuffer).

[Direct Rendering Interface](http://dri.freedesktop.org): Information about Direct Rendering Interface (3D support). This currently the most difficult sourcing problem, so this site is very important.

## Printing & Printers

[Linux Foundation / Open Printing](http://www.linux-foundation.org/en/OpenPrinting): A well-organized hub for printing information.

[LF / Open Printing](http://openprinting.org/printer_list.cgi): A search engine for printer compatibility information.

## Sound Cards

[Advanced Linux Sound Architecture](http://www.alsa-project.org): Home of Advanced Linux Sound Architecture. This is now the main sound system for Linux, and is integrated into the 2.6 kernel.

[ALSA Card Support Matrix](http://www.alsa-project.org/main/index.php/Matrix:Main): Now a wiki site, this provides information on ALSA support for sound cards by vendor or driver.

[Open Sound System](http://www.opensound.com/osshw.html): A list of chipset supported by the Open Sound System (an older framework for soundcard support which has mostly been replaced by ALSA---but a few cards still require OSS drivers.

## CD/DVD Media & Drives

[CD Freaks](http://www.cdfreaks.com): A community site for users of optical disk technologies. Its Editor's Choice label may help to find a good drive.
    
## Digitizer Tablets

[Gentoo Howto on Wacom Tablets](http://gentoo-wiki.com/HOWTO_Wacom_Tablet)

 [Linux Wacom Project](http://linuxwacom.sourceforge.net/): Project to support all of the Wacom digitizer tablets on Linux and X11.

## General

[Wikipedia](http://wikipedia.org): Wikipedia has very good coverage of technical subjects like computer hardware.

[Linux Drivers](http://www.linux-drivers.org/): Linux Drivers is a great starting place. It includes links to most of the above sites, and more.

[Phoronix](http://www.phoronix.com): Information on Linux and Solaris hardware, including audio and video reviews.
=TEXTBOX_END=


