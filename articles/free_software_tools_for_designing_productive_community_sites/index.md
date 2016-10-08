---
nid: '3025'
title: 'Free software tools for designing productive community sites'
authors: 'Terry Hancock'
published: '2008-10-07 2:29:44'
tags: 'community,web-applications,wikis,social-networking,virtual-reality'
license: verbatim_only
section: opinions
listed: 'true'
book: making_the_impossible_happen_the_rules_of_free_culture
book_weight: '10'
layout: book.html

---
These days there's a lot of buzz about "Web 2.0" and making websites more interactive, but what's really going on is a reconnection to the community nature of the internet. Collaboration, cooperation, and the information commons are all ideas that pre-dated the world wide web in the form of older internet technologies. In today's distributed computing environment, though, these technologies have really flourished. Here's a guide to eight that you should consider making use of in building a community around an information commons project of any kind, from multimedia, to hardware, to software.

<!--break-->

# Community-building tools

The early twenty-first century has brought us some excellent tools for building more sophisticated and responsive communities around peer production projects. Few projects need to deploy more than one or two of these technologies. However, a greater consideration of the community atmosphere and electronic landscape can make a huge difference in the success of your project.

Free software has played an important part in this technical revolution. As a result, there are free software tools for every one of these categories. In many cases, in fact, the free software tools lead the market. Which particular package you use will depend on what sort of CMS, portal, or hosting you have available to you.

I can't possibly hope to be comprehensive in listing packages to provide these services, but I have tried to present a reasonable sampling of some of the most popular and/or interesting tools that I could find. For the web-based tools, I've included information on LAMP-based (Linux-Apache-MySQL-PHP) packages, Drupal (a PHP-based CMS, on which Free Software Magazine is based), Plone (a Python/Zope-based CMS, which is what I am planning to use), and a selection of others (based on C, Perl, Ruby, Java, and others). I've also listed sites that provide these features as hosted services, which gives you the option of not having to install anything on your own server.

Certain technologies—particularly synchronous or visualization tools—rely on alternate client/server technologies. For those, I've listed clients, servers, and infrastructure information (including protocols and libraries) that may be of use.

Regarding tools for installation on your own server and/or client software to be used by visitors or contributors, I have restricted this list to free-licensed open source software only. However, in the column "Services", I have relaxed this requirement: where there are widely-used, market-leading proprietary software based services, I have included them. This includes services like SecondLife and Yahoo Groups, both of which have been used extensively to promote free software or free content projects.


## Private communications: email and instant messaging

The most basic communications technologies are those that provide simple one-to-one communication. Email is the traditional way to do this in the free software community, but for a given project, conversations can also happen through forum "private message" (PM) communications or, if immediacy is also desired, through instant messaging technology (and don't forget, there's always the telephone!).

=IMAGE=c20080930_tools1_pm.jpg=Email and private messaging systems provide basic one-on-one communication. Most free software projects just use email, but web-based forum "private message" (PM) messages can be just as effective in a project (Photo credit: Daria Radota Rasmussen/CC-By 2.0)=

Email software is ubiquitous of course. Private messaging is usually a feature of "forums" (see the next section). Synchronous "chat" systems are fundamentally different from a technical perspective, though they serve much the same purpose.

There are a few cases of chat "applets" which can run from within a browser window, which can bring chat into the web browsing experience. There are also a number of "webmail" applications that can be embedded in a website, though I didn't attempt to list these below.


