---
nid: '1176'
title: 'Free software and digital rights management'
authors: 'Chris Karr'
published: '2005-08-02 11:01:23'
issue: issue_06
license: gfdl
section: opinions
listed: 'true'

---
In recent years, digital rights management technology (DRM) has become an important issue to free software users and developers. Free software users first experienced this issue when they discovered that they were unable to legally play their DVD discs on their Linux and BSD computers. In recent months, users carefully observed a technological arms race between Apple Computer and hackers working to circumvent the FairPlay system used to protect digital files purchased from Apple’s iTunes Music Store. Finally, when Tivo released its TivoToGo show-sharing technology a few months ago, eager Tivo users discovered that their files were not usable on non-Windows platforms.


=ZOOM=In recent months, users carefully observed a technological arms race between Apple Computer and hackers working to circumvent the FairPlay system=

DRM is the content industry’s response to the additional power that digital playback and distribution technology has granted consumers. In an environment where digital files can be perfectly duplicated in seconds, DRM attempts to disrupt that power by preventing users from modifying and distributing content without the permission of that content’s producer. Content producers presently find themselves in an odd situation. Digital technologies have the potential to revolutionize their business by allowing them to directly market and distribute content to their customers. On the other hand, the same power that producers have to streamline their operations also allows unscrupulous users to likewise disrupt that business and act as distributors in the producers’ stead. Because of this, content producers have been hesitant to fully embrace networked digital technologies. Rather than risk the possibility that their media may escape their exclusive control, content producers choose to forgo the benefits of online distribution and retain their less efficient traditional business models.


=IMAGE=playforsure.jpg=A graphic from Microsoft’s “Play for Sure” campaign for the Windows Media platform=

Since DRM systems strive to be a vertical stack of software components that guard media from production to consumption, complete DRM systems tend to be monolithic collections of technology developed and controlled by single vendors. Microsoft backs the Windows Media platform for audio and video. Apple uses a system called FairPlay to encode tracks distributed from its iTunes Music Store. Real Networks attempted to deploy a system called Harmony that was compatible with Real content. Because these systems are constantly under attack by users wishing to strip the DRM from content, these companies have chosen to keep the systems proprietary and the sources closed. Keeping the source closed adds another layer of obscurity that DRM hackers must overcome in order to compromise the system.

While the details of implementing a robust DRM system are best left to network and security gurus, consider the hypothetical situation where a robust free software DRM platform exists. Would free software DRM provide the means for free software media applications to participate in the content production and distribution processes? Could a free software DRM platform break the hold of proprietary closed source DRM platforms? Would content producers and consumers embrace a free solution? Or would a free software DRM platform be an unacceptable ideological compromise that would do little to advance free software’s pragmatic goals?


# The players in the rights management game

There are three main actors in any rights management scenario. Media consumers create a demand for content, which content producers likewise attempt to supply. The content producers create a demand for rights management software, which DRM vendors attempt to supply. While the consumers are negatively impacted by DRM, the producers choose to impose DRM upon consumers as an additional cost of obtaining content via electronic means.

Both producers of commercial content and rights management technology have one overriding goal: to exploit to the fullest extent possible their content and technology. Their goal is to maximize profits. For content producers, this is achieved by finding the right balance between their desire to charge high prices and the consumers’ desire to purchase at low prices. Selling content to ten people paying five dollars each is more desirable than selling only two copies for twenty-dollars each. Conversely, selling to forty people for one dollar a copy is worse than selling to ten customers for five dollars each. Since production costs are fixed and independent of the size of the market, and distribution costs are negligible, content producers will search for the “sweet spot” where the supply and demand curves intersect.


=ZOOM=Both producers of commercial content and rights management technology have one overriding goal: to exploit to the fullest extent possible their content and technology=

Rights management technology vendors play a different game. Real, Microsoft, and Apple are all battling to produce a standard and widely adopted DRM platform. If one company’s system fails to gain wide acceptance, content producers and device manufacturers will opt to license the competitors’ more popular systems. This market is strongly affected by positive feedback loops and tipping points – a more popular system will be adopted by more device manufacturers and software developers, which will encourage more content producers to use the popular system, and so on. The spoils of this fight are significant. If one company can gain dominance over the others, it will leverage that success with its DRM platform to become dominant in the other areas of the media industry – production, distribution, and playback.

Finally, consumers are the final actors in the rights management scenario. An ideal outcome for consumers is that there is no DRM at all. Consumers would be free to use the content as they see fit. However, producers are not willing to provide this freedom as it negatively impacts their ability to sell more content. While the record industry is rightfully derided when it provides inflated numbers of decreasing sales due to peer-to-peer technology, some sales are undoubtedly lost to free downloading. Furthermore, when consumers indiscriminately share content in violation of copyright laws, a social effect emerges where people become accustomed to not paying for content. While there is a larger discussion to be had about adapting media business models to reflect modern realities, producers’ current refusal to release unencumbered content is perfectly rational.


# Rights management and free software

The problems for free software that modern DRM platforms introduce are that proprietary systems are closed source and it is impossible for free software users to obtain and legally play protected media using free applications. Microsoft’s DRM platform is limited to the Windows operating systems and the devices that license Microsoft’s media technology. Apple’s FairPlay technology is limited to the iTunes media player and the iPod portable device. Since none of these applications are made available on free software platforms, free software users are in same position as they with respect to DVD content seven years ago – unable to play their purchased content. While it is possible to play some of these files on free software platforms, the user has to circumvent the DRM and likely violate copyright law.

