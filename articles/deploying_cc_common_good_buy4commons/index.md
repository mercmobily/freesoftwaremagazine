---
nid: '3026'
title: 'Deploying CC+ for the common good: Buy4Commons'
authors: 'Terry Hancock'
published: '2008-10-20 4:55:12'
tags: 'creative-commons,business-models,funding,cc+'
license: verbatim_only
section: opinions
listed: 'true'
book: making_the_impossible_happen_the_rules_of_free_culture
book_weight: '14'
layout: book.html

---
This year, Creative Commons unveiled a new initiative called "CC+". It is _not_ a license. It's a "protocol", although it's so simple that it almost doesn't warrant the term. Basically it specifies a standardized mechanism to sell further rights for works under Creative Commons licenses. One application of this technology could be to enable "collective patronage" models like the one that brought us the Blender free movies to be extended to a _much_ larger pool of Creative Commons licensed material.

<!--break-->

# The CC+ protocol

The idea behind [CC+ protocol](http://wiki.creativecommons.org/CCPlus) is so simple it almost seems silly to formally publish it. It consists of two basic steps:

* Provide a means to mark a work as under (any) [Creative Commons](http://creativecommons.org) license (you'll note that there are a number of sites that already do this).

* Provide an extra button which links to a site where further rights in the work can be purchased.

That's it. That's "CC+": a CC license _plus_ the ability to buy more rights.

Naturally, there's a recommended RDF code, button graphics, example mock-ups and so forth, as you would expect from a Creative Commons initiative. Follow the [CC+ Protocol](http://wiki.creativecommons.org/CCPlus) link for the specifics. But even so, there's not a whole lot, because it really is _just that simple_.

It's not new of course. [Magnatune](http://magnatune.com/) and [Beat Pick](http://beatpick.com/) have been doing this successfully for a few years now. What's new is that Creative Commons is now promoting this idea as a standard, to be implemented by a lot of Creative Commons friendly websites. Hopefully, we'll be seeing little CC+ boxes on a lot of content sharing websites (I'm personally hoping to see it on [Jamendo](http://www.jamendo.com) and [Flickr](http://flickr.com)).

=ZOOM=Magnatune and Beat Pick have been doing this successfully for a few years now=

There is _one_ extra wrinkle beyond what Magnatune and Beat Pick have been doing, and that is here by virtue of what the protocol does _not_ specify: it doesn't say anything about how the rights-clearing site should work. In fact, the whole idea is to open up a new niche marketplace where different strategies can be tried out—strategies _decoupled_ from the content sharing sites themselves, because the rights clearing can be done by third parties.

Rights-clearing services will compete for the attention of artists who want to use their services. Most will probably make their money by applying small surcharges to the sales, much like [PayPal](http://www.paypal.com) or [e-Bay](http://www.ebay.com).

# Use case number 1: private commercial licenses

Now the use case that Creative Commons _had in mind_ is the one that Magnatune and Beat Pick use: they provide download access to works licensed under one of the Creative Commons "Non-Commercial" licenses. These let you listen to the work and share it with your friends, but you can't use the work "commercially".

Sadly, "commercially" includes a _LOT_ of uses you might not think of as "commercial". For example, just publishing the material on your personal webpage could be considered a violation if you use Google Adsense to offset your hosting costs!

If you are a commercial publisher, though, and you want to use the work (as an advertising jingle for example, or graphics in a proprietary software game), you can buy a _private commercial license_ for the work. That's the normal sort of license you get when you buy a CD at the music store, for example.

=IMAGE=c20081008_cc_plus_private.jpg=In the private licensing use case, CC+ permits the already-demonstrated business model of selling commercial licenses to NC-licensed material=

This is what has already been available on a limited basis, and the CC+ initiative will simply make it more widespread. In itself it _is_ a good thing for "free culture".

=ZOOM=The thing that annoys me personally, though, is that if you use a non-commercially licensed work in a free software project, the result is no longer free!=

The thing that annoys me personally, though, is that if you use a non-commercially licensed work in a free software project (music or graphics in a game, for example), the result is no longer free! This may or may not be allowed at all if you used copylefted components in your software: it depends on how the content elements are integrated with the program. But even if it's legal, it's contrary to the goal of free-licensing your project, because you're held back by the license on the content.

For many people (including me) that's good enough reason to just avoid using non-commercial (CC [By-NC](http://creativecommons.org/licenses/by-nc/3.0), CC [By-NC-ND](http://creativecommons.org/licenses/by-nc-nd/3.0), or CC [By-NC-SA](http://creativecommons.org/licenses/by-nc-sa/3.0)) content.

The private commercial licensing model does nothing to help with this situation.

However, CC+ is not limited to this business model!

# Use case number 2: buying for the commons

There's nothing in the CC+ spec that says that the rights-clearing website cannot provide an option to pay a certain fee to re-license the work under a commons friendly license. For example, there could be an option to pay a certain amount of money for the work to be released under the "Attribution-ShareAlike" (CC [By-SA](http://creativecommons.org/licenses/by-sa/3.0)) or "Attribution-Only" (CC [By](http://creativecommons.org/licenses/by/3.0)) licenses, or even to be released under a [CC0](http://wiki.creativecommons.org/CCZero) public domain assertion.

=ZOOM=There's nothing in the CC+ spec that says that the rights-clearing website cannot provide an option to pay a certain fee to re-license the work under a commons friendly license=

CC+ is an opportunity to implement this, and we should seize it.

The actual fund-raising part can be a separate problem, or it could be included in the rights-clearing service. More than one possible model can be arranged here.

=IMAGE=c20081008_cc_plus_public.jpg=In the Buy4Commons concept, a group of individuals interested in using the material under a free license, raise money to buy rights in the work for everyone (through one of the standard free content licenses)=

#### The Buy4Commons protocol

Okay, this is a kitschy name we coined on the CC community mailing list. I'm not sure the name will stick. But let's look at what it would involve:

* Author (Licensor) publishes material on a content sharing site under any of [By-NC-ND](http://creativecommons.org/licenses/by-nc-nd/3.0), [By-NC-SA](http://creativecommons.org/licenses/by-nc-sa/3.0), [By-ND](http://creativecommons.org/licenses/by-nd/3.0), [By-NC](http://creativecommons.org/licenses/by-nc/3.0), [By-SA](http://creativecommons.org/licenses/by-sa/3.0), or [By](http://creativecommons.org/licenses/by/3.0) and adds a CC+ link to the rights-clearing provider

* Author chooses a price for standard _private_ commercial licensing which effectively removes ND, NC, and SA restrictions for one licensing entity (this is use case #1 above)

* Author chooses a second price for standard _public_ commercial licensing which offers the work under their choice of [CC0](http://wiki.creativecommons.org/CCZero), [By](http://creativecommons.org/licenses/by/3.0), or [By-SA](http://creativecommons.org/licenses/by-sa/3.0)    license for a given "Buy4Commons" price (only one license should be selected, in order to avoid self-competition)

* Customers who follow the link, see two items for sale: an "Individual private license" for $_X_, and a "Commons public license" (with the chosen specific license identified) for $_Y_.

* Customer selects one or the other. If they buy the private license for $X, they license the work for their own use. If they pay $Y for the public license, they license it for everyone.

* Once the work is "bought for the commons", the rights-clearing site is updated to note the fact that the work is available under the public license (and the date of the purchase). Future customers visiting the CC+ link will see this and know that the license has changed (and when it changed), so they won't attempt to re-purchase the public license. Of course, the private license option may still draw customers, depending on their needs

In most cases, of course "$_Y_" will probably be more than one individual is willing to pay, but services like [Fundable](https://www.fundable.org/) or [Pledge Bank](http://www.pledgebank.com/) can be used to raise cash for such purchases, by projects that want to incorporate the content. I recommend leaving the fund-raising problem up to them for the present, at least (without this wrinkle, the rights-clearing site can be implemented with conventional e-Commerce "web store" technology, and no extra technical hurdles have to be overcome).

In the future, it might be desirable to go one step further and integrate the fund-raising process into the purchase process. For example, it might be desirable to apply a fraction of every "private" sale towards the "public" sale so that if a work is popular enough with private buyers, it will automatically become available for public use.

# For the common good

I think this would be a fantastic service for the commons, and I hope someone steps up to provide it. It's obviously a viable business plan, even if only private licenses are sold, but the Buy4Commons option would make the project into more than that: a true public service.

The time to step up is now, when the CC+ initiative itself is just catching on, and before any preconceptions about the service have been formed in the minds of artists or content hosting services.

# Licensing Notice
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
