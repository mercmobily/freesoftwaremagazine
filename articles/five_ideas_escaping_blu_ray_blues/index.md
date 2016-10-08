---
nid: '3511'
title: 'Five ideas for escaping the Blu-Ray blues'
authors: 'Terry Hancock'
published: '2011-02-28 6:10:36'
tags: 'movies,video,optical-disks,morevna,lunatics,bluray,hd'
license: verbatim_only
section: opinions
listed: 'true'
book: making_free_movies_with_free_software
book_weight: '10'
layout: book.html

---
<!--Five ideas for escaping the Blu-Ray blues -->

Some of us want to be able to release high-definition video (possibly even 3D) _without_ evil copy protection schemes. I've been avoiding Blu-Ray as a consumer since it came out, mostly because Richard Stallman said it has an evil and oppressive DRM scheme. After my first serious investigation, I can confirm his opinion, and frankly, it's a pretty bleak situation. What can we do about it? Here's five ideas for how we might release high definition video.

<!--break-->

=TEXTBOX_START=Making Movies with Free Software=
This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies, _Marya Morevna_, through the [Morevna Project](http://www.morevnaproject.org) and [Lunatics](http://lunatics.tv), which we are working on as Anansi Spaceworks.
=TEXTBOX_END=

I've been planning to compose _Lunatics_ for high-definition (HD) video (1920x1080 pixels), because HD is rapidly becoming the norm for television viewing. It might even be desirable to release in 3D (not too difficult, since it's being created using 3D graphics software). A large HD monitor today costs about what my first little 13" standard NTSC television cost in the 1980s, so they are definitely going mainstream! I'm not sure if this will be an issue for _Marya Morevna_ or not, but it does seem possible, for the same reasons.

But at the same time, I've only been considering DVDs for distribution. This is clearly a conflict, though, since standard DVDs don't support high definition video. 

Since 2008 (when the format war between HD-DVD and Blu-Ray was officially ended by Toshiba giving up on HD-DVD), Blu-Ray has become the standard for HD video releases on disk. In terms of technical design, Blu-Ray is an excellent format. It simply "turns up the dials" from the well-established CD-ROM format: more pits in less space, made possible by shorter-wavelength lasers, tighter focus, and less cover material to read through. But this provides storage up to as much as 50GB, and that's highly desirable for releasing bulky data like HD video.

=IMAGE=fig_optical_media_specs.jpg=Technologically, Blu-Ray is a great format. It's a natural extension of the CD-ROM and DVD technology, with a shorter wavelength laser, tighter focus, and less material to read through=

In terms, of digital ethics, however, the Blu-Ray patent licensing policies form a quagmire of monopoly corruption propagated by an industry cartel that is absolutely antithetical to software or content freedom. Here's a brief outline of the trap that has been set:

* Blu-Ray replication technology is under a patent license, so replicators can't get it without signing licensing agreements with the Blu-ray Disc Association (BDA) (which is dominated by Sony -- that's "Rootkit CD Sony" for those who've forgotten who we're talking about)
* Among the terms of this license is a requirement that replicators put mandatory DRM software (called AACS) on the disks when they are made, along with a so-called "BD-ROM Mark" on the disk which provides an out-of-channel cryptographic key
* With out this cryptographic key, the disk cannot be read, at least not if you use the DRM software
* Since you're using AACS, you are required to pay a license fee for using it (Yeah, even if you're not going to use it to lock down your data)
* These fees are quite high. at least for small runs of disks, and of course they reward Sony for its DRM development, encouraging yet more restrictive systems to be produced
* More importantly, you've just been used as a patsy to dump another Sony rootkit on your own fans -- the AACS software is designed, among other things, to infect Blu-Ray players with "updates" to do things like revoke cryptographic keys and prevent playback at the whim of the BDA

Now of course, it's all been broken. The problem with Blu-Ray's devious copy protection system is that it relies on cryptography, which obviously can't have very high overhead or it would affect performance. So it wasn't long before someone cracked it, which is why it's actually possible to play Blu-Ray movies on MythTV and other GNU/Linux-based Home Theater PC (HTPC) systems, although there are some performance issues with reading the disks quickly enough for direct playback (it may be necessary to rip the disk to a hard drive prior to playing the data).

So, it would be possible to release on Blu-Ray, and still have my disks readable on free software systems.

