---
nid: '2266'
title: 'Getting help with free software'
authors: 'Jonathan Roberts'
published: '2007-06-11 6:30:00'
tags: 'beginners,help'
issue: issue_18
license: cc-by
section: opinions
listed: 'true'

---
So, you’ve made the move to free software. As you’ve no doubt noticed, there are quite a few differences between the proprietary software you’ve been used to and free software: the interfaces are different; it costs a heck of a lot less; and if you’re using one of the community supported distributions there’s no premium rate helpline! These all seem like benefits to me, but what happens when you have a problem?

There are a huge number of sources you can turn to: in this article we’ll cover where to find the most common ones and how to make the most of them. I’ll be presenting them in a hierarchy, so, when you have a problem, start at the beginning and work through to the end. This will help you to understand the problem yourself and ensure you have plenty of information about it before talking to a real person (if it comes to that), making people far more receptive and willing to help.


# Your distribution’s documentation

Let’s start with a massively underused resource: the documentation that ships with the system. Free software rarely comes with a printed manual but it does come with a wealth of material included in various digital forms. If it’s a graphical application you’re having trouble with look for a Help menu; OpenOffice.org has a brilliant example of built-in help and has documentation about a huge range of features, many of which you probably never realised existed.


=ZOOM=If it’s a command line program you need help with, `man` and `info` are two very valuable sources of information=

If it’s a command line program you need help with, `man` and `info` are two very valuable sources of information. Simply typing, at a command line, `man` followed by the program name and then `Enter` will provide you with extensive instructions on how to use a program, different options, their functions, and references to other manual pages that might be of use; run the command `man man` for more details. Some programs don’t use `man` for their documentation needs, but use `info` instead. Run the command `info` for more information. Another interesting, and sometimes unexpected source of information, comes when you’re trying to tweak a configuration file: more often than not, configuration files will be heavily commented, explaining all of the options available to you.

The final source of help that you’ll find is commonly shipped with distributions is that which is accessible from the menus on the desktop. In GNOME, it can be found under the System menu, and in KDE under the K menu.

Our focus now turns to the online world. A great place to start is your distribution’s home page (or the home page of the application you’re working with), which will often have links to community created documentation, covering a much wider range of topics than is available from the desktop. There will often be links to forums here too, but I would recommend holding off on the forums for the time being. Results turned up from Google (covered below) will often include the forums, and it’s worth doing a bit more research yourself to ensure you have enough information to give on a forum before asking yourself.

I’ve compiled a short list of, in my opinion, some of the best online documentation provided by the distributions. Take a look around at all of them; although each distribution is different, many of them share common features and what’s not documented in one might be in another.


