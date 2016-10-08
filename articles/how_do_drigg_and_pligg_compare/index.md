---
nid: '2980'
title: 'How do Drigg and Pligg compare?'
authors: 'Tony Mobily'
published: '2008-08-17 17:36:30'
tags: 'pligg,drigg'
license: verbatim_only
section: opinions
listed: 'true'

---
I am [Drigg's](http://www.drigg-code.org) founder and developer. Drigg and Pligg are pieces of software that will allow you to create Digg-like sites. People sometimes ask me if they should pick Drigg or Pligg. When it happens, I am not sure what I should answer. This article will hopefully solve the dilemma for most of them. Please note that I am bound to be biased here. I am an ex-Pligg users, who happened to have the both the _need_ and the skills to create an equivalent product. I would have never forked Pligg had I liked Pligg in the first place. So... well, feel free to tell me what I got wrong with _facts_ -- I will correct this post accordingly.

<!--break-->

# Where Pligg wins

## Availability of themes
* **Drigg:** Very few. In fact, one. There _are_ countless Drupal themes. However, it's not super-trivial to adapt them so that they have all of the "drigg" stuff
* **Pligg:** Tons. And tons. Which is surprising, seen how themes are done.

## Learning curve
* **Drigg:** It's based on Drupal. So, it takes a little while to "get the hang of it".
* **Pligg:** Easier than Drigg. Especially since it's so much more limited.

## User base
* **Drigg:** Excluding the huge Drupal user base, Drigg has a limited user base especially compared to Pligg's
* **Pligg:** Huge user base. 

It's easy to see why quite a few inexperienced users would pick Pligg here: it's easier to get a decent site up and running without battling a learning curve or getting lost in Drupal's configuration options. However...

# Where Drigg wins

## Underlying framework
* **Drigg:** based on a rock-solid, award-winning CMS: Drupal
* **Pligg:** not based on any particular CMS

## Modules
* **Drigg:** Tons and tons of [Drupal modules](See: http://drupal.org/project/Modules) available for Drupal. 
* **Pligg:** Very few modules. All the interesting ones are _not_ free, and are _sold_ through the "Pligg shop". The legality of this is dubious, since they are pushing users to link non-free software with GPL software

## Scalability
* **Drigg:** Fast. The drawback is that Drigg does require a large number of queries (this is something "inherited" from Drupal). However, queries are very easily cached, and Drupal can be scaled a lot by using "memcached".
* **Pligg:** slow. It does require fewer queries. However, there is no support for "memcached". So, it won't scale easily.

## Theming
* **Drigg:** Uses Drupal's PHPTemplate. A theme is made up of 4 basic files (plus CSS) which will be always completely independent from the program's logic
* **Pligg:** Has its own templating system, with a huge "but!". Templates hold amazing amounts of logic. The code sometimes will change its logic according to the theme (!). Security fixes often require changing the templates.

## Source code
* **Drigg:** Very neat. It follows the Drupal coding standard. It's extremely easy to read it and extend it.
* **Pligg:** Horrific. The template system holds half the software's logic. The templates are immensely complicated. The program itself is basically impossible to read, and it's immensely hard to figure out what is going on. A lot of security issues require changing the templates.

## Adding extra pages
* **Drigg:** Admin → Create Content → Page → Fill in the form
* **Pligg:** You will need to create two files, taking one from an existing template. This is because there is no "real" CMS underneath.

## Extending it
* **Drigg:** There are thousands of Drupal developers out there, available for consulting. Creating modules is extremely simple. You can add blogs, forums, and pretty much anything you like.
* **Pligg:** Very few people understand Pligg's code. That's no surprise. Creating modules is nowhere near as neat as Drupal's module hooking system. There is no support for blogs, forums, etc.

## Security
* **Drigg:** As secure as Drupal. See: "very secure".
* **Pligg:** Security problems are found consistently. Upgrading is a nightmare, because so much logic is in the template system, and security bugs are often found in the templates.

## Database structure
* **Drigg:** Neat. It's Drupal's, with a couple of extra tables.
* **Pligg:** It's so messy that the Pligg to Drigg importer needs to guess several things, and the import doesn't always succeed.

## Activity and development
* **Drigg:** Active. Three programmers are working on it a lot. There are some feature requests in the queue, which are being closed.
* **Pligg:** Not very active. Development has apparently stalled since Pligg's main programmer apparently left around February/March.

## Politics around it
* **Drigg:** Fun to work with. Tony Mobily is the maintainer, but others have joined in and are helping out immensely.
* **Pligg:** The main developer left Pligg and created a competing system. According to Socialcmsbuzz.com, the Pligg team is now actively "taking" code from the main developer's SVN archive and keeping Pligg in sync (!).

## Politics around it, take 2: forums
* **Drigg:** Never a forum post was deleted from Drigg's forums. Ever. Well, unless they were full of links about performing better in bed!
* **Pligg:** There are countless reports of Pligg's maintainer deleting unfavourable posts. Here is [A fine example](http://socialwebcms.com/forum/index.php?topic=3.msg173#msg173) -- with evidence that the post actually existed.

## Open source principles
* **Drigg:** GPL. Always. No doubts.
* **Pligg:** When Pligg was "for sale", some members of the core team stated clearly that the license might well change according to the buyer's wishes and conditions. Nobody bought Pligg.

## Bug tracking
* **Drigg:** Clockwork bug tracking using Drupal's system. For example, see [Drigg's issues](http://drupal.org/project/issues/drigg?categories=support&states=all) (80 issues have been reported, discussed, and closed) or [EVF's issues](http://drupal.org/project/issues/extra_voting_forms?categories=support&states=all) or [User Karma's issues](http://drupal.org/project/issues/user_karma?categories=support&states=all).
* **Pligg:** Bug tracking is vaguely done through the forums. A lot of bugs are never closed. There is no real tracking system for bugs.

## Karma calculation
* **Drigg:** Clear. The Karma subsystem written for Drigg ended up becoming the best Karma subsystem used by Drupal users, wven without Drigg.
* **Pligg:** Nobody has managed, to date, to give me a detailed explanation on how the users' karma is calculated in Pligg. The code won't help you.

## Support
* **Drigg:** Drigg-related issues are promptly answered in Drigg's site. Other queries that are Drupal related are answered by the huge, friendly Drupal community.
* **Pligg:** Pligg's forums are active, but they are mainly crowded with people wondering where the weirdness XYZ will be dealt with.

# Conclusion

So, what would you pick? What's your experience with Pligg? And with Drigg? I am obviously biased. If I got things wrong, please let me know... in the meantime, excuse me: I am busy maintaining my great software project!