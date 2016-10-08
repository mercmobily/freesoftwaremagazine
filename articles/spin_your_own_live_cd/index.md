---
nid: '2329'
title: 'Spin your own live CD'
authors: 'Jonathan Roberts'
published: '2007-06-07 8:30:00'
tags: 'live-cd,fedora,spin,custom,revisor,kickstart'
license: verbatim_only
section: hacking
listed: 'true'

---
A few weeks ago, I promised to explain how to create your own custom live CD with Fedora’s new tools. Well, last week Fedora 7 was launched and all the tools you need are available in the repositories. This even includes a brand new graphical tool, put together by the people at Fedora Unity, called _Revisor_, which will allow you to spin your own live CD or installation material in an unbelievably user friendly manner.

To get started the first thing you’re going to need for this tutorial is Fedora 7. (The materials may be in the Fedora 6 repositories but I can’t be sure). If you’ve never used Fedora before, now is as good a time as any to download and try it: Fedora 7 is a great release, now with official live spins which fit on a single CD and come in KDE, GNOME and Xfce varieties, saving you from having to download the entire 3GB DVD.

Once you’ve got Fedora 7, you’ll want to install the tools we’re going to be using. There are a few ways you can do this:


* Open a terminal and run the command `su -c yum install revisor`
* Open the Add/Remove Software program from the applications menu and search for revisor, mark it for installation and click apply.

Both of these methods will not only install Revisor but fetch and install all the necessary dependencies such as `Pungi` and `livecd-tools`, which if you’re feeling adventurous can be used from the command line to achieve the same results. One application that is important to note that is installed as a dependency is `Kickstart`; using this you can create Kickstart files with predefined package manifests and post installation scripts to feed into Revisor if you wish.

Now you’re ready to fire up Revisor: you can find it under _Applications→System Tools→Revisor_. Once it’s running, click “get started” and then select the type of media you would like to create. I’m going to be spinning a live CD so, if you want to follow along, select Optical Media from under the Live Media Types section.

The next screen is slightly more intimidating. Revisor uses its own configuration file to provide the user with different options about the type of live media to create, where to find the repositories etc. You can quite happily use the default Revisor configuration, but if you want to customise the repositories to be used you’re going to have to edit a text file. Firstly, identify the configuration you’re going to use as the base: in my case `f7-i386`. Once you’ve done this, open a terminal and run the command `su -c nano /etc/revisor/conf.d/revisor-f7-i386.conf`. Change this command to make it relevant to your chosen configuration, and to utilise your favourite text editor.

It is also useful to note here that you can change the destination directory, i.e. where your finished live CD ISO will be written to. Remember this location!

In this file there are a number of yum configuration options, which, for the time being, we’re going to be ignoring. Skip down the file to where the repositories are listed, in my example file starting with [fedora]. This is where you’ll want to add any entries for other repositories you might want to use packages from, the details of which you can usually find on the appropriate website.

The next screen is where Kickstart comes in. You can use this screen to load any Kickstart file, making it easy to create the same live CD an indefinite number of times, or to base your live CD on another, saving a lot of time and effort! The Kickstart creation program can also be found under _Applications→System Tools→Kickstart_, but goes beyond the scope of what I’m talking about today. The quickest way to get started with live CDs and revisor is to use the sample configuration, and select the Customise package manifest defined in the Kickstart data option. This will allow you to choose any application from the Fedora repositories for inclusion in your live CD, or DVD as it may well turn out, using the same interface as Pirut (Fedora’s graphical package manager).

You can click through the next screens, until you arrive at the Building Your Media screen. Go and make yourself a cup of tea while you wait, and when you return in a while you’ll have your brand new, custom, live CD!

This was only a basic overview and I hope it’s given you a taster of what can be achieved. There are all sorts of more advanced customisations you can make, from adding post-, and pre-installation scripts to your kickstart file (you could use this to add files to the live CD’s desktop); turning off SELinux; changing firewall rules; adding your own artwork and branding; the list goes on!

Go out, have fun and remix! When you’ve created that perfect live CD let the people at Fedora know, they’ll be delighted!

