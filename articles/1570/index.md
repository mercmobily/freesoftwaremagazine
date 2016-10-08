---
nid: '1570'
title: 'Free Software Magazine''s blogs just got better!'
authors: 'Tony Mobily'
published: '2006-06-01 6:42:07'
license: verbatim_only
section: announcements
listed: 'true'

---
This blog entry is to inform you about two great pieces of news about Free Software Magazine, which involve our web site and our blog section.

First things first: we have just finished updating our web site so that it runs the latest version of Drupal. I must admit that I was waiting for the version 4.7.1 of our web site to do this: I never trust version ".0" of anything!

Now that we are running an "official" version of Drupal, we can say it: overall, we can say that the Drupal version of our web site was a great success. Dave (Guard) and I did the whole thing together: it took countless hours, several thousands lines of of code, and a lot of patience (especially when it became a matter of importing the information...).

In the end, I only had to patch a few of Drupal's core files to get our web site exactly how we wanted it (and yes, please do allow me to show off):


=CODE_START=

[root@mobily3 modules]# ls -l *ORIG*
-rw-r--r--  1    0    0 10062 Jun  1 03:20 archive.module.ORIG
-rw-r--r--  1    0    0 12029 Jun  1 02:08 blog.module.ORIG
-rw-r--r--  1    0    0 90074 May 14 19:57 node.module.ORIG
-rw-r--r--  1    0    0 52091 May 24 14:21 taxonomy.module.ORIG
[root@mobily3 modules]# 

=CODE_END=

I also wrote a workflow-orientated module that has served us fantastically well, and that will be released soon under a free license.

This upgrade came at the same time as the less technical decision that we would focus a lot more on the blogs.

For this reason, we have reorganised the blog section of our site so that our top authors will keep a regular blog (and yes, that includes me...). The goal, we admit it, is to build up a community of people who come back to our site and comment on what our authors have to say. It's also to keep us in touch with you, our readers, so that we can improve our web site and hear from you on a daily basis.

So... please keep an eye on our site. We have delivered Free Software Magazine for over one and a half years, and now we aim at delivering a fantastic web site with the best free software bloggers on the planet.

Stay tuned!

