---
nid: '2892'
title: 'Vienna failed to migrate to GNU/Linux: why? '
authors: 'Tony Mobily'
published: '2008-06-09 10:31:28'
tags: 'microsoft,linux,migration,vienna'
license: verbatim_only
section: opinions
listed: 'true'

---
Several governments and councils reported multi-year migration plans to GNU/Linux. Free software activists praised each one of them in their blogs and commentaries. However, a few months or years on, some of those plans crumbled. Vienna is one of them. A question here begs to be answered: why did it happen? The City of Vienna made several crucial mistakes. In this article, I will list the most prominent ones.

<!--break-->

I worked in IT for many years. I used to be the whizkid, whereas now I am just the "older guy who's seen it all"  (I am getting old: I am over 30 now...). I've seen enough to make this very bold statement: "Migrating is hard. In fact, it might well be the hardest thing to do for an IT department". Starting ex-novo is easy: you can decide what technologies you will use, and work around problems and idiosyncrasies of the chosen platforms. There are very few "gotchas" when you start from scratch and have a clear list of requirements. When you have to migrate, however, you often enter a real life nightmare: some things are just not going to work.

A good migration is 1) Gradual 2) Very expensive 3) Painful. It's gradual, because it's easier to fix 10 people's problems (possibly representing a good sample of the real user base) than answering 1000 calls from users who really, really need that particular feature that takes 6 months to implement. It's expensive, because it requires both staff retraining, and structural adjustments (which are sometimes major). It's painful, because it's "change" and "change" is painful. Move house, divorce, or change job to see what I mean.

Here is a point list of what I think the mistakes were in the City of Vienna's migration. Although I am very direct, I am writing this very humbly: please keep in mind that it's always easy to point your finger at somebody after a major stuff-up, whereas a lot of us have made worse mistakes in the past.

# Their own distribution? Hello?

Their first, huge mistake was their attempt to roll out their own GNU/Linux distribution called Wienux. In my opinion, this move showed a mixture of madness, boldness and sadistic intentions; or, maybe, just lack of experience. Wienux was based on Debian, which probably helped. However, anybody working on Ubuntu will tell you that even creating a "simple" fork of Debian is anything but easy; in fact, it's _monumental_. Issues like rolling out updates, merging back to Debian, local and upstream bug reporting, will eventually make you realise that it's a lot cheaper to pay for Vista licenses. In this case, they really had several options: they could have rolled out lots of Ubuntu desktops (if they wanted to go the easy route), or even CentOS desktops (if they wanted a stable giant), or a terminal server architecture (if they had an experienced IT department and if their infrastructure allowed it). 

But developing their own GNU/Linux distribution? Please...

# Their IE-dependent software

Back in 2003, Microsoft and the German Ministry for Family teamed up to create "Schlaumäuse" (which should mean "Clever Mouse", although I don't speak German), a program aimed at teaching kids how to use computers.

Keep in mind that back in 2003 Firefox didn't even exist yet. At that point, making sure that a Web site was multi-platform, or even multi-browser, was hardly a priority. Microsoft had (luckily only briefly) a stronghold on the web browser market, and they surely used it: the maker of Schlaumäuse managed to create a Frankenstein-like monster that required several IE plugins (heavens knows what for). The software maker that created Schlaumäuse hinted that while a Firefox version is in the works (planned for 2009!), the city had not offered enough incentives to speed up development. See: they didn't pay them enough to care. Also, surprise surprise, Wine would crash repeatedly while running Schlaumäuse.

We can kick and scream all we want about Schlaumäuse needing IE plugins to work. It's clearly a narrow-minded decision; however, keep in mind that the government (the German government, I assume) signed off the specs for the project, accepting its dependency to Internet Explorer. Keep in mind that the maker of Schlaumäuse very likely did things according to their internal know-how and resources, and that making something multi-anything (multi-platform, multi-browser, multi-processor) is always harder than focussing on one particular platform. Keep in mind that Microsoft _backed_ that project, and most likely made absolute sure that IE was crucial for it to work.

In the end, it was the City ff Vienna's IT department's misjudgement that lead to the plan's failure: they didn't pay for a much needed upgrade to Firefox of Schlaumäuse (although, God knows how much it would have cost them); they trusted Wine, and obviously didn't test it enough before the migration started.

As it often happens with migrations, you never know who to blame first: the fact that Schlaumäuse is an IE kludge? Or the fact that Wine isn't advanced enough and crashes when facing IE kludges? Or that the City Of Vienna didn't test Wine enough? Or the fact that governments should never partner with convicted monopolists without specifying that the end result mustn't be bound to _their_ platform? Or... Or... Or...

# Hardware problems?

Another issue they raised was about hardware compatibility. This is at least partially a result of them creating their own GNU/Linux distribution (which, as I said earlier, was a bad move to start with).
Somebody really must tell the City of Vienna's IT department that migrating to Vista is _not_ going to make things much better. In fact, it's going to bring more hardware incompatibility problems, and more expenses.
As I wrote above, migrations are often very expensive, often for unforeseeable reasons. Even if only the mice used in their existing computers are not compatible with Linux (which is unlikely, but it works as an example), they will have to spend un-budgeted money for hundreds, thousands of mice. Again, "starting small" are the keywords here.

# Microsoft's pressure

There is one last point: Microsoft pressure. When Massachusetts's former CIO Peter Quinn made the bold move of starting the migration to ODF for document storage (starting a small, unstoppable revolution), Microsoft's "damage control" machine started moving. And made no enemies. They managed to get the Disability Rights groups to bash OpenOffice and praise Microsoft Office (which was absurd in itself). They put immense amounts of pressure onto Peter Quinn himself, who received unjustifiable personal attacks and who, eventually, resigned from his job.

The second the City of Vienna announced their migration to free software, Microsoft's "damage control" machine started; we will never, ever know what they did; words like "bribes", "absurd discounts", "personal pressures" come to mind, but they are just (frankly unfair) speculation.

In the end, when migrating to free software, the keyword is "low-profile", "hardly advertised", "very gradual"; this is the only way to escape Microsoft's radar. Unless the real goal of starting the migration was to get bigger discounts from Microsoft, which is always possible (although I don't think it was the case here).

# Learning from your mistakes?

The City of Vienna might well be a lost cause. However, my hope is that other IT managers will eventually stumble across this article, and avoid making the same mistakes. The presence of a strong desktop distribution (Ubuntu) will hopefully simplify things. However, in the end we need to accept that most of the world will eventually start migrating to open standards and free software, and that it's going to be gradual, expensive and painful.

Welcome to hell.