However, as a producer, I really would prefer us not to contribute to oppressing our fans in this way. And I highly resent the BDA's high-handed attempt to force _my_ hand into collaborating with them.

DRM is bad enough to deal with in the DVD marketplace, but at least it is possible to opt out of using it. When the fundamental hardware that you have to depend on for releasing your content _forces_ you to put DRM on your own content, _that_ crosses a line I'm not comfortable with.

How then can an ethical free-content content producer expect to release high-definition video?

=IMAGE=fig_bluray_for_sale.jpg=The fact is that Blu-Ray has won the format war for high-definition video, and now has effective monopoly control of the HD market. This would be a good thing if it weren't for the ethical problems with Blu-Ray licensing (Photo Credit: raisin_bun@Flickr/CC By-SA 2.1)=

# Option #1: Lobby the Blu-Ray Consortium to change their ways

Yeah, good luck with that.

As a content producer interested in DRM-free high-definition media, we probably ought to at least express our dismay with the situation. This is one reason I'm writing this column.

But I'm not a Hollywood insider and I have a very limited track record, so my credentials as a genuine "producer" are suspect to begin with. Certainly, I won't be taken seriously. Many of the people who are producing free-culture films today are not much better off. 

We should speak up, but we're not likely to be listened to. So we'd better find another alternative in the meantime.

# Option #2: Release a standard HD-DVD video

From a production standpoint, this is an attractive option. Although HD-DVD did provide for DRM using the same AACS system that Blu-Ray does, it did not make it mandatory for replicators to use the software. It is still possible to find a few replication companies that will press HD-DVD disks. So it's technically feasible to make these.

=IMAGE=fig_hddvd_party_over.jpg=Since 2008, it seems the party is over for HD-DVD. Players and PC drives are being discontinued and are becoming very hard to find (Photo Credit: Daniel S. Keenan @ Flickr / CC By-SA 2.1)=

The problem is on the other end -- since Toshiba abandoned HD-DVD in 2008, the players for HD-DVD are now almost as non-existent as Betamax video tape players. I could find only a handful of suppliers who still sell HD-DVD-ROM readers for PCs, and the manufacturers have discontinued production -- at least in the West.

# Option #3: Release a standard China-Blue HD video

There is _one_ place in the world where HD-DVD disk technology is still in use. In mainland China, the government sponsored the production of a new HD standard, called "China Blue High Definition" or "CBHD." This is a new software standard for videos which is actually pressed onto standard HD-DVD disks.

=IMAGE=fig_cbhd_shinco_pr_photo.jpg=Two Chinese companies, Shinco and TCL, have released CBHD players, but they are difficult to find outside of China (Photo Credit: Shinco / PR Photo)=

Of course, this is only marginally better. CBHD still has DRM and licenses associated with it -- it's just that instead of paying software patent license fees to an evil Western corporate cartel, we'd be paying them to an evil Eastern communist dictatorship. I'm uncertain whether it's possible to get CBHD disks printed without DRM software, but even if it is, this may not be completely satisfying from a social responsibility standpoint.

More pragmatically, CBHD players are not widely available outside of China, and I'm not sure China is going to be much of a paying market anyway (CBHD disks of _Lunatics_ may appear in China, of course, but producing them is not my problem if I'm not selling them).

# Option #4: Stick with red-laser media

It is, of course, possible to store a certain amount of HD video on red-laser media -- single or double layer DVD-ROMs. There are three commercial variations on this: 3xDVD, BD-5, and BD-9. The 3xDVD uses the data structure from HD-DVD, while the other two use the Blu-Ray structure -- both on standard DVD-ROM or DVD-R media.

The biggest problem with this format is that it is very limited in size. Even with very good new compression algorithms for HD video, a standard double-layer DVD can only hold about 90 minutes of HD video -- with no room for snazzy extra features. We are lucky with _Lunatics_ in that all of our episodes will probably fit into this space. Our pilot is about 50-60 minutes long, and other episodes should be just 30-45 minutes. So, as long as we're content to release just one episode per disk, we could fit our HD video on red-laser media (possibly even single-layer DVD).

The other problem is with playback hardware. These formats are not universally supported. Some Blu-Ray players will play BD-5 or BD-9 disks, but this is not guaranteed. Software DVR systems like MythTV should be able to handle them, using standard PC DVD-ROM drives (and backward-compatible "Multi" drives), though.

