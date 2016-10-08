---
nid: '1533'
title: 'Interview with Kevin Carmony'
authors: 'Kevin Carmony'
published: '2006-06-14 0:00:00'
issue: ''
license: verbatim_only
section: interviews
listed: 'true'

---
Kevin Carmony is the president and CEO of Linspire. Kevin kindly agreed to answer a few questions, and talk about his new project: Freespire.

_In Free Software Magazine, we choose to use the terms “free software” (rather than Open Source) and “GNU/Linux” (rather than Linux). However, this is an interview and answers will be left unedited._

**TM: Thanks for the interview Kevin! Well, first of all tell us something about you and Linspire...**

KC: Linspire was founded five years ago, and I have been here from the very beginning. Linspire was started in an effort to expose GNU/Linux to the mainstream market by making it polished and easier to use, include support, and then to get it pre-installed on computers at the OEM level.


=IMAGE=kc800.jpg=Figure 1: Kevin Carmony=

**TM: What does Linspire offer?**

KC: Linspire is designed exclusively for use on desktop and laptop computers, particularly for consumers. We don’t offer server or enterprise products, as there are already plenty of great Linux products out there for these areas. Because we focus on the consumer desktop, Linspire is ideally suited for the non-technical computer user who would like to use Linux on their desktop or laptop, and have everything just work from the moment they turn on their computer. For example, Linspire supports MP3, DVD, Windows Media, QuickTime, Flash, Java, and so on, right out of the box.

**TM: One of the big features of Linspire is the CNR Service (Click and Run). This client was originally based on APT (Debian’s package manager). CNR has now evolved. Is it still based on APT? Can a “hybrid system” function properly without going through the dependency hell?**

KC: Correct. CNR has always been, and still is, based around Debian packaging, including APT. You have always been able to use APT with Linspire. However, you might (as is the case with any Debian-based distro) run into problems if you APT from different pools which are not compatible; this is also true for Debian, Ubuntu, etc. So, in other words, if you CNR from the Linspire CNR Warehouse repository, and then you apt-get from Debian or Ubuntu repositories, you may or may not create dependency problems. Linspire stays pretty close to Debian Sid, but there are so many .deb repositories, you just need to be careful. Our goal is to make sure the CNR Warehouse remains the most inclusive, stable and current repository so there isn’t any need to APT outside of the CNR repository, but there is nothing preventing anyone from doing that.

**TM: Is it actually possible for Ubuntu and Debian users to use Linspire’s repository?**

KC: Because Linspire was designed for consumers, there wasn’t really any need to offer that. However, with Freespire being used by more traditional Linux users, Freespire certainly needs that level of flexibility. So, starting with the Freespire release, yes, anyone can use APT to pull from all our repositories. However, Ubuntu and Debian users would also need to be careful doing that, just like Linspire users need to use caution when pulling from non-Linspire repositories, as I mentioned earlier.

**TM: So, what are the advantages of CNR exactly? And are those advantages only available if the CNR client talks to the CNR server?**

