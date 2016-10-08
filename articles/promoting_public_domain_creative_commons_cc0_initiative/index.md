---
nid: '2721'
title: 'Promoting the Public Domain with Creative Commons'' CC0 Initiative'
authors: 'Terry Hancock'
published: '2008-02-25 19:21:45'
tags: 'creative-commons,science,public-domain,cc0'
license: verbatim_only
section: opinions
listed: 'true'

---
It used to be that you could safely assume a work was public domain unless there was a highly visible warning printed on it, containing both the copyright owner and the date of copyright (at least in the USA). This system also ensured that, when the work's copyright expired, you could tell from any copy that this was so—by simply adding the duration of copyright to the date printed in the work's copyright notice. The Berne Convention, however, changed all that by replacing the assumption of freedom with the assumption of monopoly, and it now takes extensive research to be sure a work is public domain.

The Creative Commons' new CC-Zero initiative, instigated largely as an adjunct to the Science Commons' "Protocol for Implementing Open Access Data" is designed to make things easier.

<!--break-->

# Open Access, Databases, and the Public Domain

Scientists have valued sharing data for many, many years. In fact, many of the early ideas in the free culture movement were just attempts to port the already-existing academic culture of sharing knowledge into other areas of life. But even in academia, there are obstacles. Journals are in a conflict of interest, for example, since they make their money by selling access to scientific data (even though, ostensibly, their mission is to make this data as widely available as possible).  In many fields, particular scientific journals have effective monopolies on the dissemination of knowledge in their fields, so if they decide not to play along, then that field will suffer.

=IMAGE=c20080220_LOCPD_ww2_woman_operating_engine_lathe.jpg=There's a lot of interesting stuff in the public domain, such as this iconic World War II image released recently as part of a Library of Congress upload to Flickr of over 3000 public domain works. CC0 will make tagging works like this easier, in turn making them easier to find and use.=

=ZOOM=It used to be that you could safely assume a work was public domain unless there was a highly visible warning printed on it=

Fortunately, the fields and the journals that serve them are by and large run by scientists. So when a large group of scientists gets behind the idea that the information needs to be more open, not less, in the era of internet communications and massive database-driven science, things begin to happen. In the last few years, that is precisely what has been happening in science within the new "Open Access" movement, which hopes to make most scientific data generally available under the most permissive licenses possible.

=IMAGE=c20080220_cc0_waiver_deed.jpg=The new "CC0 Waiver" is essentially a replacement for Creative Commons' old "Public Domain Dedication". It provides a way for authors to assign their works either public domain status, or put it under a license as near to public domain as the law allows.=

