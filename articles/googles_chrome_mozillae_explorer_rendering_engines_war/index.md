---
nid: '2993'
title: 'Google''s Chrome, Mozilla, Explorer, rendering engines: let the war begin'
authors: 'Gary Richmond'
published: '2008-09-04 17:15:33'
tags: google-chrome-firefox-internet-microsoft
license: verbatim_only
section: end_users
listed: 'true'

---
Chrome is in fact a reference to the imminent release of Google's entry into the browser market. Apparently, the launch was accidentally "leaked" by a Google employee who was a little piggy fingered with the send button on his e-mail client. By the time you read this it may be [available for download](http://www.freechromethemes.com/DownloadGoogleChrome.php) (probably Windows only in the first instance). I was intrigued by this because there have been "reviews" of Chrome already and the reason for this is the unique way Google has chosen to announce it. If you were launching a new browser, or anything else, would _you_ do it through the medium of a comic?

<!--break-->

=ZOOM=If you were launching a new browser, or anything else, would _you_ do it through the medium of a comic?=

That's a bold and unusual PR stunt but that's exactly what Google did. Medium regardless, I started to speculate on what Google was up to and what it means for free software. Read on.

# Chrome's comic

Many people regard comics as culture dumbed down, pandering to the lowest common denominator but let me assure you that once you have seen Google's presentation of the principles, features and technicalities of the Chrome browser you will be impressed and quite smitten with the slick execution and the manner in which complex issues are approached and explained. The comic was drawn by [Scott McCloud](http://en.wikipedia.org/wiki/Scott_McCloud). You can view the thirty-eight page "comic" in [HTML](http://www.google.com/googlebooks/chrome/) or [PDF](http://brevity.org/pic/chrome/Google_on_Google_Chrome.pdf) format. I found the former a little slow so you might prefer to view/download the PDF version. It is over 8MB but well worth the download for the high quality and ability to view offline. Even if you have no intention of downloading and running Chrome I do recommend a viewing. You will learn a lot about the structure of web browsers in a way that a pure text presentation would struggle to keep your attention. It has been released under the Creative Commons licence so feel free to distribute it.


# So, what's different?

Google see that the browser has come a way since it only required to handle text and some basic graphics. Today's browsers like Firefox, Flock and Opera have to contend with web-compliant standards and rich media content like Flash, Java, codecs, extensions and plugins. Those browsers have of course blazed a trail for this kind of stuff. However, as features grow, browsers suffer bloat, crashes, memory leaks, speed hits and generally performance degradation. Even the best in breed are not immune from these problems. Google reckons it has the solution.

There is no doubt than in the days and weeks ahead there will be a blizzard of installations and reviews, so I will confine myself to listing the major features of Chrome that Google claim set it aside from all the other runners and riders. These are the headline features of Google's new baby:

=TEXTBOX_START=chrome: the main features =

