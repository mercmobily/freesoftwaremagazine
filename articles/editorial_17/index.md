---
nid: '2164'
title: 'Welcome to Free Software Magazine&#x2014;again!'
authors: 'Tony Mobily'
published: '2007-04-06 7:30:00'
tags: editorial
issue: issue_17
license: cc-by-nd
section: announcements
listed: 'true'

---
As many of you already know, I founded Free Software Magazine in 2004. The idea was to create a printed magazine about free software. Our focus was on the paper version, and therefore the website was somewhat neglected. The way the magazine evolved showed us that that initial decision was a mistake. People clearly didn’t want another paper magazine—the popularity of our web site, and the lack of interest in the paper magazine, showed clearly that we needed to focus more on the online audience.

The first version of the web site was static, with (rather ugly) Perl scripts generating files. On top of it sat b2evolution, which allowed our authors to keep blogs. We had to personally assign articles by hand, and the system was messy to say the very least.

Then I started researching CMSes (Content Management Systems). I knew what I was looking for—but what I didn’t know, was that I wasn’t going to find it. I needed something that automatically managed the article’s workflow—from the author to the editor, back to the author, and so on—and would allow everybody to see what had changed. The system needed to send assignment emails automatically, and publish the articles on a web site—on the front page, and in an organised issue.

It was a lot to ask. In fact, it was too much. What I needed, was a CMS that offered a lot “out of the box”, _and_ still had the possibility of extending it to implement the workflow I wanted.

I could describe how I picked Drupal after extensive research and testing. I could describe how I discovered that it was the easiest CMS to extend, and basically allowed me to create exactly what I wanted in exactly 4 weeks, day 1 to deployment (I am a terrible programmer, and I am slow...!).

The truth is, I picked Drupal because many sites seemed to use it, I knew a little bit of PHP, and because Linux Journal used it. If it was good enough for Linux Journal, it was definitely going to be good enough for Free Software Magazine! So, I did it: I brushed up on my PHP skills, I installed Drupal 4.7 (it was still an early beta), got the documentation out, got the critically important `node_example.php` file, and... got started.

The end result was something that worked fine. However, because of a few key factors (see: poor programming skills, lack of time, an approximate understanding of Drupal, and so on), the system was anything but state of the art software.

It worked! It allowed us to run the magazine, revisions, and the workflow the way “it should be”. However, because of the key factors I listed above, our jewel still had problems: the code still had comments from `node_example.php`; a few things were hard-coded when they should have been configurable; a few things were just plain wrong from a Drupal perspective; the module expected several key patches to Drupal, which made upgrading “less than optimal” (read: a complete nightmare); the system wasn’t tidy: several functionalities were duplicated in the theme and in various Drupal modules; unfortunately, the list goes on and on, and unfortunately this is precisely why the first version of our custom Drupal modules were, quite simply, _bad software_.

It took me personally four months to work through everything I wrote, reorganise it, comment it properly, document it, port it to Drupal 5, and release it. The custom modules are now perfectly commented, there is pretty much nothing hard-coded, they play well with Drupal, they don’t require patches, there is no duplication, and so on.

I am in the process of releasing these modules to Drupal 5, so that everybody out there can create their own magazine and have a neat system to organise the contents in issues and use a state-of-the-art workflow system. This will get people to improve the modules further, and will give something back to the same community that has been supporting us for such a long time.

Free Software Magazine's web site now runs on Drupal 5; we can now comfortably add many more features and know that we are using a fantastic CMS that will stay around forever. So, to sum up this editorial: we upgraded everything to Drupal 5, ported, improved and released our custom-made modules, and are preparing to roll-out more and more exciting features.

So... enjoy!

