---
nid: '1193'
title: 'Free IRC clients'
authors: 'Martin Brown'
published: '2005-09-07 11:01:53'
issue: issue_07
license: cc-by-nc-nd
section: end_users
listed: 'true'

---
In this article I’m going to look at a staple application of many user’s lives. No, not a web browser, but an IRC client. Internet Relay Chat (IRC) is a simple, but effective, way for multiple users to communicate with each other in an environment that most likely equates to your local bar.

In this article, I’m going to look at five IRC clients for the Unix/Linux terminal.

I’ve chosen a terminal version, rather than a GUI version because I find them more flexible if I have to use an IRC client that I can access from almost any platform, including remotely over a dial-up or telnet connection. This is, in fact, exactly the situation I found myself in just last week.

I’ll cover the ease of installation, feature set and overall impressions of each application. However, this is not a comparison article. Although I will make comparisons to show the differences between the packages, the aim is not to find the “best” package, only to demonstrate the range and quality of the packages on offer.


=ZOOM=Internet Relay Chat (IRC) is a simple, but effective, way for multiple users to communicate with each other in an environment that most likely equates to your local bar=

Here are the five applications I have chosen to review; the descriptions are taken from those on [FreshMeat](http://freshmeat.net/) :


* netwalker-ircc – A simple, fast IRC client with an ncurses UI.
* WeeChat – A portable, fast, light, and extensible IRC client.
* Rhapsody IRC – An IRC console client for Unix.
* centericq – An ncurses-based client for ICQ, Yahoo!, AIM, IRC, Jabber, MSN, and LiveJournal.
* naim – An ncurses-based console for AIM, IRC, ICQ, and Lily client.

Let’s get started with netwalker.


# Netwalker-ircc


 | |
-|-|
Name | Netwalker IRCC | 
Maintainer(s) | Lancelot2K | 
License | GPL | 
Platforms | Unix, Mac OS X | 
**MARKS (out of 10)** |  | 
Installation | 8 | 
Vitality | 8 | 
Stability | 9 | 
Usability | 8 | 
Features | 7 | 

=TABLE_CAPTION=In short..=

You can download netwalker-ircc through [FreshMeat](http://freshmeat.net/projects/netwalker/) or through the [netwalker-ircc homepage](http://www.bind.ch/software/netwalker/). Technically the product is still in beta, although my initial impressions of the software don’t suggest that there are any significant bugs in the application. I think the beta label applies more to the features the author would like to include in the product.

Compilation is very straightforward—the application relies only on the most basic of requirements and so it can get away with a simple Makefile. Once compiled there is a step required by the application to set up a suitable configuration file. You do this by supplying the - `c` command line option. You’ll then need to edit the file and set the various options, such as your name, nickname and the server you want to connect to.

Here lies a limitation of the application; it supports only a single server connection at any one time, and there’s no built in functionality to support multiple configuration files. This does mean that for the many people who use multiple servers this application is not going to be particularly useful.


=IMAGE=Irc1.jpg=Figure 1: Netwalker-ircc in use=

However, if you use just one server, then the application does support multiple channels. Once started up—you can see a sample here in figure 1—the application allows you to switch between different “screens”. Each screen relates to a different aspect of your IRC session, so screen 0 relates to your console, screen 1 the server channel and screen 2 your first user channel. You change between either by using a command, or using the function key; escape returns you to the server console.

Once connected, the basic functionality you would expect from an IRC client is there; you can connect, join channels—strictly the basics. More complex functionality, for example direct chat and file transmission are not supported.

Despite these limitations, I really like netwalker. It’s simple, the screen is unfussy (too much information can often make text-based IRC clients a nightmare) and the quick-key access to channels make it easy to flip around my main haunts. The size also means it would be ideal in those situations where space was comparatively limited; say when carrying applications round on a USB key, or if you want to cram more applications into a CD distribution. I certainly wouldn’t hesitate to use netwalker in these situations.


# WeeChat


 | |
-|-|
Name | WeeChat | 
Maintainer(s) | FlashCode | 
License | GPL | 
Platforms | Unix, Windows | 
**MARKS (out of 10)** |  | 
Installation | 9 | 
Vitality | 8 | 
Stability | 9 | 
Usability | 7 | 
Features | 10 | 

=TABLE_CAPTION=In short..=


<!--pagebreak-->


WeeChat (Wee Enhanced Environment Chat) is a much more complicated beast. At its heart, WeeChat is an IRC client with support for multiple servers and channels. Downloads, documentation and other information can be located at the [WeeChat Homepage](http://weechat.flashtux.org/). WeeChat actually supports curses, Qt and Gnome (gtk) interfaces. You can choose which interface to run by running the appropriate version; they all share a common configuration file, and this means that you can use your preferred interface depending on your environment, but still with all of your personal settings. I’ll obviously concentrate on only the ncurses interface (the default interface enabled during configuration).

The basic IRC functionality is what we have come to expect—we can switch between buffers and channels, (using function keys), connect to multiple servers, and, through a major configuration file, record and set many options.

At first glance, WeeChat is not as friendly or easy to use as Rhapsody, but you realise that this is a false impression by spending some time actually playing with the application. There’s a lot of hidden power built into the application and this is most apparent in a set of extensions that need to be selected during configuration to ensure they are included in the application.


=IMAGE=Irc3.jpg=Figure 2: WeeChat in use=

You can, for example, add a Perl extension to the WeeChat core that allows you to extend the functionality of the client with Perl scripts. In essence, this is a little like using one of the many IRC bots, but it’s accessible and usable through your own IRC session and interface.

For instance, if you ran a channel for a software project, you could write a Perl script that automatically responded to queries about the project status in order to return the latest build number or latest patched component.

A similar extension is available for the Python language, and having looked at the code it wouldn’t be too difficult to add other languages and extensions to the WeeChat system if you had a specific idea or project in mind.


# Rhapsody IRC


 | |
-|-|
Name | Rhapsody IRC | 
Maintainer(s) | pcbjunkie | 
License | GPL | 
Platforms | Unix, Mac OS X | 
**MARKS (out of 10)** |  | 
Installation | 9 | 
Vitality | 9 | 
Stability | 9 | 
Usability | 8 | 
Features | 8 | 

=TABLE_CAPTION=In short..=

Rhapsody provides a much more extensive interface—albeit still built on the curses platform within a standard terminal window. Because of its slightly more complicated underpinnings, Rhapsody is built using a GNU configure script and make, but is still comparatively easy to build and install. The best way to get hold of Rhapsody is through the [Rhapsody Sourceforge](http://rhapsody.sourceforge.net/) page.

Once built and installed Rhapsody is clean and simple, but it also feels polished. On first opening the application, you are presented with a plain screen with a series of menus: Server, Channel, User, Options, Window and Help. All of the menus are available through the use of the Control key and their highlight character, and further options are handled through the scroll keys. ****


=IMAGE=Irc2.jpg=Figure 3: Rhapsody in use=

Rhapsody supports multiple servers, as well as multiple channels within a single server. The menu system provides easy access for connecting to new servers, as well as a system of favourites for both servers and channels.

Once connected, you can “flip” between channels and servers using the Tab key. For more direct access you can select individual channels and servers through the Window menu. This swaps the entire screen over to the new channel or server. Although this means it is not possible to monitor multiple channels simultaneously, it is good enough to enable you to take part when you need to; you can’t, after all, type two messages to different channels at the same time.

On a more personal level, Rhapsody also offers direct chat and file transfer capabilities if you need them, again, allowing you to switch, when necessary, through the window menu. You also have access to a range of options, such as your identity and chat options.


=ZOOM=Rhapsody supports multiple servers, as well as multiple channels within a single server. The menu system provides easy access for connecting to new servers, as well as a system of favourites for both servers and channels=

If I had one complaint it’s that the server favourites is slightly too simplistic. It would be nice, for example, to set a default channel or set of channels that could be joined when you first connect. It would also be nice to be able to select different identities for different servers, but these are all minor issues.


# CenterICQ


 | |
-|-|
Name | CenterICQ | 
Maintainer(s) | Konstantin Klyagin | 
License | GPL | 
Platforms | Unix, Mac OS X, Windows | 
**MARKS (out of 10)** |  | 
Installation | 9 | 
Vitality | 9 | 
Stability | 8 | 
Usability | 8 | 
Features | 7 | 

=TABLE_CAPTION=In short..=


<!--pagebreak-->


The most complex of the applications I’ve looked at for this review, CenterICQ supports ICQ, Yahoo!, AIM, IRC, MSN, Gadu-Gadu and Jabber in the same application. We are, of course, only interested in the IRC interface, but as with naim, the ability to use just one application for your instant messaging needs is an advantage, albeit at the cost of additional complexity.

Unlike the other solutions, CenterICQ provides a windows-like interface built on top of the usual curses text interface. The interface provides you with a lot of information, but the screen can be cluttered if you have a smaller terminal window—even a relatively standard 80 columns and 25 lines looks a bit tight. The screen is basically split into three familiar sections, a list of connections on the left, including open private conversations and public IRC channels, the main “conversation” and information window taking up the bulk of the screen, and a small command/control panel at the bottom.


=ZOOM=Unlike the other solutions, CenterICQ provides a windows-like interface built on top of the usual curses text interface. The interface provides you with a lot of information, but the screen can be cluttered if you have a smaller terminal window=

What you gain of course with the extensive ncurses environment is a very comprehensive control and configuration environment that enables you to more effectively manage your communication and connections. Certainly a required element when working with an application that does so much.

The IRC support is excellent, supporting multiple servers, multiple channels and the ability to hold both public and private conversations. Because of the “windowed” interface it’s quite easy to switch between different conversations and channels, and I liked the ability to monitor and work with a number of conversations simultaneously.


=IMAGE=Irc5.jpg=Figure 4: CenterICQ=

You can download the source for CenterICQ from [CenterICQ](http://thekonst.net/en/centericq/). There is also an extensive suite of documentation available through the website, or directly at [CenterICQ Documentation](http://centericq.de/docs/readme.php). Building the application is another case of a configure script and “make”, but be prepared for a wait—the increased complexity of this application makes it a much larger build and, ultimately, a much larger target application.

There’s little to criticise with CenterICQ; the interface is fussy on very small screens, but considering the functionality beyond IRC this is not surprising. Even if you just use it for IRC, the ability to monitor activity on multiple channels is very useful and anybody involved in multiple IRC channels should certainly check it out.


# Naim


 | |
-|-|
Name | Naim | 
Maintainer(s) | Daniel Reed | 
License | GPL | 
Platforms | Unix, Mac OS X, Windows | 
**MARKS (out of 10)** |  | 
Installation | 10 | 
Vitality | 10 | 
Stability | 9 | 
Usability | 6 | 
Features | 7 | 

=TABLE_CAPTION=In short..=

Naim is a well-known and established instant message client that supports the IRC, AOL Instant Messenger and ICQ protocols. I have to admit to being relatively new to the naim universe, although I do know it’s something of a second home to many people! You can download a copy from the [NAIM Project](http://site.n.ml.org/info/naim/).

Primarily, naim is a client for AOL Instant Messenger (the expansion for the quasi-acronym that is naim would be Ncurses client for AOL Instant Messenger). The downside to this approach is that using naim for IRC is less than intuitive. When you first open naim, it expects you to open a connection to AIM using your usual login/password combination. You can have multiple connections, and you can switch between them using the tab key—a handy “window” in the top right automatically appears to show your list of currently active connections. In use, naim has a handy embedded help system and auto-completion and context sensitive help for all of the commands and options—very handy for such a complex application.


=IMAGE=Irc4.jpg=Figure 5: Naim in use=

To get to the IRC support you need to create a new connection window, then connect, and then join any channels that you want to get involved with. You can also get quick access to the IRC features of naim by using the alternative nirc command, which opens an IRC connection type; additional command line options can be used to specify the server to connect to.

Unfortunately, even this shortcut makes using naim for IRC alone much more complex than seems necessary. If you want IRC and AIM (and, I guess, ICQ) support in the same session then I can see the benefit, but it can take quite a while to get set up before you even start doing anything. You can save your settings into a .naimrc file, but there’s no way to edit or view the settings within the application. If you want to change something, you have to change the settings through the command interface and then save the settings again. There’s no way to set favourites, or even a list of regularly used servers and/or channels. Either all of the connections you have configured are saved in the startup file, or they’re not. There doesn’t seem to be an in-between setting of “save this but don’t use it”. It would have been nice to find a reasonable way of configuring and managing the information saved in this file.

Also, while I love colour as a rule, the default settings in naim are a little garish. The colour support is also mandatory; if your terminal doesn’t support colour, then naim will refuse to execute. Fine on a typical Xterm or other desktop, but not always possible on lesser terminals like that built into a PDA, phone or even some basic telnet interfaces.


# Conclusion

Today we are all familiar with using a GUI interface for the majority of our work, from web browsers to office applications and email. However, there are times when text based is what you need. In my case, the only service I could get to work at one point last week was a dial-up connection through a bulletin board to my hosted server, using a mobile phone while in an airport in Europe; all for the benefit of discussing a project with a client in the US.

A terminal based solution wouldn’t be my first choice, but a quick test of a few applications showed there is a lot of choice out there. Fortunately, a terminal based application does not mean limited or restricted. In fact, there’s very little I found I couldn’t do with these text-based packages, especially for basic and straightforward discussions.

As to choices, in an ideal world with a nice large monitor I’d choose CenterICQ, only because it would simplify the connectivity to other applications. However, for a good all-purpose IRC only client that could download and use pretty much everywhere, I’d pick Rhapsody.

