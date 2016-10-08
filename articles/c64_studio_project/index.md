---
nid: '1225'
title: '64 Studio'
authors: 'Daniel James'
published: '2006-02-22 11:02:52'
issue: issue_10
license: verbatim_only
section: end_users
listed: 'true'

---
Creative computer applications are a niche, and a relatively small one at that. Even brand-leading proprietary software companies like Steinberg, the developers of the long-established Cubase music sequencer, have been recently bought out. Consolidation in the creative application market has seen Adobe buy Syntrillium, who created Cool Edit, Avid buy Digidesign and Apple buy Logic—and there are plenty of other examples. What this means is that a handful of multinational companies could now effectively monopolise the gateway to creative expression, at least as far as computers are concerned. This might not be an issue if it were not for the wide proliferation of powerful, general purpose computer hardware in the first world.

In addition, the internet, and by extension the personal computer, are now the principal channel for distribution of creative works in many fields. Proprietary tools on the creative desktop mean proprietary formats will dominate the internet, now that it is no longer a purely textual medium. The landscape today for “industry standard” creative software on the proprietary platforms looks a bit like this:


=IMAGE=industry-standard.jpg=Not much choice here...=

In case you’ve heard Apple described as the creative alternative or competitor to Microsoft, we should not forget that back in 1997, before the launch of OS X, Microsoft actually invested $150 million dollars in Apple. That’s not something a company usually does with a competitor. More recently, Adobe and Macromedia have announced a partnership, although it’s not yet clear what form that partnership will take. What is clear is that there is less real choice in “industry standard” creative software than ever.

The retail cost of just the software listed here for a single computer runs into thousands of euros. The high cost of entry to this field helps maintain the artificial distinction between consumers and producers. Now of course the software companies who make these programs would say that they represent great value for money, and that educational institutions can benefit from generous discounts. On the first point, it would be fair to mention that as mass access to personal computers has brought the cost of hardware down, the creative applications haven’t followed suit. Quark Xpress was really expensive in 1995 and it still costs a lot today.


=ZOOM=A handful of multinational companies could now effectively monopolise the gateway to creative expression=

To answer the second point, I believe proprietary software in education, even with discounts, represents a hidden subsidy from the state to the manufacturers of this software. If we look at one Adobe educational pack on offer in the UK for example, it appears very reasonably priced at £9.99 per seat. But a school or college needs to buy 200 seats to get that price, i.e. pay nearly two thousand pounds, in order to run feature-limited “Elements” versions of just two applications. What this means is that taxpayers around the world are sending millions of dollars every year to fund proprietary software development, and yet many schools and colleges still can’t afford to put a full set of creative tools in front of each student.

Even if the software was practically free, consider the value to a company like Adobe that every graduate of the creative disciplines around the world leaves college with training in their software—which the company doesn’t contribute to directly at all. Even the potential funding benefits of corporate taxation for education are offset by the fact that most, if not all multinational software companies use offshore accounting.

It’s certainly the case that artists in a number of disciplines are using GNU/Linux and other free software—free in both the economic sense and the political sense—to realise their ambitions. It would also be fair to say that this software is only just starting to penetrate the consciousness of the mainstream. But how can we make it practical for the average computer user?


# The 64-bit question

Since any software project takes a while to get to a mature stage, when I launched a start-up earlier this year, I decided to concentrate on the kind of desktop systems which I believe will be common among creative users in the future. We’ve had native 64-bit Linux on the Alpha and the Itanium for years, but these architectures never reached the mainstream desktop—and I don’t think they ever will. SGI now has an Itanium2 based GNU/Linux desktop product aimed at the creative market, but it costs US$20,000 per machine.

Compared to Windows or any other operating system, GNU/Linux clearly has a head start on x86_64, and you can choose from a number of natively compiled desktop distributions for the platform. Unfortunately for the creative user, all of these are aimed at the general purpose audience. It’s impossible to be all things to all people, and what’s good for the so-called consumer is rarely right for the content creator.


=ZOOM=GNU/Linux clearly has a head start on x86_64=

For example, typical distributions use Arts or ESD to share the sound card between applications, while many GNU/Linux musicians would want to use JACK—admittedly more complex, but far more powerful. (I was asked recently what was so difficult about JACK that means it isn’t found as the primary sound server in any mainstream GNU/Linux distribution. I don’t think it is difficult to use, but for the time being it still requires a patched kernel, and some knowledge of sample rates and buffers. Many users just want to be able to throw audio at any sample rate to the soundcard, and could care less about real-time priority.)

In addition, the creative user’s default selection of applications would be very different to—for example—a sysadmin. Even gigantic distributions like Debian don’t package all of the specialist tools needed for media creation, and the integration between packages is often less than perfect. So the goal of 64 Studio Ltd. is to create a native x86_64 distribution with a selected set of creative tools and as much integration between them as possible.


=IMAGE=64studio-desktop.jpg=The 64 Studio default desktop is a slimmed-down Gnome install=


