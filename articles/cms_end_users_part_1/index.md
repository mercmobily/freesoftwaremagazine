---
nid: '1269'
title: 'Creating a managed website&#x2014;Part 1'
authors: 'Graham Oakes'
published: '2006-11-22 8:00:00'
issue: issue_14
license: cc-by
section: hacking
listed: 'true'

---
Do you manage a website? Maybe you’re looking after the site for a small business. Maybe you’re doing it for a community group. Perhaps it’s your own personal site. You’d like it to be dynamic: to have some fresh news every week and a home page that’s always up to date. Therein lies the problem. You’re tired of constantly editing HTML to make these changes. And every change gets more complex as you try to keep the look-and-feel consistent across all the pages. Or maybe the site was developed by an external designer. That shielded you from the technical complexities, but now every change takes time and costs money. Perhaps you need a content management system (CMS)...


# Do I need a CMS?

A CMS can insulate you from the technical complexities of updating content. Rather than having to learn HTML editors and manage FTP protocols, you can get back to what you want to do—use simple editing tools to create up-to-date, well-presented content for your audience.

A CMS can help in other ways. With the appropriate CMS you could, for example:


* Create workflows to help teams of authors co-ordinate their work;
* Automatically structure each page with common navigation and other design elements;
* Control the branding of your content by ensuring that style sheets are used consistently;
* Ensure the site complies with accessibility guidelines;
* Distribute the same content to multiple websites, RSS feeds, etc;
* Ensure that content is only displayed to people with the correct access rights.

Of course, this all comes at a cost. For a start, you need to choose a CMS from the hundreds that are available. Then, even if you choose a free CMS (and CMSs based on free software are capable of running most websites these days), you’ll need to pay for a server to run it. You’ll need to download, install and configure the CMS. Finally, everyone who’s creating content for the site will need to change the way they do things.

So even a free CMS isn’t cheap. But the benefits of allowing people to create and publish content more easily can make one worthwhile for many sites.

