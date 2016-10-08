---
nid: '1164'
title: Newsflash!
authors: 'Saqib Ali'
published: '2005-06-26 11:01:02'
issue: issue_05
license: gfdl
section: announcements
listed: 'true'

---
RSS (Really Simple Syndication) is an XML based web content syndication format. RSS has become the defacto feature on weblogs and many news sites. Almost all major news sites and weblogs provide an RSS feed for their audience. An RSS-aware program (aka RSS reader) can check these RSS feeds for changes and display the updates in a human readable format.


=ZOOM=RSS has become the de facto feature on weblogs and many news sites=

Almost every computer geek visits Slashdot.org once a day. But UberGeeks, like me, prefer to be always up to date with the latest articles on Slashdot.org. So instead of visiting Slashdot.org every 5 minutes, I have subscribed to the Slashdot RSS feed. As soon as there is a new article on Slashdot, my RSS reader notifies me of it. This allows me to logon and make the “First Post” (reply) to the Slashdot.org article. I have to attribute many of my “Slashdot First Posts” to the power of RSS. This power of RSS has been utilized on other news sites as well. NPR, CNN, and Wired all provide RSS feeds.

URLs to RSS feeds from some popular weblogs and news sites:


* [Slashdot](http://slashdot.org/index.rss)
* [National Public Radio](http://www.npr.org/rss/index.html)

However there are other areas where the power of RSS has not been fully realized. Wikis, Usenet and web based discussion groups come to mind. But this is changing fast. In this article I would like to go over some of the free software that allows web-content distribution and republication in the areas of Wikis, Usenet and discussion groups. I’ll also go over a powerful RSS Reader that is freely available.


# Firefox: a powerful RSS reader

An RSS Reader is an application that polls RSS feeds and displays them in a human-readable format. The reader allows you to browse the newly available items in the RSS feed. RSS readers come in many flavors.


=ZOOM=As soon as there is a new article on Slashdot, my RSS reader notifies me of it=

One powerful RSS reader, that often goes unused by many, comes built-in with Mozilla Firefox browser. It is called the _Live Bookmark_. Live Bookmarks is a new technology in Firefox that lets you view RSS news and weblog headlines in the bookmarks toolbar or bookmarks menu. It enables you to quickly see the latest headlines from your favorite sites. Clicking on any of the live bookmark will take you directly to the page referenced by that RSS item.


=IMAGE=firefox01.jpg=Firefox’s Live Bookmark lets you see the latest headlines from your favorite sites. Clicking on any Live Bookmark opens up the full article in the browser window=

You can download Firefox from the [Mozilla web site](http://www.mozilla.org/products/firefox/). Some other Freely available RSS readers:


* [RSS OWL (Java based)](http://www.rssowl.org/)
* [FeedReader (Windows)](http://www.feedreader.com/)
* [DSSBandit (windows, written in C#)](http://www.rssbandit.org/)
* [LifeArea (GTK/GNOME)](http://liferea.sourceforge.net/)
* [Straw (Python/GNOME)](http://www.nongnu.org/straw/)
* [Syndigator (Perl/GTK)](http://syndigator.sourceforge.net/)
* [Blam (Mono: C# and Gtk#)](http://www.imendio.com/projects/blam/)
* [Snownews (Console based, ncurses)](http://kiza.kcore.de/software/snownews/)


# Chronological web sites?

Wiki is a web site that allows users to add, edit or modify web site content, by merely using a web browser. Wiki provides a fast and easy way to collaborate and collaboratively create documentation on the web. Not surprisingly, Wiki comes from the Hawaiian term for “quick” or “super-fast”. A Wiki engine also serves well as a Departmental or a Taskforce web site, which the team members can use to share ideas and publish content, without messing around with HTML editors. PHPWiki, as the name suggest, is a PHP based Wiki, while Twiki is PERL based. Both of these Wiki engines, with their aim to foster information flow among the users, provide RSS feeds of the latest content and updates in _chronological order_. The RSS feeds from these Wiki engines provide an easy way for the users to keep up to date on the latest updates to the content of the web site. This is especially useful when the Wiki is being used to track bugs or features in a product. The subscriber of the RSS feed will be notified as soon as an update is made to the list of bugs or the feature.


=IMAGE=phpwiki01.jpg=All of the changes made to the content on the Wiki are shown as RSS items in the order they were made (chronological)=


<!--pagebreak-->



=IMAGE=phpwiki02.jpg=Clicking on any Wiki Page Title (RSS item), will take you directly to the modified page. Only the pages that changed/edited show up as RSS items=


* [Twiki (requires Apache and Perl)](http://twiki.org/)
* [PmWiki (requires Apache and PHP](http://www.pmichaud.com/wiki/PmWiki/PmWiki)
* [MediaWiki (requires Apache, PHP and mySQL)](http://wikipedia.sourceforge.net/)
* [MoinMoin (requires Apache and Python)](http://moinmoin.wikiwikiweb.de)
* [usemod (requires Apache and PERL)](http://www.usemod.com/cgi-bin/wiki.pl)
* [PHPwiki (requires Apache, PHP and mySQL)](http://phpwiki.sourceforge.net/phpwiki/)
* [ChiqChaq (requires Apache and PERL)](http://chiqchaq.sourceforge.net/)


# Die hard usenet fan?

If you are die-hard fan of Usenet, like me, you can never stop pressing the refreshing key to retrieve the latest newsgroup postings. Refresh button (F5), on my keyboard, has worn out due to overuse. Worry not, Google + RSS has come to our rescue. A few years back Google acquired Deja News, the largest collection of web accessible Usenets.


=IMAGE=google01.jpg=All of the latest postings to a Usenet newsgroup are shown as RSS items in the order they were made (chronological)=

PHPWiki and Twiki are two popular Wiki engines that are freely available under the GNU Public License. Both of these Wiki engines, in their aim to foster information flow among the users, provide RSS feeds of the latest content and updates in chronological order

After the acquisition, Google made some very cool enhancements to the Deja News Network. But that wasn’t good enough, Google went on to develop a whole web based collaboration platform based on the NNTP protocol. A powerful feature of this collaboration platform is ability to generate RSS feed of the latest newsgroup postings in a chronological order. This allows an avid Usenet fan to keep up to date with the newest post on the groups of interest. As soon as a new Usenet posting is made, the RSS reader on my desktop notifies me of it.

You can subscribe to the RSS feed of a Usenet newsgroup by simply adding the following URL to your favorite RSS reader: `http://groups-beta.google.com/group/{name.of.newsgroup}/feed/msgs.xml`. Replace `{name.of.newsgroup}` with newsgroup of your choice. Some examples:


* http://groups-beta.google.com/group/comp.text.xml/feed/msgs.xml 
* http://groups-beta.google.com/group/microsoft.public.visio/feed/msgs.xml


# Do you Yahoo?

Ok, so you are not an old timer like me. Instead, you are from the new generation and instead use Yahoo Group to communicate with your peers. Worry not, Yahoo Group also provides a RSS for the groups.

You can use the following URL syntax to subscribe to an RSS feed of the Yahoo Group: `http://groups.yahoo.com/group/{group_name}/rss`. Replace `{group_name}` with the Yahoo Group of your choice. Some examples:


* http://rss.groups.yahoo.com/group/apache-user-group/rss
* http://rss.groups.yahoo.com/group/citrix/rss
* http://rss.groups.yahoo.com/group/ssl-talk/rss
* http://rss.groups.yahoo.com/group/xml-doc/rss


# Conclusion

RSS is a fast and powerful way to get news out to an audience. RSS readers inform their users of any new postings on news sites, newsgroups and weblogs. If you need to keep up to date on the latest news articles, or you need to track the postings on Wiki or your favorite weblog, then you really need to use an RSS reader.



