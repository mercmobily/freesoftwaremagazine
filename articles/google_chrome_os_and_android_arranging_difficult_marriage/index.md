---
nid: '3487'
title: 'Google Chrome OS and Android: arranging a difficult marriage'
authors: 'Tony Mobily'
published: '2010-12-23 3:05:11'
tags: 'google,android,chrome-os'
license: verbatim_only
section: opinions
listed: 'true'

---
There has been a lot of talking, lately, about Google's Chrome OS. People didn't take it too seriously initially; then, last week, Google started sending out demo netbooks which ran -- hear hear -- Google Chrome OS.
Google Chrome OS is based on Google's browser, Chrome -- hence the name. The idea is that all you run on your laptop is your browser -- that's it. But this raises a lot of questions.
In this article I propose a possibly interesting solution to Google's issues, and how a possible (and not-so-painful) merge with Android should be possible. 

<!--break-->

    
=TEXTBOX_START=AD: Have you tried ZenOSS? (It’s free monitoring software!)=
    
ZenOss create monitoring software; the code is released under a free license, and… well, we at Free Software Magazine use it ourselves to check that everything works fine with our servers. And it works! Have a look if you haven’t already:

* [ZenOss](http://www.zenoss.com/in/mi/fsm)

Plus! Read Free Software Magazine's own book on ZenOSS:

* [Book on ZenOSS](http://www.freesoftwaremagazine.com/books/network_monitoring_with_zenoss)
=TEXTBOX_END=

# Is it really feasible?

There is a lot that can be said, in terms of feasibility. For example, With Google Chrome OS, your data is meant to be on the cloud. You are not even meant to have data. Your bookmarks, your files, your photos, your _everything_ will be out there. But what about things you don't want to upload on the internet?

There are several other issues that need to be addressed -- carefully. For example, I am a Google Chrome user, and have battled more than twice the problem of Chrome chewing 100% of my CPU while in standby; I wonder how effective your computer will be if Chrome is _all_ you have. I also wonder about "link handling" -- Google still needs to work out how to configure things so that links (such as images, spreadsheets, etc.) are opened by the right (web?) application. And there's printing: Google promised a "print proxy", but it will probably take quite a while to be stable.

All of these things are "fixable": they will take time to mature, but eventually Chrome OS will be able to manage well local storage, stability, printing, URL handling, etc. But there is one last issue that is nasty: applications, applications, applications. 

Using Chrome OS offline _should_ be possible. The "should" here is the problem (it's not a "can"...). The main issue is that most web applications _can_ be made to work offline as well, thanks to Google Gears (on its way to be obsoleted) and HTML 5 Storage (the new kid in the block, allegedly about to become the ruler).
The reality is that writing such applications is hard. Very hard. I watched the development of [Apollo](http://www.apollohq.com): changing it so that it syncronises projects and TODO lists when online is an absolute nightmare.
Google applications do work offline, but keep in mind that Google has endless resources, and that you might not be as lucky with other applications.

More importantly, people are wondering: what about the thousands of Android applications?

# Looking it upside-down

Many have said that it would make more sense to have an Android device with a very powerful Chrome browser running on top of it. However, this would partially defeat the purpose of Google Chrome OS. I think it should be seen from a very different perspective.

Think about it: you could see Android applications the same way you see cachable flash applications: bytecode that can be interpreted and run in a protected environment.
So, a possible nice path could be:

* Extending Chrome so that it contains an "Android virtual machine" (that is, the interpreter + libraries) and an application manager/browser, as well as the market. This would mean that Google Chrome OS users would be able to install any Android applications

* Using Wayland to manage the screen drivers (instead of Android's stack or Xorg). This will make sure you get maximum speed for a snappy device

* Having a neat way of backing up all of your installed applications -- as well as your data -- into the cloud

This way, you could create the perfect Internet notebooks. 

# Dreaming?

I am probably just dreaming. But, you never know. This could already be in Google's plans. Or maybe it was an idea that was evaluated. Or maybe there are technical problems with the implementation of this idea. What I can say is that as a power user, I would definitely be very tempted by a laptop where everything is online, and -- more importantly -- I have access to thousands of Android applications running nicely in a browser's tab.

We shall see.