Context       | Private Messaging Resources
--------------|-------------
Low-Tech      | [email](http://en.wikipedia.org/wiki/E-mail)
LAMP          | [CoolSmile](http://www.coolsmile.net/), see also forums
Drupal        | [Forummail](http://drupal.org/node/61445)
Plone         | [qi.LiveChat](http://plone.org/products/qi-livechat), [MailNode](http://plone.org/products/mailnode), [PloneFormGen](http://plone.org/products/ploneformgen), [SignupSheet](http://plone.org/products/signupsheet), (see also forums)
Other         | webmail packages
Web Services  | Google Mail, Yahoo Mail, etc.
              |
Clients       | [ChatZilla](http://chatzilla.hacksrus.com), [Konversation](http://konversation.kde.org), [XChat](http://www.xchat.org), [BitchX](http://www.bitchx.org), [_other IRC_](http://en.wikipedia.org/wiki/Comparison_of_Internet_Relay_Chat_clients); [Kopete](http://kopete.kde.org), [Pidgin](http://sourceforge.net/projects/pidgin), [_other IM_](http://en.wikipedia.org/wiki/Comparison_of_instant_messaging_clients)
Servers       | [EIRC](http://eirc.sourceforge.net) (Java), ircd, [_other IRC_](http://en.wikipedia.org/wiki/Comparison_of_IRC_daemons)
Infrastructure| [IRC](http://en.wikipedia.org/wiki/Internet_Relay_Chat), [_other protocols_](http://en.wikipedia.org/wiki/Comparison_of_instant_messaging_protocols)
Services      | [OFTC](http://www.oftc.net), [freenode](http://www.freenode.net), [EFnet](http://www.efnet.org), [Undernet](http://www.undernet.org)


## Forums

The next step up is a web-based "forum". These are the evolution of the "bulletin board systems" (BBSs) of the 1980s and 1990s, adapted for use on the world wide web. They are accessible for most users, even ones who might have trouble with email. More importantly, they provide a lot of moderation options which gives you more ability to keep trolls and flames and other bad conduct out of your project. Doing so will encourage more people to stay on with your project.

If you want to stay low-tech, of course, the preferred technology nowadays is the electronic mailing list. Most of the newer email list servers, however, have some form of web-based subscription system. There are also the Google and Yahoo "Groups", which have nearly the same functionality as usenet newsgroups, but are accessible via both a web interface and email.
=IMAGE=c20080930_tools2_forums.jpg=Forums and discussion groups provide room for support, education, and consensus (Photo credit: Pingu1963@Flickr/CC-By 2.0)=

Context       | Forum Resources
--------------|-------------
Low-Tech      | [mailing lists](http://en.wikipedia.org/wiki/Electronic_mailing_list), [newsgroups](http://en.wikipedia.org/wiki/Newsgroup)
LAMP          | [PHP BB](http://www.phpbb.com), [Phorum](http://www.phorum.org), [FluxBB](http://fluxbb.org), [XMB](http://forums.xmbforum.com), & [others](http://en.wikipedia.org/wiki/Comparison_of_Internet_forum_software_(PHP))
Drupal        | [Forum](http://drupal.org/handbook/modules/forum)(core), [Advanced Forum](http://drupal.org/project/advanced_forum), [flatforum](http://drupal.org/project/flatforum), [Forum Thread](http://drupal.org/project/forumthread), [Democracy forum](http://drupal.org/project/democracy_forum), [phpBBforum](http://drupal.org/project/phpbbforum), [Phorum integration](http://drupal.org/project/phorum_integrate)
Plone         | [Ploneboard](http://plone.org/products/ploneboard), [SimpleForum](http://plone.org/products/simpleforum), [zForum](http://plone.org/products/zforum), [TIForum](http://plone.org/products/tiforum), [Gossip](http://plone.org/products/plonegossip), [EasyForums](http://plone.org/products/easyforums), [NunBB](http://plone.org/products/nunbb), [PloneMailList](http://plone.org/products/plonemaillist), [Listen](http://plone.org/products/listen)
Other         | [JForum](http://www.jforum.net), [Beast](http://beast.caboo.se), [others](http://en.wikipedia.org/wiki/Comparison_of_internet_forum_software_(other))
Services      | [Google Groups](http://groups.google.com), [Yahoo Groups](http://groups.yahoo.com), [Simple Machines Forums](http://www.simplemachines.org)


## Blogs and online contents

Maintaining an up-to-date website, by directly editing static HTML is a major chore. So "content management systems" (CMS) were invented to simplify the task. One of the most popular types today is the "web log" or "blog". There are dedicated standalone blog packages, but there are also blog modules for most of the major content management systems (including Drupal and Plone).

=IMAGE=c20080930_tools3_blogs.jpg=Web-logging or "Blogging" software and content management systems can provide everything from an open diary on the web to a full-fledged news service, depending on particular package details (Photo credits: Wee Keat Chin/CC-By 2.0, David Lisbona/CC-By 2.0)=

Context       | Blog Resources
--------------|-------------
Low-Tech      | static HTML
LAMP          | [Wordpress](http://wordpress.org/), [b2evolution](http://b2evolution.net/), [LifeType](http://lifetype.net/blog), [Serendipity](http://www.s9y.org/), [Nucleus CMS](http://nucleuscms.org/), [FlatPress](http://www.flatpress.org/home/), [others](http://www.weblogmatrix.org)
Drupal        | [Blog](http://drupal.org/handbook/modules/blog)(core), [Single-User Blog](http://drupal.org/project/single_user_blog), [Blog List](http://drupal.org/project/blog_list), [Mini Blog](http://drupal.org/project/mini_blog), [Blogroll](http://drupal.org/project/blogroll), [Blogger](http://drupal.org/project/blogger), [DrupalMU](http://drupal.org/project/drupalmu)
Plone         | [COREBlog2](http://plone.org/products/coreblog2), [Quills](http://plone.org/products/quills), [SimpleBlog](http://plone.org/products/simpleblog), [q Plone Blog](http://plone.org/products/qploneblog), [bda.blogview](http://plone.org/products/bda-blogview), [PloneWorkflows](http://plone.org/products/ploneworkflows), [ReactiveWorkflow](http://plone.org/products/reactiveworkflow), [Press Room](http://plone.org/products/pressroom), [Slideshow Folder](http://plone.org/products/slideshowfolder), [Plumi](http://plone.org/products/plumi) (video)
Other         | [Typo](http://typosphere.org/projects/show/typo)(Ruby)
Services      | [Wordpress](http://wordpress.com), [others](http://en.wikipedia.org/wiki/Category:Blog_hosting_services)


## Wikis and Version Control Systems

It may seem a little strange to lump wikis and version control systems together, but the truth is that they do much the same task. A wiki is a kind of lightweight version control system combined with viewing and editing directly in your browser. Wikis usually present a much shallower learning curve than do tools to manage CVS or Subversion, although there are some nice integration packages available.

=IMAGE=c20080930_tools4_wiki_vc.jpg=Wikis and version control systems both maintain code bases for the project. Wikis are lightweight and can be easily modified by almost anyone willing. Version control systems take some time to learn, but are usually more powerful in the sorts of version tracking they can do (Photo credits: Kevin Quinn/CC-By 2.0, Ralph Bijker/CC-By 2.0, Lars Plougmann/CC-By-SA 2.0, Ellie Van Houtte/CC-By 2.0)=

A wiki is just a quick, easily marked-up web site generation system, with simple shortcuts for creating new pages as well as rendering them to HTML (and sometimes other formats as well).

Version control systems are based on a different kind of mental model: one in which the package is downloaded (or "checked out") entirely by one user who then makes changes which then must be "checked in". This is a much heavier solution than the wiki, and there are typically access limits which result in a more complicated workflow. Formal version control systems are preferred for handling program source code, though. There are a lot more version control systems available, but I've listed Subversion here because it contains a web-accessible browsing system (ViewVC and Trac provide this for some other version control systems, including CVS, which was the standard for free software for many years).

Context       | Wiki & Version Control Browsing Resources
--------------|-------------
Low-Tech      | static HTML
LAMP          | [MediaWiki](http://www.mediawiki.org), [TikiWiki](http://www.tikiwiki.org), [DokuWiki](http://www.dokuwiki.org/dokuwiki), [others](http://en.wikipedia.org/wiki/Comparison_of_wiki_software)
Drupal        | [Drupal Wiki](http://drupal.org/project/drupal_wiki), [interwiki](http://drupal.org/project/interwiki), [Wikitools](http://drupal.org/project/wikitools)
Plone         | [ZWiki](http://plone.org/products/zwiki), [ZWikiFolder](http://plone.org/products/zwikifolder), [Wicked](http://plone.org/products/wicked), [Cuic pages](http://plone.org/products/cuic-pages); [ViewVC++](http://plone.org/products/viewvc)
Other         | [Moin Moin](http://moinmo.in/) (python), [JAMWiki](http://jamwiki.org/) (java), [Instiki](http://www.instiki.org) (ruby); [ViewVC](http://www.viewvc.org), [Subversion](http://subversion.tigris.org), [Trac](http://trac.edgewall.org)
Services      | [Wikia](http://en.wikipedia.org/wiki/Wikia), [Wikibooks](http://www.wikibooks.org), [others](http://en.wikipedia.org/wiki/Comparison_of_wiki_farms); [Sourceforge](http://sourceforge.net) (packages), [Google Code](http://code.google.net) (packages), [_other project hosting_](http://en.wikipedia.org/wiki/Comparison_of_free_software_hosting_facilities)


## Social networking software

Social networking software is primarily about getting to meet and greet individual people. Typical features include "friends" and "favorites", which provide connections to various other projects. A similar application is a "social bookmarking" system, in which the favorites are links to other websites, possibly with an excerpt (making it into a kind of news system as well).

=IMAGE=c20080930_tools5_social.jpg=Social networking software provides many of the benefits you would otherwise get from in-person meetings, in terms of finding people with similar talents or beliefs (Photo credits: xt0ph3r@Flickr/CC-By-SA 2.0, Paolo Màrgari/CC-By-SA 2.0)=

Context       | Social Networking & Bookmarking Resources
--------------|-------------
Low-Tech      | Link lists, [Web rings](http://en.wiktionary.org/wiki/webring)
LAMP          | [Elgg](http://elgg.org/)
Drupal        | [Profile](http://drupal.org/handbook/modules/profile)(core), [OpenID](http://drupal.org/handbook/modules/openid)(core), [Drigg](http://drupal.org/project/drigg)
Plone         | [Organizational Profile](http://plone.org/products/organizational-profile), [My Address Book](http://plone.org/products/myaddressbook), [mxm Contacts](http://plone.org/products/mxmcontacts), [ExpertPool](http://plone.org/products/expertpool), [Plonelicious](http://plone.org/products/plonelicious), [Tasty Bookmarks](http://plone.org/products/atbookmarks), [Content Ratings](http://plone.org/products/contentratings), [TagCloud](http://plone.org/products/tagcloud), [PloneWorldKit](http://plone.org/products/ploneworldkit)
Other         | —
Services      | [MySpace](http://www.myspace.com/), [Facebook](http://www.new.facebook.com/), [LinkedIn](http://www.linkedin.com/), [Ning](http://www.ning.com/), [_other networking_](http://en.wikipedia.org/wiki/List_of_social_networking_websites); [Delicious](http://delicious.com), [Digg](http://digg.com), [_other bookmarking_](http://en.wikipedia.org/wiki/List_of_social_software#Social_bookmarking)
              |
Infrastructure| [OpenSocial](http://www.opensocial.org/)


## Virtual Reality

Virtual reality used to be all the rage among futurists. In practice, it provides a very literal community experience online, but may not be as efficient at some of the most important tasks. There are things that can _only_ be done in a 3D interactive environment, though

=IMAGE=c20080930_tools6_vr.jpg=Virtual reality environments, like the one pictured above from Second Life, provide a very literal mapping of real world communities (Photo credit: Vanessa Tan/CC-By 2.0)=

I was really surprised at how far this technology has come. With OpenSimulator and the Second Life Viewer, there is now a complete free software virtual world system available for hosting your own virtual realities. There are also, of course more general-purpose 3D viewing and serving systems based on X3D (the successor to VRML).

Unfortunately, all of the virtual reality technologies rely on specialized clients. This is unavoidable, considering how demanding the application is on system resources (unless and until 3D features are built into common web browsers). 

It occurred to me that one way to get 3D world features into a plain web browser would be to create a "virtual webcam", offering rendered stills of a "location" within the virtual world, which could be seen by viewers who lack the 3D client (or sufficient bandwidth to use it). Such a program could probably be hacked together based on the Second Life Viewer and any given content management system. However, I was not able to find a ready made implementation of this to list below, so it's probable this doesn't exist yet (if you know otherwise, please comment).

Context       | Virtual Worlds & 3D Visualization Resources
--------------|--------------
Low-Tech      | Rendered images, scene file downloads
              |
Clients       | [SecondLife Viewer](http://secondlifegrid.net/programs/open_source/code), [FreeWRL](http://freewrl.sourceforge.net), [Xj3D](http://www.xj3d.org), [Collada Loader](http://sourceforge.net/projects/colladaloader), [WorldForge](http://www.worldforge.org), [Planeshift](http://sourceforge.net/projects/planeshift)
Servers       | [OpenSimulator](http://opensimulator.org)†, [WorldForge](http://www.worldforge.org)‡, [PlaneShift](http://sourceforge.net/projects/planeshift)‡
Infrastructure| [CrystalSpace](http://www.crystalspace3d.org)-[※](http://en.wikipedia.org/wiki/Crystal_Space), [VOS](http://interreality.org), [X3D](http://www.web3d.org/x3d), [U3D](http://sourceforge.net/projects/u3d)-[※](http://en.wikipedia.org/wiki/U3D)-[※](http://www.ecma-international.org/publications/standards/Ecma-363.htm), [COLLADA](http://www.khronos.org/collada)-[※](http://en.wikipedia.org/wiki/COLLADA)
Services      | [Second Life](http://secondlife.com), [OpenSimulator grids](http://en.wikipedia.org/wiki/OpenSimulator)

† OpenSimulator is compatible with the SecondLife Viewer. Together, they now provide a complete free software virtual world system.

‡ WorldForge and PlaneShift servers are included with the client in the source code packages.


## Delivering large downloads

A major problem for multimedia content, design, or software projects is how to deliver the end product. Downloads of a few megabytes are common, and some things, like entire GNU/Linux distributions or feature-length motion pictures, can be multiple gigabytes in size. Most people can't afford to pay for this kind of download service on their own server, especially when the download is offered at no cost.

=IMAGE=c20080930_tools8_downloads.jpg=Moving large files such as software packages, music, and even entire CD or DVD disk images can be quite a chore. The newer BitTorrent protocol has become quite popular for this kind of task, because it shifts the load from the server to the clients, and it adds additional error correction, eliminating the risk of corrupted downloads (Photo credit: FaceMePLS@Flickr/CC-By 2.0)=

Fortunately, there are plenty of service providers who will carry most kinds of content you might create for HTTP or FTP download. Additionally, there is a relatively new technology, called a "swarming" download system which combines internet file-sharing technology with conventional hosting. The most successful such technology is Bit Torrent. These swarming download systems take load off of your server, allowing much of the work to be shared among the clients requesting the download, and they are particularly useful for high-volume, large-size, and very popular downloads.

To host such content on your own site, you'll need only to provide the "torrent" file (which is a kind of index to the download), a "seed" of the original file, and a "tracker" to help coordinate the download process among clients. There are even free services providing the tracker and seed system, so that you don't have to handle them.


Context       | High-volume Download Resources
--------------|-------------
Low-Tech      | [HTTP](http://en.wikipedia.org/wiki/HTTP), [FTP](http://en.wikipedia.org/wiki/FTP)
LAMP          | —
Drupal        | [BitTorrent](http://drupal.org/project/bittorrent), [Filebrowser](http://drupal.org/project/filebrowser)
Plone         | [Railroad](http://plone.org/products/railroad), [ARFilePreview](http://plone.org/products/arfilepreview), [PublicationProduct](http://plone.org/products/publicationproduct), [PloneFilesZip](http://plone.org/products/plonefileszip), [PloneForge](http://plone.org/products/ploneforge), [Software project](http://plone.org/products/software-project)
Other         | —
Web Services  | [Sourceforge](http://sourceforge.net) (packages), [Google Code](http://code.google.net) (packages), [other project hosting](http://en.wikipedia.org/wiki/Comparison_of_free_software_hosting_facilities); [Internet Archive](http://www.archive.org) (content), [Jamendo](http://www.jamendo.com/en) (music), [Flickr](http://www.flickr.com) (images)
              |
Clients       | [BitTorrent](http://www.bittorrent.com), [_other torrent_](http://en.wikipedia.org/wiki/Comparison_of_BitTorrent_Clients), [_other file sharing_](http://sourceforge.net/softwaremap/trove_list.php?form_cat=251)
Servers       | [mod_bt](http://www.crackerjack.net/mod_bt) (Apache), [PHPBTTracker+](http://phpbttrkplus.sourceforge.net) (tracker), Infrastructure| [torrents](http://en.wikipedia.org/wiki/BitTorrent_(protocol))
Services      | [LinuxTracker](http://linuxtracker.org), [TuxDistro](http://www.tuxdistro.com), [TLMP](http://tlm-project.org/public/distributions), [_other torrent sites_](http://bittorrent.wikia.com/wiki/Comparison_of_BitTorrent_sites)


## e-Commerce

You might not think of internet stores as "social" software, but in many ways they are. Amazon's marketplace provides a way for smaller suppliers to compete. Ideas about "collective patronage" for free-licensed works, will require both basic payment processing, and also simplification of fund-raising through collective fund-raising systems. 

=IMAGE=c20080930_tools7_ecommerce.jpg=Money transactions are part of most communities in real life, and the ability to include this in online communities opens up many possibilities (Photo credits: The Consumerist/CC-By 2.0, Tinou Bao/CC-By 2.0)=

In a commons-oriented world, monetary trade is still very important. The conventional "store" infrastructure can be used in unconventional ways, and adding things like collective patronage and fund-raising systems can turn commercial tools into important community support systems.

One exciting upcoming initiative is Creative Commons' "CC+" protocol. This is simply a unified way for content creators to offer additional licensing for Creative Commons licensed material. Although the idea was certainly conceived to allow "Non-Commercial" licensed content to be sold for commercial use to individual customers, there is nothing in the technology that prevents a "Buy for the Commons" approach which would make it possible to move non-free content into the free commons through collective patronage. Building such a system will certainly require the use of conventional e-Commerce software, and probably also software for collecting pledges from interested people.

There are also a number of services related to both payment processing and collective funding.

Context       | e-Commerce & Funding Resources
--------------|-------------
Low-Tech      | —
LAMP          | [osCommerce](http://www.oscommerce.com), [ZenCart](http://www.zencart.com), [ECSCS](http://www.ecommerceshoppingcartsoftware.org/), [other shopping carts](http://en.wikipedia.org/wiki/Comparison_of_shopping_cart_software)
Drupal        | [Ubercart](http://www.ubercart.org), [e-Commerce](http://drupal.org/project/ecommerce), [osCommerce](http://drupal.org/project/oscommerce)
Plone         | [PloneMall](http://plone.org/products/plonemall), [Simple Cart Item](http://plone.org/products/simplecartitem), [EasyShop](http://code.google.com/p/easyshop-for-plone), [GetPaid with Plone](http://plone.org/products/getpaid), [PFG Payment Field](http://plone.org/products/pfgpaymentfield), [LetsPay](http://plone.org/products/letspay), [FlexPortlets](http://plone.org/products/flexportlets)
Other         | [JadaSite](http://www.jadasite.com), [_other carts_](http://www.dmoz.org/Computers/Software/Business/E-Commerce/Shopping_Carts); [CC+](http://wiki.creativecommons.org/CCPlus), [SPP](http://en.wikipedia.org/wiki/Street_Performer_Protocol), [RSPP](http://logarithmic.net/pfh/rspp)
Services      | [ZenCart Hosting](http://www.zen-cart.com/index.php?main_page=infopages&pages_id=10), [PayPal](http://www.paypal.com), [Authorize.net](http://authorize.net), [Registered Commons](http://www.registeredcommons.org)†, [Fundable](https://www.fundable.org), [PledgeBank](http://www.pledgebank.com)

†I've learned that Registered Commons is working on an implementation of the CC+ protocol for re-licensing works from various Creative Commons licenses for money. Another CC+ site was supposed to be operating now ([Rights Agent](http://www.rightsagent.com)) according to a Creative Commons press release early in 2008, but the link doesn't seem to be responding, so they may not be operational.

# Building an online community

Within the free software and free culture communities, there are plenty of reasons to build community sites, so as to involve visitors. Some of these can contribute a lot to the production, sharing, and understanding of free software, designs, and art.

I've tried to assemble the resources needed here, along with some ideas of how to use them. No doubt some would disagree with this particular breakdown, and I've probably omitted some important technologies, but I think these are eight that anyone setting about to design a community site should think about in their design.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=

