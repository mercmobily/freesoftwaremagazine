---
nid: '2998'
title: 'The semantic web as an operating system: with users and permissions!'
authors: 'Mauro Bieg'
published: '2009-02-06 9:46:57'
tags: 'community,networking,openid,anonymity,semantic-web'
issue: issue_23
license: verbatim_only
section: opinions
listed: 'true'

---
In the near future, the semantic web data will be precisely tagged and thus a whole lot easier to find. This will further spur the trend of the web and global society becoming tight networks that are increasingly interdependent and transparent. Do we have to sacrifice anonymity on the web in order to retain trust for collaboration? Or could we see a web emerge that functions as a kind of operating system with different users and permissions to run this global machine which we call the internet?

<!--break-->

# The semantic web

This [talk of Kevin Kelly](www.ted.com/index.php/talks/kevin_kelly_on_the_next_5_000_days_of_the_web.html) on the future of the web has got me thinking. Kelly says that the first step of the Internet was about linking computers to each other: you could FTP into another computer and access its files. The second step was the World Wide Web: connecting HTML-pages, each page had a URL and users jumped from page to page by clicking on embedded links. He goes on to say that the next step will be the [semantic web](http://en.wikipedia.org/wiki/Semantic_Web), where actual data is interlinked. 

The concept is not to have the data just displayed on the page (`<item>cat</item>`), but to link it to a definition or similar (`<item rdf:about="http://dbpedia.org/resource/Cat">cat</item>`). This will make the data itself directly accessible from elsewhere. You won't be limited to just looking at a page, but it will be possible to find and grab specific data from all around the web (without having to bother on what HTML page it resides) and have it automatically assembled and put to various uses. You could feed the data into a program (or web-application) to further process it, or you could search, sort and display the data in various customizable formats, views etc. Instead of making a flat search for anything containing the word "cat", you can search for every object tagged with `rdf:about="http://dbpedia.org/resource/Cat` which is a lot more precise. If the same object is also tagged with GPS-coordinates, you can easily find all the Cats on the web and automatically map them onto a world map, for example.

=IMAGE=TED1.jpg=Figure 1: the semantic web is about connecting words and concepts, not only HTML-pages anymore (Credit: a slide of Kevin Kelly's presentation at TED: www.ted.com/index.php/talks/kevin_kelly_on_the_next_5_000_days_of_the_web.html CC-by-nc-nd 3.0)=

# Networks

He probably wasn't the first, but Kelly suggests looking at the Internet as just one giant planetary machine and the web as its operating system. With the rise of AJAX web applications, Google Chrome and YouTube, this operating system is becoming more capable every day. This machine is radically decentralized and therefore quite reliable, having virtually no downtime. As Linus Torvalds put it "Why do backups? I just put my stuff on the net and people mirror it!". This huge machine is the medium for unprecedented collaboration and communication and the web of information gets woven tighter and more important every day. A computer without internet is not much more than a type-writer these days. As the web becomes more semantic, each part on the network becomes part of the whole machine. Single actions, such as writing a small paragraph of a Wikipedia article, become meaningless unless they are integrated into the whole.

=ZOOM=The Internet is much more valuable than the sum of its parts, which are increasingly dependent on one another=

On the Internet, abstraction layers like HTML or the semantic framework reduce the time and thus the cost for finding and accessing information. Generally, it seems that as cost for connecting the nodes falls, it becomes more efficient for the parts of the system to specialize and integrate tighter. The result is that the whole is much more valuable than the sum of its parts. And the parts of the system become interdependent (all the parts depend on one another).

=IMAGE=TED2.jpg=Figure 2: The internet is a global network or one planetary machine (Credit: a slide of Kevin Kelly's presentation at TED: www.ted.com/index.php/talks/kevin_kelly_on_the_next_5_000_days_of_the_web.html CC-by-nc-nd 3.0)=

In every interdependent system having the connection break down is a real threat to continuity mostly because of the gains in connecting. So it's a risk you just have to take and you have to work as hard as possible to ensure that the connections don't break.

<!--pagebreak-->

# Anonymity vs. trust

This trend of networking ever tighter may come at the cost of our privacy. This is something else discussed by Kevin Kelly and by [Marisa Maya](href="http://whiteafrican.com/2008/08/18/google-on-anonymity-vs-trust/) of Google. The fact is that there is increasingly more information about you on the web which is very easy to find, so what's going to happen when the semantic web arrives? Then again that's the idea of the web: making it easy to find information. There are those who think that there is no place for anonymity in the semantic web. They say that something which depends upon a high level of collaboration and interdependence needs to have solid mechanisms of accountability and that anonymity is the enemy of trust. 

=ZOOM=Is anonymity the enemy of trust?=

It's important to know who is behind a specific blog post if you are about to use that information as an integral part of your product. Similarly, if you are about to collaborate on a major project with someone you have never met, then you want to have access to reliable information about them. It's about everybody having a _personal brand_ which gives some kind of quality assurance and credibility to statements on the internet, especially when it's not on the New York Times site but on a collaborative site with many authors. And because the web will become ever more interdependent, this accountability becomes ever more crucial for the system to work. You don't trust anonymous people as much as you trust identified personalities with a track record. Anonymity hurts the emerging collaborative information society.

=IMAGE=TED3.jpg=Figure 3: Do we need to give up our anonymity on the web to retain trust for tighter collaboration? (Credit: a slide of Kevin Kelly's presentation at TED: www.ted.com/index.php/talks/kevin_kelly_on_the_next_5_000_days_of_the_web.html CC-by-nc-nd 3.0)=

The flip-side of this reasoning is of course that you risk totally losing your anonymity on the net. There is an argument that the virtual world should mirror the physical world where you apparently have less anonymity. The problem with this is that the physical world isn't searchable in the same way as the web. Within a few seconds on the semantic web, everyone can get hold of every trace of information concerning you that was ever published. Think of the picture of you being drunk at a party and those maybe rather intimate messages that still reside in the archive of a social networking site, your family and friends on flickr, your political comments on one or another blog. In the virtual world you stand to lose **all** your anonymity and privacy. In the physical world -- unless you are famously recognisable -- you still have a enough privacy to walk through a city or meet some friends in a restaurant. There, only the people nearby can hear you but probably won't listen and will soon forget what they heard. On the other hand, if you say something on the internet the whole world might come to read it sooner or later, and when you delete it there are still the copies on Google Cache and the Internet Archive!

# Multiple virtual identities for each person

So how do we resolve this conflict of interest?

<!--pagebreak-->

I think the key lies in realizing that you don't necessarily have to expose your physical-world-identity to gain credibility and trust in the virtual world. Think about the people contributing to free software projects. They don't gain the trust of the project leader by saying: "Hi, I am Peter Smith, living in San Francisco and my family has never had problems with any sort of drugs." No! They usually start contributing minor improvements to the software and when they have submitted enough good work they are given write-access to the repository. Their ability to write good code has nothing to do with their potential problems in the physical world. And if you gain respect in a certain community on the web by expressing your political opinion, that in turn has nothing to do with your ability to write good code either!

=IMAGE=OpenID.jpg=Figure 4: Multiple OpenIDs per person might bring the balance between transparency and privacy. (Credit: OpenID Foundation http://openid.net/logos/ fair use)=

To briefly come back to the analogy of the internet being one giant machine and the web being its operating system: have you ever seen a modern operating system without multiple users and access permissions on files and data? Some people make a user account on their computer for their work and a separate user account for their private use. So what I am suggesting is using [OpenID](http://en.wikipedia.org/wiki/OpenID) or a similar mechanism to allow the same person to register several different and totally independent virtual identities, that are each recognized by virtually all websites. Maybe you'll create one virtual identity for your technical stuff like participation in free software communities, another for your activities related to your physical-world-job and maybe a third for your personal and private contacts and social networking. Part of the reason the Internet gained traction was due to widespread and simple to achieve anonymity. We don't have to take the drawbacks of the physical world (having only one identity, one body) with us into the virtual world where we can have multiple identities. The Internet would lose some of its appeal if we turned this feature off.

=ZOOM=We need individuals to be able to have several different virtual identities and a web that supports access permissions according to those identities=

With a few OpenIDs, we have different user accounts on our web operating system, but we still need access permissions on the data stored by that system. After you login on a website or webapp with one of your OpenIDs (or your browser logs in automatically after having asked you the first time you visited the site), you can then go to your user preferences on that site and decide that your posts or other contributions like image uploads are only displayed to a restricted sets of other authenticated users -- similar to your _friends-list_ on today's social networking sites. Alternatively you could change the settings to display your posts publicly, but mask your identity as the author with only your friends seeing your actual OpenID. Some of your closer friends might also be able to link your different virtual identities in their friends-list (like on today's multi-IM-messengers where you can link a person's GMail, AIM and ICQ identities). At the other end you will be able to gather all the services you have subscribed to with different identities in one app (similar to today's mail apps handling several email accounts).

# Conclusion

Of course, this system isn't totally fool-proof: you still have to trust the companies or organizations managing your identities and the services you allow to collect and host all that information about you. But ultimately this *is* the price for personalization and sharing if you want it done by a web-service as opposed to a local server you would have to maintain yourself. The web-service probably also displays suitable advertisement to keep it free as in beer. 

Still, managing permissions and identities and deciding which parts of your life should be public will always be a delicate affair. But this would at least be a basic framework which is open, decentralized and provides for the advantages of having personal brands. These would be identities people can more easily trust without having to give up all the privacy and anonymity on an otherwise totally transparent and searchable semantic web which we need to further stimulate collaboration.