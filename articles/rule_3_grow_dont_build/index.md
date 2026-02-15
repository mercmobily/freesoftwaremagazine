---
nid: '3132'
title: 'Rule #4: Grow, Don''t Build'
authors: 'Terry Hancock'
published: '2009-04-02 5:07:44'
tags: 'free-software,linux,gnu,development,releases'
license: verbatim_only
listed: 'true'
book: making_the_impossible_happen_the_rules_of_free_culture
book_weight: '0'
layout: book
---
<!-- Rule #4: Grow, Don't Build -->

Since free software and other free culture products are formed by an organic, incrementalist process, they tend to be highly organic in their design as well. Free software is not so much built as it is _grown_. Thus, when considering a new project, you must think not about how to break it down into implementable chunks that can be assembled into a working product, but rather about how the project can organically grow—moving from working product to working product as it does so—becoming progressively more useful as it is developed.

<!--break-->

=TEXTBOX_START=Rule #3: Grow, Don't Build=

# Create a tiny seed of _working_ code that can _grow_ into what you want

Successful projects evolve like living, growing things, through a series of tiny changes forming a continuum of "constant release", as opposed to an engineered machine built from pieces which come together into a single "product".

Don't try to engineer a "perfect" solution and then get people to cooperate with you on developing it. In practice, very few people will contribute to a project that has no working code. The critical phase for a project is the single-developer phase when one person has to get the program to do _something_ that other people will find useful. Once people find it useful, they'll find it worth their while to make it _more_ useful.

When starting a project, you aren't engineering a complete solution, you are planting a seed for later success and growth.
=TEXTBOX_END=

In the world of proprietary software, big, highly-engineered packages are the norm. There is a defined "product life-cycle" for a piece of software: it is imagined, broken down into manageable chunks, which are then assigned to teams, with appropriate concern for interacting with other teams; the product is marketed; and then the engineering team has to produce the best result they can by the promised release date. This system usually has somewhat mixed results, since engineers and programmers are often overly optimistic about what they can achieve and salesman are quick to promise the moon when they know they don't have to deliver it.

=ZOOM=In the world of proprietary software, big, highly-engineered packages are the norm=

For free software, though, this approach doesn't work so well.

With free software, things are much more _organic_. Someone has an idea, and they try it out, usually on something small. Someone else sees that idea, adds one of their own, and builds an incrementally more functional version (or adds on a package to extend the first so that both are needed).

=IMAGE=fig_linux_dist_tree.jpg=Figure 11.1: GNU/Linux distributions provide an example of the organic evolution encouraged by free-licensing. Distributions freely branch, recombine, and evolve to meet the needs of various user communities—much more readily than do proprietary distributions which have artificial gate-keepers between users and the development process (Drawing from Wikipedia)=

What programs can do is determined as much by what people are willing to implement as by any plan to achieve certain design goals. Usually, developers are quite limited in the amount of time each can devote, and there are few promises to bind teams together, so programs progress in tiny increments.

Although individuals working on free software projects do think in engineering terms about their contributions, there is a very high premium on time, so developers tend to stay focused on their particular needs. It's extraordinarily rare for a free software project to be organized with a group of people actively trying to create a complex program from scratch.

=ZOOM=Tell someone that you have an "idea" or worse yet, a top-down engineering plan for the software you want, and you'll usually face a lot of disbelief, cynicism, and (frequently) contempt=

Instead, most projects are about adapting or extending the functionality of some _already working_ piece of software. Tell someone that you have an "idea" or worse yet, a top-down engineering plan for the software you want, and you'll usually face a lot of disbelief, cynicism, and (frequently) contempt. Most free software developers are highly distrustful of such a structured approach to creating software, and they want to see working code as proof that you know what you are talking about. And unlike, proprietary software management, you (usually) can't afford to _pay_ them to swallow their doubts and follow your plan.

# The "Exceptions" That Prove the Rule

Most of the "counter-examples" in the free software world—big flagship packages like Open Office, Mozilla, or Zope—_did not start out as free software programs_! Instead, they were developed by companies, either as a product to be sold, or as a product to be used in commercial production. Either way, the company did not share the source code to their project until much later when the early engineering and integration phase was completed.

Another important trend is the tendency of such monolithic applications to splinter into components after they have gone over to free software licensing. Netscape's monolithic internet browsing tool, for example, spawned not just the Mozilla series of web browsers, but also separate email clients and composition tools. Likewise, Zope, with the Zope 3 project, moved to a component model with greater and greater separation of concerns introduced into its design.

=IMAGE=fig_flagship_apps.jpg=Figure 11.2: The few existing free software flagship applications didn't start out as free software, but migrated to new licensing after being developed in private. Their monolithic structure is primarily a relic of their proprietary origins (Drawing elements are trademarks of their respective companies and projects, used to refer to those companies)=

