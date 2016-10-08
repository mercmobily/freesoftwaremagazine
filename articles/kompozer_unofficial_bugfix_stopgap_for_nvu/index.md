---
nid: '1943'
title: 'KompoZer - Unofficial bugfix stopgap for Nvu'
authors: 'Jon Peck'
published: '2006-12-14 5:00:01'
tags: 'kompozer,nvu'
license: verbatim_only
section: opinions
main_image: hide.jpg
listed: 'true'

---
[Nvu](http://www.nvu.com/), the GPL "complete web authoring system for Linux, Macintosh, and Windows"has been a boon to web developers seeking a free cross-platform WYSIWYG HTML editor since its 0.1 release back in early2004. However, following the acclaimed final release of Nvu 1.0 in June of2005, lead developer Daniel Glazman announced that he had stoppedofficialdevelopment to work on its successor, Composer 2.0 as anofficial Mozilla.org project.  [Whilework on Composer 2.0 is steadilyprogressing](http://glazman.org/weblog/dotclear/index.php?Nvu), many began wondering, where's the stopgap?

Throughthe open source community, we now have [KompoZer](http://kompozer.net/). Developed and maintained by [Kazé](http://fabiwan.kenobi.free.fr/) andcurrently at release 0.7.7, KompoZer is an unofficial and unsupported community release, picking up where development of Nvu had left off. Dozens of bugs were fixed, including many in the HTMLeditor and the CSS editor.

However,there is some controversy about the KompoZer project, interestinglyenough fromDaniel Glazman himself.  Glazman felt insulted by [Kazé'sreferences to Nvu bugs as "Glazbugs"](http://www.geckozone.org/forum/viewtopic.php?t=42082&start=0&sid=232bbf0fa6786dce1589daaa4ff1e139), and in a blog post on September 15th [hechastised Kazé for a number of perceived transgressions](http://glazman.org/weblog/dotclear/index.php?2006/09/15/2074-kompozer),including not contacting [Linspire](http://www.linspire.com/) (who started and sponsored Nvu) about the project, which Kazérefuted (dead link, was to http://forum.nvudev.org/viewtopic.php?t=5877).

[Kazé went on to publicly defend himself on his own blog](http://fabiwan.kenobi.free.fr/kazblog/?2006/09/15/46-glazblogged)... "I've proposed you my contributionsfor Nvu and Composer2 many times... but never got any reply, so I don'tsee the harm in bugfixing a free, open-source, unsupported app"

[Glazmanresponded two days later](http://glazman.org/weblog/dotclear/index.php?2006/09/17/2081-mozilla-composer-features)...  "Just like Seamonkey was left to the community, I am glad to leave Nvu 1.0 codebase to Kazé... I just cannot work on Nvu 1.0 and Mozilla Composer, its xulrunner-based successor at the same time.  Furthermore, for Mozilla Composer... Ineed stuff that don't exist in the old gecko-1.7 codebase."

Afterseveral solid months of initial activity, things have gotten quiet ontheKompoZer front, with no updates, bug fixes, or posts since the end ofOctober.  Kazéhad stated (dead link, was http://forum.nvudev.org/viewtopic.php?t=5877) that there are two scenarios under which theKompoZerproject would be terminated; a release of a stable Nvu successor, or theintegration of his patches in an update release of Nvu 1.  Ina forumpost, he indicated that he's not looking to add features, just tomaintain the existing branch - especially when faced with [Glazman'sassertion that Nvu 1.0 is "scheduled to die"](http://glazman.org/weblog/dotclear/index.php?2006/09/15/2074-kompozer).

Ifyou're interested in using [KompoZer](http://kompozer.net/),it's listed as released under the MPL 1.1 / GPL 2.0/ LGPL 2.1 licenses.  Tarballs and installers areavailablefor Linux, Windows, Mac OS X, and OS/2. [Kazé has made severalported extensions available](http://fabiwan.kenobi.free.fr/), including:


* KaZcadeS- A CSS editor bugfix.
* HandCoder - Use the [HTML Tidy Library Project](http://tidy.sourceforge.net/)to clean and indent code, then edit the result with anexternal editor.
* NsmConText - Adds a context menuto the SiteManager, additional file filters, and more.

It'sfrustrating to see two dedicated developers butting heads like this;the Nvu project is an incredible contribution to the open sourcecommunity, and it's unfortunate to have public squabbles over this kindof resource.  Now that the dust has settled, we hope to lookforward to continued progress on the KompoZer front until the highly anticipated future release of Mozilla Composer 2.0.

