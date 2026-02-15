---
nid: '2918'
title: 'GNU/Linux free software tools to preserve your online privacy, anonymity and security'
authors: 'Gary Richmond'
published: '2008-07-07 23:31:04'
tags: 'privacy,tor,anonymity,freenet,wikileaks'
license: verbatim_only
section: end_users
listed: 'true'

---
Whether you are online or offline, freedom matters. Like good health you never think about it or miss it until it is under threat or actually gone. If you love freedom, you probably love free software and it has given us some terrific tools with which to defend freedom. In this article I will give an overview of some of the available resources (Freenet,  Wikileaks and Tor) to protect dissident opinion, facilitate whistle blowing and promote the safe and anonymous development of free software. 

<!--break-->

When I am thrashing around for inspiration, I find invariably that if I wait long enough the muses come to me. By a proverbial happy hit I was perusing the weekend newspapers for book reviews and financial information when I stumbled across two pieces of information that, frankly, shocked, angered and disgusted me.

# Why we need free software in a dangerous world

"_You have no right to anonymity. The government has a right to know who you are_". Given the recent news out of Zimbabwe you might be forgiven for thinking that Mugabe was checking to see if people had a red ink stain on their fingers to prove that people had voted--for him. Perhaps you thought that the Dear Leader on the Korean peninsula had make another of his invincible pronouncements. Stalin, Pol Pot, Hitler? Amazingly, not them either. This fine expression of democratic sentiment was not uttered by any despot with a Napoleon complex. It was said, wait for it, by one Mr Andy Burnham, the Culture Secretary of the British Government. When a member of the British Cabinet advances such views in a notional democracy we all need to very worried. 

=ZOOM="You have no right to anonymity. The government has a right to know who you are"=

Remember, this is the government that managed, amongst other things, to lose computer discs with the personal records of no less that twenty five million people. These discs contained enough unique identifiers (National Insurance numbers, date of birth and bank account details) to keep identity theft criminals happy and busy for years. The discs are still missing. Perhaps this member of the Downing Street Politburo will plead necessity. 

The riposte to that kind of self-serving nonsense came from William Pitt several centuries before: "_Necessity is the plea for every infringement of human freedom. It is the argument of tyrants; it is the creed of slaves_". Burnham's imperious and insufferably patrician disdain for people's privacy has just been compounded by joining some of his Cabinet colleagues through the Westminster lobby to reject any parliamentary or public scrutiny of MP's expenses. Your transparency, his secrecy. Pot, kettle, black, glasshouses. Do these words ring any bells Minister?

