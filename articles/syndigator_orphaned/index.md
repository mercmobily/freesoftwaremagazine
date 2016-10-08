---
nid: '1880'
title: 'Adopt an orphan'
authors: 'Marco Marongiu'
published: '2006-11-20 0:00:00'
tags: 'perl,rss,syndigator,development'
license: verbatim_only
section: opinions
listed: 'true'

---
In the [Debian project](http://www.debian.org/) they refer to packages that no longer have mantainers as _orphaned_. I think it's a good definition, and I'd extend it to free software packages that are no longer developed.

There are a lot of orphaned packages around, some actually deserve it but unfortunately there are also some that are promising or very good, and now they are almost dead. But, since we are talking about free software, every good developer is encouraged to pick one and try to push it a bit further


<!--break-->


Today I'll talk about one of them; it's Syndigator and it's an RSS feed aggregator. It's written in Perl using the Gtk2 library, that means that it fits perfectly in GNOME. Yes, that thing sitting on the desktop of your Ubuntu, I mean :-)


=IMAGE=syndy.jpg=Syndigator=

I tried a lot of aggregators, and since I am a happy GNOME user I tried hard to get one that was, in some way, "GNOME-compatible": some looked good but were buggy or heavily unstable; some simply didn't have the features I had liked them to have, one in particular.

When I use a news aggregator I want it to... well, _aggregate_ news: I want be able to file my RSS bookmark in a hierarchical way (nothing more and nothing less that we use to do with our web browsers), and if I click on a folder I want the program to show me _all_ the news that are in that folder. At the time, syndigator was the perfect fit: it was a real aggregator, it was quite integrated with GNOME and it was even written in my beloved Perl.

Unfortunately, its development was discontinued in 2004. I tried to survive with it, but eventually ATOM feeds became too popular to be ignored. That forced me to dismiss Syndigator and to get on the second KDE application in my installation: [akregator](http://akregator.kde.org/index.php) (the other being [k3b](http://www.k3b.org/).

So, is there any smart Perl developer out there that wants to adopt an orphan and let syndigator reclaim its place on my desktop? :-)

Ciao!

`--bronto`

PS: feel free to comment this entry, adding your own beloved orphans that you'd like to be adopted!

