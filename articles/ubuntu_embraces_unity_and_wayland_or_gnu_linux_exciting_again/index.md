---
nid: '3465'
title: 'Ubuntu embraces Unity and Wayland. Or, GNU/Linux is exciting again'
authors: 'Tony Mobily'
published: '2010-11-06 5:48:17'
tags: 'linux,ubuntu,gnome,unity,wayland,interface'
license: verbatim_only
section: opinions
listed: 'true'

---
After installing Ubuntu 10.10, I had a strange feeling I was seeing something that was already old.
Yes, Ubuntu is a fantastic desktop system, and yes it's better than Windows. But today, in 2010, that's almost a given. And that's not enough. The IT world is changing, and PCs themselves as a whole are getting old. The mass is moving towards tablets, mobiles machines, and netbooks. Ubuntu, the way it is today, might be the best choice in a dinosaur world. I can't read Mark Shuttleworth's mind, but I can only guess this is exactly what he felt when he decided to switch to [Unity](http://unity.ubuntu.com/) (for the UI) and Wayland (for the graphics architecture). Let me explain what all of this means.

<!--break-->

# Unity and Wayland

When Ubuntu seemed to have reached a placid stability (which is not a good thing, if you ask me, when applied to software), Mark Shuttleworth came out with two incredible steps: the first one, was to switch to Unity. The second one was to abandon xorg and move to Wayland.

The switch to Unity is major. In fact, I would go as far as saying that it's the bravest thing a GNU/Linux distribution has ever done. Basically, with Unity you throw away the desktop analogy with your computer, and you embrace the "computer as a tool" analogy. The general feel you get is the same you have when you use your Android device, or your iPhone. A video is worth a million words: see [The unity ad](http://www.youtube.com/watch?v=dHzP7mxRFJE) to get a better idea. I finally see Unity as something that anybody can use, which includes my grandfather.
This move is going to be immensely controversial, but I think it will win in the long run.

Switching away from X (and xorg) and onto Wayland to manage video output is also an incredibly big step, which is probably going to be as controversial as the switch to Unity. Right now, when you see your graphical interface, you are actually running a server on your computer. Anybody with the right permissions can run a program in Africa, and display their output on your screen in Australia. In simple words, in order to display anything, programs "connect" to a X server and tell it what to draw, where, and how. 99.9% of the time, the program runs locally, and it connects to a local X server (xorg) which then draw things onto the local monitor (so much for Africa and Australia!). There are two problems with this: 1) There is a marked overhead for a feature, remote displaying, that is very rarely used 2) More advanced programs, like the ones that use 3D, will often have glitches with colours, effects, etc.
Wayland is a software layer that sits right on top of the graphic card. An X server can then be run on top of it (unlike what happens today, where xorg also contains video drivers). With such a configuration, you will have some programs that display their output by talking directly to Wayland, and some other programs that will display their output connecting to the X server (which will then use Wayland to display things onto the local monitor).
The whole idea of abandoning the X architecture is a scary thought for any Unix user. The main issue is that you miss out on "network transparency" -- with X, you can have a server without a monitor, and 30 clients displaying (thanks to their X servers) the output of the programs running on the server. Or, as I said, you could be in Australia and use a program that is running in Africa. But, I have to say that in my 15 years of using Unix, I only needed network transparency probably four times -- and I could have lived without it. However, big Edubuntu deployments are based on X's network transparency. If Wayland becomes very strong, and programs in 5, 10 years start talking to Wayland instead of X to draw their stuff, then the magic behind Edubuntu will become impossible. But, this is a big "if" -- programs are more likely to have the option to either display things by talking to X, or by using Wayland.

# The reasons behind the switch

The switch to Unity came from the acknowledgement that the way people experience computing has changed. It is not "changing"... it has changed. Millions of people are getting more and more accustomed to using their Apple and Android tablets, and their phones. Computers are no longer boxes with programs, but tools to communicate.
In an enlightening interview with Arstechnica, Mark explained [why they switched to Unity](http://arstechnica.com/open-source/news/2010/10/shuttleworth-unity-shell-will-be-default-desktop-in-ubuntu-1104.ars). The reasons, in short, are:

 * Dissatisfaction with GNOME's Mutter window manager (in terms of performance)
 * Rejection of Zeitgeist by GNOME. from Wikipedia: "Zeitgeist is a service which logs the users's activities and events, anywhere from files opened to websites visited and conversations. It makes this information readily available for other applications to use in form of timelines and statistics. It is able to establish relationships between items based on similarity and usage patterns by applying data association algorithms such as "Winepi" and "A Priori". Zeitgeist was a high priority for Ubuntu, but the GNOME project rejected it for GNOME 3.0
 * Differences in what the Ubuntu team thought the UI should look like, for example by GNOME's rejection of the global menubar.

Basically, Mark wants Ubuntu to have smooth and spotless effects; have applications that are aware of what the user is doing, and (more importantly) what he or she _often_ does; have an innovative and simple UI that breaks away from the normal "desktop computing" interface.

The switch from X to Wayland is explained in [Mark's blog entry about Wayland](http://www.markshuttleworth.com/archives/551):

> But we don’t believe X is setup to deliver the user experience we want, with super-smooth graphics and effects. I understand that it’s *possible* to get amazing results with X, but it’s extremely hard, and isn’t going to get easier. Some of the core goals of X make it harder to achieve these user experiences on X than on native GL, we’re choosing to prioritize the quality of experience over those original values, like network transparency.

# The future

The future is interesting. Before seeing Ubuntu's moves, I honestly thought that Ubuntu, along with the whole desktop computing world, was heading for extinction. This saddened me, but I thought that the steps needed to "save" Ubuntu would have been way too daring for anybody to make.
I was wrong. 
It looks like in the future, as far as Linux is concerned, we might have Android tablets, along with Ubuntu ones. They will have different markets: the Ubuntu ones will target all those people who are moving away from desktop computing, but aren't willing to lose _all_ of their existing GNU/Linux programs by moving to Android.
One thing is certain: GNU/Linux is exciting again.
