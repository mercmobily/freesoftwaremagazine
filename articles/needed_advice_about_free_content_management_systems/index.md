---
nid: '1973'
title: 'Needed: advice about free Content Management Systems'
authors: 'Matt Barton'
published: '2006-12-29 20:48:29'
tags: 'cms,advice'
license: verbatim_only
section: opinions
listed: 'true'

---
Greetings, everyone. I've been searching for months now for a free reliable CSS to replace the Drupal server we're currently running at [Armchair Arcade](http://armchairarcade.com). The problem is that our host, modserver, is very restrictive about how many simultaneous MYSQL connections we're allowed (25), and Drupal has been giving us fits. We really need to find a more efficient CMS, but we also need a few key features, particularly good support for images (we use lots of screenshots on our sites.) Furthermore, we need built-in support for captions for these images. 

After consulting the [CMS Matrix](http://www.cmsmatrix.org/), I found several possibilities, but none of them seemed to really do everything we needed. Joomla! probably came the closest, but its wysiwyg editor seemed flaky in Firefox. We've also tried Dragonfly CMS, Game CMS, and CMS Made Simple, but all were lacking in some regard. In the past, we were using e107, but switched to Drupal because we thought it'd simplify things. Using the image and img_assist modules, we are able to do everything we need with Drupal, but the above mentioned MYSQL problems have forced us to find something else. Obviously, we need advanced caching and some way to keep down the # of simultaneous connections on the database. We normally receive about a million hits per month, and 33-35 thousand unique visitors.

Our ideal CMS would have the following features: Very efficient database routines, easy image formatting *and* captioning (WYSIWYG editing not essential as long as a good preview feature exists), Good user handling and commenting, an intuitive discussion board (preferably similar to phpbb2). 

If anyone can suggest a few more CMS's for us to try, I'd really appreciate it! 

