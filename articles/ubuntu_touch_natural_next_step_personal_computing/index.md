---
nid: '3830'
title: 'Ubuntu Touch: the (natural) next step in personal computing?'
authors: 'Tony Mobily'
published: '2013-05-20 7:45:14'
tags: 'ubuntu,touch,android'
license: verbatim_only
section: opinions
main_image: image.jpg
listed: 'true'

---
I don't think many people have realised that we are on the verge of a technological revolution. The computing world is changing, and this is the first time GNU/Linux is catching the revolution as it _begins_. Computers are getting smaller and smaller, while phones are getting bigger and bigger. Everybody can see that they are about to converge -- but in what form? Well, the answer is: GNU/Linux -- before anybody else. The ingredients? A great GNU/Linux distribution, a leader with the right vision, and a few very bold, ground-breaking choices. Mix it well: the result is Ubuntu Touch. Let me go through these ingredients.

# A great distribution

Ubuntu is a fantastic GNU/Linux distribution. Mark Shuttleworth, the man who started it all, was a smart tech guy who made a small fortune with digital certificates just before the IT bubble imploded. He decided to invest a big chunk of that fortune creating a GNU/Linux distribution that would be [more popular than Windows](https://bugs.launchpad.net/bugs/1).

It was 2004. Today, 2013, the bug is still open: Windows still has the majority of the market. So, has Mark failed to make a fantastic GNU/Linux distribution? No, he hasn't. But what is true, is that even though Ubuntu has a huge market share in absolute numbers, it's still miles away from Windows'. I can spend the next 20 pages trying to analyse, guess, and look for the reasons: tricky hardware support (it's 2013, and I still have problems with my Thinkpad's Bluetooth!), lack of games, a server-oriented package management system (although not everybody agrees on this point...!), lack of support from most of the OEMs, lack of some crucial applications, and so on.

However, Ubuntu still _is_ a fantastic GNU/Linux distribution, and it will be the centre of this technological revolution.

# A leader with a vision

Mark Shuttleworth spent the first few years creating Ubuntu, and worked on it until it became an established GNU/Linux distribution. Even though you _can_ criticise some of the choices he made, he is clearly a leader who knows how to lead, and who has a clear vision of where he's going.
People tend to forget that before Ubuntu, the Jungle of GNU/Linux distributions was a little grimmer.
I wish he had made some choices _earlier_. For example, Ubuntu _needs_ a different way of distributing client-side software. I wrote an article [back in 2009](http://www.freesoftwaremagazine.com/articles/2009_software_installation_linux_broken_and_path_fixing_it) about it, and finally, in 2013, they are [doing it](http://news.slashdot.org/story/13/05/08/2038243/ubuntu-developing-its-own-package-format-installer). I also wish he had managed to team up with a hardware maker and _actually_ made decent, $500 laptops with Ubuntu pre-installed. Dell was a nice try, but they just didn't go far enough: I kept on hoping they would come up with a *custom designed* laptop with the Ubuntu logo at the back, great features, only fully-supported chipsets, and a decent price. That didn't happen either -- but, it's about to happen in a much bigger way now.

If you see the history of Ubuntu, and where it's about to go, you realise that this was a great path. It took longer than anybody expected, but well, some things cannot be done in a hurry.

# Bold, ground-breaking decisions

Ubuntu has always been about looking for things where there was room for improvement. The changes have been gradual, and sometimes brave. However, two choices were made which showed a high level of boldness (and courage):

* Unity. I use Unity every day. I didn't like it at the beginning. I really, really wanted it to be at the bottom rather than the left side. This made a lot of sense to me, because I use horizontally-placed virtual desktops I get to by dragging the mouse. This drives other people insane, but that's how I am used to work. Well, I decided to give Unity a _real_ go, and discovered (after a week or so) that it was very powerful, and did a lot of things right. So, I stuck with it. I have to say, when Unity came out I realised the reason for the name, and the power behind it. I really hoped what I inferred by looking at the source code, and reading dev discussions, was true and that I would eventually use it on a mobile device. Now, it looks like I am.

* Mir. When Mark declared that Ubuntu would ditch Xorg for Wayland, I started reading about Wayland like crazy, and realised that it was a fantastic idea. Fantastic, and dangerous: nobody to date has actually _managed_ to ditch X. There are just so many issues, some of which are terribly sticky (proprietary drivers is only one of them). When Mark then announced that they would go with Mir, because Wayland wasn't exactly 100% perfect for what they wanted, I realised that they were very serious about things, and that they knew that they _had to_ get it fully right the first time around. Mir can be used on screens of any size, and it ditches the idea of the screen usable via the network (although you can always run an X server if you need to). It also fully fits Mark's vision.

People don't realise that making this sort of decision is _dangerous_. You might end up alienating your user base -- or even your own employees. You might end up with something that _doesn't_ actually work (!), or that it takes 8 years, rather than 2 years, to develop fully. You might even compromise your product so much that it loses its appeal to _most_ users and loses any chance it might have had to make money. In simple words, making choices like that is tremendously risky.

Or brave, as they say.

# Let's welcome the Ubuntu phone: Ubuntu Touch.

So, we have a brand new package management system (hopefully soon). A new video manager (hopefully very soon). A new, multi-purpose launcher (here already). What we are missing, at this point, is a device with the following features:

* It's a phone. Excuse me, it's a _good_ phone with a great launcher (Unity), and great self-contained apps
* It's a computer. Excuse me, it's a _real_ computer: you plug your phone into a dock, and you have a _proper_ desktop in front of you. You know, one with full size applications, a window manager, etc.
* The "phone" side and the "computer" side of it are... the _same_ side. You take a photo? Great. Then, you can plug your phone onto the dock, gain a keyboard and mouse, and use _Gimp_ to manipulate the photo you just took.

I am writing this article just before getting on a flight -- a long flight, that goes from Australia to Europe. I will have my laptop bag with me (yes, my Thinkpad with the broken Bluetooth) and... well, I wish Ubuntu Touch was already here.

# The end of the story

When the "Ubuntu phone" comes out, the following _great_ things will be true:

* You won't have to worry about non-functional Bluetooth or hardware
* The screen manager will be fast as hell, with great animations
* Apps will come as self-contained directories with everything you need inside them
* You will be able to use the same apps when using your phone as a computer
* The system will be fully supported and custom-built for that hardware
* It will all be free software (I am crossing my fingers in terms of drivers)
* You won't actually need a computer any more: your phone _is_ your computer (or, your computer _is_ your phone)

There are possible problems I feel Ubuntu needs to look out for:

* Price. Up to this point, every time there was a great Ubuntu device, it was over-priced. I hope it won't be the case
* Specs. I hope specs are _good_, so that the "computer" side of the story really, really works
* Plug universality. Here we have a dock involved. Are they going to stick with the free software ideas here? Compare two different worlds: one where you can plug your phone into _any_ docking station, regardless of the maker; and one where you need to use a matching dock.
* Multi-platform applications. Some applications will be based on Javascript/HTML/CSS. Others will be native. Creating an ecosystem where an application comes with "everything" and is self-contained is great. However, multiple architectures need to be managed properly, since -- in the mobile world -- that's the norm.

# Is it really a revolution?

It is -- even though people cannot see it yet, being able to have your computer in your pocket, and use it as a phone, is indeed a game changer. I am not sure how long it will take for it to take off. However, for the first time GNU/Linux is there _first_. Ubuntu Touch is not yet another Linux-based mobile framework: it's a new idea. The idea that you carry your device with you -- the same device which can access your music, your photos, and that can be used as a "proper" computer. The idea that a _good_ device is really all you need, because it really does the lot. And does it well.

This concept might take a while, but it _will_ catch on. At this point, Ubuntu quickly is reaching a point where it has all of the required ingredients to be there first.

Thanks, Mark.