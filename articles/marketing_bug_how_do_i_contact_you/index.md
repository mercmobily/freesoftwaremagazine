---
nid: '3393'
title: 'Marketing Bug: How Do I Contact You?'
authors: 'Terry Hancock'
published: '2010-09-29 20:11:32'
tags: 'free-software,marketing,developers,support'
license: verbatim_only
section: opinions
listed: 'true'

---
<!-- Marketing Bug: How Do I Contact You? -->

I don't know how many times I've run into this particular mistake, but free software developers keep making it, so I think it's worth a brief post. Free software is based on contact between users and developers. Without that, it's just not very efficient, and any free software project that breaks that bond is going to flounder for the same reasons that so many proprietary products flounder -- total disconnect with the users.

<!--break-->

I just tried to get an update on a free software package that I use. I'm not going to say which one, because ultimately, it doesn't matter and I don't want to single anybody out. I've seen this problem multiple times in the past. I've made this mistake myself. So we'll just call this package "Q". But let's cut to the chase...

# Keep your lines of communication open!

Here's what happened. I've been running an experimental version of Q on my web server, to see whether or not it's a good choice for me. I've decided I like it pretty well, and I want to move into using it on a production level. I also need to upgrade my whole system.

=ZOOM=So where do I get the package? No clues are to be found on this page=

So I'm upgrading to a new version of P (a package Q depends on), and I want to make sure I have the right Q for my P.

So I go to the giant P package site, and I look for Q. It says the most recent version of Q is "1.7", so I go to the "Q 1.7" page. It says the package was released last September. Cool. Unfortunately, that page also says "no downloads available". So where do I get the package? No clues are to be found on this page.

With some searching, I find the home page of one of the developers, an old link points to a totally different repository, where, indeed, I do find the package.

Realizing that many users will be bitten by this "marketing bug", I decide to inform the developers of the oversight (the original P archive site should either have a copy of the download for Q 1.7, or a link to the right place to find it, or if that site is no longer actively being maintained, a breadcrumb link to the new site so I can go find it).

Unfortunately, the "contact address" is not an email address, but a Google group. And for some reason the Google group won't let me join it. Nor will it let me post a message. There is a nice little message that says, "send an email to the Q group". Using the address it lists causes a bounce from the mail server saying I'm not authorized to post messages to the group. Clicking on it takes me to a web page with a forms interface and a CAPTCHA system (obviously this group fears spam).

So I carefully paste in my message that previous bounced. I give it my email address and my real name. I fill in the hard-to-read CAPTCHA word from the image, and I punch "send".

And then _it_ bounces. It says I haven't filled out the CAPTCHA. And yet, there it is. I consider the possibility that my memory has suddenly had some kind of incredible glitch and I only _think_ I've filled in the CAPTCHA. So I do it again. Oddly, I notice that the CAPTCHA image is the same, and that doesn't seem right since they usually rotate. As the word "broken" bubbles to the top of my consciousness, I punch "send" yet again. And indeed, as I now expect, the pages comes back scolding me for not filling out the CAPTCHA form again. Ah. I'm not going to win this one. (For what it's worth, my browser is Iceweasel 3.0.7 and I also tried Konqueror 3.5.9 -- these are pretty widely compatible, stable browsers, so I don't think the issue is really my browser).

So, after wasting a good hour trying to "do the right thing", I decide that enough is enough. I did eventually find the package I needed, so I don't _really_ have to tell the developers what's going on. It's not really a bug -- at least, there's no "marketing" category in the package's "issue tracker" on the P archive site, so (it might seem to me if I didn't know better) _maybe listening to users just isn't important to them?_

Well, obviously, that was a great big FAIL in terms of marketing their project.

# Check Your Communications Lines - Frequently!

So, I would like to advise the developers of Q (and all of you who are maintaining small free software projects who need a userbase to remain relevant) to keep checking to make sure that users really can contact you.

=ZOOM=Every once in awhile, just imagine you are the user looking for your project -- and try to find it=

Put your own project's contact and release pages in your frequently visited bookmarks. Go there periodically so you can see what users see (and be sure to visit it logged-out of everything, so you see what new users will see).

And don't just depend on that -- especially if you've moved the site. Do a Google search for your project. See what sites come up. If old fossil sites are showing up at the top of the list, you'd better update them with breadcrumbs leading to the site you currently maintain. Or... just keep the top ranked ones in good repair.

With all the churn in a typical free software project, of course, the best way to contact you frequently changes. And the cool new website is always much more fun than the drab old site you abandoned, so who wants to go back? But if you don't keep a relevant link on that original page, and it still shows up on searches, many people are going to go _there_ when looking for your project. That's why you have to keep going back and checking.

Every once in awhile, _just imagine you are the user looking for your project_ -- and _try to find it_. If that's hard, then you may have a problem.

A disconnect won't immediately bother you, of course. And if you have no concern for whether your project is relevant to other users, then it may not matter to you, and you can safely dismiss this kind of problem. But if you want your software to stay relevant, you will need to get feedback from the people using it (or the people who want to use it), and so you need to make it possible for them to contact you. Don't take that for granted.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)".
=TEXTBOX_END=