* The rendering engine used is the open source web-compliant [Webkit](http://en.wikipedia.org/wiki/WebKit)
* integration with [Google Gears](http://en.wikipedia.org/wiki/Google_Gears) (free and open source software)
* sandboxing of tabs--to quarantine JavaScript bottlenecks
* utilises processes instead of threads (tabs crash rather than the whole browser)
* Omnibox (on each tab)--new integrated search/address system (think Firefox's Awesome bar)
* fast JavaScript Virtual machine called V8
* tab-based design--tabs _above_ address bar
* Opera-like Speedial
* privacy mode: "incognito" window to browse privately without Chrome logging anything
* malware and phishing protection

=TEXTBOX_END=

I would love to be able at this point to review these features by actually taking Chrome for a test drive but...

As I write, download availability is imminent but if you are salivating with anticipation you will be disappointed. Perhaps, by now, we should not be surprised that Windows users have been given priority. You will look in vain for a download for GNU/Linux (and Mac) but at least you _can_ sign up for a [Google notification](ttp://www.google.com/chrome/intl/en-GB/linux.html) for when it does actually become available.

=ZOOM= If there is one thing that really makes me grind my long-suffering molars it is this pattern of "Windows first"=

I just had to get that off my chest. If there is one thing that really makes me grind my long-suffering molars it is this pattern of "Windows first". You would think that when a piece of software which is open source becomes available it would have the decency to make the downloads cross platform, but so often GNU/Linux users are left outside the big house with noses pressed enviously against the window pane looking in at the feast before them and being told that they can join the feast later when everyone has had their fill first. "We're hard at work building versions for Mac and Linux too" is the usual mantra to disappointed GNU/Linux users. If Google are intent upon undermining Microsoft then making Chrome available for Windows first makes sense. Would it not also make sense to release Chrome for GNU/Linux on launch day too and squeeze Microsoft from both ends? However, that gripe brings me to the question of Google's motives in designing an open source browser like Chrome.

## It's the market

Reluctantly, I have to accept that we live in a Windows world (at least for now) and when software designers release their product to a waiting world they want to pitch their product to the widest demographic and if browsers like Firefox have taken 20% of the browser market, 95% of users are running Windows; so, most Firefox users are Windows users. Google know this and they also know that Internet Explorer is bundled with Windows. So, that is where the most compelling demographic for Chrome is too.

Google are masters of monetising the web and Chrome is probably more of the same as it will be the portal to all their web-based services; if people are accessing the Google search engine through Chrome, not Internet Explorer, it eats into Microsoft's market. The more Google can shepherd web traffic through it services via Chrome the better for any revenue stream. 

The choice of the Webkit rendering engine with a new JavaScript virtual machine (V8), when Webkit already has one called [Squirrelfish](http://www.webkit.org), is designed to make Ajax-based apps like Google Docs and Gmail run really fast. Webkit of course is what is running on Google's [Android](http://en.wikipedia.org/wiki/Google_Android) and showcasing Chrome isn't exactly bad publicity either. This, plus Gears for offline access, makes Chrome potentially powerful. That might not worry GNU/Linux too much but it could cause Microsoft to realise that they can be done without. It would be nice to think that Internet Explorer will find itself crushed to death between Chrome and Firefox.

## So, what about Firefox?

Inevitably, when a rival product comes out the word "killer" goes into to overdrive. Wired Magazine for example has an really [excellent in-depth article](http://www.wired.com/techbiz/it/magazine/16-10/mf_chrome?currentPage=1) on the genesis of Chrome but they just couldn't resist the dramatic title "Inside Chrome: The Secret Project to crush IE and remake the Web". Do a Google search and see what comes up for EeePC killer.(165,000 results to be exact.) For "Chrome IE killer"? 2,530,000. However, enter the search term "Chrome Firefox killer"--46,500 results. Of course, you get out of a search engine the term(s) you put in, but even so, the difference is revealing. That difference, though hardly a scientific benchmark, is perhaps a little surprising. Why? Because Google has a formal relationship with Mozilla to the tune of $57 million(US) which helps to give their search engine primacy in the Firefox browser. Relative to Microsoft, Google's open source credentials are known. The only thing they are never, ever going to open source is the cash cow, the algorithm which powers their search engine. Nevertheless, [Chris di Bona has boasted](http://news.cnet.com/A-look-inside-Googles-open-source-kitchen/2008-7344_3-6143465.html) of Google's use of and contribution to the free software community.

# Google and Mozilla

If Chrome was conceived of as a Firefox killer, I keep asking myself why Google has just renewed and extended a deal with Mozilla for another three years. Hardly an action consistent with trying to kill off Mozilla's love child. Hell, for that kind of money Google can "kill" my product anytime! Again, Google won't be trying to take over Mozilla as it is a for non-profit organisation and cannot be "bought", so it makes sense to fund Mozilla in order to promote the primacy of the search engine. Given this and the extension of funding, perhaps Google think that three more years will be sufficient time to choke off Firefox. In truth, we can speculate until the cows come home. We don't really know--and Google aren't saying. Perhaps Mozilla should implement the precautionary principle just to be on the safe side and start thinking about diversifying and putting out feelers to other "sponsors" with free software credentials.

When it comes to a choice of browsers the range out there for the Unix community is impressive. With the exception of Opera, they are all based firmly on the principles of free software. So, do we really need another one? The answer is "probably not", but that is to overlook the fact that Chrome is open source and it must therefore give back what it has taken from the open source community; that means that browsers like Firefox should be able to benefit from Google's efforts and new ideas. 

# Rendering engines

The biggest difference between Chrome and Firefox (and other browsers) is that the former utilizes the Webkit rendering engine whilst the latter uses the Gecko rendering engine. I'm not sufficiently knowledgeable to know if that is an insuperable barrier to Firefox incorporating the best Chrome features but nothing is set in stone. [Epiphany announced in April](http://mail.gnome.org/archives/devel-announce-list/2008-April/msg00000.html) that it would be switching over to Webkit, so clearly it can be done. The reason is that, due to an abstraction layer, Epiphany's user interface can support multiple back ends. [Wikipedia gives an excellent breakdown](http://en.wikipedia.org/wiki/List_of_web_browsers#KHTML_and_WebKit-based_browsers) of browsers according to the rendering engine being used. Webkit for all browsers could be the standard as LAMP is for servers or its adoption might lead to stagnation and lack of innovation and competition. Provided that browser developers adhere to [W3C standards](http://en.wikipedia.org/wiki/World_Wide_Web_Consortium) there is no reason why diversity should not persist. One of the most oft-cited arguments against duplication is that it creates compatibility layer problems, and when a new browser with a different rendering engine arrives on the scene, it causes groans of dismay and headaches for web developers who have to test yet another browser against web sites they design. Google think they have cracked that one too. On pages nine and ten of their launch comic for Chrome they reveal that using Google's vast resources that have utilised a "Chrome bot" to crawl the web and test Chrome against millions of the most representative websites (i.e., using Google's page rank to visit the sites the average user visits). This is not foolproof but it should save a few web developers from reaching for the headache tablets and Google having to wait for feedback in an external beta version. If that works, even partially, it's good. Really good. 

=ZOOM=Even when a piece of software blazes, burns and fails the debris may scatter and seed the digital cosmos with ideas which others incorporate to their software=

# What should (or could) Mozilla do?

Competition, commercial or otherwise, is a good thing. It drives change and allied to the principles of free software it improves and extends software. Even when a piece of software blazes, burns and fails the debris may scatter and seed the digital cosmos with ideas which others incorporate to their software. The sheer multiplicity of browsers and operating systems is as necessary for progress as supernova are for seeding the universe with the heavier elements required to create life itself. 

In October last year [Matt Gertner at the AllPeers blog](http://www.allpeers.com/blog/2007/10/05/should-mozilla-drop-gecko-for-webkit/) wondered if Mozilla should drop Gecko for Webkit. It is a good summary of the case for and against. On balance there do seem to be complex questions of porting and I hope I am right (please correct me if I am wrong) if I say that Gecko is an implementation of [XUL](http://en.wikipedia.org/wiki/XUL) and that XUL and [XPCOM](http://en.wikipedia.org/wiki/XPCOM) is required for addons. Firefox is a good browser and it has its faults but addons are perhaps the one thing that make it so damn popular by extending its functionality so massively. We might baulk at a move to webkit that involved compromising their availability and it is not just Firefox you have to think about. There are also other Mozilla products: Sunbird, Thunderbird and Seamonkey. On the plus side Chrome, running on Webkit, is less of a memory hog than Mozilla's Gecko which means that the latter is more problematic on mobile devices (Webkit runs on Android and the iPhone). That may be something Mozilla should keep in mind for browsers--not on web-enabled mobile phones but on ultra portable micro laptops like the EeePC and all the imitators it has spawned in record time. That market is wide open for colonisation and browsers powered by Webkit might give Mozilla an edge.


# Conclusion

=ZOOM=If we must have a dictator then let us at least have a benevolent dictator. Better the mild lash of a Google than the eternal jackboot of a Microsoft=

I do not know when Chrome for GNU/Linux will see the light of day, but when it does I will certainly take it out for a run and kick the tyres. Chrome will doubtless have its fanboys and critics in an already crowded browser market. We can speculate until the crack of doom about Google's motives but choice and competition are good in any case. I'll stick my neck out and say, for the record, that Google intend Chrome as an Internet Explorer spoiler and that Microsoft stands to lose most from any significant market share Chrome manages to establish. 

Google for some has become an intrusive monster, threatening our security and privacy, morphing into the evil empire but, to paraphrase James Joyce, if we must have a dictator then let us at least have a benevolent dictator. Better the mild lash of a Google than the eternal jackboot of a Microsoft. What have _they_ ever done for free software?

 
# Postscript

Within one day of launch Google has already found itself having to do some [backtracking on the terms of its licence](http://www.pcworld.com/businesscenter/article/150637/google_amends_chrome_license_agreement_after_objections.html). There were objections to copyright implications. They objected to that part of the licencing agreement which would give Google "a perpetual, irrevocable, worldwide, royalty-free, and non-exclusive license to reproduce, adapt, modify, translate, publish, publicly perform, publicly display and distribute any Content which you submit, post or display on or through" on anything accessed through Chrome. Google subsequently withdrew it as well as making the change retroactive for all those who had already downloaded and installed Chrome. Oh, and did I mention that it has racked up a [carpet bombing flaw already](http://blogs.zdnet.com/security/?p=18430?). Let hostilities commence!