The second piece of shocking information was [a report in the New York Times]( http://www.nytimes.com/2008/06/28/washington/28privacy.html?_r=1&hp=&adxnnl=1&oref=slogin&adxnnlx=1215345951-DzeR0tO4YM2BvdM/E9USpwof ) of a leaked document that the USA and the the European Union were proposing to exchange information with each other on their citizens. Allowing this to happen would be like putting Count Dracula in charge of a blood bank. They will of course plead effusively (a) good intentions and (b) make extravagant claims for built-in safeguards. Well, the latter is about as useful as a chocolate teapot. Heard it all before--along with fairy tales from my mother and father about the tooth fairy and Santa. Inevitably, they also plead cruel necessity but those words have been on the lips of all tyrants since time immemorial. When they start forming on the lips of "democratic" governments and politicians then it really is time to consider what must be done.

As the average politician's knowledge of science and information technology is smaller than [Planck's Constant](http://en.wikipedia.org/wiki/Planck's_constant) we should not be surprised at such poor understanding and lax control. 

=ZOOM=the average politician's knowledge of science and information technology is smaller than Planck's Constant=


Apart from sending off all the useless buggers to remedial class for tech-illiterates in a fit of righteous frustration, we need to be proactive. Given that proprietary software vendors like Microsoft have a vested interest in cosy relationships with national governments, and given their atrocious track record of cavalier contempt for the privacy and security of their captive customers we can expect neither help or solace from that quarter.

It is in circumstances like this that free software, and the community that has grown up around it, come into its own. If the principles of privacy and anonymity are being challenged constantly by relatively liberal democracies one can only imagine what is happening in most of the rest of the world where totalitarianism, despotism and spying are the norm and citizens need help to protect themselves when accessing and disseminating information. So, what follows is a brief tour of the resources made available by the free software community to those in most of the world who need them. 

# The basic and obvious precautions


There are the obvious precautions that all computer users take, or should take, as a matter of course: relatively secure browsers like Firefox and Opera with built-in security features to defeat phishing, encrypting e-mails with GPGP, running rootkit and virus scanners and using virtual keyboards to defeat keyloggers. That is standard fare that everyone one should be using to make themselves and the internet a safer place. Using them on top of a secure, free and open operating system like GNU/Linux is a damn good start but for citizens simply being denied access to information (of the sort most people take for granted) this can only be considered the bare minimum to venture online in a hostile environment. Let's take a look at what free software has made available.


# Four free software resources for those in peril.


## Build a DNS server or cache and cut out the middleman

Let's take a tour around the available merchandise. First out, you can do something very simple. It is not foolproof by any means but it is a start.

Every time you access the web you do so courtesy of your Internet Service Provider (ISP). So, when you type a web address in the location bar of your chosen browser, your ISP's Domain Name Service (DNS) servers look up the Internet Protocol (IP) address : a series of eminently forgettable numbers. Remembering say, freesoftwaremagazine.com, is much easier than memorizing a series of numbers like, say, 192.168.255.68. You don't need to be a genius to work out that a web address in the plain English (or any language) of a user friendly hostname is easier than a series of numbers. It is convenient but it may compromise your privacy as your ISP will now have a log of all the websites you have visited (in addition to what your local machine has cached/logged/bookmarked). Nor do you need to be a geek to work out that routing your browser requests through your ISP's DNS servers is not only a potential threat to the privacy and safety of users living under a totalitarian government if the ISP is compelled to hand over log files and other records. It is a potential bottleneck too. One of the many reasons why your web access slows down or fails altogether can be because of a high load factor on one or both of the DNS servers.

That is why it is useful to fire up a console in GNU/Linux: by typing, say, `ping -c 1 www.google.com` it will return the numerical equivalent--` 66.102.9.99`. Type that number into a browser address bar and the Google site will appear. It is a good way to test if the site is down or the ISP DNS servers are down before indulging in more complicated troubleshooting. For reasons of speed, privacy and consistency it makes sense to do one of two things: set up your own DNS server or set up a DNS cache. If you want to explore this very large and critically important area of the internet [wikipedia's entry](http://en.wikipedia.org/wiki/Domain_Name_System) is a good starting point. Using a numerical address rather than a localhost name deletes one link in the chain that helps to identify you. Not multiplying entities unnecessarily (_entia non sunt multiplicanda praeter necessitatem_), aka [Occams Razor](http://en.wikipedia.org/wiki/Occam's_Razor), is a good principle, especially when it involves the life, liberty and safety of the end user in an environment hostile to free speech. 


# How do you do that?

Setting up a DNS server in a home network, on a separate server or on the localhost itself, is a sufficiently technical subject to be beyond the remit of this article. Googling for it will return a lot of results and the user can find any number of tutorials and howtos. Setting up a full DNS is not for complete newbies and many ISPs dont' like you to set it up without using a static IP address. Installing [BIND](http://en.wikipedia.org/wiki/BIND) can be, well, a bit of a bind and something of an overkill. Using [DNSMASQ](http://en.wikipedia.org/wiki/Dnsmasq) is much better. It is free software, supports DHCP and dynamic as well as static DHCP leases which is excellent for home users. It should come with most of the main GNU/Linux distros and if not it can be installed from the various package managers. Setting it all up is worthwhile, if only for the speed hit and to try and avoid a compromised ISP DNS servers in a totalitarian state, but it is no guarantee that a user under surveillance will be anonymous. It may help but it is not enough.


# Wikileaks and plausible deniability

There was a court case in the USA where a Federal District Court Judge ordered Dynadot (the Registrar of the domain name wikileaks.org) to take the site name down permanently. Fortunately, he was not too technically literate. He seemed to assume that this would take the site down and block access. Clearly he needed the internet 101 course on DNS. He didn't know that it could be accessed "numerically" as outlined above. (Anyway, it has be mirrored at a [Belgian site](http://wikileaks.be) and at [Cryptome.](http://cryptome.org) If you go the Wikipedia entry for Wikileaks it has no less than fourteen alternative web addresses, four of which are specifically designed to bypass the Great Firewall of China). That website was no ordinary website. It was [Wikileaks](http://88.80.13.160/) and it specialises in publishing anonymous submissions and leaks of sensitive information from businesses, governments and religious bodies. 

Part of the original purpose of Wikileaks was to do the very thing this article advocates--to permit Chinese and other dissidents to speak out in _relative_ safety. To that end Wikileaks can fairly describe itself as _"an uncensorable version of Wikipedia for untraceable mass document leaking and analysis"_ and its  _"primary interest is in exposing oppressive regimes in Asia, the former Soviet bloc, Sub-Saharan Africa and the Middle East, but we also expect to be of assistance to people of all regions who wish to reveal unethical behavior in their governments and corporations"._ It is no coincidence therefore that, amongst others, the [Electronic Frontier Foundation](http://www.eff.org/) (EFF), weighed in with offers of legal support. They have always been in the fore front of defending digital freedoms. (I am pleased to report that the original judgement was rescinded.)

What Wikileaks relies on, apart from not using public servers, is ["plausible deniability"](http://en.wikipedia.org/wiki/Plausible_deniability) which, applied cryptographically, protects the dissident or whistle-blower against persecuting governments. Individuals of course accumulate information on their hard drives based on their internet habits and the free software community has provided various tools for the job: [Truecrypt](http://www.truecrypt.org/) is probably one of the best known ones. It contains two levels of plausible deniability (although Truecrypt is vulnerable to a [cold boot attack.](http://en.wikipedia.org/wiki/Cold_boot_attack))

# Freenet

Freenet (licenced under the GPL) is unapologetically political. It's aim no less than to make it durable, private, efficient and secure. Its founder, Ian Clarke, described Freenet as "a near perfect anarchy". A quick visit to [the homepage](http://freenetproject.org/) makes its position and purpose clear:

_"Freenet is free software which lets you publish and obtain information on the Internet without fear of censorship. To achieve this freedom, the network is entirely decentralized and publishers and consumers of information are anonymous. Without anonymity there can never be true freedom of speech, and without decentralization the network will be vulnerable to attack"_

I couldn't have put it better myself, except to say that anonymity is an non-negotiable absolute. It is like a switch. It can only be in one of two possible states: on or off. It cannot occupy some kind of indeterminate quantum state , like [Schrödinger's cat.](http://en.wikipedia.org/wiki/Schrödinger's_Cat)  Despite all that Freenet is more properly a platform than an application--which Clarke treated more as a technical rather than a political project.

Freenet allows vulnerable users to upload material (which is automatically encrpyted and not decrypted until downloaded) and then disconnect. Any material uploaded is heavily mirrored and moved around the net to make it difficult to trace or destroy. 

=ZOOM=the creators of Freenet realised that what users needed was not only  conventional anonymity but freedom from the fear that authorities would know they were using Freenet itself=

More importantly, the creators of Freenet realised that what users needed was not only  conventional anonymity but freedom from the fear that authorities would know they were using Freenet itself and therefore draw unwelcome attention to themselves. They provided a solution in the form of something they called ["darknet capability"](http://wiki.freenetproject.org/DarkNet) which makes tracing users more problematical for anyone--including governments and corporations. Freenet also saw the potential objection to promulgating anonymous information and introduced their equivalent to the good standing of digital certificates in extending the radius of trust between users. It's called "subspaces", one of four different file keys provided by Freenet for different purposes.. For those of us with a bee in our bonnet about the pitfalls of copyright it is good to report that Freenet takes the view that freedom of speech (before or after the event) is incompatible with copyright. 


# Freenet clients and plugins


Freenet is extensible too, with a number of extensions and plugins that allow a user to retain anoymity across functions as various as web posting, e-mailing, message boards and file sharing and an http capacity to navigate Freenet just like the web.

[Frost](http://jtcfrost.sourceforge.net/) is a Freenet client that will give you a multiple-paned browser-style tabbed interface to manage message boards and newsreaders. A Freenet-compatible version control system is available too. It's called [Arch.](http://www.unix-ag.uni-kl.de/~conrad/Archives/DSDiF/description.html) Clients for distributed software development are hardly new and the question of why a client like Arch was written for Freenet had been answered by its developer, Tom Lord. In addition to all the arguments rehearsed above in respect of free speech, privacy and anonymity Lord's _raison d'etre_ is that version control for Freenet helps also to protect free software development from the prying eyes of the DMCA  and the RIAA which might otherwise strangle software before its umblical cord has even been cut. Lord has even suggested that Freenet software itself could be developed inside Freenet to protect developers from those bodies. Given that the [British government has bent a very sympathetic ear to the recording industry lobby demands](http://news.bbc.co.uk/1/hi/business/7240234.stm) that ISPs hand over all the records of their customers using peer to peer (P2P) to download and share music and other media files Lord may well be on the right track. If you want to explore the issues further then read an article (a little dated perhaps) published in 2002 in UCLA Journal of Law and Technology entitled [_"The Digital Evolution: Freenet and the Future of Copyright on the Internet"_](http://www.lawtechjournal.com/articles/2002/05_021229_roemer.php) by Ryan Roemer.

Freenet is no idle exercise in the hubris of geeks. It really works and dissidents and whistleblowers really need it. It is no coincidence that the Great Firewall of China (_aka_ Golden Shield) has blocked Freenet. Freenet admit, freely, that they do not and probably cannot guarantee unconditional or permanent anonymity. Features such as "premix re-routing" are planned for version 0.8 which may address the outstanding security issues. 

If you want or need to run Freenet (it's cross platform) visit the homepage and follow the download and install instructions. Users will certainly experience a speed hit, especially on file in excess of 100MB,but that is likely to be deemed a small price to pay when your primary concern is a knock on the door at 3.00am by the state thought police. Freenet, however, is not the only free software tool for managing privacy and anonymity online.


# Tor

Freenet may not be well known to the average internet user who is not living in a police state but most have heard of [Tor](http://www.torproject.org/). 

Tor source is released under the BSD licence. It is an acronym for The Onion Router, described as a second generation onion router. For those who distrust all authority it is ironic that Tor was the brainchild of the US Navy developing a secure communication for government. It has come full circle and can now be used to protect individuals from their own government's prying eyes. However, despite its official origins Tor became an Electronic Frontier Foundation project in 2004, rendering financial support until November 2005. [The range of people using Tor](http://www.torproject.org/torusers.html.en) and their reasons is diverse to say the least. It is a truly impressive and thought-provoking list. Given that there has been [extensive corporate complicity by Western companies](http://www.hrw.org/reports/2006/china0806/5.htm#_Toc142395828) with Chinese censors and the Great Firewall of China (Google, Microsoft, Yahoo and Skype) Check that link and be shocked. Even Google. Shame on them.

What exactly does Tor do? Their own website sums it up succinctly:

"_Tor is a network of virtual tunnels that allows people and groups to improve their privacy and security on the Internet. It also enables software developers to create new communication tools with built-in privacy features. Tor provides the foundation for a range of applications that allow organizations and individuals to share information over public networks without compromising their privacy._"

That is putting it short and simple but how do you use it? (If you want an overview of _how_ it works point your browser at the [Tor overview page.](http://www.torproject.org/overview.html.en)) Tor is released under a three clause BSD licence and [the download page](http://www.torproject.org/download-unix.html.en) indicates pre-compiled binaries for the popular distros: Redhat, Fedora, Ubuntu, Debian and Suse. Check you distro repositories too via your chosen package manager. Tor comes bundled with [Vidalia,](http://vidalia-project.net/) a GUI for Tor and [Privoxy,](http://www.privoxy.org/) a non-caching web proxy.

Once Tor has been installed you can configure it with Vidalia and if you wish you can run it through Firefox (which Tor recommend) [and add an extension](https://addons.mozilla.org/en-US/firefox/addon/2275) to toggle Tor on and off at will. It has been possible since Firefox 1.1 (Deepark) to send SOCKS5 requests with DNS names which means that Tor can be used without a proxy. With the [Tor button](https://torbutton.torproject.org/dev/) embedded in Firefox you can toggle Tor on and off based on you personal nedd for security and privacy. 


# Conclusion

The subject of security, encryption, privacy and anonymity online (and offline too) is huge and no article could possibly hope to do justice to the nuanced complexities of these important, complex and controversial subjects. They impinge, directly and indirectly, on every aspect of our lives. No solution is complete or absolute but the free software movement has developed enough tools and online resources to give users the ability to afford themselves some degree of protection from governments and corporations.  

=ZOOM=John Milton knew something about the price of freedom. We have need of him at this hour and free software has proven time and again that it is equal to the moment=


Amidst all of the competing complexities of life , amidst all the fug, the cynical cant, hypocrisy, bad faith and the fear of trust, free software stands fast, a blessed thing possessed with an almost holy innocence. It cuts through it all with the resolution of surgical steel. It is one of the few things which has not capitulated to cynicism. The great English John Milton knew a thing or two about freedom. When he wrote Areopagitica in 1644 he made a plea for freedom against censorship when the British Isles were in the middle of a civil war. The issues were no mere academic abstraction. Milton knew something about the price of freedom. We have need of him at this hour and free software has proven time and again that it is equal to the moment.



# Postscript

In the middle of writing this article news broke that a New York judge has ordered Google, the owners of Youtube, to hand over to Viacom (which owns MTV and Nickelodeon) the personal information of every person who has ever watched a video of that popular site. The number of records is in excess of **one hundred million.** The implications are simply staggering. It is believed that records would include unique internet addresses, browsing history and e-mail accounts. 

The EFF has already, predictably, condemned both Viacom and the court ruling. Viacom may yet succeed where the US government failed in 2006 when Google managed to resist its demands for information to disclose the browsing habits of users. Google want to anonymize the logs in order to protect privacy. That sounds already like a strategic retreat. That's not good enough. This issue is huge. Let me repeat that. Huge. It is has ramifications far beyond Google, and users and companies everywhere will be watching carefully. Only time will tell what this all means and how it will play out. 

In a [previous article](/articles/will_internet_really_change_way_we_think/) I mooted Jimmy Wales' search engine project. In the light of that court ruling what Wales is trying to do takes on an added urgency. In the meantime, Google is a business, not a charity. Without the financial throughput of users on its search engine it will struggle to maintain its revenue stream. In short, if Google is complicit in compromising the privacy of their users the users have power too. The power of boycott. Many users of free software boycotted Novell after their deal with Microsoft. Google has an internet presence unimaginably greater than Novell and that means that any kind of boycott would have a much bigger impact. Boycott Google? Who'd have thought it might come to even contemplating such an idea?

This development shows that, whether you are simply viewing a video on Youtube, whistle-blowing on corporate entities like the late Enron or trying to tell the truth in a totalitarian society, privacy, anonymity and security are vital to human freedom. Freedom that is free from the claims of government necessity and the profit margins of business. We will learn the hard way that it is more important to know the value of everything and the price of nothing. Except freedom. That's priceless.