---
nid: '2888'
title: 'Ubuntu Netbook Remix: a detailed explanation'
authors: 'Tony Mobily'
published: '2008-06-06 18:55:48'
tags: 'ubuntu,remix,netbook,subnotebooks'
license: verbatim_only
section: end_users
main_image: hide.jpg
listed: 'true'

---
Lately, there has been a lot of noise about Ubuntu's Netbook Remix. In an unrelated (and definitely lucky) interview with The Guardian, Mark Shuttleworth hinted that Canonical were about to announce a version of Ubuntu for a new class of devices created by accident by Asus with the EeePc (talk about corporate luck...). Th buzz about this was monumental. But... what _is_ Ubuntu Netbook Remix? Here is the answer...

<!--break-->

# A two-faced project

Ubuntu Remix is a bit of an odd project. It's very new, and things are likely to change very quickly--especially when we start seeing devices that use it natively. However, at the moment Netbook Remix is both a set of freely available packages, and an internal project at Canonical that aims at supporting sub-notebook OEMs directly.
Feel free to see some [screenshots of Ubuntu Remix](http://flickr.com/photos/njpatel/tags/netbookremix/)

## The packages

From the outside, for us hackers, Ubuntu Netbook Remix is simply a small set of installable packages which do very specific things. The [Launchpad page for Netbook Remix](https://launchpad.net/netbook-remix) has quite a bit of information about the project. From there, you are sent to the [package list for Ubuntu Remix](https://edge.launchpad.net/~netbook-remix-team/+archive). 
I installed it and am currently using it on the only laptop I own right now: a glorious EeePC I am a huge fan of.
For the lazy readers, the Netbook Remix project has the following packages:

### go-home-applet

This is a tiny applet that will display the desktop when pressed. This is the package that left me most puzzled: the stock version of Gnome already comes with an applet that does exactly the same thing, so I wondered why on Earth they wrote another one. I looked at the source code, and noticed a few references to drag&drop... In the end, I humbly gave in and asked Neil J Patel directly (shame on me) and he explained me that go-home-applet is not just to show the desktop, it is also an active drag-and-drop area to which you can drop files/folders/URLs (from Firefox). Upon dropping a valid link, the applet creates a new favourite in the ume-launcher (covered later in this article).

In addition to that, the applet will also have a more feature-full right-click menu, which should be landing in launchpad soon (as will
some improvements/bug fixes to the other parts of the remix).

### Human-netbook-theme

This is the theme that comes with this project. It's a rather dark theme, but I must say that it really, really works. It uses very small icons and fonts for the panels, and it makes my small EeePC screen feel very spacious. This theme alone is something worthwhile if you use a sub-notebook. The interface seems to be thought out for touch screens, and uses the Clutter framework which is rather new but extremely exciting.

### Maximus

Maximus is a real pearl amongst the Netbook Remix packages (and I won't mention how much I love its name). Maximus will make sure that each window is maximised (hence its name) as soon as it's open. The windows will also miss their title bar, freeing up precious screen real estate. What about my windows' titles, I hear you say? Well, that's an easy one: the window-picker applet will do exactly that...

### Window-picker-applet

This is another pearl if you have a small (or, hall I say "tiny") screen--which is likely if you are using Netbook Remix. This applet will display the icons of the currently running tasks, a well as the active window's title (which Maximus hides). The small icons as the taskbar really work: you don't really need the full windows' titles in order to know what tasks you're running. Also, the windows' title in the top panel really works from a visual point of view.

=IMAGE=two.jpg=The Window picker at work=

In simple words: it looks damn good. I can see how there was a lot of thought and drafting to get this right. This applet is the one that seems to be plagued by the most problems. For example, it doesn't seem to behave really well in a multi-workspace environment (which is admittedly unlikely in a sub-notebook); also, the windows' titles vary in size, and so does the bar at the top. This makes cycling amongst the tasks a little tricky, because the tasks' icons will move depending on the active window's title. Finally, very long window titles seem to throw the poor applet. However, you can tell that these are temporary, easy to fix problems. The applet itself is fantastic, and -- as I said -- a godsend in terms of saved screen-estate.

### Ume-config-netbook

Do _not_ install this module. I repeat: do _not_ install this module. This seems to be the message Canonical would like me to pass on, I am sure! This applet is meant to be used by sub-notebooks that use the Diamondville processor (which is now called "Atom"). Word had it that Canonical was working with Intel in order to release Netbook Remix. This very applet must be the result of their efforts. The Atom processors haven't been released just yet, but they are Intel's attempt to dominate the sub-notebook market. While the other applets were generic and didn't really require any interaction with any particular hardware vendor, ume-config-netbook required access to Intel's specifications before the official release of the processor. The only thing I wonder is if the code for this applet will be both free (as in freedom) and free of patents/NDAs. We shall see.

### ume-launcher

This is the last pearl in the list of applets. Again, it's eye-candy -- but be assured, it's _useful_ eye candy.
When it runs, it takes control of the desktop (meaning that any icon on the desktop will basically disappear). It shows a very good looking, functional launcher.

=IMAGE=one.jpg=The Netbook Remix launcher=

This is likely to be the "home" of most everyday user. The launcher can be compared to a large desktop widget that allows you to pick what to run. Comparing this to the standard launcher that comes with the stock EeePC puts Asus to shame.
The only thing I can say to pick on it is that the Netbook Remix team seems to have forgotten to add a link to the user's "Desktop". Bossing Nautilus around and taking the Desktop away from it is fair enough for this kind of devices. However, inexperienced users might be unable to find all those files that were saved to the desktop by other applications.

# The Canonical project

Here, I must start with a disclaimer: I don't work for Canonical, and I am speculating. I talk to Mark Shuttleworth very occasionally (like many others do, since he's so amazingly accessible), but I don't have any "insider's information".
However, from what I heard, Canonical's goal is to provide a fantastic, ready to use GNU/Linux platform for OEMs. If Netbook Remix had existed while Asus was designing the EeePC, I am convinced they would have picked it as their default interface and operating system (or, at least, one would hope so). I am sure the same is bound to happen soon: there are several vendors who are dying to jump on the sub-notebook bandwagon, and Ubuntu Netbook Remix will obviously be the most tempting option.
To Canonical, this means more users using Ubuntu, a larger user base, and a step closer to the closure of bug #1 (I will leave it up to you to work out what that is!).
I am not entirely sure how this would work financially. Canonical should definitely get paid by vendors to cover the work required to provide them with a fully working version of Ubuntu Netbook Remix. In any case, the Ubuntu user base has a chance to grow _exponentially_ if millions of sub-notebooks are sold with Ubuntu GNU/Linux on them.

# The missing piece(s)

As I wrote earlier, I am using an EeePC (with Ubuntu Netbook Remix) as we speak. It's a great system, but... there's a "but".
I had to spend quite a lot of time installing Ubuntu on my EeePC -- and getting it to work 100% well. Installing Ubuntu on the EeePC is a royal pain, full stop: wireless doesn't work, the sound drivers stop the EeePC from going to sleep unless some configuration files are changed, the hotkeys are a pain to set up, and so on. These are all things that should work "out of the box": either straight out of Ubuntu, or with an extra script that does all the "tidying up". I realise that Canonical wasn't contacted by Asus, and fear that Xandros-infected Asus won't be asking Canonical to create a much needed OEM disk for the EeePC anytime soon. However, I think supporting at least the most common sub-notebook platforms (or even _platform_) would have been a really good move.
For Netbook Remix, we will need to wait till the first ready-to-go sub-notebook is announced. You can bet I will be the first person buying it... but in the meantime, a huge crowd out there won't be using Ubuntu on their EeePC. It's a shame.

# Conclusion

In one word: exciting.
This piece was written entirely using an EeePC running Ubuntu Netbook Remix. And, it's going to stay that way. It works. It's good. It's getting better.
The best item of news is that we can all expect sub-notebooks running Ubuntu Netbook Remix on them. (And yes, I will eventually give in and call them Netbooks... one day). Canonical is doing all of the right things, and it's definitely giving a lot of sleepless nights to those CEOs who stubbornly ignored GNU/Linux up to now.
I can see a likely future where mobile devices won't have Windows Mobile, but Android (thanks to Google). And netbooks will have a fantastic version of GNU/Linux, Ubuntu Netbook Remix, rather than Xandros or the decrepit Windows XP (thanks to Canonical). People can make a difference. Companies can too -- and it's inspiring when it happens.