In the absence of financial and marketing pressures to maintain one marketable product, these projects have simply started to revert to a more natural organization from an engineering standpoint. The continued integration of OpenOffice.org is most likely due both to a real need for object-linking and embedding technology between its components and also the desire to compete head-to-head with the proprietary Microsoft Office suite.

Blender remains fairly monolithic (with the possible exception of the game engine runtime), but its role has moved increasingly to that of a "platform", with tools written to run on it. This probably reflects the somewhat demanding needs of 3D programming and the relatively little support for it that standard desktop environments provide (perhaps in a truly 3D paradigm desktop environment, the need for a specialized 3D environment would be less pronounced).

Together, these exceptional cases appear to support rather than refute the idea that the natural size for free software projects is smaller, permitting more incremental evolution and branching of the software environment as a whole.

# Linux: From Toy to Juggernaut

By contrast, software that started in the free software milieu was invariably started as a small, but functioning, product, within the capabilities of one person to create. Consider Linux, written by a single Finnish student. At its outset in the early 1990s, it was little more than a toy: a slightly more functional variation on Minix (an operating system created to teach the theory of operating system design, but not seriously intended for production use).

=ZOOM=Software that started in the free software milieu was invariably started as a small, but functioning, product, within the capabilities of one person to create=

Announcing it, Linus Torvalds (figure 11.3) wrote this innocuous looking post:

> Hello everybody out there using minix -
> I'm doing a (free) operating system (just a hobby, won't be big and professional like gnu) for 386(486) AT clones.  This has been brewing since april, and is starting to get ready.  I'd like any feedback on things people like/dislike in minix, as my OS resembles it somewhat (same physical layout of the file-system (due to practical reasons) among other things).
> I've currently ported bash(1.08) and gcc(1.40), and things seem to work. This implies that I'll get something practical within a few months, and I'd like to know what features most people would want.  Any suggestions are welcome, but I won't promise I'll implement them :-)

=IMAGE=fig_linus_torvalds.jpg=Figure 11.3: Linus Torvalds started with a very tiny seed when he started Linux (Photo Credit: Alex_Dawson/CC By-SA 2.0)=

However, small as it was, Linux _worked_. And as such, there were people willing to tinker with it and use it. As a result, it began to accumulate more functionality and that in turn interested more people, and so on. These projects tend to snowball, and it is the functional packages that are the ones that people want to add functionality to, not the ones that aren't functional yet. Today, of course, Linux is a big flagship project, with hundreds of active developers and a rapid development cycle. But it didn't start out that way: it grew into that role, starting from a very tiny seed.

# GNU: From Shelter to Independence

The "big and professional" project, "GNU", _also_ started out pretty small. Though Stallman had big ideas, the things he and his colleagues at the Free Software Foundation started with were pretty small components: an editor, a compiler, various Unix utilities, and so on. Even though some of these projects later grew into massively complex programs in their own right, the early releases of these packages were small enough for one person to manage.

Of course, all large projects start out with something small, but the difference here is that each of the small things that was made was not just an otherwise useless piece of code that needed to be part of a larger whole to be meaningful. No, each piece of software developed by the GNU project was a useful, working piece of software in itself.

=ZOOM=For a long time, using GNU meant using a collection of free software tools on non-free operating systems=

For a long time, using GNU meant using a collection of free software tools on non-free operating systems (typically one of the many commercial or ambiguously-licensed versions of Unix available in the late 1980s). In a sense, the proprietary Unix environment of that era acted as a testing rig for the GNU programs, incubating their development.

# Don't Over-design

The key point here is that it's a mistake to try to design something top-down with lots of elements that must be independently developed and then integrated in order to work at all. Doing things that way requires a managed effort in order to succeed, because no one is going to contribute time and effort to a project that may or may not produce any fruit at all (at least not unless you are paying them for their time).

Instead, break the project up into _independently useful_ components: that way each part will be of enough interest to attract development effort on its own merits. If it happens to also be part of a grander scheme, that's fine, but don't expect that to motivate contributors. Or, as Linus Torvalds put it:

>"Nobody should start to undertake a large project. You start with a small _trivial_ project, and you should never expect it to get large. If you do, you'll just over-design and generally think it is more important than it likely is at that stage. Or worse, you might be scared away by the sheer size of the work you envision. So start small, and think about the details. Don't think about some big picture and fancy design. If it doesn't solve some fairly immediate need, it's almost certainly over-designed. And don't expect people to jump in and help you. That's not how these things work. You need to get something half-way _useful_ first, and then others will say "Hey, that _almost_ works for me", and they'll get involved in the project."

# Release Early, Release Often