KC: A lot of people who aren’t familiar with CNR assume it’s simply a graphical front end for APT, but that’s not at all the case. We’ve spent five years perfecting the CNR system, and it has a couple of dozen big differences from APT. Rather than go into all those differences here, I’d suggest your readers visit [this link](http://freespire.org/warehouse), where we have an entire page of information on the differences between APT and CNR.

**TM: I looked at the charts. You offer, for example, the ability to buy programs, see “charts”, see reviews/screenshots, etc. These are the features that depend on the CNR server, right?**

KC: Anyone, even Windows or Mac users, can see the charts and reviews from the [website](http://linspire.com/warehouse). But yes, buying the commercial software, creating Aisles, our ecommerce system, and so on use the CNR servers.


=IMAGE=ss-launch-1280.jpg=Figure 2: Launch menu=

**TM: Could I decide to run a CNR server myself, if I wanted to?**

KC: We have no plans on open sourcing the server piece (since this is where the e-commerce lives for the commercial software, etc.), but because CNR uses APT, anyone can easily set up a Debian repository server and use the CNR client if they wished to talk to that server using CNR. Our website and servers are an important part of our business, just like I’m sure Amazon’s, Google’s, eBay, and Yahoo’s are for theirs.

**TM: I am sure your company will prosper for many years. However, this does mean that if anything goes wrong, your users won’t be able to access the repositories anymore. How do you address this problem?**

KC: We are no different than if “something went wrong” and the Debian repository servers went down. The repositories themselves, for the open source software, can easily be mirrored by anyone. In fact, CNR has a tool built in (called CNR Express) to do just that. We have many Linspire users who keep most of the software they ever use from our Warehouse on their local network drive, this way when they use CNR it rarely even hits our servers but pulls everything from a local drive or network.

**TM: Point taken! However, since the server is not free, all that would be lost is the extra information (voting, screenshots, etc.). Is that correct?**

KC: That would be like saying if eBay’s servers went down, all that would be lost are the photos of items that were for sale. I think we can agree there is a lot more to the eBay, Google or Yahoo servers than housing content or files. As I said, there are a lot of features to the CNR service Linspire provides. Providing that service is how we stay in business, just like cooking hamburgers is how McDonald's stays in business. Certainly some parts of the CNR Service can be replaced with apt-get or manual means, but that would take effort on someone’s part to go to that bother. We make money from the CNR service, it’s how we pay our full-time employees. If someone is worried about Linspire not being around, they shouldn’t use the CNR service, just like they shouldn’t use the service of a web provider, email provider, photo hosting, wiki hosting, and so on, if they don’t have confidence that provider will be around or they’re not willing to take the risk of them going away. When I pay someone to watch my dog if I leave town, I have to trust that they’re going to be there with my dog, when I get back in town. If I don’t have that level of trust, I shouldn’t trust them with my dog, and either find someone else, or stay home and watch the dog myself.

**TM: I understand that CNR client is one of the main players here. You said that you would release it under a free license. Will that be an OSI approved license?**

KC: Most likely. I see no reason why it shouldn’t be. The final decision of exactly which license we’ll be using hasn’t been made yet, largely just because we’ve been busy with other matters, and we don’t need to have this until the Freespire software is released in August.


<!--pagebreak-->


**TM: Recently, you’ve launched “Freespire”. You’ve mentioned it already, but please tell our readers what Freespire is exactly, in a few sentences? Is it true that it’s a project that started “by accident”? (I am referring to the fact that the project was originally started by Andrew Betts).**

KC: The Freespire project started two years ago, [long before the Andrew Betts project](http://freespire.org/support/faqs#start). Freespire is the community version of Linspire. What makes Freespire unique is that there will be two versions of Freespire available for download, one that uses only free/open source software, and one that, while still free to download, also incorporates proprietary codes, drivers and software. Most of the interest, as expected, is around this second version, since it will provide support for MP3, Windows Media, QuickTime, Java, Flash, DVD, ATI and nVidia drivers, Bitstream fonts, and so on. A great place to start to learn more about Freespire is [here](http://freespire.org/support/faqs). Also, in my [blog on May 11](http://www.linspire.com/linspire_letter_archives.php?id=28), I discussed why it’s actually a good thing for free software to offer such a “hybrid” version of a GNU/Linux OS.

**TM: What do you mean exactly when you say that Freespire will be a community effort _in practice_? What numbers are we talking about when dealing with Freespire? Are you trying to establish a community right now, or is there a community already in place?**

KC: We only launched the Freespire website a few weeks ago where people can [join the community](http://freespire.org/community). So far we have just over 5,000 who have joined the community and are now participating on the discussion lists and/or forums. Not a bad start, considering we haven’t released the first version of the Freespire operating system yet. We intentionally wanted to start with organizing the community _before_ releasing any code, so that the community could be involved with things like the Vision Statement, selecting leaders, creating the community standards, building out the Freespire Wiki, the Roadmap, and so on. If you visit the Freespire forums, you can observe all of that work in process.

**TM: The non-free “Freespire” sounds an awful lot like Linspire! What are the differences between Linspire and the non-free version of Freespire, exactly?**

KC: Here I’d refer you to some very good FAQs on this topic on the Freespire website:


* [FAQ](http://freespire.org/support/faqs#different)
* [Slide show](http://freespire.org/about/slideshow?slide_show_page=7)
* [More FAQs](http://freespire.org/support/faqs)

**TM: In the second link above, I see for example “Customized & Enhanced Applications” as an advantage of Linspire compared to Freespire. Can you give me an example?**

KC: Firefox and Thunderbird are good examples, where we make dozens of changes to these two programs for Freespire. For example, when I make a forum post using the Linspire/Freespire version of Firefox, it corrects my spelling on the fly, in-line, and offers suggestions (as shown in figure 4). In Thunderbird, I can use a feature called “MailMinder” to forward emails to myself for redelivery on a specified date (as shown in figure 5). All our changes are given back, and we try to get them put in the upstream, but sometimes the projects are slow to include or adopt our changes. (I do believe Firefox has accepted our changes for in-line spell checking, so hopefully we’ll see that in the Firefox core soon.) We don’t like having to do all the patching we do, so we certainly prefer they accept our changes upstream, as that saves us from having to keep applying our patches. Even at that, we still always seem to end up with hundreds of patches we apply to the applications we use. Anyone who has ever run Linspire knows we are very different in this way. This is even true for software in the CNR Warehouse, where GIMP will look and behave differently for Linspire users than other GIMP users. We make our GIMP behave more like Photoshop, and I wish GIMP would do this on their own, but they have their own belief in how they want things to be. I respect that, but it does mean we do make a lot of changes to things.


=IMAGE=mailminder_ss2.jpg=Figure 3: Mail minder in Thunderbird=


=IMAGE=in-line-spell-check.jpg=Figure 4: Inline spell checking in Firefox=

**TM: Now, let’s talk about non-free drivers. How “radicated” in the system are they in the non-free version of Freespire? Are they just a set of extra packages, that can be installed later?**

KC: The user can decide. They can either start with the 100% open source version of Freespire and pick and choose which packages to add, or they can use the “hybrid” version where the proprietary software is integrated in, by design, to make for a cleaner out-of-the-box experience. For example, that version uses some proprietary Wi-Fi and modem drivers. It’s hard to download these if you can’t get on the internet to begin with, so they need to be integrated for use during installation.

**TM: Correct me if I am wrong then... there will be _one_ Freespire CD, and the user will be able to choose between installing only free software packages, or installing the extra non-free or licensed packages. Is that correct?**

KC: No, there are two different CDs, and the user chooses which .iso file to download. We conducted a survey recently on the Freespire forums and about 85% of the respondents said they plan on using the “hybrid” version. I should point out that both of these CDs do include the option of either installing Freespire to a partition on the computer’s hard drive or running it “live” from the CD. I’m sure many will try both CDs, perhaps out of curiosity just to see how great or small the difference is between the two. 

**TM: So, let me get it straight: in the “hybrid” version, a number of non-free packages will be added. And, in the free version, those packages will still be available “for later installation”. Is that correct?**

KC: Correct.

**TM: Will it work similarly to Novell, where non-free stuff will be clearly marked, and warn the user that they are about to install materials that are not open source and not free software and thus can’t be monitored? I am asking because quite a few people out there (in fact, I’d be one of them!) would be worried about having non-free applications (or even drivers) which could do unwanted things to my computer—things which would benefit the program’s creator rather than me.**

KC: Yes, we will always share the licensing information with software in the CNR Warehouse, and designate the difference between free software and proprietary.

**TM: One of the main reasons I see people get away from Microsoft (both the program and the platform) is because of privacy concerns. Switching to GNU/Linux means switching to a platform where everything is “out in the open”, and no spying is possible. Don’t you think that having a GNU/Linux version that installs non-free software defeats the purpose?**

KC: It’s a simple matter of trust. If someone thinks Adobe, nVidia, ATI, Apple, and so on are putting things in their closed-sourced software, then they shouldn’t use it. Without trust, no one would let a doctor put them under to operate on them, or allow a babysitter to watch their children, or let a mechanic work on their car, or let a restaurant cook a meal for them, or... you get the idea. Everyday we turn over important things to people we trust. Money to our banker. Our hair to the barber. The proprietary drivers we’re including are to get your video card to work, or an MP3 to play. We’re not using proprietary software for your web browser, network control, firewall or file manager. I’d say having a computer that doesn’t work defeats the purpose of having a computer.


<!--pagebreak-->



=IMAGE=cnr_warehouse_1280.jpg=Figure 5: CNR Warehouse=

**TM: What efforts are you making to encourage companies to provide open drivers, codecs and applications instead? I am asking because some of our authors are concerned about the fact that a fully functional GNU/Linux version (that is, with all the drivers, codecs etc.) would actually work against you, and therefore you would be at least tempted to go the other way...**

KC: The efforts we’re making are twofold: 1) We know all the people at these companies, and we are always complaining to them about their closed drivers and software. We tell them if they would make the code available, _we_ could help them get things working better. Some have actually listened and done just that. Do you think we _like_ having to fix this stuff and try to make it work without the code? No one dislikes it more than we do! 2) By making Linux more accessible to more people, we’re helping expand the influence of Linux. How many people are going to run Linux if you have to say to them, “This stuff is really great, and you should toss Windows, and use free software. Oh, but...you can’t watch DVDs, enjoy your iPod or use the latest nVidia graphic cards”. I don’t have one friend who would do that. Sure the people reading this right now might do that, but the other 99% of the world won’t. They want their DVD, Flash, iPod, QuickTime, nVidia drivers, and so on. If Linux can’t work the way they want their computer to work, they will just keep using Windows.

If you want to exercise some control over the closed-sourced vendors, get 20 million people running desktop Linux, so they have to start paying more attention. Just recently we were having problems with a proprietary modem driver, but because we were working with a very large OEM, that OEM called them up and put pressure on them. “If you want us to buy your modems, you’ll work with Linspire and fix this problem.” The modem company immediately worked with us to fix the problem, not just for us, but for all Linux vendors. Without Linspire working as well as it does (by supporting DVD, MP3, etc.), that OEM would not have been considering Linux and he would not have called that modem manufacturer, and Linux wouldn’t have support for that line of modems today.

**TM: Will the non-free version of Freespire be available for free to anybody?**

KC: Yes, both versions of Freespire are available at no charge to anyone, and always will be.

**TM: Does that mean that you asked for permission to every single provider of non-free technologies/codecs/etc.?**

KC: Linspire has secured all the necessary licensing and pays for all the costs associated for us to distribute Freespire. Things like MP3 and Windows Media cost money, but Linspire covers those costs. We will provide a page on the Freespire website where those wishing to redistribute Freespire can fully understand what licensing, costs, etc. are involved, should users wish to modify and redistribute Freespire with any or all of the proprietary software.

**TM: This means that if I wanted to redistribute Freespire including the non-free components, I would have to pay you or the owner of such technologies a fee. Is that correct?**

KC: We only include licensed product which allows for the redistribution of the Freespire CD without any cost from the person redistributing it, _if_ they simply copy the CD and don’t change anything. This is why we do not include DVD licensing on the Freespire install CD, but it must be installed using CNR, because the DVD licensing doesn’t allow for copying and redistribution. So, in other words, if someone wants to download either Freespire CD, make copies, and redistribute those copies, they can do so as much and often as they wish. However, if they are going to make changes, then it is no longer “Freespire” and our licensing may no longer apply and that person may need to secure their own licensing. This is why we put all the licensing information on the website, so people will know what they can and can’t do.

**TM: Have you seen Arjan van de Ven’s [email](http://www.ussg.iu.edu/hypermail/linux/kernel/0512.0/0972.html)? Do you think he has a point? If so, how do you think Linspire should address it?**

KC: I don’t usually spend much time hypothesizing over things that start with “...the primary assumption in this scenario is obviously not going to happen...” :-)

He’s right. That’s not going to happen. It hasn’t even happened with Freespire (and why we offer a 100% free OSS version), let alone the Kernel. 

**TM: I think what Arjan means with “it’s not going to happen” is that “Linux kernel developers tomorrow accept that binary modules are OK and are essential for the progress of Linux”. While the primary assumption is not going to happen with the Linux kernel, it seems to be happening with Linspire! I guess what he’s saying is: what if Freespire without the “extra stuff” is absolutely, utterly useless? Some feel that Linspire cares more about selling its products, than making sure that a completely free system is actually usable. And I guess people’s fear is: if that did become the case (and it’s very possible that it does), what will guarantee Linux users that Linspire doesn’t start behaving like Microsoft?**

KC: If someone is worried about that, they should stick with 100% free software, be that the Freespire, Debian, Ubuntu, and so on.

**TM: Some say that there are reasons to worry about this. For example, some members worry about your choice in asking Rob Enderle to be your keynote speaker at the Desktop Linux Summit; I must admit I personally feel a little uneasy to Rob Enderle, ever since I read [an article](http://www.technewsworld.com/story/32154.html) he wrote a while ago. In general, Rob has publicly taken a stand against Linux on the desktop, has said “only losers use Linux”, and supported the SCO Group in its litigation. Why did you invite him? You were quoted right after his speech about Linux and the OEM as saying you agreed with him 90%. Can you elaborate?**


<!--pagebreak-->


KC: Did you [listen to his speech](http://desktoplinuxsummit.com/videos2006.php#renderle)? Was it _all_ a lie? Ninety percent (the part I agreed with) was simply stating the exact same thing I’ve learned trying to convince Dell and others to consider Linux on the desktop. Rob simply stated the obvious ... Linux is _not_ being used on the desktop in any large scale way ... yet. He then went on to make constructive suggestions of how Linux _could_ be adopted. He was there to be honest, and constructive. (For the record, *I* didn’t invite him—someone in the DLS steering group did. He even paid his own way to be at the show.) But I have no problem that he was there, and why? Because I believe in freedom of speech and expression and open debate. I find it very hypocritical of anyone to say they believe in “free” software, but then try to stifle free expression. I may not agree with what someone says, but I will always defend their right to say it. My email address is widely publicized (kevinc at linspire dot com). I’m available anytime, anyplace, to hear _any_ perspective about desktop Linux. I don’t believe in burying my head in the sand and only listening to people with nice things to say about me.

Suppose Dell had offered to come speak at DLS, and they told us beforehand, “We want to come tell you all the reasons why Dell is not shipping Linux on any of our desktop computers”. Should we have turned them down because they’re going to have constructive criticism about free software? Or should we have invited them, opened our ears, and learned from them? I am the type to do the latter. For obvious reasons, Dell wouldn’t publicly come to something like DLS and “tell it like it is”, but if they did, and they were being totally honest with us, guess what their presentation would have been a lot like? Rob’s.

**TM: Ubuntu Linux seems to have very similar aims as Linspire. Also, Ubuntu Linux + EasyUbuntu seem to cover a lot of the ground covered by the non-free version of Linspire (as far as browser plugin, MP3, etc.). Do you see Ubuntu as one of your main competitors?**

KC: Linspire only has one competitor that matters: Microsoft. Even if every person in the world today who is running Linux full time on their desktop or laptop computer suddenly switched to Linspire or Freespire, it wouldn’t be enough to have a very successful business. If Linux never cracks open Microsoft’s monopoly on the desktop, then the desktop Linux business may be fun and interesting, but it will be a rather small business. The “OS” itself is just a small part of the story to compete with Microsoft. You need marketing, a sales force, advertising, OEMs, retailers, ISVs, developers, support, hardware certification, training, and on and on, to succeed at competing with Microsoft. When I wake up each morning, I’m not thinking about Ubuntu, Red Hat or Novell, because that’s not who is winning the desktop OS competition. It’s Microsoft I think about. What are _they_ doing, and how can Linspire do it better?

**TM: Linspire started as “Lindows”, and you were sued by Microsoft over the name. Microsoft was about to lose their case; if that had happened, they would have lost the Windows trademark! Some members of the free software community were heavily disappointed, and even frustrated, by your decision to settle with Microsoft “behind closed doors”. Why did you decide to do that? Do you still think it was the right decision? Do you ever wonder if Microsoft wants you to be their competitor, in order to diminish the value of free software, free codecs and the GPL?**

KC: I can’t comment on the settlement, but I can say I have no regrets at all. There was no guarantee as to the outcome, but because of our choice, we are here today, still at it, and we have invested over US$35M into advancing desktop Linux. Had we made a different choice, we may very well no longer be here.

**TM: Linspire has stirred some controversy because of its non-free nature. However, your company has contributed quite a lot to GPL software and the Linux kernel...**

KC: Because Linspire’s focus has been building products and services for the non-technical consumer via the pre-installed OEM channel, many in the traditional Linux community don’t know much about Linspire, or what they do know is quite inaccurate. It may surprise some to know that we have over 350 OEM’s, from HP down, who today offer desktop computers with Linspire pre-installed. Both online and off-line retailers such as Fry’s, Micro Center, Wal-Mart, Sears, Target, Amazon, and others now sell Linspire Linux computers. Linspire has invested over US$35M to date into GNU/Linux and free software (see [www.linspire.com/opensource](http://linspire.com/opensource) for a list of some of our projects like Nvu, Reiser FS, Mozilla/Firefox, etc.)

Pretty much everything we do is open source and contributed back. I’m not aware of any company, from Red Hat on down, who has invested more into the development _and_ deployment of _desktop_ Linux to the masses. Linspire has one of the strongest communities and active forums, with tens of thousands of new Linspire users every month, most who had perhaps never even heard of GNU/Linux, open source, or free software. I personally have thousands of forum posts in our community. This is why I’m excited to see Freespire, a product that _is_ for the traditional Linux devotee. I think Freespire will surprise a lot of people, both from a technical perspective as well as our contributions to free software.

**TM: Well, thank you again Kevin for allowing me to interview you. I think you have given our readers some food for thought.**