<!--pagebreak-->



# Why Debian?

Most of the packages in 64 Studio come from the unofficial Pure 64 port of Debian testing, with some from Ubuntu, some from DeMuDi and some custom built. A more obvious choice might be Red Hat, given that many of the high end (which is to say expensive) proprietary tools used in Hollywood studios and elsewhere are sold as binary-only Red Hat packages. However, the split between Red Hat Enterprise and Fedora Core presents serious problems for any derived distribution. You could rebuild Red Hat Enterprise from source as long as you removed all Red Hat trademarks, but that’s a lot of extra work—and you’d have to follow Red Hat’s agenda for its distribution, which you couldn’t have any input to.

On the other hand, you could build a distribution on top of Fedora Core. It’s broadly Red Hat compatible, and there are the beginnings of a community process taking place—although it’s still far more centrally controlled than genuine grass-roots distributions. The key problem with this approach is that Fedora Core is not designed or built to actually be used. I can say this with some confidence because I was able to ask Michael Tiemann, former Red Hat CTO and now vice president of open source, this question myself. Fedora Core remains a technology preview for Red Hat Enterprise, and the Fedora Project has absolutely no commitment to stability or usability. If Red Hat wants to try a major update to see what breaks, it can.


=ZOOM=The work of the Debian Pure 64 port team is of a very high quality=

Debian does have a commitment to stability, and a bona-fide community process. There are other reasons for favouring Debian over Red Hat: apt-get is just better than rpm when it comes to upgrades, and on the creative desktop we’ll be upgrading continuously. The work of the Debian Pure 64 port team is of a very high quality, not to mention that of all the many Debian package maintainers.

I recognise that whatever packages we put into 64 Studio, users will want some of the packages that we haven’t included—so being able to use thousands of binaries straight from the Pure 64 port without modification would be a major advantage. Because we’re sticking very closely to Debian with the 64 Studio design, it’s our intention that users will be able to install any application from Pure 64 simply by enabling an additional apt source. This will include most of the well-known applications with the exception of OpenOffice.org, which just won’t build natively on x86_64 yet.

In fact, 64 Studio is not so much a distribution based on Debian as a Debian remix. 64 Studio maintainer Free Ekanayaka is a Debian Developer, so we hope to contribute our improvements back directly—where they are Debian Free Software Guidelines compliant. However, we do benefit from the flexibility of not being an official part of Debian. For example, the Debian project has decided that they do not want to package binary audio interface firmware, which is required to be loaded by the driver for the interface to work. That’s fair enough, and I understand the reasons for their decision, but it’s a major pain if you own that kind of interface, because it won’t work out of the box.


# The alpha releases

There are a number of challenges we still have to face. The first is following the rapid pace of kernel development. We are currently using Linux 2.6.13 with Ingo Molnar’s real-time preemption code and a few other patches. Not so long ago, these patches didn’t build on x86_64 at all, and as far as I know, we are the only native 64-bit distribution using them. The first indications are that this combination works really well for audio with full preemption enabled, the most aggressive setting. For the time being we are using the realtime-lsm framework to give real-time priorities to non-root users, because we know it works. We may switch to rlimits in the future, as this has been merged into the mainline kernel now.


=IMAGE=64studio-jack.jpg=JACK running with realtime priority on a native x86_64 desktop=

Another challenge is the issue of support for proprietary formats within free software. At the level of encoding and decoding, we think the best solution we’ve seen is the Fluendo plugin collection for GStreamer, which as far as we can tell meets the requirements of free software licences regarding linking, and also the legal requirements of the patent holders. It’s simply not sustainable to expect users to locate and download libraries of dubious legal status, and install these by themselves. Apart from any ethical problems, it’s impossible to support users properly in that situation. Downloading these libraries is certainly out of the question for any institutional user, such as a college.


=ZOOM=It’s almost a mantra that “everyone mixes in ProTools”=

At the level of project interchange, for example moving a complex project from Ardour to ProTools, there does seem to be a move among proprietary applications towards support for AAF, the Advanced Authoring Format. Free software must support this kind of high-level project compatibility format, otherwise it doesn’t stand a chance of gaining a significant user base. When I talk to people in the music industry, it’s almost a mantra that “everyone mixes in ProTools”. I’m not aware of any free software audio application that supports ProTools format import or export, but at least with AAF we have the chance of finding a middle way.

64 Studio version 0.3.0 alpha is currently available for [download](http://www.64studio.com/) as an .iso image. Changes from stock Debian include X.org instead of XFree86, the custom kernel package, and a base selection of packages including the Gimp, Inkscape, Blender, Ardour, Jamin and Kino. Version 0.4.0 came out at the end of September with more packages and enhancements, and the distribution is seamlessly upgradeable from a 0.3.0 install with apt-get of course. We’d be more than pleased to hear your test reports and suggestions for the distribution—you can help us make free software the creative desktop of choice.

