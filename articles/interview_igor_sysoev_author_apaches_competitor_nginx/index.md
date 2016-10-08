---
nid: '3657'
title: 'Interview with Igor Sysoev, author of Apache''s competitor NGINX'
authors: 'Tony Mobily'
published: '2012-01-05 12:07:52'
tags: 'web-server,apache,nginx'
license: verbatim_only
section: interviews
main_image: photo.jpg
listed: 'true'

---
NGINX is the new start rising in the landscape of web servers. Well, it's hardly "new" -- it will soon turn 10. However, it's definitely rocking the web server world, with Netcraft showing a huge increase in usage in the last few months.

I was fortunate enough to catch up with NGINX's author, Igor Sysoev, who agreed on answering a few questions for us. So, here is a glimpse on their business model, their new 2.0 version, and more. 

<!--break-->

**TM: When did you start working on NGINX, and why?**

I started the initial work in 2002, and in 2004 I opened NGINX to the public. Back then, I was trying to overcome certain barriers of scaling the web infrastructure of a large online media company I worked for. In particular, the difficulties of handling many concurrent connections, reducing latency and offloading static content, SSL and persistent connections were my main interest. There weren't any reliable production quality web server software to crack so-called C10K problem (handling of at least 10,000 of concurrent connections, outlined by Dan Kegel). So in a sense I decided to solve both practical and "academic" problems. I was very curious and excited to try it out and I'm really happy it turned to be a sucessful attempt and that NGINX is now used by the over 50,000,000 web sites on the Internet.

**TM: Was it hard to get hep to start with?**

The hardest part for me was to get the initial stucture of the code ready for further development.

**TM: When did NGINX become viable as a web server?**

It happened somewhere around 2007, and it's been growing since then.

=IMG=NGINX.jpg=NGINX's logo=

**TM: NGINX has enjoyed a lot of growth lately. What do you think of the latest stats?**

I think it's awesome. We've been watching the latest surveys (from Netcraft and W3Techs) with great interest, and we're glad that the trend towards a better (in terms of performance, scalability and efficiency) architected web installations continues.

**TM: NGINX doesn't have dynamic modules like Apache does. Is that in the pipeline?**

It is. I've been working lately on the next major release of NGINX which will have support for dynamically loadable modules.

**TM: When do you plan on releasing it?**

When it's ready enough to be released! Speaking more seriously, it's in a very early implementation stage and I need to finalize the new core architecture first. Hopefully it'll be available in the next three months or so.


**TM: Do you think you will ever offer a way to have a modularised version of PHP for NGINX? Why?**

We consider adding something like this. Version 2.0 of NGINX will have much better support for embedded interpreters, including PHP. Why we see it as important -- because it would simplify installation of NGINX in combination with PHP-based applications, and will provide an easier way to upgrade from Apache.

**TM: Configuring NGINX is a little more involved; however, allowing Perl within the server configuration gives immense power. Are you considering making NGINX easier to configure?**

Actually many system administrators consider NGINX configuration to be much more scalable, easy and logical than that of Apache. Admittely, depending on the complexity of the existing legacy setup things might not be that easy, especially with lots of rewrites.

In fact there are two aspects here. For one, we've been working on the documentation to provide a better set of instructions for the new users of NGINX. Also, we've been thinking of a better scripting mechanism to support both initial and run-time configuration. Version 2.0 of NGINX will add additional means to simplify and maintain server configuration, including a better compatibility with the existing legacy installations based on Apache.

**TM: In July 2011, you announced that NGINX became a "company". Did you leave your day job for it?**

Yes I actually did, I am the main shareholder of the company and I now have a role of the Principal Architect and CTO for Nginx, Inc.

**TM: Are you making money with NGINX? If so, how?**

It has just started as a commercial entity, but yes, we're making our first money. I can't disclose the names of our clients as of yet, but we've got contracts signed for technical support, consulting and for the first proprietary extensions based on NGINX as well. The latter mostly fall into the area of CDN and media streaming acceleration.

**TM: What's your business model for years to come?**

From the very beginning we planned to be a product company. We're going to produce a set of paid extensions on top of the open source NGINX that would constitute a viable commercial software product to be used as an "edge web server" for the cloud, hosting and CDN service providers and for the media&entertainment enterprise. This is exactly how NGINX has been used by many successful commercial entities on the Internet and we base our product plans on the real-life conversations with the existing and potential users of NGINX.

**TM: They would be based on new code, right? That is, things that you haven't released yet...**

Commercial features would be a new code, combined with the existing (and future) open source one. We aren't going to maintain two different distributions, but rather commercial products would be pluggable and licensed separately.

**TM: What kind of extensions are you talking about?**

For instance, features specific to CDN environment like those facilitating hierarchical architectures and advanced cache control, also commercial-grade HTTP streaming. There will be also improvements over existing L7 acceleration stuff. For the hosting&cloud service providers we are rather focusing on delivering a whole product to serve as a virtual L7 load balancing and accelerating solution with some security-related features too.

**TM: Are you concerned about alienating some adopters, who might end up seeing Apache as the "really free" option and NGINX as the expensive one?**

NGINX will remain a fully functional free open source web server under the same 2-clause BSD license. We have a whole lot of new features to add to the publicly available NGINX like websockets, support for SPDY, extended HTTP streaming, improved caching, a better API and so on. There's really no shortage of features in our roadmap to add to the "free open source NGINX".

However, with the commercial extensions we're targeting the companies who have been using NGINX for years and now demand more commercial-grade features which aren't normally available in any existing open source product. With time, we're also going to target enterprise market and this type of customers often require both technical support and license payments, while fully appreciating the open source nature of the foundation product.

For the people who are worried about whether NGINX is "really free" I can point to the list of changes that were introduced to the open source version in just the past few months since the company has started (there are literally dozens of improvements and bugfixes).

I believe this is the best illustration in regards to how much we're devoted to maintaining the BSD-licensed software. In fact, we're seeing a growing number of new users interested in NGINX and we're quite happy the news about the company and the funding didn't alienate them. We all believe that the fact the company has started is really beneficially for the project as it greatly secures and streamlines the development.

**TM: Thank you for answering my questions Igor!**