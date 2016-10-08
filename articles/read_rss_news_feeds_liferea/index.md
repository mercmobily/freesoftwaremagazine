---
nid: '3842'
title: 'Read RSS news feeds with Liferea'
authors: 'Tony Mobily'
published: '2015-06-03 8:41:42'
tags: rss
license: verbatim_only
section: end_users
main_image: main.jpg
listed: 'true'

---
Nowadays, the Internet is all about the Web. Users seem to have forgotten that it's possible to receive updates about anything that is posted on multiple web sites in seconds: this non secret is called RSS. Liferea is a neat, great piece of software that allows you to read _RSS feeds_ and more.

<!--break-->

The first thing to do is install Liferea. You can do so by going to the Software Centre and type `liferea`, or simply typing in a terminal `apt-get install liferea`. Once run, a screen like this will appear:

This is how it all works in a nutshell:

* On the left, you have a list of "feeds". A feed is essentially a URL that provides a list of news items. Many, many sites provide RSS feeds -- more than you would expect.

* On the top pane, you can see the news items, ordered by publication date and time.

* On the bottom pane, you can read the news item you clicked on

=IMG=1.png=Liferea after a first run=

The feeds are organised in an hierarchy: clicking on the father will show news for all of its children. For example, clicking on "Example feeds" will show news from _every_ feed, whereas clicking on "Music blog" will only display news items from the feeds in the "Music blog" folder.

# Where are the feeds?

Web sites have the option to make RSS feeds available. Many, many sites do. Up until a couple of years ago, whenever a site offered RSS feeds, you would see a characteristic icon next to the URL.

=IMG=2.png=The characteristic RSS icon=

However, Google (as well as the FIrefox team!) decided that RSS wasn't popular enough, and moved this great functionality out on extensions. For Chrome, you will need the [RSS Subscription Extension](https://chrome.google.com/webstore/detail/rss-subscription-extensio/nlbjncdgjeocebhnmkbbbdekmmmcbfjd?hl=en) in order to get the icon. In Firefox, you will need the [RSS Feed Icon in Navbar](https://addons.mozilla.org/en-us/firefox/addon/rss-feed-icon-in-navbar/?src=search). I recommend you install it.

Once you have the extension installed, you will be graced by the icon which, according to many, should be there in the first place.

# Adding a feed

To add a feed, go to a website with an RSS feed (say, for example, Free Software Magazine!) and click on "Feed". Note that you are not going to use neither Blogline nor Yahoo to read the feed. So, you can ignore that part.

=IMG=3.png=The "feed" =

After clicking on "Feed", the feed source will open: you are only interested in the feed's URL.  Select it and copy it to the clipboard.

=IMG=4.png=The "feed" URL, finally!=

At this point, go to Liferea, click on "New subscription", and paste the URL. If everything goes as planned, the news entries from that site will magically appear in your feed.

=IMG=5.png=Adding the feed=

If you feel that's too much work, well... you are definitely right: there should be at least an easy way to get the feed's URL without jumping through so many hoops.

# Liferea goodies

The RSS feed tends to only contain the story's summary. To open a new tab and go to the web site, simply click on the story's title at the top of the contents pane.

If you click on a "container" folder, only the unread news items will show. So, you can be sure that you only see new contents.

If you go to Tools > Preferences > Browser, you can set Liferea to open the links to the full stories within Liferea itself, which I think is a great idea.

Enjoy!