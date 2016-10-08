---
nid: '3747'
title: 'Lib-Ray Video Standard: Handling Languages and Localization'
authors: 'Terry Hancock'
published: '2012-05-27 1:59:33'
tags: 'languages,localization,l10n,subtitles,movies,lib-ray'
license: cc-by-sa
section: hacking
main_image: libray_l10n.png
listed: 'true'

---
I'm used to thinking of region codes as an unmitigated evil, but they do serve one useful purpose: they divide DVD editions up so that any given regional edition has fewer languages to support. It's uncommon to find a DVD with more than just three or four languages in subtitles or audio tracks. Early on in the concept for Lib-Ray, though, I decided to do away with region-coding, and instead allow for broader localization in the design. This means there's just one edition worldwide, which is very helpful, but it does also mean that the subtitle menu in particular can become very cumbersome to navigate. How will we solve this user interface design problem?

<!--break-->

=TEXTBOX_START=Lib-Ray Video Format=
This is the fifth in a short series of articles I'm writing about the updated proposal
we are working on for [Lib-Ray](http://lib-ray.org) -- which is to be a free-software, open-standard based no-DRM solution for distributing high-definition video in fixed media (i.e. not downloads, but a copy you can put on your bookshelf).
=TEXTBOX_END=

For example, my first two prototypes of a Lib-Ray release for "Sintel" had about _50_ subtitle tracks. "Sita Sings the Blues" has about 20 so far. These numbers also tend to grow, since subtitles -- especially for free culture works -- are often crowd-sourced from bilingual fans. That's one reason why the ability to patch Lib-Ray releases on SDHC cards would be so nice.

But my point here is that it won't be at all uncommon to deal with Lib-Ray releases which include dozens of subtitle tracks.

=ZOOM=It won't be at all uncommon to deal with Lib-Ray releases which include dozens of subtitle tracks=

This is less of a problem with audio tracks only because producing an audio track is much more expensive, and so it's unlikely that projects will receive so many audio dubs. But free editors for creating subtitles are widespread (and in principle you can do the job with a plain text editor and any video player that displays playback time), and there are usually fans who know one of the existing languages and a given target language. With just a little bit of patience, it's easy to make a "Sub Rip Text" or "SRT" file for subtitles.

In my "Sintel" prototype, I just arranged these in a grid, alphabetized by [ISO-639-1](http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) language code. This is not so bad with a mouse. But keeping to the "10-foot User Interface" goal (i.e. using a remote control), this design becomes pretty tedious to use. It seems like it would be much better to use more than one level of language menus.

It also isn't necessarily all that useful to use Roman alphabetic order in an international context (it clearly is not possible to use it on the language names themselves, and using it on the language code still seems a little awkward (some codes are surprising, too: "fi" "Finnish"/"Suomi" or "zh" "Chinese"/"中文"/"Zhōngwén").

# Using geography and spatial memory

So I hit upon the idea of selecting languages using a geographical map. There is a problem with this, of course, in that nations and languages are not necessarily closely correlated: in some cases, a single language is spoken in many countries, while in others a single country may have many different active languages. However, as a rule of thumb, it works pretty well, and it has the advantage that most people (at least most people who can use a video player) can quickly find themselves on a world map.

Also, if a consistent layout is used on Lib-Ray disks, people will have a visual/spatial memory of where to find the correct tracks -- especially useful if they have trouble reading the menu language.

=ZOOM=I hit upon the idea of selecting languages using a geographical map=

One problem with this approach is that languages are not distributed evenly -- if we consider only the most commonly spoken languages on a per-nation basis, we'll find just four languages dominate all of North and South America: English, French, Spanish, and Portuguese. In Europe, however, there are a dozen or more frequently spoken languages (although you can get pretty far with just English). This tends to make the map a little uneven.

Of course, the picture would be different if we had a lot of tracks for Native American language, of which there are dozens. The issue with Europe is that the ancient native languages are still largely spoken there, while the languages of commerce in the Americas (and also in Africa) were mostly imposed by colonial powers.

Another issue with designing language and localization is that it can get very political if you're not careful! Acknowledging that Lib-Ray is targeting a more counter-cultural niche means recognizing a broader range of political agendas, such as better representation for traditional languages. I don't particularly need this feature, but it's likely that someone will.

Its easier if we can break the map up into regions (which is why region coding was useful, of course). Zooming into each region lets us show a more detailed menu for that region without overcrowding the big view. So we'll have at least a two-layer menu system: a "world map" view and "regional maps". Using maps from Wikipedia, and some general sense of how language families are related and distributed geographically, I came up with the region scheme in Figure 1.

=IMG=libray_regions_selector.png=Figure 1: Language regions for Lib-Ray - North America, South America, Europe, Africa, Middle East, Far East, and Pacific=

There are a few choices here that might seem controversial. For example, many Indians might object to being included in the "Middle East", but I chose this because Indian languages are part of the Western language families, while the languages in the "Far East" are of very different language families (with the exception of the colonial languages used in the area). The "Pacific" region might almost be unnecessary if it were just for Australia and New Zealand (both of which have English as official languages). But there are also many Pacific Island languages that can be included here (starting with Maori in New Zealand) -- having a "Pacific" region gives us a place to put these. We might lump North and South America together, given the relative dearth of commonly-spoken languages, but if we do include Native American languages, then each has a very rich collection of them, so it's useful to break them apart.

So with this system, we may wind up with some underpopulated menus on many releases, but there's not likely to be over-crowding.

# "Global Language System"

For convenience, it'd be nice to list a few "most commonly requested" languages right on the top menu. But which? English is obvious, since it's by far the most commonly used trade language today. French used to have this honor, and Chinese probably comes after that.

In fact, linguists have studied this question, and in doing my research I came across an interesting concept called the "[Global Language System](http://en.wikipedia.org/wiki/Global_language_system)". Now it sounds a little crackpot, and it's clearly the work of one linguist ("Abram De Swaan (University of Amsterdam)" is credited on the Wikipedia page above). But it makes sense: this is a list of just twelve languages which are used as regional interchange languages. People learn them in order to connect with neighboring language groups:

Language        |   Lib-Ray Regions Used
----------------|---------------------------
Arabic          |   Africa, Middle East
Chinese         |   Far East
English         |   North America, Europe
French          |   North America, Africa, Europe
German          |   Europe
Hindi           |   Middle-East (India)
Japanese        |   Far East, Pacific, North America
Malay           |   Far East, Pacific
Portuguese      |   South America, Europe, Africa
Russian         |   Europe, Middle East
Spanish         |   South America, North America, Europe
Swahili         |   Africa

What this means is that if you find an adult practically anywhere on Earth, they will almost certainly speak or understand _at least one_ of these languages. So if you provide localizations for these 12, you'll probably be understood (perhaps not with equal comfort).

=ZOOM=It'd be nice to list a few "most commonly requested" languages right on the top menu=

This is not an excuse for ignoring other languages, but it's a good set to promote to the top of the tree.

The language called "Malay" in this chart goes under several names (regional dialects which are really the same language). The most populous is probably the dialect called "Indonesian", though it could also be called "Malaysian". I've adopted "Indonesian", because I've encountered this more often online.

Now they are organized in English alphabetical order in the above list. I decided to put them in a 3x4 grid, and to try to distribute them more or less as they are on the most common type of world map (which puts the Atlantic ocean in the middle and breaks up the wider Pacific ocean). The positions preserve the approximate concentrations of the largest numbers of speakers of the language (northern languages are near the top, southern near the bottom, western on the left, eastern on the right). This gives me this arrangement (obviously, I've had to fudge a bit to get things into three neat columns of four):

Americas          |   Europe, Africa, Middle East   | Middle East, Far East, Pacific
------------------------|---------------------------------|--------------------------------
en English              |      ru Russian                 |   zh  Chinese
fr French               |      de German                  |   ja  Japanese
pt Portuguese           |      ar Arabic                  |   hi  Hindi
es Spanish              |      sw Swahili                 |   id  Indonesian (Malay)

It's a little large, but it's manageable.

To make the arrangement clearer, and to give access to the deeper list of available languages, I've combined this array with the region map.

In the actual selector menu, I use the names for the language in those languages (Figure 2).

=IMG=libray_gls_selector.png=Figure 2: "Global Language System" selector for Lib-Ray media=

Of the "GLS" languages, the only one missing for "Sita Sings the Blues" is "Swahili".

Also on this menu are a few "special" just-for-fun subtitle tracks represented with icons: "Pirate Talk", "LOLcat", and "Shavian English". There are no Esperanto subtitles for "Sita Sings the Blues" (if this bothers you, please send me your Esperanto SRT file right away so I can add it!). Other titles might have other unusual tracks. The DVD for "Galaxy Quest" had a complete audio track in "Thermian" (I'm probably one of the few people to have listened to it all the way through). "Dr. Horrible's Sing-A-Long Blog" had a subtitle track in "Wiccan" (long story), and one can imagine titles with "Elvish" or "Klingon" or the like showing up. So it's good to have some room for exceptional cases like this.

A few titles have subtitles which are used for commentary. These should probably not be included on the language menu, but along with the extras and/or audio commentaries. Figure 3 shows all of these elements put together, with some thematic styling for the prototype "Sita Sings the Blues" Lib-Ray release (still just an Inkscape drawing -- but the final menu might look just like this).

=IMG=sita_languages_menu-1024.png=Figure 3: Top-level subtitle languages menu for "Sita Sings the Blues" Lib-Ray release, showing the "Global Language System", the "Global Language Region Map" (Africa is highlighted), and also the "Special Languages"=

# Localizing Menus

There are actually three types of localization that would be useful for Lib-Ray. Subtitles and Audio Tracks are the obvious ones, which are also supported by DVDs and Blu-Ray. But it would also be useful to localize the menus themselves. The spec for these is quite different, so it probably leads to a different strategy.

=ZOOM=It would also be useful to localize the menus themselves=

With the menus, there is a limited vocabulary: "Play", "Extras", "Subtitles", etc. Even considering all of the variations in common use, there's probably no more than 50 words commonly used in DVD menus. Probably it could pared down to just a dozen or so (by getting rid of alternates like "Special Features" in favor of "Extras", for example). With such a small set of words and very controlled meanings, it should be easy enough to create a matrix of these words for each of the 12 "global language system" languages mentioned in the previous section.

Since these would be highly standardized over different releases, the actual localization can be done just once for the whole Lib-Ray standard, eliminating the need for individual release designers to worry about it. It's really just like any other free software localization project. I can probably create the `.po` files for this and work from there. 

# Standardization

The complexity of the language support argues for standardization of Lib-Ray release design. Obviously, we could leave this up to designers, and then we would get a zoo of different subtitle and audio language selection menus. This might be interesting, but it would be a lot of work for developers, and the end result would be very confusing for users. It would be far better to mandate a specific layout so that users would know what to expect from the language menus on any Lib-Ray release.

=ZOOM=When you are creating something that will be expanded by others, it's a good idea to follow a generic pattern that leaves room for improvements=

Another reason for standardization is the possibility of post-release patches. When you know exactly which languages will be available, it is of course easier to come up with a layout that works for just those choices. But when you are creating something that will be expanded by others, it's a good idea to follow a generic pattern that leaves room for improvements.

Based on the analysis I've done, I think the Lib-Ray standard will therefore need to include the following language design standardizations:

* Language chooser layout
* "Global Language System" (GLS) language options for text and menus
* Global Language Regions Map
* Regional Language Maps 
* Arrangement of GLS options for most commonly-needed langauges
* Matching arrangement of subtitle and menu options for GLS languages

Once these are defined, it will be relatively easy to use HTML5, CSS, and Javsascript to implement templates and sample artwork that can be used for these elements. The menus would still be themable (just as I've done with the design for "Sita Sings the Blues"), but they would share common behavior and user expectations across different releases, making for a smoother experience for the user.


# What about Audio Tracks?

I think the situation is totally different when it comes to audio tracks. It's going to be very rare for a Lib-Ray title to get new audio tracks after release. Audio voice recordings are relatively expensive to produce (much more than subtitles!), and they are therefore more likely going to be the work of the producers who make the films than of the their fans. So any given Lib-Ray will probably have only a few audio tracks, just as typical DVDs and Blu-Rays do.

And just as with DVD and Blu-Ray, it's very likely that commentaries will get mixed in with language tracks. So, I think I will not be trying to standardize this part of the design.
