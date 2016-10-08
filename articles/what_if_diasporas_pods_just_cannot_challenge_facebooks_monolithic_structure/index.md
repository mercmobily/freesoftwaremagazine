---
nid: '3707'
title: 'What if Diaspora''s pods just cannot challenge Facebook''s monolithic structure?'
authors: 'Tony Mobily'
published: '2012-02-01 14:48:00'
license: verbatim_only
section: opinions
main_image: diasp.jpg
listed: 'true'

---
When Diaspora was announced, the first thing I checked was simple: "Is it distributed?" The answer was "yes!". I felt ecstatic: having a distributed system implied that there was no centralised control over the information. What I didn't realise is that multiple pods would also lead to multiple problems -- and now I wonder whether a de-centralised structure creates more problems than it solves. I write this article screaming: please prove me wrong. It's not a challenge: it's a genuine request. I love Diaspora as a project, and I really want it to work.

<!--break-->

First of all, let me explain briefly what "decentralised" means (yes, British spellings, with an 's'!). It basically means that you can run your own server, and have it connect to other Diaspora servers. This means that you are able to create a relationship with other people on other pods, rather than just your own.

So, what are the problems I am talking about, that make me look like a proprietary software troll?
Have a look at the [list of diaspora's pods](https://github.com/diaspora/diaspora/wiki/Community-supported-pods). Remember that to join the "main" one, https://joindiaspora.com, you need to have an invite.

**Reliability**  
First of all, it's about reliability. How do you know that the pod you are using will be there tomorrow, the day after tomorrow, or in 10 years? Well, you don't. You can *try* and use one that looks reliable, but these pods are community-based after all, and a lot of things can happen in 10 years. You _can_ chose to run your own pod, but that would imply that you have your own server and are able to maintain it. (And secure it: remember, from then on you will be guarding other people's personal information!).

**What about apps?**  
You might hate them, but one of the greatest strength Facebook has is in the thousands of apps users can (and do) install. Facebook's architecture is really smart about it: external applications are hosted as iFrames, and obtain the users' information through a pretty clever API. OpenSocial was meant to clone that, but I am not sure about its success. (How many successful OpenSocial applications do you know about? Have you even ever heard of it? The list of sites backing it is interesting:  Hi5.com, 99factors.com, MySpace, orkut, Netlog, Sonico.com, Friendster, Ning, and Yahoo!.)

**Security**  
Keeping a server safe is pretty easy if it's in the middle of the cyberspace nowhere and you don't host anything interesting. The occasional scanner might pick you up, but if you don't run anything on it, they will find it pretty hard to do get in. Host a Diaspora pod, and it's a very different story: you have a lot of valuable user information, running on beta software. People out there find this kind of information very valuable -- and they will try and get to it.

**Software updates**  
This is a big one for me. I wonder how often Diaspora community administrators actually update their pods. Hopefully, more often than Drupal administrators... I have no idea what the upgrade procedure is, but I do know how beta software goes: an update can be a pretty horrific nightmare. Having older versions of pods will lead to users getting used to less-than-optimal experiences too ("Ah, this is Diaspora, it looks a little... meh" -- whereas the current version looks anything but "meh"...). I am not even going to mention https://diaspora.happeningin.eu, which in the wiki reads "Out of sync with main repository, running own fork" -- although I just did

**Social plugins**  
Free Software Magazine has a couple of Facebook plugins: it allows people to "like" our magazine, as well as post comments. These plugins are invaluable, for the magazine _and_ for Facebook. They are invaluable for us, because they allow people to post comments very quickly straight from their Facebook accounts, and have that post go on their walls. And they are important for Facebook, as they really encourage more and more people to join Facebook. The decentralised structure of Diaspora can make the development of these plugins tricky at best (especially when you then need to implement moderation and so on). 

**Where is the solution, you troll?**  
The solution, in my humble opinion, is in two steps:

* Soon: a commitment from the Diaspora development team stating that there will be a number of "officially maintained" pods, which will be _guaranteed_ to be _safe_, _secure_, _updated_, and _reliably "here" in 10 years_
* Quite soon: offer a way for users to "migrate" to a different pod if they wish to do so
* In the longer term: provide a list of officially maintained pods mentioned in the first point
* Find a neat way of implementing "apps", maybe implementing OpenSocial)
* Soon: Implement social plugins.

Challenging a monolithic structure is hard work. Facebook is about to have their IPO (Initial Public Offering, which means becoming a public company). So, the wind is going to change. This could be an opportunity for Diaspora -- but these issues might end up slowing down user adoption.
(Yes, Free Software Magazine is on Diaspora, and yes, we are on the "main" server...)

