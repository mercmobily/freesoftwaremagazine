---
nid: '2850'
title: 'DRM and the BBC iPlayer: an interview with Paul Battley'
authors: 'Gary Richmond'
published: '2008-04-28 4:42:05'
tags: 'drm,iphone,bbc,iplayer'
license: verbatim_only
section: interviews
listed: 'true'

---
In this post I will interview Paul Battley, the man who wrote the program that worked around the DRM loophole at the BBC. No GNU/Linux user needs to be told what DRM (aka Trusted Computing, aka Palladium) is and why it is a thoroughly pernicious and Hydra-headed monster that needs to be slain. I hope to make that the subject of a post in the very near future, but in the meantime here is a quick thumbnail sketch of what happened with the BBC's iPlayer, to bring you up to speed. The interview with Paul Battley follows.

<!--break-->

# The story so far

About two months ago it was reported on [Cory Doctrow's blog, Boing, Boing](http://www.boingboing.net/2008/03/08/bbc-drops-drm-from-i.html), that the BBC had released a beta version of its iPlayer for the Apple iPhone ([and have since added betas for the iPod and Wii](http://www.bbc.co.uk/iplayer/latest/)) and that, quite unintentionally, it was possible to download it to a hard drive without DRM restrictions with the help of two Firefox extensions: [User Agent String](https://addons.mozilla.org/en-US/firefox/addon/59) and [Firebug](https://addons.mozilla.org/en-US/firefox/addon/1843). Once installed, it was simply a matter of setting the user agent string for the browser to mimic the iphone, navigate to the iPlayer page on the BBC website, select a programme and copy and paste the address into the location bar. You would then be prompted to save or download the file. Choosing the latter, you could then download it to the directory of choice, including removable media. Simplicity itself and requiring minimal technical skills.

[The BBC soon closed that "loophole"](http://news.bbc.co.uk/1/hi/technology/7293988.stm), implying that this was an abuse which would lead to the equivalent of file sharing. Many users were crestfallen but as the nineteenth-century writer Cardinal Newman observed, salvation is wrought by persons, not bodies- and there are a lot of talented and committed persons out there in the GNU/Linux community who objected to the behaviour of the BBC, and saw its DRM restrictions as a technical challenge and an ethical issue about digital freedom.

One man out there, Paul Battley, took up the challenge. He wrote a script (in the Ruby programming language) to replace the blocked Firefox extensions. It worked a treat but the BBC blocked that too; however Paul, just like Kenny in Southpark, couldn't be killed off so easily. He wrote a second script and, as of the time of writing, it is still going strong. Only time will tell if the BBC has simply thrown in towel or decided that DRM is inherently bad or that it has no business acting as a unpaid salesman for Apple's iphone profits. Whatever the reason, let's ask the man who wouldn't take no for an answer.

# The interview

**Gary:** Hello Paul. First, as they say in all the best quality interviews, tell FSM about yourself and your computing background. How many programming languages and how many computers?


**Paul:** By day, I'm a developer at Reevoo in London. We're all about reviews and helping people decide what to buy, with a strong focus on electrical products, and I spend most of my time working on the Ruby on Rails applications that power our business--and public-facing operations. We're probably one of the bigger Ruby programming teams in the country, and I have some great colleagues. We all teach each other a lot.

The first language I learnt to program in was, funnily enough, BBC BASIC. I must have been about ten years old at the time, I guess. I recall that I spent a lot of time copying in listings from magazines, which seems tremendously quaint now! Over the years, I've used C, C++, Ruby, PHP, JavaScript, Python, and even microcontroller assembly language. Like many programmers, I suspect, I've dabbled in many languages: I've been playing around with Haskell quite a bit recently, but I haven't really done anything serious with it. It's influenced the way that I program in other languages, though. I'm a bit of a contrarian by nature, so I'm perversely proud of the fact that I've never written a Java program in my life.

As I've been exposed to more and more languages, my tolerance for bad ones has decreased. Life's too short for manual memory management or pointlessly verbose syntax. One of the really positive things that I've seen on the Linux desktop recently is the trend towards writing applications and utilities in languages like Python. I think that has the potential to improve the quality of software significantly.

I'm particularly keen on Ruby, which I've been programming in for quite a while now. It's an elegant, expressive language, with a sketchy standard library and an immature runtime. The latter points are finally being addressed, but the language itself is what's kept me using it. That, and the fact that it's what I get paid to do every day!

As far as computers are concerned, I've owned a lot. I started using Linux on the desktop with the initial release of Ubuntu in 2005, although I've used Mac OS X in parallel for much of that time. I've recently switched all my own computers over to Ubuntu, mainly because of my poor experience with Apple hardware. I don't want to be locked into one supplier any more. I've long tried to use open formats in order to future-proof my data; using open systems is just a natural progression. And desktop Linux is really good these days: it makes Windows XP look awfully tired.

**Gary:** Was your response to the BBC blocking those Firefox extensions hacks based on just liking a technical challenge or was it, as I suspect, from reading some of your responses on your website, an objection to the nature of DRM itself?

**Paul:** Although I feel that DRM is for suckers, it wasn't so much the fact that the BBC used DRM as that their initial implementation wouldn't work on any computer I own. Plus, after Microsoft was specifically convicted of abusing its operating systems monopoly to gain an advantage in the media player marketplace, it was bad form for the BBC to be reinforcing that advantage. That said, the cross-platform streaming version isn't bad at all, apart from the fact that the Linux version of the Flash plugin is closed-source, doesn't work natively on 64-bit systems, and is generally a bit rubbish. The only "DRM" in the Flash version is the proprietary transfer protocol used--and it won't be too long before someone works that out.

What really irked me was the way in which the iPhone version was rushed out to great fanfare with no DRM of any kind, rather putting a lie to previous protestations about the absolute necessity of DRM.

The piecemeal approach to opening up the iPlayer, one proprietary platform at a time, seems wrong-headed to me. If there's an h.264 version, why not make it available to every device that can play h.264? Restricting it to a single manufacturer is the kind of market interference that a national broadcaster shouldn't be engaging in. They've done it again with the Wii version, too: technically, the Flash 7 content will work on the PlayStation 3--people have shown that--but the BBC have restricted it to the Wii. This is just wasted effort, and a poor use of resources.

I also felt that such hyperbolic coverage of the blocking, especially from BBC News with its talk of "hackers" and "exploits", deserved a swift response. They picked a fight, and I was happy to oblige. What better way to show the flaws in their approach than to work around their new developments on the same day?

**Gary:** You wrote this script in Ruby. Did you choose it because it is your language of choice or because it was particularly suited to the task?

**Paul:** As I mentioned earlier, it's the language I use at work every day, so it was the closest tool to hand. Any language with an HTTP library would have done: other people have implemented the same functionality in Perl, PHP, Python, and Lua.

**Gary:** The script does exactly what it says on the tin, but it's not a GUI. Are there any plans to give it a shiny frontend and add features such as resume and schedule and proxy (for non UK residents) functions--if the BBC have decided not to up the ante?

**Paul:** I've already added proxy support and resume functions, and I'd love for someone to write a GUI. In fact, there are a couple of people doing that right now. I just don't have any personal interest in doing it myself, because I wouldn't use it. Let someone who has that itch scratch it--they'll do a better job than I would. My focus is on making downloading work, and on keeping up with any changes--maintaining a kind of reference implementation. From that standpoint, keeping the script as simple as possible is an advantage, I think. I've started work on refactoring the initial script into something more manageable and extensible specifically so that it will be easier for front-end developers to interact with it.

**Gary:** Given that you are on the second incarnation of the Ruby script and it is still up and running, have you had any indication that the BBC has relented, or is it just regrouping for round three?

**Paul:** The last blog post that Ashley Highfield wrote on the subject seemed fairly dismissive: he pointed out that there will always be ways around the protections, and that they haven't seen any problems due to this so far. I think he's right, and it's a reasonable response. I took that to be a kind of armistice, but he's leaving the BBC soon; will his successor feel the same?

One of the nice things about the notoriety I've gained from this issue is that I've had the chance to talk to a number of people who know what's going on on the inside. The BBC folk aren't stupid: it's the rightsholders' fear of the internet that is forcing the BBC to have to implement some kind of copy-prevention. I don't think that there's any love for DRM at the BBC--it's anathema to public service broadcasting--and I've come to suspect that they hoped that the rightsholders wouldn't notice its absence until it was a fait accompli. If we keep breaking the protections, and the sky doesn't fall in, perhaps the rightsholders will realise that their fears are irrational, and we can all drop the façade. After all, there are plenty of BBC programmes on The Pirate Bay already, and most of those come from broadcast sources or DVDs. The existence of h.264 downloads won't impact that.

**Gary:** More generally, why do you think that the BBC tried to block your script when, after all, any UK viewer can record any programme (including films) to a digital recorder without any DRM issues?

**Paul:** I think the broad coverage of the download loophole put them in a position where they had to be seen to be doing something in order to appease the rightsholders. Their blocking made the mainstream media, but my subsequent unblocking didn't, so the publicity angle seems to be covered for now.

**Gary:** Given that your script is the product of one person with programming skills, do you think that the future of combating DRM lies with large groups like the Free Software Foundation (FSF) and others or is it up to the little platoons in the GNU/Linux bazaar to acquire programming and other technical skills to defeat proprietary software?

**Paul:** Continuing with the military metaphor, I think it's absolutely the job of small unaffiliated guerilla groups with the freedom to upset vested interests. The large bodies have bigger, more important battles to fight, and being embroiled in this kind of skirmish would probably be counter-productive for them. The FSF is making the case for free software. In the meantime, we still live in a world dominated by proprietary software and abusive monopolies: I'm just making it a little easier for Free software users to watch BBC programmes.

**Gary:** Paul, that was great. Thanks for revealing the thinking behind writing the script and please accept my thanks and the thanks of all lovers everywhere of digital freedom.

# So, what can you do?

Well, you can always sit back, wear sack cloth and ashes and bewail the slow death of your freedoms and the progressive enfeeblement of your computers' power and security and the isolating of open standards and operating systems based on [Stallman's four freedoms](http://www.gnu.org/philosophy/free-sw.html). Or, you can be a one man band or a member of one of the little platoons in so many ways. Perhaps one of the most useful and important things everyone can do is the follow Paul's example and commit themselves to learning at least one programming language. If every one sat back and assumed that someone else would do all the work, nothing would get done. So, I will put my money where my mouth is and undertake to master at least one programming language that could add to the general pool of expertise to maintain free software freedoms. As to which one, I invite readers to respond with suggestions for the best one to choose.

Can we help to write an extended GUI for Paul's Ruby Script? Is there anyone out there with the requisite programming skills to put a shiny interface on the raw script--and perhaps extend the feature set? If you fit that description, please let FSM know and we'll see where it goes. 

In the meantime, if you want to download and install the script [head over to Paul' website](http://po-ru.com/diary/bbc-iplayer-fix-hacked-again/) and while your there send him a thank you for the script. I did!

# Conclusion

The free software movement is indebted to all those who, like Paul, gives freely of their time and their technical expertise to safeguard and promote personal digital choice and freedom. If there any lessons to be drawn from this uplifting story is that persistence pays, that even the most non-political user of GNU/Linux simply cannot afford to ignore the politics of free software. Richard Stallman's insistence that in the end it's all about politics looks more relevant than ever. Where DRM and patents are concerned it look like turtles all the way down. Behaving like an Ostrich in this regard (to mix my zoological metaphors) is a recipe for having your digital freedoms Salami-sliced out of existence. 


