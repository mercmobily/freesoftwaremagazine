---
nid: '3603'
title: 'Creating a Project Website for "Lunatics" with Apache, Zope, Plone, MediaWiki, Trac, Subversion, and the Cloud Too'
authors: 'Terry Hancock'
published: '2011-12-22 3:51:41'
tags: 'web,subversion,zope,cloud,mediawiki,plone,trac'
license: verbatim_only
section: hacking
main_image: main.jpg
listed: 'true'

---
<!-- Creating a Project Website for "Lunatics" with Apache, Zope, Plone, MediaWiki, Trac, Subversion, and the Cloud Too -->

Film is a very comprehensive art form, probably the most that we have available to us at the moment, so it should be no surprise that a free film project severely tests the limits of available free software, not only for authoring the film, but also for collaborating on its creation. In the case of "Lunatics", we need to combine some of the community development software that is frequently used for free software development with tools allowing a lighter-weight interaction more comfortable for creative contributors, and finally, a fan-friendly public face. It's tricky, and I don't think we're really all the way there yet, but over this Summer, I've managed to find and assemble the necessary parts for our online presence. My solution combines several different platforms, and uses a few remote or "cloud" services as well.

<!--break-->

=TEXTBOX_START=Making Movies with Free Software=
This article is part of an on-going series on ["Making Free Movies with Free Software"](http://www.freesoftwaremagazine.com/books/making_free_movies_with_free_software).
=TEXTBOX_END=


Like a free software development project, a free film project needs a home on the web where people can not only find the project, but also help in its development. Unlike a free software project, it needs to accommodate a lot of people who are not software developers and don't want to be. It also needs to accommodate a wide range of different types of users -- viewers, fans, casual contributors of many different types, and a core production team. Also unlike a free software project, the collaborative content is not dominated by text -- although there are scripts and lots of textual reference material, the "source code" for an animated film project includes music, sound files, images, 3D models, and even final video footage. The final product is high-quality, high-definition video which, even on today's broadband internet connections can be a burden to distribute.

=ZOOM=Like a free software development project, a free film project needs a home on the web where people can not only find the project, but also help in its development=

It would be nice if somebody provided a turn-key solution for this, the way that Sourceforge and Google Code have for free software developers, but until then, it's necessary to build a custom site.

This is a brief overview of the design I settled on for "Lunatics". As elsewhere in the project, I've strongly favored free software -- the only exception I've allowed is in the form of a few "cloud services". I didn't really want to rely on them, but in a few cases it was just a lot simpler than trying to set up services on my own system.

# The Front Page

The front page or "splash page" for the site is the landing spot and the hub for the project. This is the page I put at [http://lunatics.tv](http://lunatics.tv). In the future, when fans come to see Lunatics, they'll find this site, and so it should take them right to the content. So the main feature of the page will be an embedded video. In the future, this will be the current episode of Lunatics, but of course we don't have that to put up yet. Until then, I'm using it as a showcase for video experiments, tests, and behind-the-scenes updates.

=IMAGE=fig_splash_page.jpg=The front of the front page -- what you see when you visit lunatics.tv=

This is also where we advertise the fundraising campaigns, merchandise sales, collaboration channels, and social media connections to further advertise the series. It also carries the latest news update (right now it says in not quite so many words, "Wow, the website works!"). In other words, this page is primarily a marketing tool.

=ZOOM=This is also where we advertise the fundraising campaigns, merchandise sales, collaboration channels, and social media connections to further advertise the series=

I need precise control over this page, because design is very critical when dealing with viewers and fans. I addressed the page design itself in a previous column, "[Reflections on a page design](/articles/reflections_page_design_my_how_web_has_changed/)", when I prototyped the page as a static HTML page (and for a while, the page on the site was a static page served directly from the file-system).

=IMAGE=fig_zmi_view.jpg=The back of the front page -- the page is broken up into separate Zope objects which makes it easier to separate and manage different parts of the page=

But I also need to be able to change it quickly to reflect stages in Lunatics' development as we move on with the project. So, I have gone with a modular design, using [Zope](http://zope.org) and "Page Templates" which are based on a language called "Template Attribute Language" or "[TAL](http://en.wikipedia.org/wiki/Template_Attribute_Language)", with "TALES" ("TAL Expression Syntax") expressions, and "METAL" ("MEta-TAL" macros). This is a highly-flexible approach that allows me to get just the look I want, but also be able factor out the elements into separate documents for easier access. A few choices, such as the particular embedded video are handled as Zope object attributes on the project's main folder in Zope, which makes them particularly easy to update.

# The Community Portal

The front page is great at attracting attention, but not at keeping it. It's not very "sticky", because when people come to a website, they want to find something new to look at. For that, we need a quickly-updated information-rich site like a blog or a news site. In fact, we're not entirely sure what we're going to need, so flexibility is of high importance.

=IMAGE=fig_plone.jpg=The "Lunatics Community Portal" site, based on Plone=

So, what we've chosen is a general-purpose CMS, which can be extended with modules if we need them. This is [Plone](http://plone.org), which is based on the Zope platform. I have a particular attachment to Zope, since I've spent a lot of time with it, so I'm using a Zope-based solution. Someone else might choose Drupal for this task (which is based on PHP), which would probably work as well.

I originally expected to need a lot of add-on to do what I wanted. However, I've found that I need very little extra, at least for now. I did need to install [RedTurtle Video](http://plone.org/products/redturtle.video) and its associated YouTube embedding extension so as to have a way to quickly upload embedded videos on the "Watch" page.

I didn't want to spend a lot of time on customizing Plone, so just picked one of the standard skins and created a "Lunatics Community Portal" banner logo for it.

# The Pre-Production Wiki

Of course, the second role for the website is as a tool for creating the series. For this, I need to install web applications that are specifically designed to facillitate collaboration. 

=IMAGE=fig_mediawiki.jpg=The pre-production site for "Lunatics" is based on the very popular "MediaWiki" package=

Probably the single most active, rapid, lightweight content management system on the web is MediaWiki. This is the engine behind the Wikipedia website, and it is of course, free software. It's also extremely robust, considering how much it gets put through by Wikipedia users. 

=ZOOM=Probably the single most active, rapid, lightweight content management system on the web is MediaWiki=

Most important for me, though, is that a lot of people, including non-technically-minded artists and writers have learned how to use it. They know the basic interface. They know what the buttons do. They understand a lot of the basic MediaWiki mark-up language.

So I can't think of anything that would be better for basic interaction with artistic collaborators. I also have the example of some other projects, such as the [Morevna Project](http://morevnaproject.org) which are using MediaWiki for production collaboration.

This site is where we are doing our pre-production work: collecting sketches, diagrams, textual descriptions, scripts, and so on.

We tried a [more complex installation](/articles/migrating_multiple_mediawikis_practically_perfect_people_policies/) at first, but it was more trouble than it was worth. So in the end, I scaled back to using a single wiki instance targeted to pre-production. All of the "fan" content is now on the Plone or Zope parts of the site, and except for the front page and the "Contributing to Lunatics" pages, you need a login to view the wiki. However, creating an account is an automatic process, with just a very simple "[CAPTCHA](http://en.wikipedia.org/wiki/CAPTCHA)" to prevent spambots from vandalizing the site.

# The Production Trac Page and Subversion Repository

However, there are limits to what you can do on a wiki -- trying to do the entire production in this way won't work. At some point, you have to start dealing in terms of files and a tree of source code on disk. To accomodate this level of development, which I'll distinguish as the "Production" collaboration, I need a real version control system.

=IMAGE=fig_trac.jpg=Front page of the production site for Lunatics, using Trac and Subversion=

I know there are many options for this nowadays, but "Subversion" is a classic, I know how to use it, and I've found out that it has been used on a number of Blender projects in the past successfully. So that's my pick for the version control system itself.

As for the project management, I chose a lightweight system called "Trac" that has very good integration with Subversion. It provides a project website, a ticket-tracking system, and a wiki, as well as online browsing access to the Subversion repository.

As with Plone, I didn't do much to customize the look of the Trac site. I just created a special Lunatics Production Site banner.

At first, I thought the ticket-tracking system would be superfluous ("Films don't have _bugs_, do they?"), but I realized that it's actually very useful for keeping track of missing elements for the film. If a prop or set is missing or incomplete, we can start a ticket. Then we can find out what needs to be created by looking at the open tickets.

=IMAGE=fig_lunatics_web.jpg=The big picture -- connections between all of the components of the web presence for "Lunatics"=

# External Sites

The top row of "social media buttons" on our site aren't the usual "share this link on your network" links. Instead, they each link to our own presence on those networks. There's even a link to my collected [Making Free Movies with Free Software](http://www.freesoftwaremagazine.com/books/making_free_movies_with_free_software) articles here on Free Software Magazine. But there's also links to our [Flickr](http://www.flickr.com/photos/lunatics_tv) photostream, a direct link to our [YouTube](http://www.youtube.com/user/TerryJHancock) channel, and links to our [Diaspora](https://diasp.org/u/lunaticstv) profile and [Facebook](http://www.facebook.com/pages/Lunatics/208617319168583?sk=wall) page.

# Embedded Cloud Services

There's a few things that I'm not willing to attempt to run on my own server, and there are some things you really can't do yourself anyway:

### Video streaming

It uses a lot of bandwidth, there are many things that can go wrong because of that, and it's unpredictable. So, instead, I got a [YouTube](http://www.youtube.com/user/TerryJHancock) channel and I stream video from that onto my site. It's not based on free software, but it's simple. In Plone, I have the Red Turtle video packages, which allow for embedding videos from YouTube. On the splash page, I've just written a page template that pulls the code for the video, caption, and descriptive links from Zope object properties of the containing folder. To change the video, I just log into the Zope Management Interface and change those properties (it's a simple HTML-forms interface).

### Social Media

I maintain a few of the social media links on the front page, but the APIs on some are tricky (including for some reason, Identica, which I tried to implement directly, but couldn't get working -- it involved a fair amount of embedded Javascript). So, in the end, I decided to embed a [Share This](http://sharethis.com) widget -- an intermediary which provides access to a large number of social media sites.

### Money

Handling monetary transactions on your own web site is extremely tricky, and even if you do, it's still a complex networking problem, because you have to deal with the banking networks. For a wide range of trust and complexity issues, it's much easier and safer to handle money issues through third-party services. We use two now -- [Flattr](http://flattr.com) which is a social-funding service and [PayPal](http://paypal.com) which just does payment transactions (in our case, donations). Once we get into serious fund-raising for specific production goals, we'll probably also be using [Kickstarter](http://www.kickstarter.com) which is a "crowd-funding" service. When we do, there will be a Kickstarter widget on the splash page as well. Later on, we'll probably be looking into some kind of internet storefront (I don't know what service we'll use for this, though I do know of storefront services from Yahoo and Amazon).

# Putting it all together

The trickiest part of the whole exercise is making all the pieces work together. In the end, for example, I served the main Plone, MediaWiki, and Trac sites from separate subdomains (lunatics.tv, wiki.lunatics.tv, and svn.lunatics.tv), because it was just easier to do that with Apache than to figure out how to configure one domain to serve them all at once. The standard way to integrate MediaWiki uses `mod_alias` while the standard installation for Plone uses `mod_rewrite` (two very different ways of mapping incoming URLs to sources of data). It's probably possible to make them work together, but it sure wouldn't be easy to understand. By putting them on separate sub-domains, I could just follow the standard instructions for each and not have to worry about unforseen interactions between the two.

=ZOOM=In marketing, you have to go where the people are=

The embedded services typically require some kind of Javascript inclusions to allow them to work. For these, the integration occurs in the viewer's browser. So while the YouTube video appears to the user to be "on" my page, it's really coming directly from YouTube. Something similar applies to the "Donate" button, "Flattr" button, and the "Share This" social media buttons -- they really originate from those providers' sites, and get assembled on screen by the user's browser.

Obviously, there are a lot of compromises here. On principle, I'm not a really big fan of Facebook. But I have an account there because I have friends and family who have accounts there, and it is a hugely popular site. In marketing, you have to go where the people are. So, I've tried to find a balance between supporting and promoting free software based services and simply supporting the most popular services.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=
