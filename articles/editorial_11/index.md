---
nid: '1239'
title: 'Reinventing the wheel'
authors: 'Tony Mobily'
published: '2006-04-03 0:00:00'
issue: issue_11
license: verbatim_only
section: opinions
listed: 'true'

---
Most IT people seem to have a really bad habit: reinventing the wheel. While sometimes this is “justified” by ethical requirements (see the big Gnome vs. KDE mess), often the problem is caused by ignorance.

In this case, I don’t mean to use the word “ignorance” as a derogatory term, but simply as meaning “a lack of knowledge”. For example, I could easily believe that there are still one or two people out there who, in order to open a JPG file, will write their own routines, simply because they are not aware of the existence of `libjpeg`. I am also quite sure that there are one or two people out there who, in order to print 1000 envelopes, will do everything with a text file or a word processor (OpenOffice, Abiword, etc.) rather than using a specialised label printing program.

Finally, I am absolutely, 100% sure that there is at least one person out there who will develop a content management system (CMS) in house to be used in a magazine. Okay, it’s time to show my cards: that person is me.

I am talking about [our own web site](http://www.freesoftwaremagazine.com). I am the person responsible for creating the technological structure behind it. In my case, I reinvented the wheel mainly because of server requirements: we could only serve static pages, in order to cut down the hosting costs. This ruled out the use of [Drupal](http://drupal.org/), for example (or any other content management system, for that matter). I created a complex back-end which allowed our editors to do a peer-review on each article, and eventually publish it (as a static file). Later on, it became clear that this was no longer working out. Static files were fine in the beginning; however, as the web site grew (and we added blogs, newsletters, book reviews, and so on), its limitations became impossible to overcome.

I am writing this editorial while taking a break from configuring (and in fact programming) Drupal so that it duplicates our current CMS abilities. Our requirements are quite intense (see: the peer-review system for each article, with word-for-word comparison between revisions, blogs, display of issues, multiple authors, etc.). However, it’s more than doable—in fact, if you are reading this editorial on line, then you’re looking at the new system.

This editorial has three purposes. The first one, is my reminder to everybody out there who’s thinking about reinventing some kind of wheel: don’t. And I mean: _don’t_. Consider how much each constraint will cost you in terms of time, and _then_ decide if it was worth it. The second purpose, is to announce that our web site has indeed changed; we have taken the opportunity to improve the web site’s layout and features and we’ll make more improvements over time. Hopefully, you won’t find the transition as painful as we did.

Lastly, I would like to thank the Drupal community. They have created a terrific content management system, and they deserve a medal for their hard work.

Thank you Drupal!