Recently, the [Science Commons](http://www.sciencecommons.org/), which had hitherto promoted existing Creative Commons licenses for many of these purposes, has moved towards committing works to the public domain and has been developing a collection of best practices for doing it. That has evolved into the Science Commons' new [Protocol for Implementing Open Access Data](http://sciencecommons.org/projects/publishing/open-access-data-protocol/). Although they are not the only methods available, the Creative Commons' CC0 "waiver" and "assertion" documents have been developed with this protocol in mind.

=IMAGE=c20080220_science_commons_index.jpg=One of the chief supporters of the new public domain initiatives is the Science Commons, which needs such tools to mark online scientific databases as part of its "Protocol for Implementing Open Access Data".=

As for Science Commons' motivations in making this move, they cite both problems with copyleft- and even attribution- license compatibility and also the large body of already public domain works which need to merely be asserted are public domain, rather than be licensed. Furthermore, applying copyright-based licenses to database and other "factual" materials, which may not be copyrightable in the first place, creates false expectations.

# What's wrong with the old Public Domain Dedication?

Of course, the Creative Commons has for some time managed a system for dedicating works to the Public Domain. Ths system appears to be viable under US law, but is very distinct from the Creative Commons other licenses, because it is _not_ a license at all.

Also, I say it "appears" to be viable under US law, because although there's now a fair amount of precedent, there's actually little legal basis for authors to _assign_ their works to the public domain. After all, until US copyright law was "reformed" to comply with the [Berne Convention](http://en.wikipedia.org/wiki/Berne_Convention_for_the_Protection_of_Literary_and_Artistic_Works), public domain was the _default_. All you had to do for a work to be public domain was to _not seek copyright_ on it (not label it as copyrighted, not register it with the Library of Congress, etc).

=IMAGE=c20080220_LOCPD_1910_amateur_wireless.jpg=Another public domain image from the Library of Congress collection, this time, circa 1910. This shows a very early amateur radio set.=

In other countries, the situation may even be worse, since some "author's rights" are regarded as "inalienable" under some legal systems. You can't give away those rights, even if you want to.

=ZOOM=Some "author's rights" are regarded as "inalienable" under some legal systems=

As such, it has long been considered better practice in the free licensing community to use extremely permissive _licenses_ rather than attempting to assert that your work is "public domain".

The Creative Commons CC0 documents are a move in that direction. Although not strictly "licenses", these documents are designed to be used alongside licenses, and may be interpreted as license documents in those jurisdictions where such an approach is necessary. 

# Assertions and Waivers

Another problem with the Public Domain Dedication is that it is only meaningful for works you own the copyright on. The system was not particularly useful for merely _indicating_ that a work is _already_ in the public domain. There is a large body of still-useful works which are in the public domain for statutory reasons—either because they were simply published long enough ago so that their copyrights have expired or because they were not considered copyrightable, such as federal government works in the United States, which by US law are not allowed copyright protection.

=IMAGE=c20080220_cc0_assertion_deed.jpg=The "CC0 Assertion" is a legal instrument not for placing a work in the public domain, but for assuring viewers that you have done a reasonable search to prove that the work is already in the public domain. This is the appropriate document for the Library of Congress examples I've shown, for example.=

So, a second reason for CC0 is this need to distinguish these two important tasks: _assignment_ of public domain (or public-domain-like) status and _assertion_ that such status already exists. CC0 calls the former case the "CC0 Waiver" while the latter is the "CC0 Assertion".

# Metadata and Marketing

As with all of its licenses, Creative Commons will be providing button graphics, commons "deeds", and "legal code", and machine-readable RDF tagging for CC0 waivers and assertions. Here's the button code a finished CC license chooser might provide for a CC0 waiver (example taken from the [CC Wiki](http://wiki.creativecommons.org/CCZero_Technical_Overview) / [CC-By-3.0](http://creativecommons.org/licenses/by/3.0/)):

=CODE_START=
<p xmlns:cc="http://creativecommons.org/ns#"
        xmlns:dc="http://purl.org/dc/elements/1.1/" 
        about="http://example.org/~auser/brilliance" 
        rel="cc:licenseOffer">
<a rel="license"
   href="http://labs.creativecommons.org/licenses/zero-waive/1.0/us/" 
   style="text-decoration:none;">
   <img src="http://labs.creativecommons.org/zero/images/88x31/cc-zero.png" 
        border="0" alt="CC0" /></a>
<br/>To the extent possible under law, 
    <a rel="cc:waivedBy" href="http://example.com/~auser">
    <span about="http://example.com/~auser" property="dc:title">A. User</span></a>
    has 
    <a rel="license"
        href="http://labs.creativecommons.org/licenses/zero-waive/1.0/us/">waived</a>
    all copyright, moral rights, database rights, and any other rights that
    might be asserted over 
    <a href="http://example.org/~auser/brilliance">
    <span about="http://example.org/~auser/brilliance" property="dc:title">Brilliance
    Described</span></a>.
</p>
=CODE_END=

So, CC0 can be seen as an attempt to normalize Creative Commons' approach to the public domain, lining it up with its other licenses in a simpler-to-understand way.

=IMAGE=c20080220_cc0_w_norm_buttons.jpg=Button graphics for CC0. The button on the right is an optional Science Commons "norms" button design (Creative Commons / CC-By 3.0, subject to trademark protection).=

For science users, the CC0 deeds will implement a new "norms" module. This reminds users that although there may be no legal obligations in the work, there may be ethical obligations. For example, in the sciences it would be regarded as unethical not to provide a proper citation for a work, even if there is no legal "attribution" requirement.

=IMAGE=c20080220_cc0_waiver_w_norms_deed.jpg=For the benefit of science users, the new deeds also have an option to note "community norms" as well as legal requirements. This one notes that scientific papers should correctly cite works, even when there is no legal attribution requirement.=

Furthermore, the RDF code that CC will publish for CC Zero makes it possible for search engines and clients which already have extended features for CC content to extend those features to public domain works marked with CC0 assertions or waivers. This will be a boost for projects like [Appropedia](http://www.appropedia.org/Welcome_to_Appropedia)'s [Public Domain Search](http://www.appropedia.org/Appropedia%27s_Public_Domain_Search).

=ZOOM=The RDF code that CC will publish for CC Zero makes it possible for search engines and clients which already have extended features for CC content to extend those features to public domain works=

# Coming soon

The CC Zero modules are not quite ready for prime time. Creative Commons is still actively working on the legal text, and only recently decided to split the module into the two distinct "Waiver" and "Assertion" documents. However, there are a number of science users who are committed to using the protocol as soon as it is ready, and as I hope my Library of Congress examples have shown, there are valuable applications in the humanities as well.


