---
nid: '3189'
title: 'Debian: contempt for "end user" values has to stop!'
authors: 'Terry Hancock'
published: '2009-08-12 23:13:30'
tags: 'ubuntu,debian,gnu/linux,graphics,end-user,font'
license: verbatim_only
section: opinions
listed: 'true'

---
Three recent problems with packages in the last stable release of Debian GNU/Linux ("Lenny"), brought me face-to-face with what is still a major obstacle for acceptance of free software on the desktop: contempt for the values of the people who use it. Despite all the accusations of unfair trade practices or other excuses, this remains as one solid reason why free software is still perceived as "geeks only" territory. If we want to progress further, we've got to improve our attitudes.

<!--break-->

Even in a room of hardcore hackers, it's safe to say that we are all "end users" of software more often than we are developers of it -- just as we are all more often readers than writers of prose. Likewise, just as it saves more time in the end to write clearly and proof-read your work, it serves us all better to put "end user needs" ahead of developer values.

Yet, there is no question that adversarial attitudes arise between users and developers of software: they are in a sense, working against each other, tugging the product into two nearly opposite directions.

This is understandable. It's just human nature. But we must overcome it if we hope to be truly competitive with the folks who call the end users "customers." Because while proprietary companies may have started to sell out customers to other stake-holders (one of the main reasons people abandon proprietary software), they got those customers in the first place by treating them right and placing their values first.

So, if we want to make the world a better place by getting the free software system to displace the proprietary software system, we've got to find a way to serve those customers better, not just wait for the proprietary system to get even more intolerable.


# Commitment to customer dissatisfaction

So what exactly happened to make me frustrated enough to write this? Well, this year I upgraded my main Debian system from "Etch" to "Lenny". Of course, I did this to take advantage of new and improved packages (and they are there -- much of this experience was positive). Sadly, this upgrade also broke a lot of stuff.

