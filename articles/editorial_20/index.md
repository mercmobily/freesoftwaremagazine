---
nid: '2458'
title: 'So, why, why do people and companies develop free software?'
authors: 'Tony Mobily'
published: '2007-11-07 14:01:49'
tags: 'free-software,developers,peer-review'
issue: issue_20
license: verbatim_only
section: opinions
listed: 'true'

---
More and more people are discovering free software. Many people only do so after weeks, or even months, of using it. I wonder, for example, how many Firefox users actually know _how free_ Firefox really is—many of them realise that you can get it for free, but find it hard to believe that anybody can modify it and even redistribute it legally.

When the discovery is made, the first instinct is to ask: why do they do it? Programming is hard work. Even though most (if not all) programmers are driven by their higher-than-normal IQs and their amazing passion for solving problems, it’s still hard to understand why so many of them would donate so much of their time to creating something that they can’t really show off to anybody but their colleagues or geek friends.

Sure, anybody can buy laptops, and _just program_. No need to get a full-on lab or spend thousands of dollars in equipment. But... is that the full story?

<!--break-->

The first myth is that free software programmers are all starving. Many people don’t realise that a lot of free software programmers are actually paid to do their work. They are definitely lucky: they might be employed by a big company like Red Hat, that has never disappointed in terms of licensing and patch submissions. Or, they might work as contractors on specialised modules, on the basis that their code will be available to others; this happens a lot with the CMS Drupal, which we use for Free Software Magazine. On the other hand, for every (more or less) paid free software programmer there are many more who aren’t. They do it because they either need/want something that doesn’t exist (or, it does exist, but they need/want it done in different way), or because they just love programming and being part of a fantastic, enormous and ever growing community.

Paid or unpaid, company or private programmers, the question remains: why do they do it?

The answer, as amazing as it sounds, is “convenience”. It’s better, and more importantly cheaper, to develop free software.

A good example is Red Hat, which created Red Hat Enterprise Linux (RHEL). RHEL is based on thousands of pieces of free software, as well as extra packages that are developed internally. Unlike many of their less successful competitors, everything—even the custom software they’ve written—is released under the GPL (or another license which is ultimately based around the idea of being able to share the code). By releasing everything under the GPL, they basically get thousands and thousands of beta testers who test their code and send patches back to make sure that things get fixed. (For those who aren’t developers: a “patch” is basically an improvement to an existing piece of code; it’s basically a modification to an existing program, in order to fix problems or extend functionality). If Red Hat didn’t release the code, they would have to spend enormous amounts of money to do what they do—and it wouldn’t be half as good. What about CentOS, the Red Hat Enterprise Linux clone which uses Red Hat’s source packages and doesn’t require you to have a support contract with Red Hat in order to use it? I am sure CentOS “costs” Red Hat decent amounts of money in terms of lost revenue; however, I also know that it actually helps Red Hat’s sales (I, personally, know of two different companies that started out with CentOS and “upgraded” to RHEL), and creates an army of system administrators who are used to CentOS and are going to pick Red Hat Enterprise Linux when their company wants a supported operating system. It’s a bit like paying for advertising, really.

I talked about patches... why would all those people send patches back to Red Hat? Because it’s better to do so.

Take Apache, for example. If your company runs Apache on its servers, you, of course, need it to work right. Now, if it doesn’t and you find a bug, you can report the bug to the Apache developers. However, the bug might be one that will only affect a small minority of users; this might mean that it will have a very low priority for the developers. If it's important enough to you, you might decide to try and fix it yourself or, perhaps, pay somebody else to fix it.

If you send your patch back to the Apache developers, you will know that the bug will be fixed in every new release of Apache, so you won't have to keep fixing it every time you upgrade to a new version. Not only that, but everybody else who uses Apache will benefit too. Your patch will be checked over by amazing developers, improved, discussed and improved some more.

On the other hand, if you decide that you want to be greedy, and you don’t submit the bug, you will have to re-apply it every time a new version of Apache comes out—and hope that the your patch still works each time. You will also have to settle for a patch that hasn’t been peer-reviewed and, therefore, could (err... will), itself, be buggy. This is also true when you apply patches that would give your company a so-called “competitive advantage”: you might decide to improve Apache so that it’s vastly better than the “stock” version in some specific (and critical, to you) ways. However, you have the same problem: you will have to hope that whatever you change will keep on working over time with each version, and you will have to invest _real_ money in developing and testing the patch(es).

I recently developed a karma module for Drupal. We wanted it for Free Software Magazine; therefore, I can say that I “got paid” to write it. Now, the module has been used on many other sites and is reviewed and improved by many other developers. On top of that, I also get recognition for having written a very powerful karma module for Drupal.

It might take the poetry away from free software, when you say that people and companies write it because it “suits them”. But, it may well be the case.

Does anybody mind? I don't, as long as software stays free—as in freedom.

