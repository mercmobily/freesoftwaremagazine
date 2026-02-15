---
nid: '3252'
title: 'Google Chrome OS. Or, how KDE and GNOME managed to shoot each other dead'
authors: 'Tony Mobily'
published: '2009-11-24 4:37:49'
tags: 'gnome,kde,google,chrome'
license: verbatim_only
section: opinions
listed: 'true'

---
A lot of people at the moment are immensely intrigued by Google Chrome OS. I won't hide that I am one of them. Google promises a much needed shift in the way small computers work. Problems like software updates, backups, installation, maintenance, viruses, have plagued the world for too long: a shift is way overdue. To me, however, the change about to happen shows us what many people have refused to believe for a long time: KDE and GNOME shot each other dead. I write this knowing full well that I am going to make a lot of people angry. This might be the first time a writer receives very angry responses from both camps -- KDE and GNOME's users might actually (finally?) join arms and fight just to show everybody how wrong I am!

<!--break-->

So, let's go back a little bit -- not much: just a year or so. You are Google and you want to provide the operating system for the next generation of users, the ones who didn't start with Excel and Word, but with Facebook and Flickr. The obvious choice is GNU/Linux for the kernel -- Google knows it well, helps improving it, and obviously likes it. Then, the next question: what desktop environment would you feed those new users? KDE? GNOME? Both? What about programs looking different? What about the broken audio system? (Pulseaudio anybody?)

The question was a tough one. The answer was simple and painful: neither of them.
Painful, because I am intimately sure (although I can't prove it) that if GNU/Linux had one set of desktop libraries, one desktop environment, one set of standard for playing audio and so on, we would have those libraries in Google Chrome OS. Google would have released a set of tools to bundle software in Chrome OS -- something without the absurd current [problems of software installation in GNU/Linux](/articles/2009_software_installation_linux_broken_and_path_fixing_it/).

However, two different "everything" in the GNU/Linux desktop world meant that the break from the past, in Google Chrome OS, had to be more definite and definitely more radical. Google Chrome OS, at least initially, will not allow third party software bundles. Eventually, I am 95% sure they will have to give in -- at that point, they will have to deal with the KDE/GNOME split and the result will be business as usual: messy.

# Did I say that Chrome OS will allow software installation?

The first snapshots of Chrome OS are clearly showing an operating system that won't allow any third party software to be installed. Just to make sure... the root file system is mounted read only! This is a clear signal from Google (and it's a signal I like): the main file system is for the _core_ system. There is no point in installing end-user applications there: [too many problems arise if you do that](/articles/2009_software_installation_linux_broken_and_path_fixing_it/). An end-user application ought to be a self contained folder full of all the rubbish the application is meant to come with. 

(Of course, if there was only one desktop environment in GNU/Linux, it would be trivial to make a list of minimal libraries for each "major version" of the system. Then, something like this would be possible: drag an old icon with your 2 year old accounting software from your backup, and use it without entering dependency hell. However, GNU/Linux has two different desktop environments, so having a neat set of libraries isn't as trivial as it ought to be.)

However, only allowing web applications is going to make the transition too hard. More and more people will complain about it. A lot of users will have at least one little program they will want to be able to run on their Chrome OS laptop (I personally have one, GNUCash, And no, there is no "web app" equivalent for it...).
The risk here is that Google leaves this important issue up to individual developers. Google will be tempted to do that: independent developers will come up with mods to make it easy to add repositories and pollute the main system with stuff that should never be there. Eventually, Google will have to come up with a neat way of installing software just like it happens in their own Android (one folder with everything in it) or Apple (one folder with everything in it) or any other system where software installation actually works. 

With Android, they had an easy life because they could dictate exactly what libraries a piece of software should expect and how the applications should play audio etc. (without the OSS/Alsa/Pulseaudio/KDE/GNOME/whatever-else nightmare). They used Java (or Dalvik) to avoid any mess and to make everything more secure. With Google Chrome OS, they will have to make some choices -- and they are going to displease a sizeable portion of the GNU/Linux user base no matter what they choose to do. The choice they made now is great to create buzz, but I don't think it will last. Or, shall I say, I hope it won't.

A possible (and partial) solution to the GNOME/KDE issue is to create "library bundles" so that in order to run GNOME applications you need the "GNOME bundle", for example. Note that this is different to saying that you need libchockablock.so.3.4.2 -- these would be "super-bundles" which would include everything expected by a GNOME application. If then an application needs specific libraries, it could just have them ready in a private "lib" directory in its file system. This is something similar to what Apple does. Again, it's not going to be pretty (applications will look different, will have problems with sound, and so on); but at least it _might_ work.

# Back to GNOME and KDE

Whoever said that competition was good, that it was OK for GNU/Linux to have two competing desktop environments, was crazy. The harm done to GNU/Linux was simply immense. When Google decided to build a web-oriented operating system, they ditched them both. With Google Chrome OS, both KDE and GNOME are suddenly less relevant -- and they will become less and less relevant as time goes by.

Goodbye desktop. Hello web applications. Fingers crossed about the necessary transition.