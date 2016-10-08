---
nid: '2383'
title: 'Interview with Jake McGraw @ Innovation Ads'
authors: 'Tony Mobily'
published: '2007-06-21 2:21:38'
tags: 'interviews,jake-mcgraw,innovation-ads'
license: verbatim_only
section: interviews
listed: 'true'

---
As some of you know, I developed the Karma module for Drupal. You can see it in action right here, in Free Software Magazine, when you “vote” for (or against!) other user’s comments. While I know Drupal quite well, I must say that my Javascript skills are quite poor. I developed what I could, and then got stuck. So, I ended up asking for help in the JQuery mailing list, explaining what I was doing, and what I needed. The response was immediate, and extremely helpful. I ended up working with Jake McGraw, on the other side of the world. Jake was fantastic, and the module was an expected success. I realised how unlikely... in fact, how impossible this cooperation would have been without the internet. Also, it turns out that his company was actually allowing him to return something back to the community since they use free software quite heavily—and I was the lucky person who benefited from that help!

Jake McGraw is a Web Application Developer for Innovation Ads, an online advertising company specializing in lead generation. He is a part of a team of five developers tasked with modifying and maintaining a multi-million dollar financial tracking and execution system, built entirely with free software. Innovation Ads handles millions of advertising transactions per month, each transaction must be scrutinized for bogus data and matched against an array of client requirements before its delivered. All of this is accomplished with a system that was developed almost overnight, is being heavily modified on a daily basis and whose original developers are no longer with the company. So, this was Jake’s job! Here is an interview with him...

**TM: Jake, tell us a little about your role at Innovation Ads.**

I arrived at the company last August and shortly thereafter received a crash course in Enterprise Level PHP Development. I was hired directly out of college, and I still had a lot to learn about writing software for a LAMP stack. Discovering why performing a join across a 50 million plus data set will crash your database server and all applications dependent on it was quite a lesson, especially when it crashes a live web site. I work primarily on reporting applications, that is, the applications which our sales team, executive and affiliates utilize to track campaign progress.

**TM: What are some of the projects you’ve worked on or have seen developed?**

During my time at IA, I’ve worked in two areas: Reporting and Cross Site Standardization. Cross site standardization is the name we have for web projects which have similar requirements and therefore can rely on the same code base. Before implementing this feature, we had a collection of websites which were each run using their own PHP code; if something broke, debugging was extraordinarily time consuming. We now use a heavily modified version of the Drupal CMS for all of these web sites; roll out for new sites and maintenance for existing ones is a snap.

Also part of this standardization effort at IA is the replacement of all of the bits and pieces of JavaScript sprinkled throughout our many websites. In one instance, the majority of our Ajax code was utilizing a framework whose documentation was only available in Russian. This wasn’t a problem when the framework was functioning correctly. However, when it started bringing down Internet Explorer at random intervals, I’ll let you know that staring at a screen filled with Cyrillic characters is not at all comforting. After quite a bit of research (there are a lot of JS frameworks to chose from), we picked jQuery for all of our JavaScript needs and are in the process of replacing our homebrew JS code with it.

**TM: What is the environment like at IA?**

Fast paced, especially for the development team. Much to our chagrin, joking of course, the executives here are often coming up with entirely new ways of doing business. Once each of these business platforms has been approved, the developers are responsible for retooling parts of our entire system to comply with the new system. My manager, Scott Kilroy, has created a work place environment where developers are free to learn and experiment with new technologies, which are often required to implement a new site feature. Scott has also been instrumental in allowing developers to create a solution as they see fit, he trusts us to take a vague business strategy and produce an innovative solution. It’s really a great place to learn the ropes for developing on an enterprise level.

**TM: What kind of hardware/software platforms do you use at IA?**

All of our enterprise level software is written on a LAMP stack. Our Linux distro of choice is CentOS and we use Apache2 for serving web pages and handling data posting. The vast majority of code written at IA is PHP and all of our information is stored on a MySQL Database. We make extensive use of the Smarty Template engine and Drupal CMS for quickly rolling out new websites and designs. All of our web properties are hosted on a load balancing cluster with Rack Space, which we’ve just purchased to replace a group for servers with less reliable hosts.

**TM: Does your company plan on giving back to the free software community?**

Funny you should ask, this is an initiative that has been one of my top priorities since arriving at IA. Since our organization was profited so much from the free software community, we’re now attempting to use a portion of our time to contribute to these areas. One area I’ve been actively involved in is providing my insight on the jQuery listserv, helping new members learn the framework. I’ve also contributed some of the front end logic for the Drupal karma module.

**TM: Thanks for talking with me Jake, and good luck!**

