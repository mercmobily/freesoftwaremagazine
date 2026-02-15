---
nid: '3056'
title: 'How to help build a free software search engine and use it too. Welcome to Wikia'
authors: 'Gary Richmond'
published: '2008-11-19 2:08:17'
tags: 'search,grub,webcrawler,wikia.mono'
license: verbatim_only
section: hacking
listed: 'true'

---
Mention Jimmy Wales and you automatically think Wikipedia; however, that is not his only love child. The Wikia search engine is his latest offspring -- or least it was when it was launched in January 2008. Wikia has been devised as a free software and open source alternative to Google and othersNow.

In an article in June [I speculated about how the internet might change the way we think.](/articles/will_internet_really_change_way_we_think/); I mentioned in passing the [Wikia search engine](http://re.search.wikia.com). Enough time has passed to see how this attempt to democratise a web search engine has come.

# The philosophy

=ZOOM=Google's algorithm is the goose that lays the golden egg but doesn’t cackle. Wales wants it to sqawk its head off=

Wales thinks that search on the web is broken, for the same reason that proprietary software is broken: lack of freedom and accountability. He thinks that Google's search algorithm is a form of "editorial control"; it is of course true that whilst Google has been a relatively good friend to free software and some open standards, they do nevertheless keep their search algorithm secret. It is the goose that lays the golden egg but doesn't cackle. Wales wants it to squawk its head off. To that end he came up with Wikia. It is released under the GPL and the source code is free for all to examine and amend. Additionally, where search engines like Google rely on that algorithm to power searches, Wikia adds a human element to searching that positively encourages human input to build and extend the search engine. Wiki utilizes [Nutch](http://en.wikipedia.org/wiki/Nutch) for its algorithm and [Lucene](http://en.wikipedia.org/wiki/Apache_Lucene) for search; Wales also acquired [Grub](http://www.grub.org/) as an open source web crawler to index the web (and released the source code for it too).

So far so good. However, unlike Wikipedia, Wikia _is_ a-for-profit undertaking which means two things: first, for all its free software credentials, it has to monetize web searching. Nothing necessarily wrong with that, but if Wikia is built with the assistance of unpaid volunteers, is it fair to make a profit without spreading the wealth around? Second, when Wikia launched back in January (with a relaunch in June) it received consistently bad reviews. Even those who wished it well and wanted it to succeed were appalled and Wales himself said that the search results "sucked". Many people failed to understand that, initially, Wikia was intended to _build_ a search engine by user input so it was always going to be a matter of time before it accumulated a body of information. It seemed to be caught in a vicious circle: no index, no information, no information no index. Sufficient contributors are the key to breaking that vicious circle--and time, lots of time. So, as of today (Wednesday 12th November) Wikia's real-time counter reveals that it is approaching eight million queries and just over two million contributions, After all, how did Wikipedia look and function on day one?

One solution might have been to fill that temporary gap by pulling in Wikipedia content but that might have been problematical as Wikipedia has always been on a not-for-profit basis.

# So, how exactly does Wikia work?

Superficially, you go to the Wikia page (which is available in twenty-six languages) and type in your search term. I'm pleased to report that you will now get a decent number of returns for your search query. Providing you are using Wikia in a Javascript-enabled browser you should get a screen something like this:

=IMAGE=Wikia_search_engine_default_screen.jpg=Figure 1: Wikia search engine default screen=

Anyone who has used Google (virtually everyone) will feel right at home here. I tried several searches at random: selinux, trucrypt, konqueror and gpl. There is quite a lot of detail on these searches. Let's have a look.

# The devil's in the detail

I typed "konqueror" into the search bar and here is what it returned:

=IMAGE=Wikia's_return_for_konquer_search_term.jpg=Figure 2: Wikia's return for konquer search term=

The first difference from Google is that Wikia does not indicate the number of search returns and does not render a numerical list of pages at the bottom of the page. In fact, Wikia will scroll continuously the results, thanks to its Ajax interface. Along the top of the search results there are what look like tags. For example, I know that Konqueror uses the Webkit engine for rendering pages. Clicking on that "tag" with the scroll button loads a related search for that term. If you know a lot about your particular search topic, you can (and should) add a tag. Well, I love Konqueror and decided to add what I knew. I clicked on "add suggestion" and added "kio" as Konqueror uses this feature for integrated  transparency. Now, when anyone searches for Konqueror they can now also initiate a supplementary search under kio. This may of limited value for experts, but for anyone whose knowledge is limited this feature is very useful indeed.

Whenever you scroll down a page of search results and move your cursor to the right of any result, Wikia will display a rating system. Moving it across the stars (rated one to five) will highlight them. To give your rating, just click on the number you want and the stars will be highlighted in all future web searches. Wikia will also rank it in real time and move the entry up the page. Further to the right, there are five options for each search result: edit, annotate, spotlight comment and delete. The last is obvious. If you have checked out a particular result in a separate browser tab and judge it to be really sub-standard, just click on delete and it is gone. If you want to make your own comments on a particular search result, well, just click on "comment" and an input box opens up immediately below:

=IMAGE=Wikia's_comment_box.jpg=Figure 3: Wikia's comment box=

Selecting Annotation has the effect of opening the specific search result's webpage in a form of "split screen" with the original Wikia page resized to the left. This now gives you the opportunity to add links, images or text and add them back to the Wikia search index. If you select a link, it will be added at the bottom of any given search result. These changes are added back in immediately. Finally, if you think a result is worth a second dose of five-star treatment, then click on "spotlight" and a biege-coloured box with highlight it, although it did not seem to be reversible.

At the top right of the search results is a link called "add application". Clicking on it opens a box:

=IMAGE=Wikia's_add_application_function.jpg=Figure 4:  Wikia's add application function=

From here you can select from either categories or applications. Using the up/down arrows, scroll through categories relative to you search and Wikia will bring up what it finds, in this case "images" and selecting from the results:

=IMAGE=Wikia's_add_application_in_action.jpg=Figure 5: Wikia's add application in action=

=ZOOM=If Wikia constitutes the wisdom of crowds then Eric Raymond would be proud of it=

This is now added back immediately to the search results where others can edit, annotate, delete or comment upon and hopefully add to the sum total of collective knowledge. If this constitutes the wisdom of crowds then Eric Raymond would be proud of Wikia. Of course, like any search engine, there is scope for abuse  as there has been in Wikipedia but Wikia is evolving and as problems arise solutions will rise to meet them.

# Wiki evolution

The eagle eyed amongst you will have noticed a toolbar in the screenshots. [This is the wikia evolution extension](https://addons.mozilla.org/en-US/firefox/addon/8267) which adds a toolbar to the browser (it works in both Firefox and Netscape Navigator). This is a really, really useful addon because it means you can still help Wikia to build the web index and the search engine even when you are not searching directly from the Wikia search page.

The toolbar gives you the main features you have when working directly from Wikia itself. So, I opened a page from one of my bookmarks about adding repositories to the Asus EeePC and clicked on the "Add URL to Keyword". A dialogue box opens and you are prompted to submit a search term under which the URL will be submitted to the Wikia search index. You will know that your URL has been added because an entry will have added to the toolbar. 

One of the best features about installing this toolbar is that you can still contribute to indexing the web and building wikia as an effective search engine. If you are using either Google or Yahoo search engines Wikia adds two features: a small green plus sign against each search result returned and the star rating system. For example, I came across a recent excellent article on "do it yourself Konqeuror commands". I clicked on the add button and it changed to a tick accompanied by "URL added". Going back to the konqueror search in Wikia, I see that it has been added and a grayed-out message below the entry indicates that it was added by a Google user. Me. 

By the same token, if you have launched a search term in Wikia and come up short, just click on the search engine links on the right for Google or Yahoo and a new tab will open to search for that term. If you find what you are looking for in these other search engines, you can now add that search result back to Wikia. You get what you were looking for and you have, at little effort and no cost, helped to build a free and open search engine. Two final features I almost missed: if you are in any other search engine and do a search, it will also automatically be copied to the Wikia toolbar. So, if you having no luck in Google or Yahoo just click on the Wikia search and the you can start a search in there instead (select it with the scroll wheel and it will open in a separate tab and you can compare results if you wish). Also, if you have added a search result from Google or Yahoo, it will be annotated as such directly below it. Despite the grayed-out appearance, these are in fact active links which will take you to those search engines.

# Conclusion: if you do nothing else install the Grub web crawler

When Wikia debuted in January it was subject to some of the worst reviews I have ever seen. Wales would have needed the hide of an elephant to front that criticism--but then he was expecting it. Since then Wikia looks unrecognisable from what launched back then. It is usable, it has features, it is highly interactive, that toolbar is a killer idea that allows you to contribute to the project even when you are not using the search engine directly and, yes, it has usable content. I was impressed. I can definitely see myself using it on a regular basis so I will stick my neck out and predict that Wikia may become as ubiquitous as Wikipedia. If you hate or just distrust Google for reasons of privacy, security or corporate politics then Wikia may be just the search engine for which you have been waiting.

However, for Wikia to really take off will require more than individual user contributions. Search engines need huge data farms. Google has in excess of 270,000 servers and they are expensive. If Wikia has to go down that route it is rather obvious why Wales has chosen a-for-profit model. Hence the Google ads. How ironic, to fund a Google rival with Google ads. Wales thinks he has a possible solution to this: to store the index on a distributed computing grid composed of individual's PCs and servers across the net, _a la_ [SETI](http://en.wikipedia.org/wiki/SETI). Of course that has a downside too because whilst servers are usually always on, home PCs are not; Jeremie Millar, Wikia's chief technology officer, thinks the solution may lie with software like BitTorrent which can still work even when some machines are off, by distributing copies of data to other computers. 

That is why Wikia bought [Grub,](http://grub.org/) a free and open distributed web crawler licenced under GPLv3 which you can [install on your computer](http://grub.org/?q=pl/node/191) and donate your free CPU cycles to indexing the web. On the homepage there is an `install.bin` executable. In KDE, clicking on it will launch a no brainer of a GUI install wizard. Trying the same in Gnome will give a message that it does not know how to handle it. Solution? Open a console, go root, `cd` to the directory where you dowloaded it and type the following: `./grubng-0.8-Linux-x86-Install.bin` and the GUI wizard will launch.

If you prefer there are `noarch.rpms` and `src.rpms` available [at rpm.pbone](http://rpm.pbone.net/index.php3/stat/4/idpl/10193582/com/grubng-0.8-3.2.noarch.rpm.html) and rpms for OpenSuse 10 and 11 [also at rpm.pbone.](http://rpm.pbone.net/index.php3?stat=3&search=grubng&srodzaj=3) There are also versions of the `install.bin` for BSD and Solaris on the [Grub project page.](http://www.grub.org/?q=en/node/4)

This will install Grub and add a menu entry for it. If you find that on trying to launch Grub you get a flickering LED indicating hard drive activity but a no launch (or "silent failure" as I call it) this is almost certainly because you are missing dependencies for the GUI aspect of the program. By name, Mono (versions > 1.25) GTK2 sharp and associated development files. Once installed via your distro's package manager, Grub should now run in GUI mode. You will be prompted for you login details before you can start, so if you have not done so you will need to create a user account on the Wikia homepage. Once settings are chosen via Preferences you can now start helping to crawl and index the web. As you can see, I have been busy:

=IMAGE=Grub_progress_report.jpg=Figure 6: Grub's progress report=

=IMAGE=Grub_indexing_the_web_and_uploading_results.jpg=Figure 7: Grub indexing the web and uploading results=

You can set as many crawlers as you wish, manage upload/download speeds to suit your connection and usage and run it in semi-automatic or automatic mode.

=ZOOM=We shall see if there is any substance to the phrase “the wisdom of crowds” as a potential army of coders and contributors bear down on spammers=

Whether you search with Wikia and rate search results or help to index the web with Grub there is still the challenge of spamming to be addressed. Google is embroiled in an endless war with spammers and their algorithm is proprietary. Wikia's is free and open. Anyone is free to look at the code, see how it works and exploit it. We shall see then if there is any substance to the phrase "the wisdom of crowds" as a potential army of coders and contributors bear down on this problem or if it is merely an over-worked cliche.

Those people who slated Wikia in January should revisit it today and see that it has improved massively (albeit from a low base). If you ultimately want better and more transparent search results and you are starting to see Google as big a threat to freedom, privacy and transparency as Microsoft then what are you waiting for? Use it, contribute to it, install the Firefox toolbar and the Grub web crawler GNU/Linux client. Get cracking.