=TEXTBOX_START=Setting up a CMS—how much effort is involved?=
  A CMS makes it easier for people without technical skills to publish content. However, to make this possible you need to spend time setting up the CMS. This creates an overhead. For example to install the [Joomla](http://www.joomla.org/) CMS you need to


* Set up your hosting and internet access arrangements
* Set up a server and install the operating system
* Download and install Apache, PHP and mySQL
* Download and install Joomla
* Set up templates to control page designs
* Set up the site itself

For a CMS like [Plone](http://www.plone.org), you’ll also need to set up user permissions and workflows. Only once all this is done can you start entering content onto the site. How long does this all take? Nynke Fokma of [Moebius](http://www.moebius.nl) reckons “With Joomla, we built the new site from the existing HTML site in two days.”

That’s two experienced people and two days. If you’re learning as you go, or if you have a complex site, it could take a lot longer. The good news is that this is a one off—once the site is set up, then people can publish new content quickly and easily. If the site changes a lot, then the initial overhead could be repaid very rapidly. If the site doesn’t change much, then a CMS might not be particularly helpful.


=TEXTBOX_END=

=IMAGE=hut.jpg=Hut... Like building your own hut, creating a site in HTML gives flexibility to grow in different directions. But your skills may limit the elegance of the final design. (You may also need to spend time plugging the leaks!) (Image courtesy of Robin Elaine.)=


=IMAGE=hotel.jpg=... or Hotel? A CMS can help create structure and order, but it can also constrain your flexibility. It’s very easy to do what the CMS anticipates; tough to move outside the boundaries. (At least with free software, you have a map of those boundaries and can extend them yourself if you need to.) (Image courtesy of Thomas Hawk.)=


# What do I need to think about before I choose a CMS?

To get the right trade-off between costs and benefits, you need to choose the right CMS. To do this, you need to be clear about what you want to achieve. Some of the benefits may be more important to you than others. Some may be irrelevant. The costs may have greater or lesser impact on you depending on your skills. Being clear and focused makes it a lot easier to choose your CMS and configure it appropriately.


=ZOOM=Being clear and focused makes it a lot easier to choose the right CMS and configure it appropriately=

To develop that clarity, here are some questions to consider:


* **Who is your audience?** Think about the people who come to your site. What attracts them? Are they looking for in-depth, authoritative information, or for sound bites? Do they use a full-sized web browser, or are they sometimes coming via their mobile phone? Are they all looking for the same information, or do you share more privileged information with some people? How frequently will they come to the site? How long will they stay? What language do they speak? A site that is visited by local teenagers every morning to get the latest gossip is going to look very different to a site visited only occasionally by international customers who need technical support, and they’re both going to need different content management tools.
* **What do you want to say?** Think about the message, and about the format it needs. Will everything be in text or do you also deliver audio and video? How much of this content will there be? If your site has 20,000 pages and is accessed by thousands of people every day, then you need a CMS that can support this volume. Do you want to support more collaborative content such as discussion forums and wikis? Some CMSs make this easy, so if it works for your audience it’s an important consideration. Likewise, if you want to include e-commerce functionality on the site then you need to consider how your CMS will integrate with other systems.
* **What will the site look like?** What impression do you want to convey to your audience? “Authoritative” looks different to “cool”, so you’ll need to ensure that all aspects of the site (the colours, fonts, images, voice, etc) convey the right message. If this is really important, then make sure you choose a CMS that makes it easy to support your desired design. Above all, remember that a CMS doesn’t replace design. It may come with standard templates, but for all bar the simplest of sites you’ll want to develop these to reflect your own branding.


=ZOOM=Think carefully about who will be visiting your site and what you want to say to them=


>_“A CMS will not make your site look better. It will not make your content more interesting. You still have to do the work. But a CMS can help organise and reuse content, and present it at the right time and in the right format, if you are ready to do so.”_ Francesco Ciriaci, cofounder of [Reflab](http://www.reflab.it/)


<!--pagebreak-->



* **Where will the content come from?** Migrating content from your existing site to a new CMS can be a substantial task. If you have a lot of content, check that your CMS provides tools to support the migration. Once the site is up and running, how frequently will it change, and how much control do you need over those changes? If everything needs to go through legal and other approvals before it can be published, then look for a CMS that supports such workflows. Or if several people need to collaborate on certain pages, then look for a CMS that supports such collaboration.
* **Who will work with the CMS?** Someone will be creating content, but there may also be people who manage servers, and people who approve changes to the site. Who is your current webmaster? A CMS will affect all these people. There may even be external contractors and volunteers who work with the site. They all need to accept new ways of working. So look at yourself and your co-workers—are you prepared to learn new ways of doing things?


>_“I use a model to guide me when I advise people about web sites. It’s based on a hierarchy of needs. If the business is healthy and their current use of web technology is OK, then I look at their “organisational athleticism”—can they adapt to the pace of change? If the organisation is not athletic, then introducing a CMS could be real trouble.”_ Rick Brenner, principal of [Chaco Canyon Consulting](http://www.chacocanyon.com/)


* **Administration.** Be clear about the administrative details. If you are migrating from a site that’s been developed by someone else, make sure you own the URL and all the content files for the site. You’ll need copies of these files, so you need the account names and passwords to access them. Take a backup. Check how you’ll take backups of the content you load into the new CMS.


# How do I choose the CMS?

OK, you have a fair idea of who will use the CMS and what they will do with it. Choosing a CMS is now about checking the features that each CMS offers against what you want to do, and picking the one that provides the best fit. The main complexity is the range of options. [Wikipedia](http://en.wikipedia.org/wiki/List_of_content_management_systems) lists about 130 free software CMSs. [CMS Review](http://www.cmsreview.com/) lists more. [CM Pros](http://www.cmprofessionals.org/), a community of content management professionals, is developing a [database of CMSs](https://www.cmprofessionals.org/resources/cmsml/comparator/) and their features to help narrow down the search, but the best source of up-to-date information about any particular CMS is currently the website for that CMS.

Here’s what to think about as you’re working through these lists.


## Why use a free software CMS?

Many free CMSs are now mature systems and well matched to common content management problems. Seth Gottleib has written a [report](http://www.optaros.com/pdf/optaros_cmsReport_012206_sgg.pdf) that identifies a range of situations where free CMS work well. In these situations, the benefits of free software include:


* You can put your budget into content development, not into licence fees.
* You can try out the software before you commit too heavily to it. Demo versions of many CMS are even available at the [opensourceCMS.com](http://www.opensourcecms.com/) website. Although, if you need more advanced features, such as customised workflows, you probably need to download the software to try it.
* An active development community means that free CMS are often early to support new features in areas like collaboration and content syndication.


# To be continued...

The second part of this article will look at how to select a CMS for your site. It will then discuss the steps you’ll need to take to install and configure the CMS, and then to set up your site and its content. Finally, it will cover promotion and maintenance of your site.

