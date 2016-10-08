---
nid: '3676'
title: '5daysprofitable: A corporate web site, start to finish, in 4 hours'
authors: 'Tony Mobily'
published: '2012-01-11 13:31:23'
tags: '5daysprofitable,drupal,corporate-site'
license: verbatim_only
section: end_users
main_image: boots.jpg
listed: 'true'

---
In my [previous article](http://www.freesoftwaremagazine.com/articles/company_zero_operational_and_profitable_5_days_with_free_software), I explained that I would embark in the Herculean task of starting a company, and make it successful and profitable, in just 5 days. And by using free software.

The first piece of this complex puzzle is a corporate web site. I had mine ready in less than 4 hours, start to finish. Here is what I did.

<!--break-->

# First step: Domain and site

The first step is to register a domain name, and have a standard Drupal 7 installation on it.

I already had a domain name "parked" (so to speak): I used it for my personal email. The domain is mobily1.com. Since recycling is the rule here, I decided to use it for the site. I also had a ready-to-go Drupal 7 installation. So, configuring Apache to get things working was a breeze.

If you are not a geek, and if you don't feel technically able to configure a server, you are in very good company (most people can't), but you are not out of luck: there are about a zillion ways to go about this. Several hosting providers will allow you to run Drupal without issues. In general, if a hosting provider says that they are Drupal ready, and they have a 1-click installation process, then it's most likely to be a good choice (!). I guess what I am saying is that anybody, without touching the command line, can have a fresh, nice domain name with a Drupal 7 installation on it.

# Second step: the theming

This is when Drupal's awesomeness really shines. I have a million reasons to be angry at Drupal; and about a _billion_ reasons to love it. That leaves me with a balance of nine hundred and ninety-nine reasons to stick with it.

It took me 15 minutes to search through themes, and finally find the [CorporateClean Drupal theme](http://drupal.org/project/corporateclean). I installed it (which really is just a matter of copying it over the sites/all/themes directory in your Drupal installation) and voila': I had a site that was 95% functional and ready.

Customising the theme was really simple. The end result is what you can see here in my new [mobily1.com's web site](http://www.mobily1.com).

=TEXTBOX_START=Borrowing a logo=
In my previous paragraph I talked about recycling. This is going to be the keyword in my little 5-day adventure: for the company logo, I reused Applicom's logo, a company I am very friendly with and who won't mind if I borrowed it for the time being. The logo is generic enough to look like the "M" in Mobily1.com, and will definitely do the job.

If you are not lucky enough to have a friend with a spare logo, then you can just use a [Logo Generator](http://www.logogenerator.com/): this one is only the first one I found online. I am sure that there are plenty online.
=TEXTBOX_END=

Note that the level of customisation is very minimal here: I changed page.tpl.php to change the contents of the carousel in the home page, and very little else.

# Third step: the contents

What am I selling? Well, this is a pretty tough one. I only have a week to put the stock together, market it, and sell it.
So, what I decided, again, is to apply the "recycle" rule: what do I have _already_ that I can sell? I don't own much (I am a minimalist by nature), so it will need to be some kind of service.

What do I _know_? I am good at training people. So, I decided to stick with what I know, and what I know how to do: teach. I decided (in the 25 minutes in which I brainstormed my abilities) that I would organising training course.

Note that I created the web site, with the basic course information, but I still don't have the teaching materials. However, at least for now, this will do.

# Fourth step: the booking form

Once I've decided what I am doing, it's a matter of creating a booking form for my courses. Thanks to the [Webform](http://drupal.org/project/webform) module, that was very simple. I created a booking form where you can specify the date, and the course you want to do (I will only offer two 1-day courses).

# Thank you, free software

A corporate site -- and I mean one that doesn't look much better than the one you can see here -- can cost some decent amounts of money. Thanks to the power of Drupal, I was able to create a professional-looking site in a very, very short amount of time.

The first step is done. Tomorrow, it will be a matter of creating the marketing material and sell my courses.