Since this situation does not serve the interests of software users and developers, does it make sense for the free software community to introduce an open DRM platform of their own? Can a free software DRM platform be used to advance free software projects and principles?

Making the simple assumption that it is possible to create a strong free software DRM platform, how would such a system impact the current struggle between users, content producers, and DRM vendors? Let’s presume that this hypothetical free software DRM platform has the following traits:


<!--pagebreak-->



1. The rights enforcement would be strong and secure enough to inspire confidence among the content producers. Producers would be comfortable releasing media to all users under such a system.
1. The platform would be freely available to all interested developers. Developers wishing to create compatible software would not be required to pay a fee or license any technology.
1. The platform would be available on free and non-free platforms, including portable devices.
1. The platform would be flexible enough to accommodate different locales’ individual copyright laws.

If such a system existed, would it be a compelling alternative to existing proprietary rights management packages?


=IMAGE=tivo.jpg=A screenshot from Tivo’s Windows-only beta client=

Current DRM vendors stand to lose the most with the introduction of a free DRM platform. The availability of an open platform is an enticing offer for content producers and consumers worried about single-vendor lock-in. If content producers release materials with this free system, there will be additional pressure on software vendors and device manufacturers to include support for the free format. Since the cost of including this technology is limited to implementation and doesn’t include any licensing fees, software and device vendors won’t worry about their business being held hostage by a single software vendor.


=ZOOM=Would a free software DRM system be a compelling alternative to proprietary DRM packages?=

Consumers gain the most with an introduction of a free DRM platform. Users of traditionally neglected platforms like Linux would finally obtain a measure of parity with Windows and Mac users when dealing with media content. Furthermore, since the code responsible for rights management no longer excludes anyone, creators of applications like media playback and cataloging applications would no longer be shut out of the media marketplace. This would introduce competition and diversity in the media software market.


# “Rights management” versus “rights declaration”

In the discussion so far, the focus has been placed on strong DRM platforms – that is, software platforms that attempt to prevent users from exercising some functionality or other, such as playing protected files on unauthenticated machines. An alternative to a strong DRM platform is a robust rights declaration scheme. In a rights declaration scheme, the software encodes licensing and rights data, but the software does not attempt to limit users from using the content. Rather than encode the rights enforcement in software, a rights declaration scheme uses social pressure and shared values to keep users honest. While a strong DRM platform attempts to be an impenetrable system, a rights declaration scheme acknowledges that it is probably impossible to build a perfect DRM system, and developers’ time is better spent elsewhere.


=IMAGE=hymn.jpg=A snapshot of the Hymn project website. Hymn is Fairplay circumvention software=

There are a number of advantages that rights declaration schemes have over rights management platforms. First of all, by implicitly trusting the media user, rights declarations are simpler to implement than DRM. Rights declaration preserves the notion of fair use, an idea that is anywhere from difficult to impossible to encode in any DRM technology. Furthermore, since the rights declaration encoded media is open and unprotected, its contents can enter the public domain without any outside intervention. Finally, rights declarations help alleviate the problem of orphan works. Since the rights are encoded in the files, it’s simple to determine the proper copyright owner. In a DRM system, if the authority providing the content and authorization disappears, users are often left with useless encrypted bits of data as they replace hardware and software components.


=ZOOM=While a strong DRM platform attempts to be an impenetrable system, a rights declaration scheme acknowledges that it is probably impossible to build a perfect DRM system=

Rights declaration is more in sync with the free software movement’s philosophical goals than any DRM software. A strong DRM system will be required to prohibit users access to parts of their machines. For example, in a strong DRM system, media would be unable to play without using DRM-aware applications. System software like audio drivers would be required to prohibit the user from being able to digitally extract decoded audio. Video drivers would need to be rights-aware in order to prevent a user from capturing still frames and reconstructing a video’s content in an unprotected format. All DRM systems demand hard technical compromises from the users, whereas rights declaration schemes only require new code that is able to display and encode licensing information.


# Does a free software DRM platform make any sense?

In order to answer this question, another question must first be answered: is it better for the free software community to compete with proprietary DRM systems to avoid becoming irrelevant in the media landscape, or should they stay true to their principles and refuse to limit their users rights? If the primary goal of free software is to expand the installed base and to replace existing proprietary systems, a free DRM system makes a lot of sense. The lack of proprietary content on free platforms is a severe competitive disadvantage. Users will not adopt a free software platform where they cannot use their purchased music, videos, or images. If content producers refuse to release accessible versions of their media, users lose when a compatible DRM system is not available.


=ZOOM=Ultimately, free software’s users and developers will answer the question about free software and DRM=

However, if the goal of the free software community is to offer a reasonable and unencumbered alternative to proprietary systems, a decent rights declaration framework would be sufficient to establish an alternative to proprietary media and formats. (This is already happening with the use of open source software licenses and Creative Commons content licenses.) While it is unlikely that Hollywood and the recording industry’s big money makers would participate in such a scheme, plenty of smaller content producers could use unencumbered media to promote their work and market it to a group of users who are underserved by the traditional media industries.

Ultimately, free software’s users and developers will answer the question about free software and DRM. If a demand for mainstream electronic content materializes, content producers and developers should collaborate to bring that content to free platforms. If users and developers of free platforms decide that they are better off without mainstream content and the compromises it brings, the community will continue to embrace, use, and create free media of their own. As more users are empowered by content creation and distribution technologies, a shift from the traditional monolithic model of content creation and distribution to a more distributed grassroots model may render the question moot.