The mantra of the "bazaar" development process is to "release early and release often". This is also called "continuous release" (see figure 11.4). The idea here is that in order for users to contribute significantly to your project, they have to be using a very up-to-date version of your code. Otherwise, what they are testing is old news: the bugs they report are very likely to be ones you've already fixed—which wastes effort.

=IMAGE=fig_crystalspace_releases.jpg=Figure 11.4: For actively-developed free software project, dozens of releases are often available to the community, facilitating frequent testing of up-to-date code=

The mind-set of users in thinking about free software packages is intriguingly different than the mind-set of users of proprietary software: they speak in terms of the software's _current_ status, not the _last released_ status. Thus, Linux users do not think of themselves as using "Linux ME" or "Linux 2000" (nor even "Linux 2.6.18"). They instead think of themselves as using "Linux". Any discrepancy between what they are using and what is already developed is simply a gap to be corrected at the next opportunity, not a question of migration to a new product. Thus, the user actually perceives the improvement in the program as if it were actively changing while they use it, growing into a (usually) better fit with their needs and expectations.

=ZOOM=The user actually perceives the improvement in the program as if it were actively changing while they use it=

In this sense, too, the user experience of a free software program is of an organic living thing, rather than a cut-and-dried released product which can only be appreciated for what it _was_, rather than for what it _is_.

This can happen, of course, because downloading and installing the new version is _easy_ and _costs nothing_ (both facts facilitated by the free licensing of the software).

But of course, tracking the development version of a piece of software is a very dynamic process. From the developer's perspective this relationship places some additional limitations on the development process: with very few exceptions, it is highly desirable not to ever "break" the code. Each change should move the code from one working version to another in tiny increments.

=ZOOM=Each change should move the code from one working version to another in tiny increments=

This need to work on the code in a "live" state imposes yet another good engineering discipline: constant testing. Since the code for each release needs to work, the modification of the software tends to progress through tiny changes to small parts of the program. Making that feasible, in turn, brings us back to the "separation of concerns" and also "don't repeat yourself" (whenever you do repeat code in a project, changing one instance results in an inconsistency—thus it's a lot better to design the code so that a single instance is used in both places rather than to copy and paste code from one system to another).

=IMAGE=fig_gnarly_tree.jpg=Figure 11.5: You can't engineer a tree, but you can tend it and take care of it—so it is with free-licensed projects (Photo Credit: "Tony the Misfit"@Flickr/CC By 2.0)=

=TEXTBOX_START=Troubleshooting Tips=
# Don't Over Specify

It might seem funny to even list this as a rule: what exactly does it mean to "Grow, Don't Build", after all? Isn't it pretty much the same as "Divide and Conquer"? Well, sort of...

As an engineer or a manager, the temptation to over-design is extreme. You have to learn to overcome it. Your project will acquire a life of its own, but only if you let it breathe. Other people will have different reasons for contributing, and you need to let your project serve their needs as well as yours.

So don't push too hard on specific design concepts. Let the design _evolve_ to do what it needs to do. When you find you do need some specific functionality, then focus your own resources on solving that problem. Leave other areas of the design as open as possible.

Some other useful tips:

* Let others claim territory in your project. Create a "platform" on which others can build. If they found their own projects, they'll be more attentive to them.

* Keep the code _working_. Avoid major overhauls and re-writes as much as possible. Instead, make incremental changes. This will ensure that the code keeps being used, so it stays relevant, so people will keep contributing to making it better.

* Don't mind forks. They _can_ be constructive. Related projects can still share information, and occasionally the other fork will turn out to be a better solution. If so, don't fight it. Just adopt the solution that works best and move forward.

* Figure on "toughing through" the initial phase of any project: it takes a lot of work to get a working or useful product, but it's unlikely that you'll see contributions before you reach that point. This is a fact of life with free culture projects. People generally contribute to make useful things _more_ useful, not to create useful things out of nothing.
=TEXTBOX_END=


# Nurturing the Living Code

The practical consequence of all of these factors is that a free culture project grows (and evolves) like a living thing. It's a mistake to think of it in static terms as a machine to be built (even if, as with real living things, there are significant architectural parallels). A free software program, like a living organism, is a watch without a watchmaker. There is no overriding management process to ensure that the gears mesh, the system must instead self-organize into a functioning whole through the actions of the many participants in the development process.

=ZOOM=A free culture project grows (and evolves) like a living thing=

The would-be manager (or founder) of a free software project is not so much like an engineer as like a gardener: planting the seed of an idea (perhaps with visions of what it might become, but no certain knowledge), and nurturing it with the water, soil, and light it needs to flourish. The problem is one of establishing the right conditions for natural processes to take over, not to try to force the project along a pre-ordained track.


