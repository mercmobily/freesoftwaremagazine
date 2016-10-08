---
nid: '3617'
title: 'Time for OSchoice.eu?'
authors: 'Jacopo Nespolo'
published: '2011-12-19 3:34:31'
tags: 'europe,microsoft,competition'
license: other
section: opinions
main_image: oses.png
listed: 'true'

---

In my [previous article](http://www.freesoftwaremagazine.com/articles/road_browserchoice_eu) I went through the history of the competition cases of the European Commission against Microsoft Corporation that led to the deployment of the website [browserchoice.eu](http://www.browserchoice.eu) to allow consumers to freely choose their browser. Yet this is not enough: the origin of all problems is that most PCs in the market are sold bundled to a single operating system, Microsoft Windows.

I shall analyse how this panorama of poor competition could change if there was such a thing as OSchoice.eu .

<!--break-->

# Introduction

Although I appreciate the great effort the Commission has taken in pursuit of a market free from anti-competitive practices, I think that, when dealing with the personal computing market, it made a big mistake: it tried to find a solution for the effects, leaving the cause undisturbed. To me, the problem is not the bundling of Windows Media Player or Internet Explorer in Windows, but the bundling of Windows itself with almost every PC. In the six years I have been using GNU/Linux as my only operating system, I found it extremely difficult and frustrating to buy a computer, especially laptops and netbooks, without paying for a Windows licence.

=ZOOM=The European Commission has so far tried to find a solution for the effects, leaving the cause undisturbed=

It is worth to note that a judge in Florence Court, Italy, ruled in favour of a user that had long been demanding the refund of the unused Windows licence from HP. Similar sentences have been pronounced in France against Asus and Acer[3], as well as elsewhere around the world. I am unsure whether those verdicts would still hold today, since Microsoft has since updated its End User License Agreement (EULA). Indeed, the EULA for Microsoft Windows 7 states that, if in disagreement with the licensing terms, one should "contact the manufacturer or installer to determine its return policy [and] comply with that policy, which might limit your rights or require you to return the entire system on which the software is installed"[1].  It should also be underlined that the real price the consumer pays for an OEM Windows license is unknown, as the bills of PC purchases do not show the cost of the different components. Such licensing terms are a disrespectful violation of consumers' rights, and result in the _de facto_ impossibility of buying many computer models without purchasing a Windows licence.

The retailers' offer of laptops without Windows pre-installed is extremely limited and often restricted to the very low (old and cheap) or very high (and expensive) segments of the market. Of the 571 laptops available on the web site of the Italian store _eprice.it_, as of August 1st 2011, only 13 machines are shipped with non Windows operating systems - namely GNU/Linux, Free Dos or none.  In other words, only 2.3% of laptops available on the retail website come without Windows pre-installed.

Some may argue that the 2.3% offer of mainstream stores is more or less in line with the 2.8% market share of operating systems other than Windows and Mac OS[*]. I reject this critique because the low level of adoption may very well be a consequence — not the cause — of not offering a choice for operating systems.

Furthermore, Microsoft recently announced that the upcoming Windows 8 will require manufacturers to support secure boot in order to participate in its certification programme[2]. This could potentially make things really hard for Linux enthusiasts that purchase a computer with Microsoft Windows and then install their favourite distribution on top of it, as the computer might be locked by the vendor to only run the operating system it was sold with.

# A ballot screen for operating systems

For these reasons, I aﬃrm the necessity to continue down the path the European Commission has started, and require vendors to respect our consumer right to choose the operating system that best suits our needs.

I'm not a computer scientist, therefore not an expert on how computers and operating systems work, but I'm sure most of us know very well how to run a distribution in a live setup. Preparing a CD or USB drive to be able to "boot" an operating system is a trivial task thanks to programs such as UNetbootin[5]. The installation images greatly vary in size from around 100 MB for netinstalls that download additional components from the internet, to 600 MB for full ﬂedged CD images to a few GB for complete DVD images. We also know very well how to use bootloaders such as GNU GRUB to create multi-OS systems, especially useful when we are forced to use a specific operating system (of version thereof) due to application compatibility issues.

Then why don't we take all these ingredients together and build a "Choice Screen for Operating Systems"? Let us for once imagine that we enter a store, take a little walk around the different PC models, and pick the machine we have been searching for. The salesman congratulates us for our choice and offers his help to install the operating system: "It is an easy task, and won't take more than 15 minutes". We turn on the PC together, and there is the choice screen, which might look approximately as the mock-up of ﬁgure 1. With a couple of clicks, and eventually the purchase of the software by credit card on the internet or on the same bill of the hardware with some activation code, the automated install process runs and completes within minutes. We put everything back into the box and happily return home. The braver customers kindly thank the salesman and opts to installs the OS in the comfort of his or her home.

=IMAGE=oschoice.jpg=Figure 1: Mock-up of the Operating System Choice Screen. All trademarks appearing in the image belong to the respective owners.=

The minimal live environment could let us select the operating system from the list, in the same way that a Debian install CD gives us the option of choosing our desktop environment. The installation images could easily be stored on the hard drive: the space needed to ﬁt a handful of operating systems installation ﬁles would not exceed a few GB, as "netinstall" images would suffice. This space requirement is in line with what most vendors use for the recovery partitions we ﬁnd on most computers. The stores could additionally have a local repository for the extra ﬁles eventually needed to complete the install and speed up the process.

The ballot screen could be removed after the install, or saved for the future, in case the customer decides to try a new operating system at a later time.  Purchases of software or assistance plans from vendors could be carried out on screen through electronic transactions.

## Customer response and impact on the market

Of course what I imagined cannot become reality overnight, and would have a big impact on the way consumers relate with retailers and manufacturers.  Over two decades of single operating system computing have built up a tremendous inertia on consumers. This would certainly amplify the so called "embarrassment of choice" that a choice screen would bring about, namely the dilemma of having too many options all at once. This is a problem free software users know quite well, having to choose among hundreds of GNU/Linux distributions, a dozen desktop environments and many alternative programs available for each task.

It is quite likely that the initial deployment will slightly embitter consumers, who have been used to expect their new PCs ready to work right after purchase, with no intermediate steps. Probably at the beginning only a few will try something different, but they would serve as the basis for the build up of a critical mass. In fact, those customers that will feel happy of their newly discovered alternative operating system, will invite many more to go through the ballot screen in a more aware fashion.

=ZOOM=Initial deployment will likely embitter consumers=

The introduction of a choice screen for operating systems would be another major step forward for the protection of customers' rights: for the ﬁrst time, consumers would know exactly how much they are paying for the software stack of their computers. Being able to compare operating systems that require a considerable licence fee with those that are offered at a lower rate or free of charge altogether will make customers ask themselves what they are really paying for, and, more importantly, what they are willing to pay for. This is a key difference from the browser ballot screen, where the software offered comes mostly free of charge.

Hardware and software vendors alike should invest in informing their customers about advantages and issues that might arise from choosing one operating system over another. The salesmen should be aware of the differences among operating systems and, by listening to customers' needs, giving them advice by narrowing the choices to two or three options, still reminding that it is possible to change at a later time.

Redistributing customers among competitors will lead to more investments in research and development of new technologies, as the healthier market environment will allow a true competition on merits. Furthermore, the presence of many players on the market, will boost interoperability, as the compatibility of an application with many operating systems will become an important factor to consider in order to be able to reach a vast amount of customers. Many jobs could be created by such market vitality as interoperability and standards could potentially decrease the cost of development.

Indeed, there would be an initial cost to take into account associated with ﬁxing existent compatibility issues and agreeing on common standards for future development. A considerable part of this issue, though, is already being addressed thanks to the current push towards web and cloud services.

# Conclusions

=ZOOM=The advantages of introducing a choice screen for OS would greatly overweight the disadvantages=

Despite the fact that we start to see a few more non-Windows computers on the shelves, we are still far from an unbiased and open market. Implementing an equivalent of [browserchoice.eu](http://www.browserchoice.eu) for operating systems could be a way to promote competition on merits and boost the adoption of standards. It could also result in the creation of new jobs, which in our time of economic stagnation would be very much appreciated. This solution would not come at no cost, but I am conﬁdent that its advantages, with particular regard to the respect of consumers' rights as well as the incentive for technological advancement, greatly overweight
the disadvantages.

## Aknowledgements

I am grateful to Sherpya for a discussion about existing free software tools to create live distributions.

# References
[*] I obtained the 2.8% ﬁgure by summing the market shares for "Linux" and "Other" from StatCounter data [4].

1. [Microsoft Corporation. Microsoft Software License Terms - Windows 7 Ul-
timate N.](http://www.microsoft.com/About/Legal/EN/US/IntellectualProperty/UseTerms/Default.aspx)
2. [Thom Holwerda. OSNews. Windows 8 Requires Secure Boot, May Hinder Other Software. Sept. 21, 2011.](http://www.osnews.com/story/25180/Windows_8_Requires_Secure_Boot_May_Hinder_Other_Software/)
3. [Juridixion de proximité de Puteaux. Jugement du 23 Juillet 2007, Gutzwillere vs. Acer Computer France. July 23, 2007.](www.aful.org/media/document/jugement-Gutzwiller-Acer-20070723.pdf)
4. [StatCounter. Top 5 operating systems in Italy in July 2011.](http://gs.statcounter.com/#os-IT-monthly-201107-201107-bar)
5. [UNetbootin web page.](http://unetbootin.sourceforge.net/)