Also, of course, there are still potential licensing issues with using the HD-DVD or Blu-Ray software formats. You may be less likely to get caught (because the replicator may not trouble to find out what you are burning onto your DVD-ROMs), but there are likely still software patent licensing fees incurred by going this route that could raise trouble later on.

# Option #5: Make our own new standard for DRM-free high-definition video

Of course, if the embedded players aren't going to support it anyway, and we're going to have to participate in maintaining MythTV software support for our disks, then why not skip the licensing problems by using a free software based format? Considering the difficulties of the other approaches, this actually sounds like a pretty good idea.

Just for fun, I came up with some names and logos, but that's the easy part. The software isn't likely to be a serious problem, though, because most of it already exists. It's just a matter of picking the right elements, and documenting it as a standard. Of course, Hollywood producers will not be flocking to our new free video standard, because they _want_ DRM, and that in turn will probably mean there won't be standalone embedded players for it, but what we're mostly wanting is a free standard to support free software Home Theater PC systems.

Two major HD-capable video compression standards exist: Dirac and Theora. Either would be suitable for this application. Menus of about the same specification as today's DVD menus could be easily achieved using something like a browser in "kiosk" mode. The menu would be specified on disk as "pure content" in the form of an XML document with external resources (video loops or still images for menu backgrounds, for example).

=IMAGE=fig_bikeshedding_logo.jpg=Well, there's plenty of time for bikeshedding over the logo for a new format -- that's the easy part (Background Photo: SilentSarcasm@Flickr / CC By 2.1)=

There would of course be a lot of bikeshedding about exact choices of codec, menu systems for a reference implementation of the user interface, and other issues, but it's clear that free software exists to supply all of these elements.

Support could be added to free software HTPC systems like MythTV, as well as introduced into general-purpose GNU/Linux distributions like Debian and Fedora.

The worst problem with this approach, though, isn't the software. It's the hardware.

My first thought was that we should simply release these videos on pressed BD-ROM. They couldn't carry the Blu-Ray logo, and they wouldn't be playable on standard Blu-Ray players, but that doesn't really bother me. BD-ROM readers are widely available, and replication services already exist.

The problem with this scenario, though, is that the Blu-Ray Disc Association (or should we say "Cartel"?) has used their licensing monopoly to make this legally impossible (as described in my introduction above).

So what to use?

The next best option is probably to press HD-DVD-ROMs with the data in the new software format (in other words, basically do the same thing the Chinese did with CBHD). I can still find replicators who will do this, and DRM with HD-DVD pressing is optional. So I can probably get these made.

Unfortunately, the problem with finding HD-DVD-ROM readers remains. There may be some reason to hope that the continued production of Chinese CBHD disks -- which can be read on PCs by HD-DVD-ROM drives -- would result in the reintroduction of PC HD-DVD-ROM drives.

As far as I can tell, though, there are no drives still in production and available for purchase for supporting HD-DVD-ROM reading. This would be very limiting for people trying to read our disks with HTPCs, since it would be difficult to get the hardware.

The next fallback would probably be to release such disks exclusively on BD-R media. Unlike BD-ROM, there is no forced DRM or BD-ROM mark on BD-Rs. Some of the replication companies who would handle BD-ROM pressing also offer BD-R duplication and packaging in batches up to 500. And of course, BD-Rs can be offered "print-on-demand".

The biggest drawback to this is that dye-based media like BD-R are of intrinsically inferior quality to pressed media. The dye will fade over time, so the movie will be lost. Some estimates place the usable lifetime to less than 10 years.

Finally, of course, there is the possibility of releasing this new format on red-laser media, as suggested previously. This would allow for 45-90 minutes of video per disk, which is adequate for a single episode per disk for _Lunatics_. And there would be no licensing fees since the software format would be in open, patent-free codecs with a patent-free data structure and no DRM.

Given the uncertainty with the present hardware options and the inevitability that new hardware standards will arrive, it seems like the proposed new format should be hardware-neutral. Essentially, we should implement a standard for file system structure and codecs, but leave the choice of hardware medium open. That way, a choice like using red-laser media for releasing short films wouldn't have an adversely limiting effect on later releases (they could simply use larger-capacity media when it becomes available).

# Decisions, decisions...

In the end, we'll probably use some combination of these methods. We might release in more than one format, for example. But of the choices, the last one -- creating a new DRM-free format -- seems like the most desirable.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=