I didn't contact these developers and I'm not going to name names (of course I can't avoid mentioning the package names), because there's really no point -- I know and you know that these attitudes are endemic throughout our whole community, so it'd be unfair to single-out these three people. I know there's not much point in trying to talk these particular packagers around to my way of thinking, because I've already read the transcripts of others on the same quixotic mission. No dice. Clearly these particular folks are committed to their decisions, no matter how bad I think they were.

Perhaps most frustrating of all, I cannot solve these problems by simply switching to an end-user focused distribution like Ubuntu, because two of these three problems are broken there too (unsurprisingly, since the problems are hard to find).


### Fix By Deletion: ttf-thryomanes

I spend a lot of my time on graphical design and artwork. I've designed logos and website graphics for my own company and a number of small free software projects as well as flyers and other advertising materials. Most of this, I like to do in Inkscape or other vector graphics applications, because they really excel at this kind of work: you can scale the results, edit the text as needed, and so on.

However, vector graphic documents fundamentally follow "link semantics", which means that, like an HTML page, they depend on other files being there to interpret their appearance. Images are an obvious problem, and managing them is often a challenge. But the most common trouble spot is _fonts_.

Choosing a font is a personal artistic decision. It's very particular. You can't just substitute "FreeMono" for "Courier" and expect your layout to stay sane or balanced. These fonts have subtle differences in letterforms and spacing, and yet these are a very tame example. Pick any fancy "display font", and you can bet it's one of a kind.

I wanted to be sure to use standard, free software fonts in my artwork, because I felt this was the surest way to make certain I wouldn't lose them or have to switch at some point. Sadly, I made the wrong choice in picking "ttf-thryomanes." This font was apparently primarily intended to fill a gap in Unicode language support, but I used it because I liked the letterforms. They were just a little "off" from the standard forms (possibly an accident in retrospect), but this produced the effect I wanted in the drawings I was making.

Between "Etch" and "Lenny", however, this font package was dropped. Of course, I wanted to know why. My first assumption is that it must have been consolidated into another package, and I would just have to install that one.

But no. It turns out that Thryomanes had some kind of bug listed against it because some of the characters (evidently ones I never used) did not display properly. No one had gotten around to actually _fixing_ this problem in the font itself, so the package maintainer decided to "fix" it by removing the package from Debian _entirely_. He excused this by noting that another font "Deja Vu" included the Unicode code points that Thryomanes had apparently been intended to cover.

Which (from my point of view anyway) is totally missing the point! "Deja Vu" is a different font! Even if they looked identical (which they don't), there's no mechanism in place to substitute the "Deja Vu" font for the "Thryomanes" font in existing documents.

It is now virtually impossible to find and there is certainly no easy way to install the package in the "Lenny" distribution that I can find.

Without the font, all of the previous drawings that I made using "Thryomanes" are basically "broken." I can't simply re-render them on my Debian "Lenny" distribution system. I might be able to _re-design_ for another font, but I shouldn't have to do that!

To me as an end-user, this sounds like amputating an arm to cure a hangnail. Clearly, the package maintainer does not share my values in a good desktop system.

It occurred to me, of course, to check and see if the problem is in Ubuntu, which is supposed to be more user-focused, but sadly, yes it is.

### Oh You Don't Need That: defoma

The best thing I could think of is to manually install the Thryomanes TTF font outside of the Debian package system. Trying to do _that_ is how I discovered the second gaff.

As an unpackaged font, Thryomanes join about a hundred or so fonts that I had stored on my hard drive but hadn't gotten around to installing into the new distribution. So I decided it was time to tackle that.

I was a bit foggy on how to do it, since it's been a couple of years since I've had to do this, so I looked up the documentation. In order to use TTF fonts, you need to provide the Debian font manager (called "Defoma") with "hint" files which essentially just index metadata for the files.

There is a laborious process by which you could write these hint files by hand, and I suspect that the packaged fonts are handled that way. However, there is a simple way to do it which I had used before, which is to run a program (called "defoma-hints") on the original TTF files, which contain all of the really essential metadata in their headers. This program would simply read out the data and produce suitable font hinting files for Defoma.

Great! I love it when Debian has this stuff all figured out for me.

Except it's broken.

It turns out that the `defoma-hints` program relies on an older Perl module for interfacing with the FreeType library which the Debian maintainers in their infinite wisdom have decided is "obsolete." Never mind that a critical piece of Debian infrastructure relies on it.

So `defoma-hints` is still there, but the library it relies on isn't. Again, it's not possible to install this through the package system, as far as I can tell.

Reading the bug reports for this package is even more disturbing. This is [bug #285653](http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=285653), reported in _2004_ and _unresolved_ as of this writing, although the maintainer is currently busy ignoring a recently submitted patch, see [Bug #514635](http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=514635).

Of course there is no bug report for the missing libft-perl package, because it was removed, which seems to be the fastest way to quash criticism in the Debian bug-tracking system, which forgets all commentary on packages that are removed (including such things as why they shouldn't have been).

My fonts are still broken. I even tried to see if I could run the program on an older machine and then port the file, but so far this hasn't worked.

Eventually, _I_ will get this fixed, even if I have to write the hints files by hand or install libft-perl from source code. But I think it's clear that I am already way beyond the limits of the "typical desktop end user."

Or "fonts=_fail_" as my teenage son would put it.

### Utter Contempt for End Usability: wacom-tools

Moving along to another graphics-related problem, I recently acquired a Wacom graphics tablet. I bought a Wacom brand-name product because I understood that the Linux-Wacom driver is very solid and supports everything I would expect to be able to do with the tablet. It even has a GUI configuration wizard to help you get it installed as an X input device with the proper settings for your particular tablet.

This is probably true. However, I am fairly disgusted with the Debian package maintainer's attitude about this package.

It should be very, _very_ simple. Just plug it in, start the configuration app, change the settings, and (possibly) copy them into the appropriate X configuration file.

The package maintainer however, recommends using a command line utility called "xsetwacom" instead. This can do _most_ of what the graphical tool does, but not quite all, and it is not a terribly intuitive or simple program to use. 

Now remember: Wacom tablet users are, by and large, _artists_. There _are_ artists who are also programmers or system administrators, but not many. There aren't many user groups for whom a graphical interface is more important. Since this is an infrequently-used program, however, it's unlikely that they care what language it is implemented in.

Yet, the package maintainer is willing to deny their needs because of an aesthetic displeasure with the programming language being used to develop it! 

He proposed (in 2005) that a better solution would be to write a new tool which didn't rely on TCL:

> Work is underway on a couple of fronts for a gui interface that doesn't
involve getting all covered in tcl.

Apparently he never got around to it, because it's still not there. When a later poster challenged this in 2009, the maintainer got very defensive and [flamed him](http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=457770) in the bug tracking system. He still did nothing about the problem, and the package is still incomplete.

In brief, what the maintainer sees as a trivial waste of his time is a critical matter for end users.

Luckily for Ubuntu users, this package seems to have been [fixed in Ubuntu](https://bugs.edge.launchpad.net/debian/+source/wacom-tools/+bug/216347), by simply including the missing program.

### Who is Debian For?

Of course some people will simply respond that Debian isn't really meant to be an end-user distribution. Does this justify such contempt for end-user needs?

I don't think so. Because even though Debian itself isn't really intended to support end-users, it is the base upon which distributions of different types are made. Problems in Debian get mirrored into end-user systems, and unless the maintainers of the end distribution are very careful, these sort of bugs will simply fall right through into their final product.

The `defoma` bug is at least listed as "important", and therefore might be noticed, though it's pretty shocking that it's been left unresolved for years.

The `wacom-tools` bug is much more insidious, since it is listed as merely a "wishlist" item, which means it isn't really considered a "bug" at all. Likewise, the `ttf-thryomanes` package is non-existent, gone with virtually no trace, so it's certainly not going to show up in a casual survey of bugs to fix.

# Values mismatch

The real problem is that there is a fundamental mismatch between what the users and maintainers value. As in the `wacom-tools` case, the original _developers_ have done their part by providing the necessary tool. But the packager has obstinately refused to include it. What can be done?

There _are_ some formal complaint processes within Debian, but is this problem really severe enough to drive users to that point? More likely, the distribution is riddled with small holes like these which bother particular niches of users enough to irritate and even drive them away, but not enough to go through the process of getting the problem fixed. 

Most users would rather just "vote with their feet" by moving to another distribution or operating-system. In fact, problems like this are often cited when people give up on free software entirely and switch back to a Macintosh or Windows system.

The problem is that for "end users", the whole point of the computer is to handle headaches like fonts and graphics and so on so that they can do their "real work" -- which is documents like word-processing or artistic graphics. They don't really care what happens "under the hood" as long as it works. For them, the penalty of losing access to those inner workings doesn't seem so important.

Meanwhile, for the developers and packagers who spend their professional lives tinkering with computers, such real world uses of computers are almost like an unintentional side-effect of their work. They create a beautiful and fun piece of software, and "oh, by the way" you can also get it to do real work. This is not an unnatural attitude for an amateur, but it is precisely _unprofessional_.

We could accept that label, of course. We could just concede that the community development model doesn't work and that software for real use in the real world should be handled by professionals who demand payment for each copy of software delivered.

If you're reading this magazine though, it's a pretty safe bet that you _don't_ want to admit that kind of defeat.

# How can we fix it?

I don't have a clear or coordinated answer for this, but I will suggest a few ideas. I think first of all, the problem has to be seen as a kind of "market failure." The market for free software binary packages is not free enough because there are points of friction and anti-competitive factors associated not with the _writing_ of software, but with the _packaging_ of software.

What we're facing here is "Deb Hell" -- the Debian counterpart to the more poetically-named "DLL Hell" of Windows. The reason the packager has so much power over us is that it is difficult to replace the package with a new one, maintained outside of the system. The official Debian package has the (unfair?) advantage that it is tested against the current Debian distribution.

It would be to the benefit of end users (and ultimately of the Debian distribution itself), if this friction could somehow be removed and fair competition be restored to the delivery of packages.

One thing that is _not_ the solution is to start pointing the finger at packagers and demanding that they do as we please. Clearly, the packagers of the three packages I complained about above do have their own, possibly valid, reasons for doing things the way they have done. This is a disagreement of values, not some fundamental "ethical" issue. Demanding "better regulation" of people who are, after all, volunteers would be pointless and counter-productive. What I should be able to do is simply "take my business elsewhere" on an individual package basis, without having to dump the whole distribution. 

The problem is that as things stand, there aren't enough "elsewheres" to take it.

=TEXTBOX_START=The software store analogy=
I've said before that a GNU/Linux distribution is _not_ just an operating system -- instead it is more analogous to the complete inventory of a software retailer. It consists of thousands of packages, originally produced by different suppliers, placed under one roof for the customer to pick and choose what they want.

However, there is one important difference. In the software retailer, each package is _published_ and _marketed_ by an entity whose incentive is directly based on customer (read "end user") satisfaction.

In the Debian case, though, the publishing and marketing (read "packaging") of the packages is maintained "in house" by Debian developers who have little affiliation with the original developer and often are concerned only with a small subset of users (in the worst case, only with their own personal needs).

This is essentially because we aren't paying them.

With distributions like Ubuntu, there is the opportunity to fix some problems by simply paying packagers to do a better, more user-focused job. But the amount of money available is somewhat limited because of the generally lower profitability of free software production. Ubuntu has to save money by relying heavily on the mostly-volunteer work of the Debian base distribution.

As a result, most of the problems in Debian are also problems in Ubuntu. This situation is analogous to "shareware" marketers in retail stores -- they produce an essentially generic product which relies heavily on the original developers' work, with little investment in packaging and presentation, because they simply can't afford to invest more and maintain the low price that customers expect from shareware.
=TEXTBOX_END=

One solution might be to make the Debian package tools a little more like an online shopping experience: with customer ratings and reviews, not just bug reports. This might give some feedback, both to people selecting packages, and to packagers looking for packages to improve upon in Debian-derivative distributions.

Another approach might be to bring competition into the Debian distribution itself by allowing multiple teams to produce competing versions of packages for the same upstream product. Possibly some of the packaging distributions could be made available through switches incorporated into the package tools. This would be a much more radical design change, but it could improve a _lot_ of design-tradeoff issues with a distribution that is trying to serve a lot of diverse users with diverse needs.

One way to reduce the combinatorial explosion of package dependencies would be to break Debian up into a set of coarse blocks, possibly based on language/programming-environment subsystems. For example, it might make sense to de-couple the release cycle for all Python or Java packages from the main release schedule. Then, rather than having to wait for all of Debian to catch up, the Python Sub-Distribution could be released, allowing for more up-to-date packages and fewer headaches for upstream developers. This might make the packaging problem simpler, and lead to more third-party packages (and thus competition).

There are already a number of "unofficial" Debian package repositories on the net. One approach would be to try to give these packages a more "first class citizen" status. Making another online retailer analogy, perhaps these could be presented in the Debian package system much like Amazon's "Marketplace" retailers are -- as choices beyond the one choice provided by the main retailer. This has been a big success for Amazon, and many improvements have been made to put such retailers on a more even footing. Something like this might have a positive impact on package competition in Debian, especially combined with some of the other ideas above.

At that point, I will leave off. I don't think I've suggested "the" solution to the problem, but I hope that I have made it clear that there is something to be solved and that there is (probably) a free, community-oriented way to solve it.