* [Ubuntu’s Official Documentation](https://help.ubuntu.com/)
* [ Ubuntu’s Community Contributed Documentation](https://help.ubuntu.com/community/)
* [ Fedora’s Official Documentation](http://fedoraproject.org/wiki/Docs#head-67cefed04bab9c904f29bfdb213acf18e8c320d4)—also be sure to check the drafts for useful, but rough, information
* [openSUSE Documentation](http://en.opensuse.org/Documentation#User_Documentation)
* [The Gentoo Wiki](http://gentoo-wiki.com/Main_Page)


# Google!

I’m sure you’re not surprised to find Google so high in the list, but let me put forward a few of its best features: firstly, when you first encounter a problem it’s quite likely you will only have a vague idea of what is causing it, and Google can quickly help you to narrow down the likely causes. Secondly, it provides a great overview of different sites where answers might be available, helping you to better target the next stage of your investigation.


=IMAGE=linux.jpg=The Google Linux search logo, so you know you’re in the right place=

I’m being specific about using Google because of their _Special Searches_, and more accurately, their GNU/Linux search feature (you can find it at [http://www.google.com/linux/](http://www.google.com/linux)). The benefits of this are immediately obvious: Google indexes a huge amount of information from the web, and quite often your search for information about free software returns results about Windows, and sometimes even about windows! Using this special search feature will narrow the scope of results significantly and make it easier to find exactly what you need.


=ZOOM=Using the special Google Linux search feature will narrow the scope of results significantly and make it easier to find exactly what you need=

This is just the beginning of learning how to use Google effectively, however, and the internet is littered with cheat sheets that all promise to take your Googling to the next level. In my opinion the most useful is [Google’s own cheat sheet](http://www.google.com/help/cheatsheet.html) which is clean and simple to use, but lacks descriptions of all the different operators available; for a more complete list see [here](http://www.googleguide.com/advanced_operators_reference.html).

Before moving on, I’ll give you an example of how to use Google. A common problem people have is stuttering DVD playback, so I’ll see if I can solve this problem for someone using Ubuntu. An obvious starting place would be to enter “Stuttering DVD playback” into Google, unfortunately none of the results on the first page are particularly helpful because our search was too broad. You can improve this result in two very simple ways: switch to Google’s Linux search or use some operators in your search. A refined search with operators might look like “[Stuttering DVD playback -windows +ubuntu](http://www.google.com/search?q=Stuttering+DVD+playback+-windows+%2Bubuntu)”. The first result actually has enough information in it to solve the problem. The same is true if you use Google’s Linux search, although, in my opinion, it’s an even better result!


<!--pagebreak-->



# Real people

With some problems you might exhaust all of the above sources of information. In which case, it’s time to seek some help from a real person. There are three common ways to do this: forums, mailing lists and IRC (Internet Relay Chat), and each has its own advantages and disadvantages. I will tackle forums and mailing lists first, as they tend to be slower than IRC.


## Forums

As with online documentation, the best place to start is the official forum for your distribution, or the program you’re working with; a quick search will reveal the address of the appropriate forum. Once there, the first thing to do is use the forums own search function and look for any relevant threads. Occasionally this will turn up results not found in Google that either provide the answer or point to an obscure page with the solution in it. If this fails, start a new thread. Often you’ll have to register with the forum to do this, but none of the major forums or distributions will send spam to your e-mail address so don’t worry about it!

When starting a new thread be as descriptive, and brief, as possible in the subject: the more informative this is, the more likely it is people will take the time to read the rest of the thread. In the body of the message provide as much information as you can: describe the symptoms; explain the steps you’ve already taken to try and solve the problem; and provide the information you’ve turned up from Google. If there’s an option to subscribe to the thread, do it: you’ll likely get e-mail updates whenever somebody posts a reply, allowing you to respond quickly and add extra information where necessary, which will save you from waiting days to find a solution to your problem.

The two forums that I find most helpful are:


* [Fedora Forum](http://www.fedoraforum.org)
* [Ubuntu Forums](http://ubuntuforums.org)

A lot of people also find [Linux Questions](http://www.linuxquestions.org) to be very useful.


## Mailing lists

Mailing lists are very similar: the best places to start are those belonging to your chosen distribution or the particular program you’re having trouble with; also, you want your subject to be as descriptive as possible and to provide as much information as possible in the message body. The difference with mailing lists is that you’ll receive all messages sent to the list. There are pros and cons to this approach: depending on the popularity of the list you may get a lot of e-mails sent to your inbox (in this case you may find a “daily digest” option a useful solution, look for this when signing up); on the plus side, you get to read about a lot of other people’s problems, allowing you to learn a lot, and as you become more knowledgeable you will be able to solve your own and other people’s problems more effectively in the future.


=ZOOM=...like all aspects of life, there are social norms, and e-mail is no different=

Another consideration with mailing lists (and forums), is etiquette; like all aspects of life, there are social norms, and e-mail is no different. You may well find that a lot of lists prefer you to send your messages in plain text format only, so look for this setting in your client and enable it (this will ensure that your message appears correctly in everyone’s client, increasing the number of people who can read your cry for help!). Other etiquette issues are dependent on the individual list so it is sometimes advisable to spend a little time “lurking” before contributing; of course, if you make it clear that this is your first post to the list people are more than willing to be very forgiving of etiquette issues and help you to avoid them in the future, and no doubt once you’ve become a seasoned contributor you’ll show the same levels of kindness.

To get you started with mailing lists here are a few great ones; be warned, however, they’re addictive and incredibly easy to sign up for!


* [Ubuntu UK](https://lists.ubuntu.com/mailman/listinfo/ubuntu-uk)—Ubuntu’s local community team mailing lists are superb, with a tendency to be very friendly and helpful to new users. Look up your nearest for a great list
* [Debian’s User Mailing Lists](http://lists.debian.org/users.html) are all brilliant in my opinion
* [Fedora Live CD list ](http://www.redhat.com/mailman/listinfo/fedora-livecd-list) is a great example of a focused discussion list

Another very useful feature of mailing lists is their archives: you can search these (at the very least by using Google’s `Site:` operator); they are organised in a myriad of different forms including Date, Author and Thread and contain a huge wealth of information. You can find a few examples here:


* [Fedora Users’ List Archive](https://www.redhat.com/archives/fedora-list/)
* [openSUSE’s Users’ List Archive](http://lists.opensuse.org/opensuse/)

One final point that’s worth mentioning under mailing lists is [Google Groups](http://groups.google.com/). They effectively recreate newsgroups such as USENET (and even have a huge USENET archive!), which are similar to forums. The cool thing about Google Groups, however, is how simple it is to create new groups, they’re free to access, and you can participate in them just as you would a mailing list. What’s different compared to mailing lists is that you can browse through them in a directory hierarchy, which makes discovering new groups interesting and way too easy (I warned you mailing lists are addictive).


<!--pagebreak-->



## IRC

Sometimes being able to hold a real time conversation with someone can help solve your problem much quicker than forums or mailing lists would allow, and this is exactly the gap IRC (Internet Relay Chat) is here to fill. The first thing you're going to need with IRC is a client that will connect you to both the network and channel that is most appropriate for your problem; some of the most common clients people use are [Pidgin](http://www.pidgin.im/), [XChat](http://xchat.org/) and [Irssi](http://www.irssi.org/). Most distributions will have all of these in their repositories, so installation should be simple and you can play around with a few and discover which one you like most. A really useful resource, which will help you learn the ropes of IRC, can be found at [http://irchelp.org/](http://irchelp.org/).

Once you’ve got your client you will need to find an appropriate channel to join and ask your question in. Like many of the other methods discussed here, the best place to start is your distribution’s home page. Most will have channels on the freenode network, for example Fedora’s help channel is at irc.freenode.org and #fedora, whereas Ubuntu’s is on irc.freenode.org and #ubuntu. Now that you’ve found an appropriate channel, join it and ask your question. Don’t ask “Can somebody help me?”, however, as this plea is likely to go unanswered! Just ask your actual question. Make sure, as always, to give plenty of detail about what the problem is; when somebody replies to you do your best to give any extra information they need, and if not don’t be afraid to ask for simpler instructions, they’ve already offered to help!

As a little demo I headed into the Fedora channel on IRC and asked about stuttering DVD playback. Here's what happened:


=CODE_START=

09:58 < JonRob> i've been having trouble with stuttery dvd playback
09:59 < JonRob> Googled around loads and it looks like it's something to do iwth DMA
09:59 < JonRob> but i've got no idea what to do with it now...
09:59 < autopsy> DMA is not always the cause, but if you are using EIDE disks use hdparm to check if DMA is enabled, sdparm if you're using SCSI disks.
10:00 < JonRob> ok cool, umm...how do i use hdparm?
10:00 < autopsy> See: man hdparm
10:00 < MilkmanDan> JonRob: You RTFM, because if you don't you risk damaging your hard drive and/or destroying your filesystem.
10:01 < MilkmanDan> And I'm not kidding about that.
10:01 -!- thufir007 [n=thufir@S01060004e2917d65.vc.shawcable.net] has joined #fedora
10:01 < JonRob> MilkmanDan: Thanks for the warning :D
10:01 -!- Kwitschibo [n=Michael@host-091-096-245-217.ewe-ip-backbone.de] has joined #fedora
10:01 < JonRob> I'll go check that out!


=CODE_END=

It was unfortunate somebody told me to “RTFM” in the example, but they meant it in the best possible way: to ensure I understand what I’m doing before destroying my hard drives!

You’re now almost set for IRC. To help you get started, here’s some links to channel lists for the major distributions. You can’t go wrong with these, as they’re nearly always busy with somebody around to help!


* [A huge list of Ubuntu Channels](https://help.ubuntu.com/community/InternetRelayChat) and some IRC tips
* [Fedora’s Communication info](http://fedoraproject.org/wiki/Communicate)
* [ openSUSE’s channel list](http://en.opensuse.org/Communicate#Internet_Relay_Chat)


## LUGs

I will end by mentioning Linux User Groups (LUGs). Sometimes being able to meet up and talk out a problem with like minded people is the best solution of all, and LUGs will provide you with a contact point to find people in your local community who can help. There are often regular meetings, where people get together and discuss everything and anything, give presentations and fix problems; another common feature of the LUG is an active mailing list, which has many of the same features as a meet up, it just takes a bit longer when done over a list! As always, a quick internet search will help you find your nearest LUG’s website and provide much of the information you need to get started.

The best LUG directory is:


* [Linux user groups](http://www.linux.org/groups/)


# Conclusion

Now you’re fully equipped to go out into the world of free software and solve any problems you might encounter, without a premium rate phone line in sight!

