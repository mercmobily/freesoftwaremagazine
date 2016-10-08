---
nid: '2681'
title: 'Red Hat packagers dance around frivolous music game software patents'
authors: 'Terry Hancock'
published: '2008-02-01 8:00:46'
tags: 'patents,software-patents,red-hat,games'
license: verbatim_only
section: hacking
listed: 'true'

---
Sadly, there's nothing genuinely new about this story, but a [recent discussion](http://www.redhat.com/archives/fedora-games-list/2008-January/msg00022.html) on the Fedora Games mailing list demonstrates the sort of chilling effect on innovation and impoverishment of the intellectual commons that occurs today because of a broken, outmoded US patent system and its misapplication to software. I'm at a loss for words to express how absurd these "patents" are.

The USPTO was supposedly seeking to reform itself in the last few years, but if this is all it has to show, then maybe it's time to consider a world without patents, and abolish the whole institution? After all, the US federal government has an enormous debt, and wasting funds on an institution that is actively destructive to the purpose for which it was created is not sane policy.

The US patent system _is_ totally out of touch with its mandate. The reason for the existence of patents in the US is to enrich the public domain by providing for limited times a financial incentive for truly innovative ideas.

The plan was, that we'd offer a special monopoly on the use of a particular technical idea in exchange for having a published, full explanation of the idea.

Now let's remember that the whole concept of using patents to "promote" intellectual productivity has _always_ been in question. After all, a patent introduces a _20 year delay_ into the natural process of building on the past work of others that all true innovation relies on so heavily. Innovation is by nature a team activity: it results from sharing knowledge from prior developments and adding just that little bit more. Every once in awhile, a particular variant has immense success: the "Jacquard" loom or the "Watt" steam engine. But these inventions were not truly invented by these people alone--they were invented by them _and_ the long chain of contributors before them.

This is also why so many times in history we see the same device independently invented by different people at roughly the same time in history: like Konstantin Tsiolkovsky, Robert Goddard, and Hermann Oberth who all "invented" the rocket. They did it, because given the information available to them, natural human ingenuity, and a little sweat, the invention was inevitable. Should Tsiolkovsky's earlier writings on rockets have been license to legally bar Goddard from his experiments in America? The patents theory says that would've "helped" innovation, instead of _squashing_ it, which seems more probable.

However, there are certainly many innovative ideas which it takes monetary capital to develop and distribute, and therefore, the exclusive patent might be a plausible incentive mechanism to attract the necessary capital. By this reasoning, of course, it should only be individuals without corporate backing, investment, or staff who are allowed to apply. And it should only be given out on those inventions that are truly so original and large scale that they require unreasonably large amounts of investment to develop. Furthermore, they must be on ideas that would otherwise be in danger of never being invented or of being kept as invisible trade secrets that no other organization could understand without having the published patent to work from. Finally the patent itself must be an _exemplary_ work of documentation.

So, with that understanding, let's have a look at this "brilliant innovation" that is bugging Red Had, and see if it's really worth the tax dollars we're spending to "protect" it from being used. Here's the essence of the patent, as described by Tom Calloway of Red Hat, on the Fedora Games list:

> A game where "targets" move across the screen to a predetermined point
or line, where the player hits a button/key/mouse click as the target(s)
crosses that point or line, and gets points.

That's it.

No, I'm serious. That's it.

Of course, there's probably _lots_ of prior art on this, so it's hard to believe this even got accepted. Until you see the actual patents, of course. I _think_ this is meant to be covered by Konami's [US patent #6450888](http://www.patentstorm.us/patents/6450888-fulltext.html) dating from September 2002, although Calloway indicated [US patent #6347998](http://www.patentstorm.us/patents/6347998-fulltext.html) from February 2002. In any case, both show what empty snow jobs patents are nowadays.

So not only are we paying out special privileges to corporate proprietary software producers, but we are doing it for trivial ideas that anyone would easily come up with, and those ideas aren't even written down clearly, but are instead specifically designed to be hard to review. I guess the conventional wisdom is that if you gunk up your writing enough, the USPTO examiners will be too lazy to read it and just rubber stamp the patent (which is exactly what seems to happen).

=TEXTBOX_START=Free software game mechanics, innovation, and patents=
There is another side to this story, of course. It is a point of some concern to me that most free software games simply reuse game mechanics from proprietary games. There are a lot of "clone" games. And sometimes when I think I've found a game that is really original, like "Neverball", I find out later that it's just because it's modeled on a game I'd never played before (something called "Super Monkey Ball"?).

I'd really like to create a list (or a ranking) of free software games in terms of originality of their game mechanics, though it seems like that would be really hard to do.

So, the obvious question is, does that problem justify a solution of patenting game mechanics and allowing only one company monopoly access to each "genre" of game? I have to say "no".

Such original games are already protected by the considerable investment in game engine library development needed to establish a new game mechanics system. One of the reasons there are so many "clone" games, is because it's a lot easier to write games using an existing engine, which will limit what sort of mechanics you can use. Therefore, you have to spend a lot of no fun time re-writing game engine code if you want to make something with truly original game play.

Now, of course, it may be true that not every ounce of value can be squeezed out of the innovation that way: but it's not the job of the law to ensure that. Knowledge should be shared into the commons as soon as it is practicable to do so. The Constitutional basis for US "intellectual property" laws gives them force _only to promote the enrichment of the public domain_.

There may be some public policy way to encourage new software (and even game) innovation, but it's pretty clear that software patents are not the way.
=TEXTBOX_END=

# And the dance begins

As soon as something like this gets mentioned, people in the community start the time-wasting activity of trying to figure out whether anybody bothered to publish this _particular_ obvious idea out of the millions of other obvious ideas in the world. One poster vaguely recalls having written prior art code "in the fourth grade" in the 1980s. Another recalls a Commodore 64 game that seemed to fit the bill. Nitpicks ensue about whether the particular examples _exactly_ fit (Why so much specifity about the prior art when the claims are so broad, I cannot say).

Finally, either somebody will find by good fortune that something covered was published earlier (please remember that Konami is supposed to prove to the USPTO before filing the patent that this is not so), or else perfectly good packages will just get scrubbed out of the distribution.

# Enough is enough

We are forging our own shackles here.

This same dance has been undergone by project after project, as the proprietary industry has learned the truth about this absurd legal system: it provides no justice, but it can provide more power to those who already have too much. Power to retard progress and crush independent development to the detriment of the free software development community, the intellectual commons, and ultimately, the public good.

Why are we paying for that?

